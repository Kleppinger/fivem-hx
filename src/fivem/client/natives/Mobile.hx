package fivem.client.natives;

@:native("_G")
extern class Mobile {
	/**
	 * ```
	 * This one is weird and seems to return a TRUE state regardless of whether the phone is visible on screen or tucked away.  
	 * I can confirm the above. This function is hard-coded to always return 1.  
	 * ```
	 */
	@:native("CAN_PHONE_BE_SEEN_ON_SCREEN")
	static function canPhoneBeSeenOnScreen():Bool;

	/**
	 * Activates the cellphone camera. Make sure you have a mobile phone created with [`CREATE_MOBILE_PHONE`](#\_0xA4E8E696C532FBC7) or else the camera will not work.
	 */
	@:native("CELL_CAM_ACTIVATE")
	static function cellCamActivate(active:Bool, bGoFirstPerson:Bool):Dynamic;

	/**
	 * Moves the character's finger in a swiping motion when holding a cellphone in their hand through the use of the [CREATE_MOBILE_PHONE](#\_0xA4E8E696C532FBC7) native.
	 * 
	 * ```cpp
	 * enum eCellInput {
	 *     CELL_INPUT_NONE = 0,
	 *     CELL_INPUT_UP = 1,
	 *     CELL_INPUT_DOWN = 2,
	 *     CELL_INPUT_LEFT = 3,
	 *     CELL_INPUT_RIGHT = 4,
	 *     CELL_INPUT_SELECT = 5
	 * }
	 * ```
	 */
	@:native("_CELL_CAM_MOVE_FINGER")
	static function CellCamMoveFinger(direction:Int):Dynamic;

	/**
	 * Toggles the selfie mode on the cellphone camera. Only visible when the cell phone camera is active.
	 */
	@:native("CELL_CAM_ACTIVATE_SELFIE_MODE")
	static function cellCamActivateSelfieMode(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_CELL_CAM_SET_DISTANCE")
	static function CellCamSetDistance(p0:Float):Dynamic;

	/**
	 * 
	 */
	@:native("CELL_CAM_IS_CHAR_VISIBLE_NO_FACE_CHECK")
	static function cellCamIsCharVisibleNoFaceCheck(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_CELL_CAM_SET_HEAD_ROLL")
	static function CellCamSetHeadRoll(p0:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_CELL_CAM_SET_HEAD_HEIGHT")
	static function CellCamSetHeadHeight(p0:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_CELL_CAM_SET_HORIZONTAL_OFFSET")
	static function CellCamSetHorizontalOffset(p0:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_CELL_CAM_SET_HEAD_PITCH")
	static function CellCamSetHeadPitch(p0:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_CELL_CAM_SET_VERTICAL_OFFSET")
	static function CellCamSetVerticalOffset(p0:Float):Dynamic;

	/**
	 * ```
	 * if the bool "Toggle" is "true" so the phone is lean.  
	 * if the bool "Toggle" is "false" so the phone is not lean.  
	 * ```
	 */
	@:native("_CELL_CAM_SET_LEAN")
	static function CellCamSetLean(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_CELL_CAM_SET_ROLL")
	static function CellCamSetRoll(p0:Float):Dynamic;

	/**
	 * 
	 */
	@:native("GET_MOBILE_PHONE_RENDER_ID")
	static function getMobilePhoneRenderId(renderId:Dynamic):Dynamic;

	/**
	 * ```
	 * Destroys the currently active mobile phone.  
	 * ```
	 */
	@:native("DESTROY_MOBILE_PHONE")
	static function destroyMobilePhone():Dynamic;

	/**
	 * ```
	 * If bool Toggle = true so the mobile is hide to screen.  
	 * If bool Toggle = false so the mobile is show to screen.  
	 * ```
	 */
	@:native("SCRIPT_IS_MOVING_MOBILE_PHONE_OFFSCREEN")
	static function scriptIsMovingMobilePhoneOffscreen(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("GET_MOBILE_PHONE_POSITION")
	static function getMobilePhonePosition(position:Dynamic):Dynamic;

	/**
	 * ```
	 * Creates a mobile phone of the specified type.  
	 * Possible phone types:  
	 * 0 - Default phone / Michael's phone  
	 * 1 - Trevor's phone  
	 * 2 - Franklin's phone  
	 * 4 - Prologue phone  
	 * These values represent bit flags, so a value of '3' would toggle Trevor and Franklin's phones together, causing unexpected behavior and most likely crash the game.  
	 * ```
	 */
	@:native("CREATE_MOBILE_PHONE")
	static function createMobilePhone(phoneType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GET_MOBILE_PHONE_ROTATION")
	static function getMobilePhoneRotation(rotation:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * Toggles depth of field on the cellphone camera.
	 */
	@:native("SET_MOBILE_PHONE_DOF_STATE")
	static function setMobilePhoneDofState(toggle:Bool):Dynamic;

	/**
	 * ```
	 * The minimum/default is 500.0f. If you plan to make it bigger set it's position as well. Also this seems to need to be called in a loop as when you close the phone the scale is reset. If not in a loop you'd need to call it everytime before you re-open the phone.  
	 * ```
	 */
	@:native("SET_MOBILE_PHONE_SCALE")
	static function setMobilePhoneScale(scale:Float):Dynamic;

	/**
	 * ```
	 * Last parameter is unknown and always zero.  
	 * ```
	 */
	@:native("SET_MOBILE_PHONE_ROTATION")
	static function setMobilePhoneRotation(rotX:Float, rotY:Float, rotZ:Float, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SET_MOBILE_PHONE_POSITION")
	static function setMobilePhonePosition(posX:Float, posY:Float, posZ:Float):Dynamic;

}
