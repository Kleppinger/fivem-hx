package fivem.client.natives;

@:native("_G")
extern class Brain {
	/**
	 * 
	 */
	@:native("DISABLE_SCRIPT_BRAIN_SET")
	static function disableScriptBrainSet(brainSet:Int):Dynamic;

	/**
	 * ```
	 * BRAIN::ADD_SCRIPT_TO_RANDOM_PED("pb_prostitute", ${s_f_y_hooker_01}, 100, 0);
	 * - Nacorpio
	 * -----
	 * Hardcoded to not work in Multiplayer.
	 * ```
	 */
	@:native("ADD_SCRIPT_TO_RANDOM_PED")
	static function addScriptToRandomPed(name:String, model:Int, p2:Float, p3:Float):Dynamic;

	/**
	 * 
	 */
	@:native("IS_OBJECT_WITHIN_BRAIN_ACTIVATION_RANGE")
	static function isObjectWithinBrainActivationRange(object:Dynamic):Bool;

	/**
	 * ```
	 * Registers a script for any object with a specific model hash.
	 * BRAIN::REGISTER_OBJECT_SCRIPT_BRAIN("ob_telescope", ${prop_telescope_01}, 100, 4.0, -1, 9);
	 * ```
	 */
	@:native("REGISTER_OBJECT_SCRIPT_BRAIN")
	static function registerObjectScriptBrain(scriptName:String, modelHash:Int, p2:Int, activationRange:Float, p4:Int, p5:Int):Dynamic;

	/**
	 * ```
	 * Gets whether the world point the calling script is registered to is within desired range of the player.  
	 * ```
	 */
	@:native("IS_WORLD_POINT_WITHIN_BRAIN_ACTIVATION_RANGE")
	static function isWorldPointWithinBrainActivationRange():Bool;

	/**
	 * 
	 */
	@:native("ENABLE_SCRIPT_BRAIN_SET")
	static function enableScriptBrainSet(brainSet:Int):Dynamic;

	/**
	 * 
	 */
	@:native("REGISTER_WORLD_POINT_SCRIPT_BRAIN")
	static function registerWorldPointScriptBrain(scriptName:String, activationRange:Float, p2:Int):Dynamic;

}
