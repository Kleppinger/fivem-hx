package fivem.client.core;

import fivem.client.NativeOutputs;
import fivem.client.natives.Ped as PedNatives;
import fivem.client.natives.Task;
import fivem.client.natives.Vehicle as VehicleNatives;
import fivem.client.natives.Weapon;
import fivem.shared.util.Hash;
import fivem.shared.util.Vector3;

/**
	A person — player character or NPC — on the client.

	```haxe
	var ped = LocalPlayer.ped();
	ped.armour = 100;
	ped.giveWeapon("WEAPON_PISTOL", 60, true);

	if (ped.isInVehicle) ped.currentVehicle.repair();
	```

	Most setters here only take effect on a ped this client owns. For another
	player's ped, call `requestControl()` first — or, better, do the work
	server-side, since a client that can rewrite other players' peds is a
	client that can cheat.
**/
class Ped extends Entity {
	/** Wraps a handle. No existence check — use `Entity.fromHandle` for that. **/
	public function new(handle:Int) {
		super(handle);
	}

	/** Body armour, 0–100 by default. Separate from `health`. **/
	public var armour(get, set):Int;

	inline function get_armour():Int
		return PedNatives.getPedArmour(handle);

	inline function set_armour(value:Int):Int {
		PedNatives.setPedArmour(handle, value);
		return value;
	}

	/**
		Whether this ped is controlled by a player rather than the AI.
	**/
	public var isPlayer(get, never):Bool;

	inline function get_isPlayer():Bool
		return PedNatives.isPedAPlayer(handle);

	/**
		Dead or in the dying animation. Prefer this over `isDead`, which only
		flips once death has fully resolved.
	**/
	public var isDeadOrDying(get, never):Bool;

	inline function get_isDeadOrDying():Bool
		return PedNatives.isPedDeadOrDying(handle, true);

	public var isInAnyVehicle(get, never):Bool;

	inline function get_isInAnyVehicle():Bool
		return PedNatives.isPedInAnyVehicle(handle, false);

	/** Kept for symmetry with `currentVehicle`; identical to `isInAnyVehicle`. **/
	public var isInVehicle(get, never):Bool;

	inline function get_isInVehicle():Bool
		return PedNatives.isPedInAnyVehicle(handle, false);

	/**
		The vehicle the ped is sitting in, or `null` when on foot.

		Note this reports the vehicle only once the ped is actually seated —
		it stays `null` throughout the enter animation.
	**/
	public var currentVehicle(get, never):Vehicle;

	function get_currentVehicle():Vehicle {
		var vehicleHandle:Int = PedNatives.getVehiclePedIsIn(handle, false);
		return vehicleHandle == 0 ? null : new Vehicle(vehicleHandle);
	}

	/** The last vehicle the ped was in, even after getting out. **/
	public var lastVehicle(get, never):Vehicle;

	function get_lastVehicle():Vehicle {
		var vehicleHandle:Int = PedNatives.getVehiclePedIsIn(handle, true);
		return vehicleHandle == 0 ? null : new Vehicle(vehicleHandle);
	}

	/** The seat the ped occupies, or `null` when not in a vehicle. See `VehicleSeat`. **/
	public var seat(get, never):Null<Int>;

	function get_seat():Null<Int> {
		var vehicle = currentVehicle;
		if (vehicle == null) return null;

		// Seat indices run from -2 (driver is -1) up to the passenger count;
		// there is no native that maps a ped straight back to its seat.
		for (index in -1...VehicleNatives.getVehicleMaxNumberOfPassengers(vehicle.handle) + 1) {
			if (VehicleNatives.getPedInVehicleSeat(vehicle.handle, index) == handle) return index;
		}
		return null;
	}

	public var isRagdoll(get, never):Bool;

	inline function get_isRagdoll():Bool
		return PedNatives.isPedRagdoll(handle);

	public var isShooting(get, never):Bool;

	inline function get_isShooting():Bool
		return PedNatives.isPedShooting(handle);

	public var isArmed(get, never):Bool;

	inline function get_isArmed():Bool
		return Weapon.isPedArmed(handle, 7);

	/** The equipped weapon's hash, or 0 when unarmed. **/
	public var currentWeapon(get, never):Int;

	function get_currentWeapon():Int {
		var result = NativeOutputs.getCurrentPedWeapon(handle, true);
		return result.success ? result.weaponHash : 0;
	}

	public var relationshipGroup(get, set):Int;

	inline function get_relationshipGroup():Int
		return PedNatives.getPedRelationshipGroupHash(handle);

	inline function set_relationshipGroup(value:Int):Int {
		PedNatives.setPedRelationshipGroupHash(handle, value);
		return value;
	}

	// -- Weapons -----------------------------------------------------------

	/**
		Gives the ped a weapon.

		@param weapon A weapon name (`"WEAPON_PISTOL"`) or a pre-hashed value.
		@param equip Whether to put it in the ped's hands immediately.
	**/
	public function giveWeapon(weapon:Hash, ammo:Int = 100, equip:Bool = true):Void {
		Weapon.giveWeaponToPed(handle, weapon, ammo, false, equip);
	}

	public inline function removeWeapon(weapon:Hash):Void {
		Weapon.removeWeaponFromPed(handle, weapon);
	}

	public inline function removeAllWeapons():Void {
		Weapon.removeAllPedWeapons(handle, true);
	}

	public inline function equipWeapon(weapon:Hash):Void {
		Weapon.setCurrentPedWeapon(handle, weapon, true);
	}

	public inline function setAmmo(weapon:Hash, ammo:Int):Void {
		Weapon.setPedAmmo(handle, weapon, ammo);
	}

	// -- Behaviour ---------------------------------------------------------

	/**
		Whether the ped reacts to gunfire, explosions and other events. Turning
		this off is the standard way to keep a shopkeeper from fleeing.
	**/
	public var blockNonTemporaryEvents(never, set):Bool;

	inline function set_blockNonTemporaryEvents(value:Bool):Bool {
		PedNatives.setBlockingOfNonTemporaryEvents(handle, value);
		return value;
	}

	public var canRagdoll(never, set):Bool;

	inline function set_canRagdoll(value:Bool):Bool {
		PedNatives.setPedCanRagdoll(handle, value);
		return value;
	}

	public var diesWhenInjured(never, set):Bool;

	inline function set_diesWhenInjured(value:Bool):Bool {
		PedNatives.setPedDiesWhenInjured(handle, value);
		return value;
	}

	/** Makes the ped ignore the world and stand still — useful for static NPCs. **/
	public function makeStatic():Void {
		blockNonTemporaryEvents = true;
		frozen = true;
		invincible = true;
		PedNatives.setPedCanRagdoll(handle, false);
		PedNatives.setPedFleeAttributes(handle, 0, false);
	}

	// -- Tasks -------------------------------------------------------------

	public inline function clearTasks(immediately:Bool = false):Void {
		if (immediately) Task.clearPedTasksImmediately(handle) else Task.clearPedTasks(handle);
	}

	/**
		Plays an animation, loading its dictionary first if needed.

		@param flag Animation flags; 1 loops, 2 holds the last frame, 49 loops
		       while letting the ped move.
		@param duration Milliseconds, or -1 to run until the flags say stop.
		@return False if the dictionary failed to stream in.
	**/
	public function playAnim(dict:String, name:String, ?flag:Int = 0, ?duration:Int = -1, blendIn:Float = 8.0, blendOut:Float = -8.0):Bool {
		if (!Streaming.requestAnimDict(dict)) return false;
		Task.taskPlayAnim(handle, dict, name, blendIn, blendOut, duration, flag, 0, false, false, false);
		return true;
	}

	public inline function isPlayingAnim(dict:String, name:String):Bool {
		return fivem.client.natives.Entity.isEntityPlayingAnim(handle, dict, name, 3);
	}

	/** Walks or runs the ped to a position. `speed` of 1.0 walks, 2.0 runs. **/
	public inline function walkTo(target:Vector3, speed:Float = 1.0, timeoutMs:Int = -1, stoppingRange:Float = 1.0):Void {
		Task.taskGoStraightToCoord(handle, target.x, target.y, target.z, speed, timeoutMs, heading, stoppingRange);
	}

	public inline function enterVehicle(vehicle:Vehicle, seat:Int = -1, speed:Float = 2.0, timeoutMs:Int = 20000):Void {
		Task.taskEnterVehicle(handle, vehicle.handle, timeoutMs, seat, speed, 1, null);
	}

	/** Puts the ped straight into a seat, skipping the entry animation. **/
	public inline function warpIntoVehicle(vehicle:Vehicle, seat:Int = -1):Void {
		Task.taskWarpPedIntoVehicle(handle, vehicle.handle, seat);
	}

	public inline function leaveVehicle(flags:Int = 0):Void {
		Task.taskLeaveVehicle(handle, currentVehicle == null ? 0 : currentVehicle.handle, flags);
	}

	// -- Appearance --------------------------------------------------------

	public inline function setComponent(componentId:Int, drawable:Int, texture:Int, palette:Int = 0):Void {
		PedNatives.setPedComponentVariation(handle, componentId, drawable, texture, palette);
	}

	public inline function randomiseOutfit():Void {
		PedNatives.setPedRandomComponentVariation(handle, 0);
	}

	// -- Creation ----------------------------------------------------------

	/**
		Spawns a ped, streaming its model in first.

		Blocks the calling coroutine until the model is ready. Returns `null`
		if the model is invalid or failed to load.

		@param networked Whether other players can see it. Local peds are
		       cheaper and are the right choice for purely visual NPCs.
	**/
	public static function create(model:Hash, position:Vector3, heading:Float = 0.0, networked:Bool = false, pedType:Int = 4):Ped {
		if (!Streaming.requestModel(model)) return null;

		var handle:Int = PedNatives.createPed(pedType, model, position.x, position.y, position.z, heading, networked, false);
		Streaming.releaseModel(model);

		return handle == 0 ? null : new Ped(handle);
	}
}
