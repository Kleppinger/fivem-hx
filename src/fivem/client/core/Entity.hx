package fivem.client.core;

import fivem.client.NativeOutputs;
import fivem.client.natives.Cfx;
import fivem.client.natives.Entity as EntityNatives;
import fivem.client.natives.Network;
import fivem.shared.core.StateBag;
import fivem.shared.core.Thread;
import fivem.shared.util.Quaternion;
import fivem.shared.util.Vector3;

/**
	What kind of thing an entity handle refers to, as reported by
	`GET_ENTITY_TYPE`.
**/
enum abstract EntityType(Int) from Int to Int {
	/** The handle is invalid or the entity no longer exists. **/
	var None = 0;

	var PedType = 1;
	var VehicleType = 2;
	var ObjectType = 3;
}

/**
	The base class for everything that exists in the world on the client.

	An `Entity` is a thin, allocation-cheap wrapper around a game handle: it
	stores the integer and nothing else, so constructing one is free and two
	wrappers around the same handle are interchangeable. Properties read
	through to the natives on every access rather than caching, which is what
	you want — the game moves entities constantly.

	```haxe
	var vehicle = LocalPlayer.ped().currentVehicle;
	if (vehicle != null && vehicle.exists) {
	    vehicle.coords = vehicle.coords + Vector3.up() * 3.0;
	}
	```

	Handles are *client-local* and are recycled by the game. Never store one
	across a resource restart, and never send one over the network — send
	`netId` instead, which is stable across clients.
**/
class Entity {
	/** The raw game handle. **/
	public final handle:Int;

	public function new(handle:Int) {
		this.handle = handle;
	}

	/**
		Wraps a handle in the most specific class available — `Ped`, `Vehicle`
		or `Prop` — based on what the game says it is. Returns `null` for a
		handle that doesn't exist.
	**/
	public static function fromHandle(handle:Int):Entity {
		if (handle == 0 || !EntityNatives.doesEntityExist(handle)) return null;

		return switch (EntityNatives.getEntityType(handle) : EntityType) {
			case PedType: new Ped(handle);
			case VehicleType: new Vehicle(handle);
			case ObjectType: new Prop(handle);
			case _: new Entity(handle);
		};
	}

	/**
		Resolves a network ID to a local entity, or `null` if the entity isn't
		streamed in on this client.

		Network IDs are the only entity reference that means the same thing on
		every machine, so this is how a server event's payload becomes a usable
		handle.
	**/
	public static function fromNetId(netId:Int):Entity {
		if (!Network.networkDoesNetworkIdExist(netId)) return null;
		return fromHandle(Network.networkGetEntityFromNetworkId(netId));
	}

	// -- Identity ----------------------------------------------------------

	public var exists(get, never):Bool;

	inline function get_exists():Bool
		return handle != 0 && EntityNatives.doesEntityExist(handle);

	public var type(get, never):EntityType;

	inline function get_type():EntityType
		return EntityNatives.getEntityType(handle);

	/** The model hash this entity was created from. **/
	public var model(get, never):Int;

	inline function get_model():Int
		return EntityNatives.getEntityModel(handle);

	/**
		The network ID, stable across all clients — the value to send in
		events. Returns 0 for a purely local entity.
	**/
	public var netId(get, never):Int;

	inline function get_netId():Int
		return isNetworked ? Network.networkGetNetworkIdFromEntity(handle) : 0;

	public var isNetworked(get, never):Bool;

	inline function get_isNetworked():Bool
		return Network.networkGetEntityIsNetworked(handle);

	/**
		The entity's replicated state bag. Reads work on any client; writes
		only replicate from the server.
	**/
	public var state(get, never):StateBag;

	inline function get_state():StateBag {
		var id = netId;
		return id != 0 ? StateBag.entity(id) : StateBag.localEntity(handle);
	}

	// -- Transform ---------------------------------------------------------

	public var coords(get, set):Vector3;

	inline function get_coords():Vector3
		return cast EntityNatives.getEntityCoords(handle, true);

	function set_coords(value:Vector3):Vector3 {
		EntityNatives.setEntityCoords(handle, value.x, value.y, value.z, false, false, false, false);
		return value;
	}

	/**
		Moves the entity without the game's usual "find a valid spot" fixups —
		no ground snapping, no pushing out of collision. Use it when you have
		already worked out exactly where the entity belongs.
	**/
	public function teleport(position:Vector3, ?heading:Float):Void {
		EntityNatives.setEntityCoordsNoOffset(handle, position.x, position.y, position.z, false, false, false);
		if (heading != null) this.heading = heading;
	}

	/** Rotation in degrees as (pitch, roll, yaw). **/
	public var rotation(get, set):Vector3;

	inline function get_rotation():Vector3
		return cast EntityNatives.getEntityRotation(handle, 2);

	function set_rotation(value:Vector3):Vector3 {
		EntityNatives.setEntityRotation(handle, value.x, value.y, value.z, 2, true);
		return value;
	}

	/** Yaw only, in degrees — 0 faces north. **/
	public var heading(get, set):Float;

	inline function get_heading():Float
		return EntityNatives.getEntityHeading(handle);

	inline function set_heading(value:Float):Float {
		EntityNatives.setEntityHeading(handle, value);
		return value;
	}

	public var quaternion(get, set):Quaternion;

	function get_quaternion():Quaternion {
		var result = NativeOutputs.getEntityQuaternion(handle);
		return new Quaternion(result.x, result.y, result.z, result.w);
	}

	function set_quaternion(value:Quaternion):Quaternion {
		EntityNatives.setEntityQuaternion(handle, value.x, value.y, value.z, value.w);
		return value;
	}

	/** The unit vector the entity faces. **/
	public var forwardVector(get, never):Vector3;

	inline function get_forwardVector():Vector3
		return cast EntityNatives.getEntityForwardVector(handle);

	public var velocity(get, set):Vector3;

	inline function get_velocity():Vector3
		return cast EntityNatives.getEntityVelocity(handle);

	function set_velocity(value:Vector3):Vector3 {
		EntityNatives.setEntityVelocity(handle, value.x, value.y, value.z);
		return value;
	}

	/** Current speed in metres per second. Multiply by 3.6 for km/h, 2.237 for mph. **/
	public var speed(get, never):Float;

	inline function get_speed():Float
		return EntityNatives.getEntitySpeed(handle);

	public var heightAboveGround(get, never):Float;

	inline function get_heightAboveGround():Float
		return EntityNatives.getEntityHeightAboveGround(handle);

	// -- Health and state --------------------------------------------------

	public var health(get, set):Int;

	inline function get_health():Int
		return EntityNatives.getEntityHealth(handle);

	inline function set_health(value:Int):Int {
		EntityNatives.setEntityHealth(handle, value);
		return value;
	}

	public var maxHealth(get, never):Int;

	inline function get_maxHealth():Int
		return EntityNatives.getEntityMaxHealth(handle);

	public var isDead(get, never):Bool;

	inline function get_isDead():Bool
		return EntityNatives.isEntityDead(handle);

	public var visible(get, set):Bool;

	inline function get_visible():Bool
		return EntityNatives.isEntityVisible(handle);

	inline function set_visible(value:Bool):Bool {
		EntityNatives.setEntityVisible(handle, value, false);
		return value;
	}

	/** Opacity from 0 (invisible) to 255. **/
	public var alpha(get, set):Int;

	inline function get_alpha():Int
		return EntityNatives.getEntityAlpha(handle);

	inline function set_alpha(value:Int):Int {
		EntityNatives.setEntityAlpha(handle, value, false);
		return value;
	}

	/** Whether the entity is pinned in place. Write-only — the game exposes no getter. **/
	public var frozen(never, set):Bool;

	inline function set_frozen(value:Bool):Bool {
		EntityNatives.freezeEntityPosition(handle, value);
		return value;
	}

	public var collision(never, set):Bool;

	inline function set_collision(value:Bool):Bool {
		EntityNatives.setEntityCollision(handle, value, true);
		return value;
	}

	public var invincible(never, set):Bool;

	inline function set_invincible(value:Bool):Bool {
		EntityNatives.setEntityInvincible(handle, value);
		return value;
	}

	/** Draws the game's selection outline around the entity. **/
	public var outline(never, set):Bool;

	inline function set_outline(value:Bool):Bool {
		Cfx.setEntityDrawOutline(handle, value);
		return value;
	}

	// -- Relationships -----------------------------------------------------

	/** The entity this one is attached to, or `null`. **/
	public var attachedTo(get, never):Entity;

	function get_attachedTo():Entity {
		if (!EntityNatives.isEntityAttached(handle)) return null;
		return fromHandle(EntityNatives.getEntityAttachedTo(handle));
	}

	public var isAttached(get, never):Bool;

	inline function get_isAttached():Bool
		return EntityNatives.isEntityAttached(handle);

	/**
		Attaches this entity to `target`, offset from one of its bones.

		@param bone Bone index on the target; 0 attaches to its origin.
		@param collision Whether the two keep colliding with each other.
	**/
	public function attachTo(target:Entity, offset:Vector3, rotation:Vector3, bone:Int = 0, collision:Bool = false):Void {
		EntityNatives.attachEntityToEntity(handle, target.handle, bone, offset.x, offset.y, offset.z, rotation.x, rotation.y, rotation.z, false, false,
			collision, false, 2, true);
	}

	public inline function detach(keepVelocity:Bool = true, collision:Bool = true):Void {
		EntityNatives.detachEntity(handle, keepVelocity, collision);
	}

	/** Whether nothing solid sits between this entity and `other`. **/
	public inline function hasClearLineOfSightTo(other:Entity, flags:Int = 17):Bool {
		return EntityNatives.hasEntityClearLosToEntity(handle, other.handle, flags);
	}

	// -- Ownership ---------------------------------------------------------

	/**
		Whether this client currently owns the entity. Only the owner may
		modify a networked entity and have the change replicate.
	**/
	public var hasControl(get, never):Bool;

	inline function get_hasControl():Bool
		return Network.networkHasControlOfEntity(handle);

	/**
		Asks the server for ownership and waits for it, returning whether it
		was granted before `timeoutMs` elapsed.

		Every write to a networked entity you don't own is silently reverted by
		its real owner, so call this first:

		```haxe
		if (vehicle.requestControl()) vehicle.repair();
		```

		Must be called from inside a coroutine. Ownership can be lost again at
		any moment, so keep the work that follows short.
	**/
	public function requestControl(timeoutMs:Int = 1000):Bool {
		if (hasControl) return true;

		return Thread.waitUntil(() -> {
			Network.networkRequestControlOfEntity(handle);
			return Network.networkHasControlOfEntity(handle);
		}, timeoutMs);
	}

	// -- Space -------------------------------------------------------------

	public inline function distanceTo(point:Vector3):Float
		return coords.distance(point);

	public inline function distanceToEntity(other:Entity):Float
		return coords.distance(other.coords);

	/** Converts a position expressed in the entity's own frame into world space. **/
	public inline function offsetInWorldCoords(offset:Vector3):Vector3
		return cast EntityNatives.getOffsetFromEntityInWorldCoords(handle, offset.x, offset.y, offset.z);

	/** The inverse of `offsetInWorldCoords`: world space into the entity's frame. **/
	public inline function worldToLocal(worldPosition:Vector3):Vector3
		return cast EntityNatives.getOffsetFromEntityGivenWorldCoords(handle, worldPosition.x, worldPosition.y, worldPosition.z);

	// -- Lifetime ----------------------------------------------------------

	/**
		Claims the entity for this script, so the game's population manager
		won't clean it up while you're using it.
	**/
	public inline function setAsMission(grabFromOtherScript:Bool = true):Void {
		EntityNatives.setEntityAsMissionEntity(handle, true, grabFromOtherScript);
	}

	/** Releases the entity back to the game, which may then despawn it. **/
	public inline function markAsNoLongerNeeded():Void {
		EntityNatives.setEntityAsNoLongerNeeded(handle);
	}

	/**
		Deletes the entity.

		Requires ownership: on a networked entity this silently does nothing
		unless `requestControl()` succeeded first.
	**/
	public function delete():Void {
		if (!exists) return;
		setAsMission(true);
		EntityNatives.deleteEntity(handle);
	}

	public function toString():String
		return '${Type.getClassName(Type.getClass(this))}(#$handle)';
}
