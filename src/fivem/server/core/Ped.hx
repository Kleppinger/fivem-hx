package fivem.server.core;

import fivem.server.natives.Cfx;
import fivem.shared.util.Hash;
import fivem.shared.util.Vector3;

/**
	A ped on the server.

	Server-side peds are mostly read-only: the game logic that drives them runs
	on the client that owns them. Position, seating and weapons can be set from
	here; animations, tasks and health cannot, and have to be asked of the
	owning client via an event.

	```haxe
	var ped = player.ped;
	if (ped != null && ped.isInVehicle) {
	    trace('${player.name} is driving ${ped.currentVehicle.plate}');
	}
	```
**/
class Ped extends Entity {
	public function new(handle:Int) {
		super(handle);
	}

	public var armour(get, set):Int;

	inline function get_armour():Int
		return Cfx.getPedArmour(handle);

	inline function set_armour(value:Int):Int {
		Cfx.setPedArmour(handle, value);
		return value;
	}

	/** Maximum health, which for peds is tracked separately from `Entity.maxHealth`. **/
	public var pedMaxHealth(get, never):Int;

	inline function get_pedMaxHealth():Int
		return Cfx.getPedMaxHealth(handle);

	public var isPlayer(get, never):Bool;

	inline function get_isPlayer():Bool
		return Cfx.isPedAPlayer(handle);

	public var isInVehicle(get, never):Bool;

	inline function get_isInVehicle():Bool
		return Cfx.isPedInAnyVehicle(handle);

	/** The vehicle the ped is sitting in, or `null`. **/
	public var currentVehicle(get, never):Vehicle;

	function get_currentVehicle():Vehicle {
		var vehicleHandle:Int = Cfx.getVehiclePedIsIn(handle, false);
		return vehicleHandle == 0 ? null : new Vehicle(vehicleHandle);
	}

	/** The seat index the ped occupies, or `null` when on foot. **/
	public var seat(get, never):Null<Int>;

	function get_seat():Null<Int> {
		if (!isInVehicle) return null;
		return Cfx.getSeatPedIsUsing(handle);
	}

	/** The weapon hash that killed this ped, or 0. **/
	public var causeOfDeath(get, never):Int;

	inline function get_causeOfDeath():Int
		return Cfx.getPedCauseOfDeath(handle);

	/** Puts the ped straight into a seat. -1 is the driver's. **/
	public inline function warpIntoVehicle(vehicle:Vehicle, seat:Int = -1):Void {
		Cfx.setPedIntoVehicle(handle, vehicle.handle, seat);
	}

	public inline function clearTasks():Void {
		Cfx.clearPedTasks(handle);
	}

	public inline function giveWeapon(weapon:Hash, ammo:Int = 100, equip:Bool = true):Void {
		Cfx.giveWeaponToPed(handle, weapon, ammo, false, equip);
	}

	public inline function removeAllWeapons():Void {
		Cfx.removeAllPedWeapons(handle, true);
	}

	/**
		Spawns a ped.

		Blocks the calling coroutine until the ped is networked: a
		server-created entity is orphaned, with no network ID, until a client
		comes into scope for it. Returns `null` if that does not happen within
		the timeout.
	**/
	public static function create(model:Hash, position:Vector3, heading:Float = 0.0, pedType:Int = 4):Ped {
		var handle:Int = Cfx.createPed(pedType, model, position.x, position.y, position.z, heading, true, true);
		if (handle == 0) return null;

		var ped = new Ped(handle);
		return ped.waitUntilNetworked() ? ped : null;
	}
}
