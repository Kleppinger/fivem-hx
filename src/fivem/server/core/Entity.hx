package fivem.server.core;

import fivem.server.natives.Cfx;
import fivem.shared.core.StateBag;
import fivem.shared.core.Thread;
import fivem.shared.util.Vector3;

/**
	What kind of thing an entity handle refers to.
**/
enum abstract EntityType(Int) from Int to Int {
	var None = 0;
	var PedType = 1;
	var VehicleType = 2;
	var ObjectType = 3;
}

/**
	The base class for entities on the server.

	Server-side entities are deliberately more limited than their client
	counterparts, and that isn't an omission in this library — it reflects
	what FXServer actually exposes. The server owns positions, models, network
	IDs and state bags; the *client* that owns an entity owns its health,
	visual state, tasks and physics. Anything missing here has no server
	native behind it.

	The practical consequence: change what the server can change directly, and
	push the rest to the owning client with an event.

	```haxe
	var vehicle = Vehicle.create("adder", spawnPoint, 90.0);
	vehicle.state.set("owner", player.identifier("license"));
	```

	Unlike client handles, server entity handles are stable for as long as the
	entity exists, but they still mean nothing to a client — send `netId`.
**/
class Entity {
	/** The server-side entity handle. **/
	public final handle:Int;

	public function new(handle:Int) {
		this.handle = handle;
	}

	/**
		Wraps a handle in the most specific class available, or returns `null`
		if the entity doesn't exist.
	**/
	public static function fromHandle(handle:Int):Entity {
		if (handle == 0 || !Cfx.doesEntityExist(handle)) return null;

		return switch (Cfx.getEntityType(handle) : EntityType) {
			case PedType: new Ped(handle);
			case VehicleType: new Vehicle(handle);
			case ObjectType: new Prop(handle);
			case _: new Entity(handle);
		};
	}

	/** Resolves a network ID to a server entity, or `null` if there is none. **/
	public static function fromNetId(netId:Int):Entity {
		return fromHandle(Cfx.networkGetEntityFromNetworkId(netId));
	}

	// -- Identity ----------------------------------------------------------

	public var exists(get, never):Bool;

	inline function get_exists():Bool
		return handle != 0 && Cfx.doesEntityExist(handle);

	public var type(get, never):EntityType;

	inline function get_type():EntityType
		return Cfx.getEntityType(handle);

	public var model(get, never):Int;

	inline function get_model():Int
		return Cfx.getEntityModel(handle);

	/**
		The network ID — the entity reference to send to clients — or 0 if the
		entity has none yet.

		Guarded, because the underlying native raises rather than returning a
		sentinel:

		```
		script error in native ...: Tried to access invalid entity: 131333
		```

		An entity the server just created is *orphaned* until a client comes
		into scope for it: it has a handle, but no network ID and no owner. A
		stale handle behaves the same way. Both cases read as 0 here instead of
		taking down the handler that asked.

		The existence check alone is not sufficient — the native has been
		reported to raise even when `DoesEntityExist` says otherwise — so the
		call itself is also caught.
	**/
	public var netId(get, never):Int;

	function get_netId():Int {
		if (!exists) return 0;
		return try Cfx.networkGetNetworkIdFromEntity(handle) catch (_:Dynamic) 0;
	}

	/**
		Blocks until the entity is registered on the server and has a network
		ID, returning whether it got one before `timeoutMs` elapsed.

		Server-created entities do not exist immediately — they stay orphaned
		until a client is in scope. Anything that needs the network ID (sending
		it to a client, writing a state bag) has to wait for this first, which
		is what the `create` helpers do for you.

		Returns false if no client ever comes into scope, or if the model was
		not valid for the entity type.
	**/
	public function waitUntilNetworked(timeoutMs:Int = 5000):Bool {
		return Thread.waitUntil(() -> netId != 0, timeoutMs);
	}

	/**
		The server ID of the client that currently owns this entity, or -1 when
		nobody does.

		Ownership decides which client simulates the entity, and therefore who
		must be told to change its health, tasks or physics.
	**/
	public var owner(get, never):Int;

	inline function get_owner():Int
		return Cfx.networkGetEntityOwner(handle);

	/** The resource that created the entity, if any. **/
	public var creatorResource(get, never):String;

	inline function get_creatorResource():String
		return Cfx.getEntityScript(handle);

	/** The entity's replicated state bag. **/
	public var state(get, never):StateBag;

	inline function get_state():StateBag
		return StateBag.entity(netId);

	/**
		The routing bucket this entity lives in.

		Buckets are the server's instancing mechanism: entities and players in
		different buckets can't see or interact with each other at all. Bucket
		0 is the default world.
	**/
	public var routingBucket(get, set):Int;

	inline function get_routingBucket():Int
		return Cfx.getEntityRoutingBucket(handle);

	inline function set_routingBucket(value:Int):Int {
		Cfx.setEntityRoutingBucket(handle, value);
		return value;
	}

	// -- Transform ---------------------------------------------------------

	public var coords(get, set):Vector3;

	inline function get_coords():Vector3
		return cast Cfx.getEntityCoords(handle);

	function set_coords(value:Vector3):Vector3 {
		Cfx.setEntityCoords(handle, value.x, value.y, value.z, false, false, false, false);
		return value;
	}

	/** Rotation in degrees as (pitch, roll, yaw). **/
	public var rotation(get, set):Vector3;

	inline function get_rotation():Vector3
		return cast Cfx.getEntityRotation(handle);

	function set_rotation(value:Vector3):Vector3 {
		Cfx.setEntityRotation(handle, value.x, value.y, value.z, 2, true);
		return value;
	}

	public var heading(get, set):Float;

	inline function get_heading():Float
		return Cfx.getEntityHeading(handle);

	inline function set_heading(value:Float):Float {
		Cfx.setEntityHeading(handle, value);
		return value;
	}

	public var velocity(get, set):Vector3;

	inline function get_velocity():Vector3
		return cast Cfx.getEntityVelocity(handle);

	function set_velocity(value:Vector3):Vector3 {
		Cfx.setEntityVelocity(handle, value.x, value.y, value.z);
		return value;
	}

	/** Speed in metres per second. **/
	public var speed(get, never):Float;

	inline function get_speed():Float
		return Cfx.getEntitySpeed(handle);

	// -- Health ------------------------------------------------------------

	/**
		Current health. Read-only on the server — health is simulated by the
		owning client, so setting it means sending that client an event.
	**/
	public var health(get, never):Int;

	inline function get_health():Int
		return Cfx.getEntityHealth(handle);

	public var maxHealth(get, never):Int;

	inline function get_maxHealth():Int
		return Cfx.getEntityMaxHealth(handle);

	public var frozen(get, set):Bool;

	inline function get_frozen():Bool
		return Cfx.isEntityPositionFrozen(handle) == true;

	inline function set_frozen(value:Bool):Bool {
		Cfx.freezeEntityPosition(handle, value);
		return value;
	}

	/** The entity this one is attached to, or `null`. **/
	public var attachedTo(get, never):Entity;

	function get_attachedTo():Entity {
		var target:Int = Cfx.getEntityAttachedTo(handle);
		return target == 0 ? null : fromHandle(target);
	}

	public inline function distanceTo(point:Vector3):Float
		return coords.distance(point);

	public inline function distanceToEntity(other:Entity):Float
		return coords.distance(other.coords);

	/**
		Deletes the entity. Unlike on the client this always works — the server
		is authoritative and doesn't need to negotiate ownership first.
	**/
	public function delete():Void {
		if (exists) Cfx.deleteEntity(handle);
	}

	public function toString():String
		return '${Type.getClassName(Type.getClass(this))}(#$handle, net ${exists ? netId : 0})';
}
