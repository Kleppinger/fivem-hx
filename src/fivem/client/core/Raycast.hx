package fivem.client.core;

import fivem.client.NativeOutputs;
import fivem.client.natives.Cam;
import fivem.client.natives.Shapetest;
import fivem.shared.util.MathUtil;
import fivem.shared.util.Vector3;

/**
	What a shape test is allowed to hit.

	These are bit flags, but combine them with `Bits.bor`, not Haxe's `|` —
	that operator compiles to a shim requiring a Lua module FXServer does not
	have, and takes the whole resource down at load time. See
	`fivem.shared.util.Bits`.
**/
enum abstract RaycastFlags(Int) from Int to Int {
	/** Static map geometry: terrain, buildings, props baked into the map. **/
	var WorldGeometry = 1;

	var Vehicles = 2;
	var PedsSimple = 4;
	var Peds = 8;
	var Objects = 16;
	var Water = 32;
	var Foliage = 256;

	/** Everything solid: world, vehicles, peds and objects. **/
	var Everything = 31;
}

/**
	The outcome of a shape test.
**/
typedef RaycastHit = {
	/** Whether anything was struck. **/
	var hit:Bool;

	/** Where the ray stopped — its far end when nothing was hit. **/
	var position:Vector3;

	/** The surface normal at the impact point. **/
	var normal:Vector3;

	/** The entity struck, or `null` for world geometry. **/
	var entity:Null<Entity>;
}

/**
	Shape tests — the game's ray casting, used for "what am I looking at?"
	interaction, ground probing and line-of-sight checks.

	```haxe
	var hit = Raycast.fromCamera(10.0);
	if (hit.hit && hit.entity != null) {
	    Ui.showHelp("Press ~INPUT_CONTEXT~ to interact");
	}
	```

	The asynchronous natives take a frame or two to produce a result, so the
	methods here use the synchronous variant: it returns this frame, which is
	what interaction code needs. That costs more per call — don't run one every
	frame at long range if a distance check would do.
**/
class Raycast {
	/**
		Casts a ray between two points.

		@param ignore An entity to pass through — usually the player, so the
		       ray doesn't immediately hit their own body.
	**/
	public static function between(from:Vector3, to:Vector3, flags:RaycastFlags = Everything, ?ignore:Entity):RaycastHit {
		var handle = Shapetest.startExpensiveSynchronousShapeTestLosProbe(from.x, from.y, from.z, to.x, to.y, to.z, flags,
			ignore == null ? 0 : ignore.handle, 4);

		return resolve(handle, to);
	}

	/**
		Casts a ray from a point along a direction for `distance` metres.
	**/
	public static inline function direction(origin:Vector3, direction:Vector3, distance:Float, flags:RaycastFlags = Everything,
			?ignore:Entity):RaycastHit {
		return between(origin, origin + direction.normalized() * distance, flags, ignore);
	}

	/**
		Casts a ray from the gameplay camera along its view direction — what
		the player is looking at.

		The local player is excluded automatically, since a ray starting at the
		camera would otherwise hit their own head in first person.
	**/
	public static function fromCamera(distance:Float = 10.0, flags:RaycastFlags = Everything):RaycastHit {
		var origin:Vector3 = cast Cam.getGameplayCamCoord();
		return between(origin, origin + cameraForward() * distance, flags, LocalPlayer.ped());
	}

	/**
		Casts a ray straight down from `position` to find the surface beneath
		it — more reliable than `World.groundZ` on top of vehicles, props and
		other non-terrain surfaces.
	**/
	public static inline function down(position:Vector3, distance:Float = 10.0, flags:RaycastFlags = Everything, ?ignore:Entity):RaycastHit {
		return between(position, position - Vector3.up() * distance, flags, ignore);
	}

	/** The unit vector the gameplay camera is pointing along. **/
	public static function cameraForward():Vector3 {
		var rotation:Vector3 = cast Cam.getGameplayCamRot(2);
		var pitch = rotation.x * MathUtil.DEG_TO_RAD;
		var yaw = rotation.z * MathUtil.DEG_TO_RAD;
		var cosPitch = Math.abs(Math.cos(pitch));

		return new Vector3(-Math.sin(yaw) * cosPitch, Math.cos(yaw) * cosPitch, Math.sin(pitch));
	}

	static function resolve(shapeTestHandle:Int, fallbackPosition:Vector3):RaycastHit {
		var result = NativeOutputs.getShapeTestResult(shapeTestHandle);

		return {
			hit: result.hit,
			position: result.hit ? result.endCoords : fallbackPosition,
			normal: result.surfaceNormal,
			// A hit on world geometry reports entity 0, which is not an entity.
			entity: result.entityHit != 0 ? Entity.fromHandle(result.entityHit) : null
		};
	}
}
