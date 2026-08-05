package fivem.client.natives;

@:native("_G")
extern class Fire {
	/**
	 * 
	 */
	@:native("AddOwnedExplosion")
	static function addOwnedExplosion(ped:Dynamic, x:Float, y:Float, z:Float, explosionType:Int, damageScale:Float, isAudible:Bool, isInvisible:Bool, cameraShake:Float):Dynamic;

	/**
	 * 
	 */
	@:native("AddExplosionWithUserVfx")
	static function addExplosionWithUserVfx(x:Float, y:Float, z:Float, explosionType:Int, explosionFx:Int, damageScale:Float, isAudible:Bool, isInvisible:Bool, cameraShake:Float):Dynamic;

	/**
	 * ```
	 * Returns TRUE if it found something. FALSE if not.  
	 * ```
	 */
	@:native("GetClosestFirePos")
	static function getClosestFirePos(outPosition:Dynamic, x:Float, y:Float, z:Float):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("GetEntityInsideExplosionSphere")
	static function GetEntityInsideExplosionSphere(explosionType:Int, x:Float, y:Float, z:Float, radius:Float):Dynamic;

	/**
	 * 
	 */
	@:native("GetNumberOfFiresInRange")
	static function getNumberOfFiresInRange(x:Float, y:Float, z:Float, radius:Float):Int;

	/**
	 * ```
	 * NativeDB Added Parameter 9: BOOL noDamage
	 * ```
	 * 
	 * ```
	 * BOOL isAudible = If explosion makes a sound.  
	 * BOOL isInvisible = If the explosion is invisible or not.
	 * BOOL noDamage = false: damage || nodamage = true: no damage
	 * ```
	 * 
	 * ```cpp
	 * enum eExplosionTag
	 * {
	 * 	DONTCARE = -1,
	 * 	GRENADE = 0,
	 * 	GRENADELAUNCHER = 1,
	 * 	STICKYBOMB = 2,
	 * 	MOLOTOV = 3,
	 * 	ROCKET = 4,
	 * 	TANKSHELL = 5,
	 * 	HI_OCTANE = 6,
	 * 	CAR = 7,
	 * 	PLANE = 8,
	 * 	PETROL_PUMP = 9,
	 * 	BIKE = 10,
	 * 	DIR_STEAM = 11,
	 * 	DIR_FLAME = 12,
	 * 	DIR_WATER_HYDRANT = 13,
	 * 	DIR_GAS_CANISTER = 14,
	 * 	BOAT = 15,
	 * 	SHIP_DESTROY = 16,
	 * 	TRUCK = 17,
	 * 	BULLET = 18,
	 * 	SMOKE_GRENADE_LAUNCHER = 19,
	 * 	SMOKE_GRENADE = 20,
	 * 	BZGAS = 21,
	 * 	FLARE = 22,
	 * 	GAS_CANISTER = 23,
	 * 	EXTINGUISHER = 24,
	 * 	PROGRAMMABLEAR = 25,
	 * 	TRAIN = 26,
	 * 	BARREL = 27,
	 * 	PROPANE = 28,
	 * 	BLIMP = 29,
	 * 	DIR_FLAME_EXPLODE = 30,
	 * 	TANKER = 31,
	 * 	PLANE_ROCKET = 32,
	 * 	VEHICLE_BULLET = 33,
	 * 	GAS_TANK = 34,
	 * 	BIRD_CRAP = 35,
	 * 	RAILGUN = 36,
	 * 	BLIMP2 = 37,
	 * 	FIREWORK = 38,
	 * 	SNOWBALL = 39,
	 * 	PROXMINE = 40,
	 * 	VALKYRIE_CANNON = 41,
	 * 	AIR_DEFENCE = 42,
	 * 	PIPEBOMB = 43,
	 * 	VEHICLEMINE = 44,
	 * 	EXPLOSIVEAMMO = 45,
	 * 	APCSHELL = 46,
	 * 	BOMB_CLUSTER = 47,
	 * 	BOMB_GAS = 48,
	 * 	BOMB_INCENDIARY = 49,
	 * 	BOMB_STANDARD = 50,
	 * 	TORPEDO = 51,
	 * 	TORPEDO_UNDERWATER = 52,
	 * 	BOMBUSHKA_CANNON = 53,
	 * 	BOMB_CLUSTER_SECONDARY = 54,
	 * 	HUNTER_BARRAGE = 55,
	 * 	HUNTER_CANNON = 56,
	 * 	ROGUE_CANNON = 57,
	 * 	MINE_UNDERWATER = 58,
	 * 	ORBITAL_CANNON = 59,
	 * 	BOMB_STANDARD_WIDE = 60,
	 * 	EXPLOSIVEAMMO_SHOTGUN = 61,
	 * 	OPPRESSOR2_CANNON = 62,
	 * 	MORTAR_KINETIC = 63,
	 * 	VEHICLEMINE_KINETIC = 64,
	 * 	VEHICLEMINE_EMP = 65,
	 * 	VEHICLEMINE_SPIKE = 66,
	 * 	VEHICLEMINE_SLICK = 67,
	 * 	VEHICLEMINE_TAR = 68,
	 * 	SCRIPT_DRONE = 69,
	 * 	RAYGUN = 70,
	 * 	BURIEDMINE = 71,
	 * 	SCRIPT_MISSILE = 72,
	 * 	RCTANK_ROCKET = 73,
	 * 	BOMB_WATER = 74,
	 * 	BOMB_WATER_SECONDARY = 75,
	 * 	MINE_CNCSPIKE = 76,
	 * 	BZGAS_MK2 = 77,
	 * 	FLASHGRENADE = 78,
	 * 	STUNGRENADE = 79,
	 * 	CNC_KINETICRAM = 80,
	 * 	SCRIPT_MISSILE_LARGE = 81,
	 * 	SUBMARINE_BIG = 82,
	 * 	EMPLAUNCHER_EMP = 83
	 * };
	 * ```
	 */
	@:native("AddExplosion")
	static function addExplosion(x:Float, y:Float, z:Float, explosionType:Int, damageScale:Float, isAudible:Bool, isInvisible:Bool, cameraShake:Float):Dynamic;

	/**
	 * 
	 */
	@:native("IsExplosionActiveInArea")
	static function isExplosionActiveInArea(explosionType:Int, x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float):Bool;

	/**
	 * 
	 */
	@:native("IsEntityOnFire")
	static function isEntityOnFire(entity:Dynamic):Bool;

	/**
	 * ```
	 * Returns a handle to the first entity within the a circle spawned inside the 2 points from a radius.
	 * ```
	 */
	@:native("GetEntityInsideExplosionArea")
	static function GetEntityInsideExplosionArea(explosionType:Int, x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, radius:Float):Dynamic;

	/**
	 * 
	 */
	@:native("IsExplosionInArea")
	static function isExplosionInArea(explosionType:Int, x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float):Bool;

	/**
	 * See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
	 */
	@:native("IsExplosionInAngledArea")
	static function isExplosionInAngledArea(explosionType:Int, x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, width:Float):Bool;

	/**
	 * 
	 */
	@:native("RemoveScriptFire")
	static function removeScriptFire(fireHandle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("IsExplosionInSphere")
	static function isExplosionInSphere(explosionType:Int, x:Float, y:Float, z:Float, radius:Float):Bool;

	/**
	 * SET_FIRE_\*
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("SetFireSpreadRate")
	static function SetFireSpreadRate(p0:Float):Dynamic;

	/**
	 * 
	 */
	@:native("StopEntityFire")
	static function stopEntityFire(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("StopFireInRange")
	static function stopFireInRange(x:Float, y:Float, z:Float, radius:Float):Dynamic;

	/**
	 * ```
	 * Starts a fire:  
	 * xyz: Location of fire  
	 * maxChildren: The max amount of times a fire can spread to other objects. Must be 25 or less, or the function will do nothing.  
	 * isGasFire: Whether or not the fire is powered by gasoline.  
	 * ```
	 */
	@:native("StartScriptFire")
	static function startScriptFire(X:Float, Y:Float, Z:Float, maxChildren:Int, isGasFire:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("StartEntityFire")
	static function startEntityFire(entity:Dynamic):Dynamic;

}
