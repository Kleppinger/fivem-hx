package fivem.server.core;

import fivem.server.natives.Cfx;
import fivem.shared.util.LuaTables;
import fivem.shared.util.Vector3;

/**
	Server-side world queries.

	Unlike the client's `World`, this sees *everything* — the server has no
	streaming distance, so `allVehicles()` really is every vehicle in the
	session.

	```haxe
	for (vehicle in World.allVehicles()) {
	    if (vehicle.owner == -1) vehicle.delete();   // orphaned, clean it up
	}
	```
**/
class World {
	/** Every ped in the session, including every player's. **/
	public static function allPeds():Array<Ped> {
		return [for (handle in LuaTables.toArray((Cfx.getAllPeds() : Dynamic))) new Ped(handle)];
	}

	/** Every vehicle in the session. **/
	public static function allVehicles():Array<Vehicle> {
		return [for (handle in LuaTables.toArray((Cfx.getAllVehicles() : Dynamic))) new Vehicle(handle)];
	}

	/** Every world object in the session. **/
	public static function allProps():Array<Prop> {
		return [for (handle in LuaTables.toArray((Cfx.getAllObjects() : Dynamic))) new Prop(handle)];
	}

	/**
		Entities of one type within `radius` of `position`, nearest first.

		@param entityType 1 peds, 2 vehicles, 3 objects.
		@param models Restrict to these model hashes, or leave `null` for any.
	**/
	public static function entitiesInRadius(position:Vector3, radius:Float, entityType:Int = 1, ?models:Array<Int>):Array<Entity> {
		var raw = Cfx.getEntitiesInRadius(position.x, position.y, position.z, radius, entityType, true, LuaTables.fromArray(models));

		var found = [];
		for (handle in LuaTables.toArray((raw : Dynamic))) {
			var entity = Entity.fromHandle(handle);
			if (entity != null) found.push(entity);
		}
		return found;
	}

	/** The closest vehicle to `position` within `radius`, or `null`. **/
	public static function closestVehicle(position:Vector3, radius:Float = 50.0):Vehicle {
		var nearest:Vehicle = null;
		var nearestDistance = radius;

		for (vehicle in allVehicles()) {
			var distance = vehicle.coords.distance(position);
			if (distance < nearestDistance) {
				nearestDistance = distance;
				nearest = vehicle;
			}
		}

		return nearest;
	}

	/**
		Removes every entity this resource created that is still lying around.

		Worth calling from a resource stop handler: server-created entities
		outlive their resource, so a restart otherwise leaves the previous
		run's vehicles and props scattered across the map.
	**/
	public static function deleteOwnEntities():Void {
		var resourceName = fivem.shared.core.Resource.current();

		for (vehicle in allVehicles()) {
			if (vehicle.creatorResource == resourceName) vehicle.delete();
		}
		for (prop in allProps()) {
			if (prop.creatorResource == resourceName) prop.delete();
		}
		for (ped in allPeds()) {
			if (!ped.isPlayer && ped.creatorResource == resourceName) ped.delete();
		}
	}
}
