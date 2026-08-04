package fivem.client.natives;

@:native("_G")
extern class Dlc {
	/**
	 * 
	 */
	@:native("GET_IS_LOADING_SCREEN_ACTIVE")
	static function getIsLoadingScreenActive():Bool;

	/**
	 * ```
	 * Sets the value of the specified variable to 0.
	 * Always returns true.
	 * ```
	 */
	@:native("HAS_CLOUD_REQUESTS_FINISHED")
	static function hasCloudRequestsFinished(variable:Dynamic, unused:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_GET_EXTRA_CONTENT_PACK_HAS_BEEN_INSTALLED")
	static function GetExtraContentPackHasBeenInstalled():Bool;

	/**
	 * ```
	 * Example:
	 * DLC::IS_DLC_PRESENT($\mpbusiness2\);
	 * ($ = gethashkey)
	 * bruteforce these:
	 * 0xB119F6D
	 * 0x96F02EE6
	 * ```
	 */
	@:native("IS_DLC_PRESENT")
	static function isDlcPresent(dlcHash:Int):Bool;

	/**
	 * ```
	 * Unloads GROUP_MAP (GTAO/MP) DLC data and loads GROUP_MAP_SP DLC. Neither are loaded by default, 0888C3502DBBEEF5 is a cognate to this function and loads MP DLC (and unloads SP DLC by extension).
	 * The original (and wrong) definition is below:
	 * This unload the GTA:O DLC map parts (like high end garages/apartments).
	 * Works in singleplayer.
	 * ```
	 */
	@:native("ON_ENTER_SP")
	static function onEnterSp():Dynamic;

	/**
	 * ```
	 * This loads the GTA:O dlc map parts (high end garages, apartments).
	 * Works in singleplayer.
	 * In order to use GTA:O heist IPL's you have to call this native with the following params: SET_INSTANCE_PRIORITY_MODE(1);
	 * ```
	 */
	@:native("ON_ENTER_MP")
	static function onEnterMp():Dynamic;

}
