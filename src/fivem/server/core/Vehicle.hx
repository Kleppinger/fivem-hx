package fivem.server.core;

import fivem.server.natives.Cfx;
import fivem.shared.util.Hash;
import fivem.shared.util.Vector3;

/**
	Door lock states, matching the client's `VehicleLockState`.
**/
enum abstract VehicleLockState(Int) from Int to Int {
	var Unlocked = 1;
	var Locked = 2;
	var LockedForPlayer = 3;
	var LockedPlayerInside = 4;
	var CannotEnter = 7;
}

/**
	A vehicle on the server.

	```haxe
	var car = Vehicle.create("adder", spawnPoint, 90.0);
	car.plate = "HX 001";
	car.state.set("ownerLicense", license);
	player.ped.warpIntoVehicle(car);
	```

	Creating a vehicle server-side is the right default for anything
	persistent: it exists whether or not any particular client is nearby, it
	survives that client disconnecting, and it can't be spoofed by a modified
	client.
**/
class Vehicle extends Entity {
	public function new(handle:Int) {
		super(handle);
	}

	public var plate(get, set):String;

	inline function get_plate():String
		return Cfx.getVehicleNumberPlateText(handle);

	inline function set_plate(value:String):String {
		Cfx.setVehicleNumberPlateText(handle, value);
		return value;
	}

	/** The vehicle's category as a string: `"automobile"`, `"heli"`, `"boat"`, ... **/
	public var vehicleType(get, never):String;

	inline function get_vehicleType():String
		return Cfx.getVehicleType(handle);

	/**
		Engine condition, -4000 to 1000.

		Read-only: FXServer exposes no engine-health setter, because engine
		damage is simulated by the client that owns the vehicle. To repair one,
		tell that client (`Net.emitClient(..., vehicle.owner, ...)`) and have it
		call `repair()` on its own `fivem.client.core.Vehicle`.
	**/
	public var engineHealth(get, never):Float;

	inline function get_engineHealth():Float
		return Cfx.getVehicleEngineHealth(handle);

	public var bodyHealth(get, set):Float;

	inline function get_bodyHealth():Float
		return Cfx.getVehicleBodyHealth(handle);

	inline function set_bodyHealth(value:Float):Float {
		Cfx.setVehicleBodyHealth(handle, value);
		return value;
	}

	public var dirtLevel(get, set):Float;

	inline function get_dirtLevel():Float
		return Cfx.getVehicleDirtLevel(handle);

	inline function set_dirtLevel(value:Float):Float {
		Cfx.setVehicleDirtLevel(handle, value);
		return value;
	}

	public var lockState(get, set):VehicleLockState;

	inline function get_lockState():VehicleLockState
		return Cfx.getVehicleDoorLockStatus(handle);

	inline function set_lockState(value:VehicleLockState):VehicleLockState {
		Cfx.setVehicleDoorsLocked(handle, value);
		return value;
	}

	public var engineRunning(get, never):Bool;

	inline function get_engineRunning():Bool
		return Cfx.getIsVehicleEngineRunning(handle);

	public var sirenOn(get, never):Bool;

	inline function get_sirenOn():Bool
		return Cfx.isVehicleSirenOn(handle);

	public var alarm(never, set):Bool;

	inline function set_alarm(value:Bool):Bool {
		Cfx.setVehicleAlarm(handle, value);
		return value;
	}

	public inline function setColours(primary:Int, secondary:Int):Void {
		Cfx.setVehicleColours(handle, primary, secondary);
	}

	/** The ped in `seat` (-1 is the driver), or `null`. **/
	public function occupantIn(seat:Int):Ped {
		var pedHandle:Int = Cfx.getPedInVehicleSeat(handle, seat);
		return pedHandle == 0 ? null : new Ped(pedHandle);
	}

	/** The ped currently driving, or `null`. **/
	public var driver(get, never):Ped;

	inline function get_driver():Ped
		return occupantIn(-1);

	/** The last ped to occupy `seat`, even after they got out. **/
	public function lastOccupantIn(seat:Int):Ped {
		var pedHandle:Int = Cfx.getLastPedInVehicleSeat(handle, seat);
		return pedHandle == 0 ? null : new Ped(pedHandle);
	}

	/**
		Spawns a vehicle.

		Returns immediately with a usable handle — the server doesn't stream
		models. Clients render it as they come into range.
	**/
	public static function create(model:Hash, position:Vector3, heading:Float = 0.0):Vehicle {
		var handle:Int = Cfx.createVehicle(model, position.x, position.y, position.z, heading, true, true);
		return handle == 0 ? null : new Vehicle(handle);
	}

	/**
		Spawns a vehicle using the server setter, which creates the entity
		without needing a client nearby to own it.

		@param vehicleType The category: `"automobile"`, `"bike"`, `"boat"`,
		       `"heli"`, `"plane"`, `"submarine"`, `"trailer"`, `"train"`.
		       Getting this wrong produces a vehicle that never spawns
		       properly, so it must match the model.
	**/
	public static function createWithSetter(model:Hash, vehicleType:String, position:Vector3, heading:Float = 0.0):Vehicle {
		var handle:Int = Cfx.createVehicleServerSetter(model, vehicleType, position.x, position.y, position.z, heading);
		return handle == 0 ? null : new Vehicle(handle);
	}
}
