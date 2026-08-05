package fivem.client.natives;

@:native("_G")
extern class Brain {
	/**
	 * 
	 */
	@:native("DisableScriptBrainSet")
	static function disableScriptBrainSet(brainSet:Int):Dynamic;

	/**
	 * ```
	 * BRAIN::ADD_SCRIPT_TO_RANDOM_PED("pb_prostitute", ${s_f_y_hooker_01}, 100, 0);
	 * - Nacorpio
	 * -----
	 * Hardcoded to not work in Multiplayer.
	 * ```
	 */
	@:native("AddScriptToRandomPed")
	static function addScriptToRandomPed(name:String, model:Int, p2:Float, p3:Float):Dynamic;

	/**
	 * 
	 */
	@:native("IsObjectWithinBrainActivationRange")
	static function isObjectWithinBrainActivationRange(object:Dynamic):Bool;

	/**
	 * ```
	 * Registers a script for any object with a specific model hash.
	 * BRAIN::REGISTER_OBJECT_SCRIPT_BRAIN("ob_telescope", ${prop_telescope_01}, 100, 4.0, -1, 9);
	 * ```
	 */
	@:native("RegisterObjectScriptBrain")
	static function registerObjectScriptBrain(scriptName:String, modelHash:Int, p2:Int, activationRange:Float, p4:Int, p5:Int):Dynamic;

	/**
	 * ```
	 * Gets whether the world point the calling script is registered to is within desired range of the player.  
	 * ```
	 */
	@:native("IsWorldPointWithinBrainActivationRange")
	static function isWorldPointWithinBrainActivationRange():Bool;

	/**
	 * 
	 */
	@:native("EnableScriptBrainSet")
	static function enableScriptBrainSet(brainSet:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RegisterWorldPointScriptBrain")
	static function registerWorldPointScriptBrain(scriptName:String, activationRange:Float, p2:Int):Dynamic;

}
