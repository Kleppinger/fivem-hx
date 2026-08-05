package fivem.client.natives;

@:native("_G")
extern class Pad {
	/**
	 * 
	 */
	@:native("DisableInputGroup")
	static function DisableInputGroup(padIndex:Int):Dynamic;

	/**
	 * ```cpp
	 * enum ePadType {
	 *   PLAYER_CONTROL = 0,
	 *   CAMERA_CONTROL = 1,
	 *   FRONTEND_CONTRO = 2
	 * };
	 * ```
	 */
	@:native("EnableAllControlActions")
	static function enableAllControlActions(padIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DisableAllControlActions")
	static function disableAllControlActions(padIndex:Int):Dynamic;

	/**
	 * ```
	 * control values and meaning: github.com/crosire/scripthookvdotnet/blob/dev_v3/source/scripting/Control.cs  
	 * and  
	 * https://docs.fivem.net/game-references/controls/
	 * 0, 1 and 2 used in the scripts.  
	 * Control values from the decompiled scripts:   
	 * 0,1,2,3,4,5,6,8,9,10,11,14,15,16,17,19,21,22,24,25,26,30,31,32,33,34,35,36,  
	 * 37,44,46,47,59,60,65,68,69,70,71,72,73,74,75,76,79,80,81,82,86,95,98,99,100  
	 * ,101,114,140,141,143,172,173,174,175,176,177,178,179,180,181,187,188,189,19  
	 * 0,195,196,197,198,199,201,202,203,204,205,206,207,208,209,210,217,218,219,2  
	 * 20,221,225,228,229,230,231,234,235,236,237,238,239,240,241,242,245,246,257,  
	 * 261,262,263,264,286,287,288,289,337,338,339,340,341,342,343  
	 * INPUTGROUP_MOVE  
	 * INPUTGROUP_LOOK  
	 * INPUTGROUP_WHEEL  
	 * INPUTGROUP_CELLPHONE_NAVIGATE  
	 * INPUTGROUP_CELLPHONE_NAVIGATE_UD  
	 * INPUTGROUP_CELLPHONE_NAVIGATE_LR  
	 * INPUTGROUP_FRONTEND_DPAD_ALL  
	 * INPUTGROUP_FRONTEND_DPAD_UD  
	 * INPUTGROUP_FRONTEND_DPAD_LR  
	 * INPUTGROUP_FRONTEND_LSTICK_ALL  
	 * INPUTGROUP_FRONTEND_RSTICK_ALL  
	 * INPUTGROUP_FRONTEND_GENERIC_UD  
	 * INPUTGROUP_FRONTEND_GENERIC_LR  
	 * INPUTGROUP_FRONTEND_GENERIC_ALL  
	 * INPUTGROUP_FRONTEND_BUMPERS  
	 * INPUTGROUP_FRONTEND_TRIGGERS  
	 * INPUTGROUP_FRONTEND_STICKS  
	 * INPUTGROUP_SCRIPT_DPAD_ALL  
	 * INPUTGROUP_SCRIPT_DPAD_UD  
	 * INPUTGROUP_SCRIPT_DPAD_LR  
	 * INPUTGROUP_SCRIPT_LSTICK_ALL  
	 * INPUTGROUP_SCRIPT_RSTICK_ALL  
	 * INPUTGROUP_SCRIPT_BUMPERS  
	 * INPUTGROUP_SCRIPT_TRIGGERS  
	 * INPUTGROUP_WEAPON_WHEEL_CYCLE  
	 * INPUTGROUP_FLY  
	 * INPUTGROUP_SUB  
	 * INPUTGROUP_VEH_MOVE_ALL  
	 * INPUTGROUP_CURSOR  
	 * INPUTGROUP_CURSOR_SCROLL  
	 * INPUTGROUP_SNIPER_ZOOM_SECONDARY  
	 * INPUTGROUP_VEH_HYDRAULICS_CONTROL  
	 * Took those in IDA Pro.Not sure in which order they go  
	 * ```
	 */
	@:native("EnableControlAction")
	static function enableControlAction(padIndex:Int, control:Int, enable:Bool):Dynamic;

	/**
	 * ```
	 * formerly called _GET_CONTROL_ACTION_NAME incorrectly  
	 * p2 appears to always be true.  
	 * p2 is unused variable in function.  
	 * EG:  
	 * GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 201, 1) / *INPUT_FRONTEND_ACCEPT (e.g. Enter button)* /  
	 * GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 202, 1) / *INPUT_FRONTEND_CANCEL (e.g. ESC button)* /  
	 * GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 51, 1) / *INPUT_CONTEXT (e.g. E button)* /  
	 * gtaforums.com/topic/819070-c-draw-instructional-buttons-scaleform-movie/#entry1068197378  
	 * 0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
	 * ```
	 */
	@:native("GetControlInstructionalButton")
	static function getControlInstructionalButton(padIndex:Int, control:Int, p2:Bool):String;

	/**
	 * 
	 */
	@:native("GetControlValue")
	static function getControlValue(padIndex:Int, control:Int):Int;

	/**
	 * [Control values and meaning](https://docs.fivem.net/docs/game-references/controls/#controls)
	 * 
	 * Example: `CONTROLS::DISABLE_CONTROL_ACTION(2, 19, true)` disables the switching UI from appearing both when using a keyboard and Xbox 360 controller. Needs to be executed each frame.
	 * Control group 1 and 0 gives the same results as 2. Same results for all players.
	 */
	@:native("DisableControlAction")
	static function disableControlAction(padIndex:Int, control:Int, disable:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("GetControlNormal")
	static function getControlNormal(padIndex:Int, control:Int):Float;

	/**
	 * 
	 */
	@:native("GetControlGroupInstructionalButton")
	static function getControlGroupInstructionalButton(padIndex:Int, controlGroup:Int, p2:Bool):String;

	/**
	 * ```
	 * Returns profile setting 225.
	 * ```
	 */
	@:native("GetIsUsingAlternateDriveby")
	static function getIsUsingAlternateDriveby():Bool;

	/**
	 * ```
	 * Seems to return values between -1 and 1 for controls like gas and steering.
	 * ```
	 */
	@:native("GetControlUnboundNormal")
	static function getControlUnboundNormal(padIndex:Int, control:Int):Float;

	/**
	 * ```
	 * Returns profile setting 17.
	 * ```
	 */
	@:native("GetAllowMovementWhileZoomed")
	static function getAllowMovementWhileZoomed():Bool;

	/**
	 * ```
	 * Same behavior as GET_LOCAL_PLAYER_AIM_STATE but only used on the PC version.  
	 * ```
	 */
	@:native("GetLocalPlayerAimState_2")
	static function GetLocalPlayerAimState2():Int;

	/**
	 * ```
	 * The number of milliseconds since last padIndex registered pressed
	 * ```
	 */
	@:native("GetTimeSinceLastInput")
	static function GetTimeSinceLastInput(padIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GetDisabledControlNormal")
	static function getDisabledControlNormal(padIndex:Int, control:Int):Float;

	/**
	 * 
	 */
	@:native("GetDisabledControlUnboundNormal")
	static function getDisabledControlUnboundNormal(padIndex:Int, control:Int):Float;

	/**
	 * Returns whether a control is currently pressed.
	 */
	@:native("IsControlPressed")
	static function isControlPressed(padIndex:Int, control:Int):Bool;

	/**
	 * Returns whether a control was newly pressed since the last check.
	 */
	@:native("IsControlJustPressed")
	static function isControlJustPressed(padIndex:Int, control:Int):Bool;

	/**
	 * Returns the local player's targeting mode. See [`SET_PLAYER_TARGETING_MODE`](#\_0xB1906895227793F3).
	 */
	@:native("GetLocalPlayerAimState")
	static function getLocalPlayerAimState():Int;

	/**
	 * Returns whether a control is currently *not* pressed.
	 */
	@:native("IsControlReleased")
	static function isControlReleased(padIndex:Int, control:Int):Bool;

	/**
	 * 
	 */
	@:native("IsDisabledControlPressed")
	static function isDisabledControlPressed(padIndex:Int, control:Int):Bool;

	/**
	 * Returns whether a control was newly released since the last check.
	 */
	@:native("IsControlJustReleased")
	static function isControlJustReleased(padIndex:Int, control:Int):Bool;

	/**
	 * 
	 */
	@:native("IsLookInverted")
	static function isLookInverted():Bool;

	/**
	 * 
	 */
	@:native("IsControlEnabled")
	static function isControlEnabled(padIndex:Int, control:Int):Bool;

	/**
	 * 
	 */
	@:native("IsDisabledControlJustReleased")
	static function isDisabledControlJustReleased(padIndex:Int, control:Int):Bool;

	/**
	 * 
	 */
	@:native("IsUsingKeyboard")
	static function IsUsingKeyboard(padIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("IsDisabledControlJustPressed")
	static function isDisabledControlJustPressed(padIndex:Int, control:Int):Bool;

	/**
	 * 
	 */
	@:native("IsUsingKeyboard_2")
	static function IsUsingKeyboard2(padIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("IsDisabledControlReleased")
	static function IsDisabledControlReleased(padIndex:Int, control:Int):Bool;

	/**
	 * ```
	 * S*
	 * ```
	 */
	@:native("ResetInputMappingScheme")
	static function ResetInputMappingScheme():Dynamic;

	/**
	 * 
	 */
	@:native("SetControlLightEffectColor")
	static function SetControlLightEffectColor(padIndex:Int, red:Int, green:Int, blue:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetInputExclusive")
	static function setInputExclusive(padIndex:Int, control:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetCursorLocation")
	static function SetCursorLocation(x:Float, y:Float):Bool;

	/**
	 * This is for simulating player input.
	 */
	@:native("SetControlNormal")
	static function SetControlNormal(padIndex:Int, control:Int, amount:Float):Bool;

	/**
	 * ```
	 * p0 always seems to be 0  
	 * duration in milliseconds   
	 * frequency should range from about 10 (slow vibration) to 255 (very fast)  
	 * example:  
	 * SET_PAD_SHAKE(0, 100, 200);  
	 * ```
	 */
	@:native("SetPadShake")
	static function setPadShake(padIndex:Int, duration:Int, frequency:Int):Dynamic;

	/**
	 * 
	 */
	@:native("StopPadShake")
	static function stopPadShake(padIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetPlayerpadShakesWhenControllerDisabled")
	static function setPlayerpadShakesWhenControllerDisabled(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Used in carsteal3 script with p0 = "Carsteal4_spycar".
	 * S*
	 * ```
	 */
	@:native("SwitchToInputMappingScheme")
	static function SwitchToInputMappingScheme(name:String):Bool;

	/**
	 * ```
	 * Same as 0x3D42B92563939375
	 * 
	 * S*
	 * ```
	 */
	@:native("SwitchToInputMappingScheme_2")
	static function SwitchToInputMappingScheme2(name:String):Bool;

}
