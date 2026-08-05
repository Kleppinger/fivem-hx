package fivem.client.core;

import fivem.client.NativeOutputs;
import fivem.client.natives.Cfx;
import fivem.client.natives.Vehicle as VehicleNatives;
import fivem.shared.util.Hash;
import fivem.shared.util.Rgba;
import fivem.shared.util.Vector3;

/**
	Seat indices, as the vehicle natives number them.

	`Driver` is -1 and passengers count up from 0, which is why a plain
	`for (i in 0...seats)` loop misses the driver.
**/
enum abstract VehicleSeat(Int) from Int to Int {
	var Driver = -1;
	var FrontPassenger = 0;
	var RearLeft = 1;
	var RearRight = 2;
}

/**
	Door lock states as `SET_VEHICLE_DOORS_LOCKED` understands them.
**/
enum abstract VehicleLockState(Int) from Int to Int {
	var Unlocked = 1;
	var Locked = 2;

	/** Locked for players, but NPCs can still get in. **/
	var LockedForPlayer = 3;

	/** Players can't get in, and anyone inside can't get out. **/
	var LockedPlayerInside = 4;

	/** Can be opened, but not driven. **/
	var CannotEnter = 7;
}

/**
	Door indices for the door natives.
**/
enum abstract VehicleDoor(Int) from Int to Int {
	var FrontLeft = 0;
	var FrontRight = 1;
	var BackLeft = 2;
	var BackRight = 3;
	var Hood = 4;
	var Trunk = 5;
}

/**
	A vehicle on the client.

	```haxe
	var car = Vehicle.create("adder", spawnPoint, 90.0, true);
	car.plate = "HAXE 01";
	car.setColours(12, 12);
	car.lockState = Locked;
	```

	Everything here writes through to the game immediately. On a networked
	vehicle you don't own, those writes are reverted by the real owner within a
	frame or two — call `requestControl()` first, or make the change on the
	server.
**/
class Vehicle extends Entity {
	public function new(handle:Int) {
		super(handle);
	}

	// -- Identity ----------------------------------------------------------

	/** The licence plate text. **/
	public var plate(get, set):String;

	inline function get_plate():String
		return VehicleNatives.getVehicleNumberPlateText(handle);

	inline function set_plate(value:String):String {
		VehicleNatives.setVehicleNumberPlateText(handle, value);
		return value;
	}

	/** The plate's background style, 0–5. **/
	public var plateStyle(get, set):Int;

	inline function get_plateStyle():Int
		return VehicleNatives.getVehicleNumberPlateTextIndex(handle);

	inline function set_plateStyle(value:Int):Int {
		VehicleNatives.setVehicleNumberPlateTextIndex(handle, value);
		return value;
	}

	/** The vehicle's class index — 0 compacts, 7 sports, 18 emergency, and so on. **/
	public var vehicleClass(get, never):Int;

	inline function get_vehicleClass():Int
		return VehicleNatives.getVehicleClass(handle);

	/** The in-game display name, e.g. `"ADDER"`. **/
	public var displayName(get, never):String;

	inline function get_displayName():String
		return VehicleNatives.getDisplayNameFromVehicleModel(model);

	// -- Condition ---------------------------------------------------------

	/** Engine condition from -4000 (destroyed) to 1000 (perfect). **/
	public var engineHealth(get, set):Float;

	inline function get_engineHealth():Float
		return VehicleNatives.getVehicleEngineHealth(handle);

	inline function set_engineHealth(value:Float):Float {
		VehicleNatives.setVehicleEngineHealth(handle, value);
		return value;
	}

	/** Bodywork condition, 0 to 1000. **/
	public var bodyHealth(get, set):Float;

	inline function get_bodyHealth():Float
		return VehicleNatives.getVehicleBodyHealth(handle);

	inline function set_bodyHealth(value:Float):Float {
		VehicleNatives.setVehicleBodyHealth(handle, value);
		return value;
	}

	/** Fuel tank condition, 0 to 1000. Below ~750 the vehicle leaks and can explode. **/
	public var tankHealth(get, set):Float;

	inline function get_tankHealth():Float
		return VehicleNatives.getVehiclePetrolTankHealth(handle);

	inline function set_tankHealth(value:Float):Float {
		VehicleNatives.setVehiclePetrolTankHealth(handle, value);
		return value;
	}

	/**
		Fuel level, 0 to 100.

		The base game barely uses this — it refills whenever the vehicle is
		re-created and doesn't drain on its own. Fuel scripts read and write it
		on a timer rather than relying on the game.
	**/
	public var fuel(get, set):Float;

	inline function get_fuel():Float
		return Cfx.getVehicleFuelLevel(handle);

	inline function set_fuel(value:Float):Float {
		Cfx.setVehicleFuelLevel(handle, value);
		return value;
	}

	/** Dirt level, 0 (clean) to 15 (filthy). **/
	public var dirtLevel(get, set):Float;

	inline function get_dirtLevel():Float
		return VehicleNatives.getVehicleDirtLevel(handle);

	inline function set_dirtLevel(value:Float):Float {
		VehicleNatives.setVehicleDirtLevel(handle, value);
		return value;
	}

	public var isDriveable(get, never):Bool;

	inline function get_isDriveable():Bool
		return VehicleNatives.isVehicleDriveable(handle, false);

	public var engineRunning(get, set):Bool;

	inline function get_engineRunning():Bool
		return VehicleNatives.getIsVehicleEngineRunning(handle);

	inline function set_engineRunning(value:Bool):Bool {
		VehicleNatives.setVehicleEngineOn(handle, value, true, true);
		return value;
	}

	/** Repairs bodywork, engine and deformation, and restores full health. **/
	public function repair():Void {
		VehicleNatives.setVehicleFixed(handle);
		VehicleNatives.setVehicleDeformationFixed(handle);
		engineHealth = 1000;
		bodyHealth = 1000;
		tankHealth = 1000;
	}

	// -- Access ------------------------------------------------------------

	public var lockState(get, set):VehicleLockState;

	inline function get_lockState():VehicleLockState
		return VehicleNatives.getVehicleDoorLockStatus(handle);

	inline function set_lockState(value:VehicleLockState):VehicleLockState {
		VehicleNatives.setVehicleDoorsLocked(handle, value);
		return value;
	}

	public inline function openDoor(door:VehicleDoor, instantly:Bool = false):Void {
		VehicleNatives.setVehicleDoorOpen(handle, door, false, instantly);
	}

	public inline function closeDoor(door:VehicleDoor, instantly:Bool = false):Void {
		VehicleNatives.setVehicleDoorShut(handle, door, instantly);
	}

	/** How far open a door is, 0 (shut) to 1 (fully open). **/
	public inline function doorAngle(door:VehicleDoor):Float {
		return VehicleNatives.getVehicleDoorAngleRatio(handle, door);
	}

	// -- Occupants ---------------------------------------------------------

	/** The ped in the driver's seat, or `null`. **/
	public var driver(get, never):Ped;

	inline function get_driver():Ped
		return occupantIn(Driver);

	/** How many seats the vehicle has, including the driver's. **/
	public var seatCount(get, never):Int;

	inline function get_seatCount():Int
		return VehicleNatives.getVehicleMaxNumberOfPassengers(handle) + 1;

	public var passengerCount(get, never):Int;

	inline function get_passengerCount():Int
		return VehicleNatives.getVehicleNumberOfPassengers(handle);

	/** The ped in `seat`, or `null` if it is empty. **/
	public function occupantIn(seat:VehicleSeat):Ped {
		var pedHandle:Int = VehicleNatives.getPedInVehicleSeat(handle, seat);
		return pedHandle == 0 ? null : new Ped(pedHandle);
	}

	public inline function isSeatFree(seat:VehicleSeat):Bool {
		return VehicleNatives.isVehicleSeatFree(handle, seat);
	}

	/** Every ped currently aboard, driver included. **/
	public function occupants():Array<Ped> {
		var found = [];
		for (seat in -1...seatCount) {
			var occupant = occupantIn(seat);
			if (occupant != null) found.push(occupant);
		}
		return found;
	}

	/** The lowest-numbered empty seat, or `null` if the vehicle is full. **/
	public function firstFreeSeat():Null<VehicleSeat> {
		for (seat in -1...seatCount) {
			if (isSeatFree(seat)) return seat;
		}
		return null;
	}

	// -- Appearance --------------------------------------------------------

	/** The primary and secondary paint indices. **/
	public function colours():{primary:Int, secondary:Int} {
		var result = NativeOutputs.getVehicleColours(handle);
		return {primary: result.primary, secondary: result.secondary};
	}

	public inline function setColours(primary:Int, secondary:Int):Void {
		VehicleNatives.setVehicleColours(handle, primary, secondary);
	}

	/** Paints the vehicle an arbitrary RGB colour, bypassing the game's palette. **/
	public function setCustomColours(primary:Rgba, ?secondary:Rgba):Void {
		VehicleNatives.setVehicleCustomPrimaryColour(handle, primary.r, primary.g, primary.b);

		var second = secondary != null ? secondary : primary;
		VehicleNatives.setVehicleCustomSecondaryColour(handle, second.r, second.g, second.b);
	}

	public inline function setExtraColours(pearlescent:Int, wheel:Int):Void {
		VehicleNatives.setVehicleExtraColours(handle, pearlescent, wheel);
	}

	public var livery(get, set):Int;

	inline function get_livery():Int
		return VehicleNatives.getVehicleLivery(handle);

	inline function set_livery(value:Int):Int {
		VehicleNatives.setVehicleLivery(handle, value);
		return value;
	}

	public var windowTint(get, set):Int;

	inline function get_windowTint():Int
		return VehicleNatives.getVehicleWindowTint(handle);

	inline function set_windowTint(value:Int):Int {
		VehicleNatives.setVehicleWindowTint(handle, value);
		return value;
	}

	public var wheelType(get, set):Int;

	inline function get_wheelType():Int
		return VehicleNatives.getVehicleWheelType(handle);

	inline function set_wheelType(value:Int):Int {
		VehicleNatives.setVehicleWheelType(handle, value);
		return value;
	}

	/**
		Fits a modification.

		The mod kit has to be selected before any mod will apply, which is what
		`SET_VEHICLE_MOD_KIT(0)` does — easy to miss, and the reason mods
		"silently don't work" so often. This does it for you.
	**/
	public function setMod(modType:Int, modIndex:Int, customTyres:Bool = false):Void {
		VehicleNatives.setVehicleModKit(handle, 0);
		VehicleNatives.setVehicleMod(handle, modType, modIndex, customTyres);
	}

	public inline function getMod(modType:Int):Int {
		return VehicleNatives.getVehicleMod(handle, modType);
	}

	/** Toggles a numbered extra (roof racks, spoilers, decals — model specific). **/
	public inline function setExtra(extraId:Int, enabled:Bool):Void {
		// The native's flag is inverted: `disable`, not `enable`.
		if (VehicleNatives.doesExtraExist(handle, extraId)) VehicleNatives.setVehicleExtra(handle, extraId, !enabled);
	}

	public inline function hasExtra(extraId:Int):Bool {
		return VehicleNatives.doesExtraExist(handle, extraId) && VehicleNatives.isVehicleExtraTurnedOn(handle, extraId);
	}

	// -- Placement ---------------------------------------------------------

	/** Drops the vehicle onto its wheels at its current position. **/
	public inline function placeOnGround():Bool {
		return VehicleNatives.setVehicleOnGroundProperly(handle);
	}

	/**
		Marks the vehicle as already owned so it doesn't need hotwiring and
		won't be reported stolen — what you want for a vehicle a player just
		took out of their own garage.
	**/
	public function markAsPlayerOwned():Void {
		VehicleNatives.setVehicleNeedsToBeHotwired(handle, false);
		VehicleNatives.setVehicleHasBeenOwnedByPlayer(handle, true);
	}

	// -- Creation ----------------------------------------------------------

	/**
		Spawns a vehicle, streaming its model in first.

		Blocks the calling coroutine until the model is ready, and returns
		`null` if the model is invalid or failed to load.

		@param networked Whether other players can see it. A local vehicle is
		       cheaper but exists on this client only.
	**/
	public static function create(model:Hash, position:Vector3, heading:Float = 0.0, networked:Bool = true):Vehicle {
		if (!Streaming.requestModel(model)) return null;

		var handle:Int = VehicleNatives.createVehicle(model, position.x, position.y, position.z, heading, networked, false);
		Streaming.releaseModel(model);
		if (handle == 0) return null;

		var vehicle = new Vehicle(handle);
		vehicle.setAsMission();
		return vehicle;
	}
}
