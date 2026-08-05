package fivem.client.natives;

@:native("_G")
extern class Weapon {
	/**
	 * 
	 */
	@:native("AddAmmoToPed")
	static function addAmmoToPed(ped:Dynamic, weaponHash:Int, ammo:Int):Dynamic;

	/**
	 * 
	 */
	@:native("AddAmmoToPedByType")
	static function AddAmmoToPedByType(ped:Dynamic, ammoType:Int, ammo:Int):Dynamic;

	/**
	 * ```
	 * this returns if you can use the weapon while using a parachute  
	 * ```
	 */
	@:native("CanUseWeaponOnParachute")
	static function canUseWeaponOnParachute(weaponHash:Int):Bool;

	/**
	 * Does NOT seem to work with HAS_PED_BEEN_DAMAGED_BY_WEAPON. Use CLEAR_ENTITY_LAST_WEAPON_DAMAGE and HAS_ENTITY_BEEN_DAMAGED_BY_WEAPON instead.
	 */
	@:native("ClearPedLastWeaponDamage")
	static function clearPedLastWeaponDamage(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("ClearEntityLastWeaponDamage")
	static function clearEntityLastWeaponDamage(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("CreateAirDefenseArea")
	static function CreateAirDefenseArea(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Float, p7:Float, p8:Float, p9:Float, weaponHash:Int):Int;

	/**
	 * Create a weapon object that cannot be attached to a ped. If you want to create a weapon object that can be attached to a ped, use [`CREATE_OBJECT`](#\_0x509D5878EB39E842) instead.
	 * 
	 * ```
	 * NativeDB Added Parameter 9: BOOL bRegisterAsNetworkObject
	 * NativeDB Added Parameter 10: BOOL bScriptHostObject
	 * ```
	 */
	@:native("CreateWeaponObject")
	static function createWeaponObject(weaponHash:Int, ammoCount:Int, x:Float, y:Float, z:Float, bCreateDefaultComponents:Bool, scale:Float, customModelHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GetAmmoInClip")
	static function getAmmoInClip(ped:Dynamic, weaponHash:Int, ammo:Dynamic):Bool;

	/**
	 * Both coordinates are from objects in the decompiled scripts.
	 * 
	 * Native related to [\_0xECDC202B25E5CF48](#\_0xECDC202B25E5CF48) p1 value. The only weapon hash used in the decompiled scripts is weapon_air_defence_gun. These two natives are used by the yacht script, decompiled scripts suggest it and the weapon hash used (valkyrie's rockets) are also used by yachts.
	 */
	@:native("CreateAirDefenseSphere")
	static function CreateAirDefenseSphere(x:Float, y:Float, z:Float, radius:Float, p4:Float, p5:Float, p6:Float, weaponHash:Int):Int;

	/**
	 * 
	 */
	@:native("GetCurrentPedVehicleWeapon")
	static function getCurrentPedVehicleWeapon(ped:Dynamic, weaponHash:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("DoesAirDefenseZoneExist")
	static function DoesAirDefenseZoneExist(zoneId:Int):Bool;

	/**
	 * 
	 */
	@:native("DoesWeaponTakeWeaponComponent")
	static function doesWeaponTakeWeaponComponent(weaponHash:Int, componentHash:Int):Bool;

	/**
	 * ```
	 * WEAPON::EXPLODE_PROJECTILES(PLAYER::PLAYER_PED_ID(), func_221(0x00000003), 0x00000001);  
	 * ```
	 */
	@:native("ExplodeProjectiles")
	static function explodeProjectiles(ped:Dynamic, weaponHash:Int, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("GetCurrentPedWeaponEntityIndex")
	static function getCurrentPedWeaponEntityIndex(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("FireAirDefenseWeapon")
	static function FireAirDefenseWeapon(zoneId:Int, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * ```
	 * Enables laser sight on any weapon.  
	 * It doesn't work. Neither on tick nor OnKeyDown  
	 * ```
	 */
	@:native("EnableLaserSightRendering")
	static function enableLaserSightRendering(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("GetBestPedWeapon")
	static function getBestPedWeapon(ped:Dynamic, ignoreAmmoCount:Bool):Int;

	/**
	 * ```
	 * The return value seems to indicate returns true if the hash of the weapon object weapon equals the weapon hash.  
	 * p2 seems to be 1 most of the time; and is not implemented.
	 * ```
	 */
	@:native("GetCurrentPedWeapon")
	static function getCurrentPedWeapon(ped:Dynamic, weaponHash:Dynamic, p2:Bool):Bool;

	/**
	 * ```
	 * WEAPON::GET_AMMO_IN_PED_WEAPON(PLAYER::PLAYER_PED_ID(), a_0)  
	 * From decompiled scripts  
	 * Returns total ammo in weapon  
	 * GTALua Example :  
	 * natives.WEAPON.GET_AMMO_IN_PED_WEAPON(plyPed, WeaponHash)  
	 * ```
	 */
	@:native("GetAmmoInPedWeapon")
	static function getAmmoInPedWeapon(ped:Dynamic, weaponhash:Int):Int;

	/**
	 * 
	 */
	@:native("GetMaxAmmoByType")
	static function GetMaxAmmoByType(ped:Dynamic, ammoType:Int, ammo:Dynamic):Bool;

	/**
	 * ```
	 * gadgetHash - was always 0xFBAB5776 ("GADGET_PARACHUTE").  
	 * ```
	 */
	@:native("GetIsPedGadgetEquipped")
	static function getIsPedGadgetEquipped(ped:Dynamic, gadgetHash:Int):Bool;

	/**
	 * 
	 */
	@:native("GetMaxRangeOfCurrentPedWeapon")
	static function getMaxRangeOfCurrentPedWeapon(ped:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetMaxAmmo")
	static function getMaxAmmo(ped:Dynamic, weaponHash:Int, ammo:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetPedWeaponLiveryColor")
	static function GetPedWeaponLiveryColor(ped:Dynamic, weaponHash:Int, camoComponentHash:Int):Int;

	/**
	 * 
	 */
	@:native("GetLockonDistanceOfCurrentPedWeapon")
	static function getLockonDistanceOfCurrentPedWeapon(ped:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetSelectedPedWeapon")
	static function getSelectedPedWeapon(ped:Dynamic):Int;

	/**
	 * ```
	 * p2 is mostly 1 in the scripts.  
	 * ```
	 */
	@:native("GetMaxAmmoInClip")
	static function getMaxAmmoInClip(ped:Dynamic, weaponHash:Int, p2:Bool):Int;

	/**
	 * 
	 */
	@:native("GetPedAmmoByType")
	static function getPedAmmoByType(ped:Dynamic, ammoType:Int):Int;

	/**
	 * ```
	 * Returns the base/default ammo type of the specified ped's specified weapon.
	 * 
	 * Use GET_PED_AMMO_TYPE_FROM_WEAPON if you want current ammo type (like AMMO_MG_INCENDIARY/AMMO_MG_TRACER while using MkII magazines) and use this if you want base ammo type. (AMMO_MG)
	 * ```
	 */
	@:native("GetPedAmmoTypeFromWeapon_2")
	static function GetPedAmmoTypeFromWeapon2(ped:Dynamic, weaponHash:Int):Int;

	/**
	 * ```
	 * // Returns the size of the default weapon component clip.  
	 * Use it like this:  
	 * char cClipSize[32];  
	 * Hash cur;  
	 * if (WEAPON::GET_CURRENT_PED_WEAPON(playerPed, &cur, 1))  
	 * {  
	 *     if (WEAPON::IS_WEAPON_VALID(cur))  
	 *     {  
	 *         int iClipSize = WEAPON::GET_WEAPON_CLIP_SIZE(cur);  
	 *         sprintf_s(cClipSize, "ClipSize: %.d", iClipSize);  
	 *         vDrawString(cClipSize, 0.5f, 0.5f);  
	 *     }  
	 * }  
	 * ```
	 */
	@:native("GetWeaponClipSize")
	static function getWeaponClipSize(weaponHash:Int):Int;

	/**
	 * ```
	 * Pass ped. Pass address of Vector3.  
	 * The coord will be put into the Vector3.  
	 * The return will determine whether there was a coord found or not.  
	 * ```
	 */
	@:native("GetPedLastWeaponImpactCoord")
	static function getPedLastWeaponImpactCoord(ped:Dynamic, coords:Dynamic):Bool;

	/**
	 * ```
	 * Returns the current ammo type of the specified ped's specified weapon.
	 * 
	 * MkII magazines will change the return value, like Pistol MkII returning AMMO_PISTOL without any components and returning AMMO_PISTOL_TRACER after Tracer Rounds component is attached.
	 * 
	 * Use 0xF489B44DD5AF4BD9 if you always want AMMO_PISTOL.
	 * ```
	 */
	@:native("GetPedAmmoTypeFromWeapon")
	static function getPedAmmoTypeFromWeapon(ped:Dynamic, weaponHash:Int):Int;

	/**
	 * 
	 */
	@:native("GetPedWeaponTintIndex")
	static function getPedWeaponTintIndex(ped:Dynamic, weaponHash:Int):Int;

	/**
	 * 
	 */
	@:native("GetWeaponComponentVariantExtraComponentModel")
	static function GetWeaponComponentVariantExtraComponentModel(componentHash:Int, extraComponentIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GetWeaponComponentVariantExtraComponentCount")
	static function GetWeaponComponentVariantExtraComponentCount(componentHash:Int):Int;

	/**
	 * 
	 */
	@:native("GetPedWeapontypeInSlot")
	static function getPedWeapontypeInSlot(ped:Dynamic, weaponSlot:Int):Int;

	/**
	 * 
	 */
	@:native("GetWeaponComponentHudStats")
	static function getWeaponComponentHudStats(componentHash:Int, outData:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetWeaponObjectLiveryColor")
	static function GetWeaponObjectLiveryColor(weaponObject:Dynamic, camoComponentHash:Int):Int;

	/**
	 * This native does not return damages of weapons from the melee and explosive group.
	 */
	@:native("GetWeaponDamage")
	static function getWeaponDamage(weaponHash:Int, componentHash:Int):Float;

	/**
	 * 
	 */
	@:native("GetWeaponComponentTypeModel")
	static function getWeaponComponentTypeModel(componentHash:Int):Int;

	/**
	 * ```
	 * Drops the current weapon and returns the object  
	 * Unknown behavior when unarmed.  
	 * ```
	 */
	@:native("GetWeaponObjectFromPed")
	static function getWeaponObjectFromPed(ped:Dynamic, p1:Bool):Dynamic;

	/**
	 * ```
	 * // members should be aligned to 8 bytes by default but it's best to use alignas here, just to be sure  
	 * struct WeaponHudStatsData  
	 * {  
	 * 	alignas(8) uint8_t hudDamage; // 0x0000  
	 * 	alignas(8) uint8_t hudSpeed; // 0x0008  
	 * 	alignas(8) uint8_t hudCapacity; // 0x0010  
	 * 	alignas(8) uint8_t hudAccuracy; // 0x0018  
	 * 	alignas(8) uint8_t hudRange; // 0x0020  
	 * };  
	 * Usage:  
	 * WeaponHudStatsData data;  
	 * if (GET_WEAPON_HUD_STATS(weaponHash, (Any*)&data))  
	 * {  
	 *     // uint8_t damagePercentage = data.hudDamage etc...  
	 * }  
	 * ```
	 */
	@:native("GetWeaponHudStats")
	static function getWeaponHudStats(weaponHash:Int, outData:Dynamic):Bool;

	/**
	 * Gets and returns the hash of the group of the specified weapon (group names can be found/changed under "Group" in the weapons' meta file).
	 * Note that the group is **not** the same as the location on the weapon wheel.
	 */
	@:native("GetWeapontypeGroup")
	static function getWeapontypeGroup(weaponHash:Int):Int;

	/**
	 * 
	 */
	@:native("GetWeaponTimeBetweenShots")
	static function GetWeaponTimeBetweenShots(weaponHash:Int):Float;

	/**
	 * ```
	 * Returns the model of any weapon.  
	 * Can also take an ammo hash?  
	 * sub_6663a(&l_115B, WEAPON::GET_WEAPONTYPE_MODEL(${ammo_rpg}));  
	 * ```
	 */
	@:native("GetWeapontypeModel")
	static function getWeapontypeModel(weaponHash:Int):Int;

	/**
	 * ```
	 * 0=unknown (or incorrect weaponHash)  
	 * 1= no damage (flare,snowball, petrolcan)  
	 * 2=melee  
	 * 3=bullet  
	 * 4=force ragdoll fall  
	 * 5=explosive (RPG, Railgun, grenade)  
	 * 6=fire(molotov)  
	 * 8=fall(WEAPON_HELI_CRASH)  
	 * 10=electric  
	 * 11=barbed wire  
	 * 12=extinguisher  
	 * 13=gas  
	 * 14=water cannon(WEAPON_HIT_BY_WATER_CANNON)  
	 * ```
	 */
	@:native("GetWeaponDamageType")
	static function getWeaponDamageType(weaponHash:Int):Int;

	/**
	 * 
	 */
	@:native("GetWeaponTintCount")
	static function getWeaponTintCount(weaponHash:Int):Int;

	/**
	 * 
	 */
	@:native("GetWeapontypeSlot")
	static function getWeapontypeSlot(weaponHash:Int):Int;

	/**
	 * 
	 */
	@:native("GetWeaponObjectTintIndex")
	static function getWeaponObjectTintIndex(weapon:Dynamic):Int;

	/**
	 * ```
	 * addonHash:
	 * (use WEAPON::GET_WEAPON_COMPONENT_TYPE_MODEL() to get hash value)
	 * ${component_at_ar_flsh}, ${component_at_ar_supp}, ${component_at_pi_flsh}, ${component_at_scope_large}, ${component_at_ar_supp_02}
	 * ```
	 */
	@:native("GiveWeaponComponentToWeaponObject")
	static function giveWeaponComponentToWeaponObject(weaponObject:Dynamic, addonHash:Int):Dynamic;

	/**
	 * ```
	 * Gives a weapon to PED with a delay, example:
	 * WEAPON::GIVE_DELAYED_WEAPON_TO_PED(PED::PLAYER_PED_ID(), MISC::GET_HASH_KEY("WEAPON_PISTOL"), 1000, false)
	 * ```
	 */
	@:native("GiveDelayedWeaponToPed")
	static function giveDelayedWeaponToPed(ped:Dynamic, weaponHash:Int, ammoCount:Int, bForceInHand:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("GiveWeaponComponentToPed")
	static function giveWeaponComponentToPed(ped:Dynamic, weaponHash:Int, componentHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GiveWeaponToPed")
	static function giveWeaponToPed(ped:Dynamic, weaponHash:Int, ammoCount:Int, isHidden:Bool, bForceInHand:Bool):Dynamic;

	/**
	 * ```
	 * It determines what weapons caused damage:
	 * If you want to define only a specific weapon, second parameter=weapon hash code, third parameter=0
	 * If you want to define any melee weapon, second parameter=0, third parameter=1.
	 * If you want to identify any weapon (firearms, melee, rockets, etc.), second parameter=0, third parameter=2.
	 * ```
	 */
	@:native("HasEntityBeenDamagedByWeapon")
	static function hasEntityBeenDamagedByWeapon(entity:Dynamic, weaponHash:Int, weaponType:Int):Bool;

	/**
	 * ```
	 * It determines what weapons caused damage:  
	 * If you want to define only a specific weapon, second parameter=weapon hash code, third parameter=0  
	 * If you want to define any melee weapon, second parameter=0, third parameter=1.  
	 * If you want to identify any weapon (firearms, melee, rockets, etc.), second parameter=0, third parameter=2.  
	 * ```
	 */
	@:native("HasPedBeenDamagedByWeapon")
	static function hasPedBeenDamagedByWeapon(ped:Dynamic, weaponHash:Int, weaponType:Int):Bool;

	/**
	 * 
	 */
	@:native("HasPedGotWeaponComponent")
	static function hasPedGotWeaponComponent(ped:Dynamic, weaponHash:Int, componentHash:Int):Bool;

	/**
	 * ```
	 * Third Parameter = unsure, but pretty sure it is weapon hash  
	 * --> get_hash_key("weapon_stickybomb")  
	 * Fourth Parameter = unsure, almost always -1  
	 * ```
	 */
	@:native("HasVehicleGotProjectileAttached")
	static function hasVehicleGotProjectileAttached(driver:Dynamic, vehicle:Dynamic, weaponHash:Int, p3:Dynamic):Bool;

	/**
	 * List of all available loadouts:
	 * 
	 * ```
	 * LOADOUT_DEFAULT
	 * LOADOUT_ANIMAL
	 * LOADOUT_COUGAR
	 * LOADOUT_HILLBILLY
	 * LOADOUT_CULT
	 * LOADOUT_CHEAT_0
	 * LOADOUT_CHEAT_1
	 * LOADOUT_GUARD
	 * LOADOUT_NETWORK_BOT
	 * LOADOUT_LOST
	 * LOADOUT_LOST_L1
	 * LOADOUT_LOST_L2
	 * LOADOUT_LOST_L3
	 * LOADOUT_MEXICAN
	 * LOADOUT_MEXICAN_L1
	 * LOADOUT_MEXICAN_L2
	 * LOADOUT_MEXICAN_L3
	 * LOADOUT_FAMILY
	 * LOADOUT_ASIAN
	 * LOADOUT_SECUR
	 * LOADOUT_POLICE_GUARD
	 * LOADOUT_COP
	 * LOADOUT_COP_L1
	 * LOADOUT_COP_L2
	 * LOADOUT_COP_L3
	 * LOADOUT_SWAT
	 * LOADOUT_SWAT_NO_LASER
	 * LOADOUT_COP_SHOTGUN
	 * LOADOUT_FIREMAN
	 * LOADOUT_COP_HELI
	 * LOADOUT_COP_BOAT
	 * LOADOUT_ARMY
	 * LOADOUT_ANIMAL_RETRIEVER
	 * LOADOUT_SMALL_DOG
	 * LOADOUT_TIGER_SHARK
	 * LOADOUT_HAMMERHEAD_SHARK
	 * LOADOUT_KILLER_WHALE
	 * LOADOUT_BOAR
	 * LOADOUT_PIG
	 * LOADOUT_COYOTE
	 * LOADOUT_DEER
	 * LOADOUT_HEN
	 * LOADOUT_RABBIT
	 * LOADOUT_CAT
	 * LOADOUT_COW
	 * ```
	 */
	@:native("GiveLoadoutToPed")
	static function GiveLoadoutToPed(ped:Dynamic, loadoutHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("HasWeaponAssetLoaded")
	static function hasWeaponAssetLoaded(weaponHash:Int):Bool;

	/**
	 * ```
	 * Hides the players weapon during a cutscene.  
	 * ```
	 */
	@:native("HidePedWeaponForScriptedCutscene")
	static function hidePedWeaponForScriptedCutscene(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("IsFlashLightOn")
	static function isFlashLightOn(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsAnyAirDefenseZoneInsideSphere")
	static function IsAnyAirDefenseZoneInsideSphere(x:Float, y:Float, z:Float, radius:Float, SphereIndex:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GiveWeaponObjectToPed")
	static function giveWeaponObjectToPed(weaponObject:Dynamic, ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("IsPedWeaponComponentActive")
	static function isPedWeaponComponentActive(ped:Dynamic, weaponHash:Int, componentHash:Int):Bool;

	/**
	 * 
	 */
	@:native("IsPedWeaponReadyToShoot")
	static function isPedWeaponReadyToShoot(ped:Dynamic):Bool;

	/**
	 * ```
	 * p2 should be FALSE, otherwise it seems to always return FALSE  
	 * Bool does not check if the weapon is current equipped, unfortunately.  
	 * ```
	 */
	@:native("HasPedGotWeapon")
	static function hasPedGotWeapon(ped:Dynamic, weaponHash:Int, p2:Bool):Bool;

	/**
	 * Forces a ped to reload only if they are able to; if they have a full magazine, they will not reload.
	 */
	@:native("MakePedReload")
	static function makePedReload(ped:Dynamic):Bool;

	/**
	 * Checks if the ped is currently equipped with a weapon matching a bit specified using a bitwise-or in typeFlags.
	 * 
	 * | Bit value | Effect            |
	 * |-----------|-------------------|
	 * | 1         | Melee weapons     |
	 * | 2         | Explosive weapons |
	 * | 4         | Any other weapons |
	 * 
	 * Not specifying any bit will lead to the native *always* returning 'false', and for example specifying '4 | 2' will check for any weapon except fists and melee weapons.
	 */
	@:native("IsPedArmed")
	static function isPedArmed(ped:Dynamic, typeFlags:Int):Bool;

	/**
	 * 
	 */
	@:native("IsWeaponValid")
	static function isWeaponValid(weaponHash:Int):Bool;

	/**
	 * 
	 */
	@:native("HasWeaponGotWeaponComponent")
	static function hasWeaponGotWeaponComponent(weapon:Dynamic, addonHash:Int):Bool;

	/**
	 * ```
	 * This native returns a true or false value.  
	 * Ped ped = The ped whose weapon you want to check.  
	 * ```
	 */
	@:native("IsPedCurrentWeaponSilenced")
	static function isPedCurrentWeaponSilenced(ped:Dynamic):Bool;

	/**
	 * If `explode` true, then removal is done through exploding the projectile. Basically the same as EXPLODE_PROJECTILES but without defining the owner ped.
	 */
	@:native("RemoveAllProjectilesOfType")
	static function removeAllProjectilesOfType(weaponHash:Int, explode:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveAirDefenseZone")
	static function RemoveAirDefenseZone(zoneId:Int):Bool;

	/**
	 * 
	 */
	@:native("RemoveWeaponComponentFromPed")
	static function removeWeaponComponentFromPed(ped:Dynamic, weaponHash:Int, componentHash:Int):Dynamic;

	/**
	 * Parameter `p1` does not seem to be used or referenced in game binaries.\
	 * **Note:** When called for networked entities, a `CRemoveAllWeaponsEvent` will be created per request.
	 */
	@:native("RemoveAllPedWeapons")
	static function removeAllPedWeapons(ped:Dynamic, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("RefillAmmoInstantly")
	static function refillAmmoInstantly(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("RequestWeaponHighDetailModel")
	static function requestWeaponHighDetailModel(weaponObject:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveAllAirDefenseZones")
	static function RemoveAllAirDefenseZones():Dynamic;

	/**
	 * 
	 */
	@:native("SetCurrentPedVehicleWeapon")
	static function setCurrentPedVehicleWeapon(ped:Dynamic, weaponHash:Int):Bool;

	/**
	 * 
	 */
	@:native("RemoveWeaponAsset")
	static function removeWeaponAsset(weaponHash:Int):Dynamic;

	/**
	 * ```
	 * This native removes a specified weapon from your selected ped.  
	 * Weapon Hashes: pastebin.com/0wwDZgkF  
	 * Example:  
	 * C#:  
	 * Function.Call(Hash.REMOVE_WEAPON_FROM_PED, Game.Player.Character, 0x99B507EA);  
	 * C++:  
	 * WEAPON::REMOVE_WEAPON_FROM_PED(PLAYER::PLAYER_PED_ID(), 0x99B507EA);  
	 * The code above removes the knife from the player.  
	 * ```
	 */
	@:native("RemoveWeaponFromPed")
	static function removeWeaponFromPed(ped:Dynamic, weaponHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetFlashLightFadeDistance")
	static function setFlashLightFadeDistance(distance:Float):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveWeaponComponentFromWeaponObject")
	static function removeWeaponComponentFromWeaponObject(weaponObject:Dynamic, addonHash:Int):Dynamic;

	/**
	 * ```
	 * Nearly every instance of p1 I found was 31. Nearly every instance of p2 I found was 0.  
	 * REQUEST_WEAPON_ASSET(iLocal_1888, 31, 26);  
	 * ```
	 */
	@:native("RequestWeaponAsset")
	static function requestWeaponAsset(weaponHash:Int, p1:Int, p2:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 4: BOOL p3
	 * ```
	 */
	@:native("SetPedAmmo")
	static function setPedAmmo(ped:Dynamic, weaponHash:Int, ammo:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetAmmoInClip")
	static function setAmmoInClip(ped:Dynamic, weaponHash:Int, ammo:Int):Bool;

	/**
	 * Disables selecting the given weapon. Ped isn't forced to put the gun away. However you can't reselect the weapon if you holster then unholster. Weapon is also grayed out on the weapon wheel.
	 */
	@:native("SetCanPedEquipWeapon")
	static function SetCanPedEquipWeapon(ped:Dynamic, weaponHash:Int, toggle:Bool):Dynamic;

	/**
	 * Does the same as [`_SET_CAN_PED_SELECT_WEAPON`](#\_0xB4771B9AAF4E68E4) except for all weapons.
	 */
	@:native("SetCanPedEquipAllWeapons")
	static function SetCanPedEquipAllWeapons(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetCurrentPedWeapon")
	static function setCurrentPedWeapon(ped:Dynamic, weaponHash:Int, bForceInHand:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedChanceOfFiringBlanks")
	static function setPedChanceOfFiringBlanks(ped:Dynamic, xBias:Float, yBias:Float):Dynamic;

	/**
	 * Enables/disables flashlight on ped's weapon.
	 * 
	 * ```
	 * NativeDB Introduced: v2060
	 * ```
	 */
	@:native("SetFlashLightEnabled")
	static function SetFlashLightEnabled(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedAmmoByType")
	static function setPedAmmoByType(ped:Dynamic, ammoType:Int, ammo:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedAmmoToDrop")
	static function setPedAmmoToDrop(ped:Dynamic, ammo:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedDropsInventoryWeapon")
	static function setPedDropsInventoryWeapon(ped:Dynamic, weaponHash:Int, xOffset:Float, yOffset:Float, zOffset:Float, ammoCount:Int):Dynamic;

	/**
	 * ```
	 * p1/gadgetHash was always 0xFBAB5776 ("GADGET_PARACHUTE").  
	 * p2 is always true.  
	 * ```
	 */
	@:native("SetPedGadget")
	static function setPedGadget(ped:Dynamic, gadgetHash:Int, p2:Bool):Dynamic;

	/**
	 * ```
	 * Has 5 parameters since latest patches.  
	 * ```
	 */
	@:native("SetPedCurrentWeaponVisible")
	static function setPedCurrentWeaponVisible(ped:Dynamic, visible:Bool, deselectWeapon:Bool, p3:Bool, p4:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedDropsWeaponsWhenDead")
	static function setPedDropsWeaponsWhenDead(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Returns handle of the projectile.
	 * ```
	 */
	@:native("SetPedShootOrdnanceWeapon")
	static function setPedShootOrdnanceWeapon(ped:Dynamic, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedInfiniteAmmo")
	static function setPedInfiniteAmmo(ped:Dynamic, toggle:Bool, weaponHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedInfiniteAmmoClip")
	static function setPedInfiniteAmmoClip(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedWeaponLiveryColor")
	static function SetPedWeaponLiveryColor(ped:Dynamic, weaponHash:Int, camoComponentHash:Int, colorIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedDropsWeapon")
	static function setPedDropsWeapon(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * tintIndex can be the following:  
	 * 0 : Default/Black
	 * 1 : Green
	 * 2 : Gold
	 * 3 : Pink
	 * 4 : Army
	 * 5 : LSPD
	 * 6 : Orange
	 * 7 : Platinum
	 * 
	 * tintIndex for MK2 weapons :
	 * 0 : Classic Black
	 * 1 : Classic Gray
	 * 2 : Classic Two-Tone
	 * 3 : Classic White
	 * 4 : Classic Beige
	 * 5 : Classic Green
	 * 6 : Classic Blue
	 * 7 : Classic Earth
	 * 8 : Classic Brown & Black
	 * 9 : Red Contrast
	 * 10 : Blue Contrast
	 * 11 : Yellow Contrast
	 * 12 : Orange Contrast
	 * 13 : Bold Pink
	 * 14 : Bold Purple & Yellow
	 * 15 : Bold Orange
	 * 16 : Bold Green & Purple
	 * 17 : Bold Red Features
	 * 18 : Bold Green Features
	 * 19 : Bold Cyan Features
	 * 20 : Bold Yellow Features
	 * 21 : Bold Red & White
	 * 22 : Bold Blue & White
	 * 23 : Metallic Gold
	 * 24 : Metallic Platinum
	 * 25 : Metallic Gray & Lilac
	 * 26 : Metallic Purple & Lime
	 * 27 : Metallic Red
	 * 28 : Metallic Green
	 * 29 : Metallic Blue
	 * 30 : Metallic White & Aqua
	 * 31 : Metallic Orange & Yellow
	 * 32 : Mettalic Red and Yellow
	 * ```
	 */
	@:native("SetPedWeaponTintIndex")
	static function setPedWeaponTintIndex(ped:Dynamic, weaponHash:Int, tintIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetPickupAmmoAmountScaler")
	static function setPickupAmmoAmountScaler(p0:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetPlayerAirDefenseZoneFlag")
	static function SetPlayerAirDefenseZoneFlag(player:Dynamic, zoneId:Int, enable:Bool):Dynamic;

	/**
	 * Changes the selected ped aiming animation style, you can find the list of animations below.
	 * 
	 * These are stored in the `weaponanimations.meta` file located in `Grand Theft Auto V\update\update.rpf\common\data\ai\weaponanimations.meta`.
	 * 
	 * For Lua, it's best if you send the animation using [compile-time jenkins](https://cookbook.fivem.net/2019/06/23/lua-support-for-compile-time-jenkins-hashes/) hashes to avoid overhead. An example is shown down below.
	 * 
	 * ### Animations
	 * 
	 * ```cpp
	 * enum eWeaponAnimationOverrides {
	 * 	Ballistic = 0x5534A626,
	 * 	Default = 0xE4DF46D5,
	 * 	Franklin = 0x44C24694,
	 * 	Gang = 0xBC066B98,
	 * 	Michael = 0x55932F38,
	 * 	MP_F_Freemode = 0xACB10C83,
	 * 	Trevor = 0x2737D5AC,
	 * 	Hillbilly = 0x8503D409,
	 * 	Gang1H = 0x724A7AB7,
	 * 	FirstPerson = 0xEE38E8E0,
	 * 	FirstPersonAiming = 0xC76297A3,
	 * 	FirstPersonRNG = 0xA4FDD608,
	 * 	FirstPersonScope = 0x28117C22,
	 * 	FirstPersonMichael = 0xEAA2550B,
	 * 	FirstPersonMichaelAiming = 0x3E6FF30F,
	 * 	FirstPersonMichaelRNG = 0xB7A826C1,
	 * 	FirstPersonMichaelScope = 0xC554CF97,
	 * 	FirstPersonFranklin = 0xC407163A,
	 * 	FirstPersonFranklinAiming = 0x3D4B7B03,
	 * 	FirstPersonFranklinRNG = 0xBE79B0B4,
	 * 	FirstPersonFranklinScope = 0xAFEA6593,
	 * 	FirstPersonTrevor = 0xA65D5351,
	 * 	FirstPersonTrevorAiming = 0xF9BE8ED9,
	 * 	FirstPersonTrevorRNG = 0xD181ED09,
	 * 	FirstPersonTrevorScope = 0x34A67D6D,
	 * 	FirstPersonMPFemale = 0x8431583F,
	 * 	Fat = 0xC531A409,
	 * 	SuperFat = 0x529E5780,
	 * 	Female = 0x6D155A1B,
	 * 	GangFemale = 0x678ADF82,
	 * }
	 * ```
	 */
	@:native("SetWeaponAnimationOverride")
	static function setWeaponAnimationOverride(ped:Dynamic, animStyle:Int):Dynamic;

	/**
	 * Changes the weapon damage output by the given multiplier value.
	 * Does NOT need to be called every frame.
	 */
	@:native("SetWeaponDamageModifier")
	static function SetWeaponDamageModifier(weaponHash:Int, damageMultiplier:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("SetWeaponExplosionRadiusMultiplier")
	static function SetWeaponExplosionRadiusMultiplier(weaponHash:Int, multiplier:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetWeaponObjectLiveryColor")
	static function SetWeaponObjectLiveryColor(weaponObject:Dynamic, camoComponentHash:Int, colorIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetWeaponObjectTintIndex")
	static function setWeaponObjectTintIndex(weapon:Dynamic, tintIndex:Int):Dynamic;

}
