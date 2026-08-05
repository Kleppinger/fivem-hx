package fivem.client.core;

import fivem.client.NativeOutputs;
import fivem.client.natives.Cfx;
import fivem.client.natives.Misc;
import fivem.client.natives.Vehicle as VehicleNatives;
import fivem.shared.util.Hash;
import fivem.shared.util.LuaTables;
import fivem.shared.util.Vector3;

/**
	Queries against the world as this client sees it.

	Everything here is limited to what is *streamed in*. A client only has
	entities within a few hundred metres of the player, so `allVehicles()`
	means "vehicles I can currently see", never "vehicles on the server". For
	server-wide queries, ask the server.

	```haxe
	var nearest = World.closestVehicle(LocalPlayer.coords(), 20.0);
	if (nearest != null) nearest.repair();
	```
**/
class World {
	/** Every ped streamed in on this client, players included. **/
	public static function allPeds():Array<Ped> {
		return [for (handle in pool("CPed")) new Ped(handle)];
	}

	/** Every vehicle streamed in on this client. **/
	public static function allVehicles():Array<Vehicle> {
		return [for (handle in pool("CVehicle")) new Vehicle(handle)];
	}

	/** Every world object streamed in on this client. **/
	public static function allProps():Array<Prop> {
		return [for (handle in pool("CObject")) new Prop(handle)];
	}

	/**
		Raw handles from one of the game's entity pools: `"CPed"`,
		`"CVehicle"`, `"CObject"` or `"CPickup"`.
	**/
	public static function pool(poolName:String):Array<Int> {
		return LuaTables.toArray(Cfx.getGamePool(poolName));
	}

	/**
		The nearest vehicle to `position` within `radius`, or `null`.

		@param model Restrict to one model, or leave `null` for any.
		@param flags The game's search flags; 70 (the default) finds ordinary
		       drivable vehicles including wrecks.
	**/
	public static function closestVehicle(position:Vector3, radius:Float = 10.0, ?model:Hash, flags:Int = 70):Vehicle {
		var handle:Int = VehicleNatives.getClosestVehicle(position.x, position.y, position.z, radius, model == null ? 0 : model, flags);
		return handle == 0 ? null : new Vehicle(handle);
	}

	/**
		The nearest ped to `position` within `radius`, or `null`.

		Scans the streamed-in ped pool rather than calling `GET_CLOSEST_PED`,
		whose output parameter isn't reachable through the generated externs,
		and which can't exclude the player asking.
	**/
	public static function closestPed(position:Vector3, radius:Float = 10.0, includePlayers:Bool = false):Ped {
		var localPed = LocalPlayer.pedHandle();
		var nearest:Ped = null;
		var nearestDistance = radius;

		for (handle in pool("CPed")) {
			if (handle == localPed) continue;

			var ped = new Ped(handle);
			if (!includePlayers && ped.isPlayer) continue;

			var distance = ped.coords.distance(position);
			if (distance < nearestDistance) {
				nearestDistance = distance;
				nearest = ped;
			}
		}

		return nearest;
	}

	/** Every entity of the given pool within `radius` of `position`, nearest first. **/
	public static function entitiesInRadius(position:Vector3, radius:Float, poolName:String = "CPed"):Array<Entity> {
		var found = [];
		for (handle in pool(poolName)) {
			var entity = new Entity(handle);
			if (entity.coords.distance(position) <= radius) found.push(entity);
		}

		found.sort((a, b) -> {
			var difference = a.coords.distance(position) - b.coords.distance(position);
			return difference < 0 ? -1 : (difference > 0 ? 1 : 0);
		});

		return found;
	}

	/**
		The ground height under `position`, or `null` when the collision there
		isn't streamed in.

		Always check for `null` before using the result as a spawn height — a
		`0` fallback puts things at sea level, usually under the map.
	**/
	public static function groundZ(position:Vector3, includeWater:Bool = false):Null<Float> {
		var result = NativeOutputs.getGroundZFor3dCoord(position.x, position.y, position.z, includeWater);
		return result.found ? result.groundZ : null;
	}

	/**
		`position` snapped down onto the ground, or unchanged when the ground
		height can't be determined.
	**/
	public static function snapToGround(position:Vector3, includeWater:Bool = false):Vector3 {
		var z = groundZ(position, includeWater);
		return z == null ? position : position.withZ(z);
	}

	/** Straight-line distance between two points. **/
	public static inline function distance(from:Vector3, to:Vector3, useZ:Bool = true):Float {
		return Misc.getDistanceBetweenCoords(from.x, from.y, from.z, to.x, to.y, to.z, useZ);
	}
}
