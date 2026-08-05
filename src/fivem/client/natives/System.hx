package fivem.client.natives;

@:native("_G")
extern class System {
	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("Log10")
	static function Log10(value:Float):Float;

	/**
	 * Returns the cosine of the given number.
	 */
	@:native("Cos")
	static function cos(value:Float):Float;

	/**
	 * ```
	 * I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down  
	 * ```
	 */
	@:native("Ceil")
	static function ceil(value:Float):Int;

	/**
	 * 
	 */
	@:native("Floor")
	static function floor(value:Float):Int;

	/**
	 * 
	 */
	@:native("Round")
	static function round(value:Float):Int;

	/**
	 * 
	 */
	@:native("Pow")
	static function pow(base:Float, exponent:Float):Float;

	/**
	 * ```
	 * 0 = high
	 * 1 = normal
	 * 2 = low
	 * ```
	 */
	@:native("SetThreadPriority")
	static function SetThreadPriority(priority:Int):Dynamic;

	/**
	 * Sets the value for the timer A in milliseconds
	 */
	@:native("Settimera")
	static function settimera(value:Int):Dynamic;

	/**
	 * Left bit shifts a value.
	 * It is advised you use the `<<` operator instead of this native. It does the same and is faster.
	 */
	@:native("ShiftLeft")
	static function shiftLeft(value:Int, bitShift:Int):Int;

	/**
	 * Sets the value for the timer B in milliseconds
	 */
	@:native("Settimerb")
	static function settimerb(value:Int):Dynamic;

	/**
	 * ```
	 * return : script thread id, 0 if failed  
	 * Pass pointer to struct of args in p1, size of struct goes into p2  
	 * ```
	 */
	@:native("StartNewScriptWithArgs")
	static function startNewScriptWithArgs(scriptName:String, args:Dynamic, argCount:Int, stackSize:Int):Int;

	/**
	 * Right bit shifts a value.
	 * It is advised you use the `>>` operator instead of this native. It does the same and is faster.
	 */
	@:native("ShiftRight")
	static function shiftRight(value:Int, bitShift:Int):Int;

	/**
	 * Returns the sine of the given number.
	 */
	@:native("Sin")
	static function sin(value:Float):Float;

	/**
	 * ```
	 * Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).  
	 * ```
	 */
	@:native("Timera")
	static function timera():Int;

	/**
	 * 
	 */
	@:native("Sqrt")
	static function sqrt(value:Float):Float;

	/**
	 * 
	 */
	@:native("ToFloat")
	static function toFloat(value:Int):Float;

	/**
	 * ```
	 * Gets the current frame time.  
	 * ```
	 */
	@:native("Timestep")
	static function timestep():Float;

	/**
	 * ```
	 * Examples:
	 *  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
	 *  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
	 *  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
	 *  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
	 *  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
	 *  SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
	 *  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
	 *  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
	 *  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);
	 * Decompiled examples of usage when starting a script:
	 * 
	 *     SCRIPT::REQUEST_SCRIPT(a_0);
	 *     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
	 *         SYSTEM::START_NEW_SCRIPT(a_0, v_3);
	 *         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
	 *         return 1;
	 *     }
	 * 
	 * or:
	 *     v_2 = "MrsPhilips2";
	 *     SCRIPT::REQUEST_SCRIPT(v_2);
	 *     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
	 *     SCRIPT::REQUEST_SCRIPT(v_2);
	 *     SYSTEM::WAIT(0);
	 *     }
	 *     sub_8792(36);
	 *     SYSTEM::START_NEW_SCRIPT(v_2, 17000);
	 *     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
	 * All native script names: pastebin.com/K9adDsu4 and pastebin.com/yLNWicUi
	 * ```
	 */
	@:native("StartNewScript")
	static function startNewScript(scriptName:String, stackSize:Int):Int;

	/**
	 * 
	 */
	@:native("StartNewScriptWithNameHash")
	static function startNewScriptWithNameHash(scriptHash:Int, stackSize:Int):Int;

	/**
	 * Calculates the distance between two points in 3D space. For performance reasons, consider using direct mathematical calculations for distance, as they can be more efficient than calling this native function.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("Vdist")
	static function vdist(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float):Float;

	/**
	 * ```
	 * Calculates the magnitude of a vector.  
	 * ```
	 */
	@:native("Vmag")
	static function vmag(x:Float, y:Float, z:Float):Float;

	/**
	 * 
	 */
	@:native("StartNewScriptWithNameHashAndArgs")
	static function startNewScriptWithNameHashAndArgs(scriptHash:Int, args:Dynamic, argCount:Int, stackSize:Int):Int;

	/**
	 * 
	 */
	@:native("Timerb")
	static function timerb():Int;

	/**
	 * ```
	 * Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
	 * ```
	 */
	@:native("Wait")
	static function wait(ms:Int):Dynamic;

	/**
	 * Calculates distance between vectors but does not perform Sqrt operations. Its way faster than [`VDIST`](#\_0x2A488C176D52CCA5), but it's not faster than direct mathematical calculations.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("Vdist2")
	static function vdist2(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float):Float;

	/**
	 * ```
	 * Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)  
	 * ```
	 */
	@:native("Vmag2")
	static function vmag2(x:Float, y:Float, z:Float):Float;

}
