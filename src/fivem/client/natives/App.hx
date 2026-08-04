package fivem.client.natives;

@:native("_G")
extern class App {
	/**
	 * 
	 */
	@:native("APP_CLOSE_BLOCK")
	static function appCloseBlock():Dynamic;

	/**
	 * 
	 */
	@:native("APP_CLEAR_BLOCK")
	static function appClearBlock():Dynamic;

	/**
	 * 
	 */
	@:native("APP_CLOSE_APP")
	static function appCloseApp():Dynamic;

	/**
	 * 
	 */
	@:native("APP_GET_FLOAT")
	static function appGetFloat(property:String):Float;

	/**
	 * 
	 */
	@:native("APP_GET_DELETED_FILE_STATUS")
	static function appGetDeletedFileStatus():Int;

	/**
	 * 
	 */
	@:native("APP_DELETE_APP_DATA")
	static function appDeleteAppData(appName:String):Bool;

	/**
	 * 
	 */
	@:native("APP_DATA_VALID")
	static function appDataValid():Bool;

	/**
	 * 
	 */
	@:native("APP_SAVE_DATA")
	static function appSaveData():Dynamic;

	/**
	 * 
	 */
	@:native("APP_HAS_LINKED_SOCIAL_CLUB_ACCOUNT")
	static function appHasLinkedSocialClubAccount():Bool;

	/**
	 * 
	 */
	@:native("APP_GET_STRING")
	static function appGetString(property:String):String;

	/**
	 * 
	 */
	@:native("APP_GET_INT")
	static function appGetInt(property:String):Int;

	/**
	 * 
	 */
	@:native("APP_SET_FLOAT")
	static function appSetFloat(property:String, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("APP_SET_BLOCK")
	static function appSetBlock(blockName:String):Dynamic;

	/**
	 * ```
	 * Called in the gamescripts like:  
	 * APP::APP_SET_APP("car");  
	 * APP::APP_SET_APP("dog");  
	 * ```
	 */
	@:native("APP_SET_APP")
	static function appSetApp(appName:String):Dynamic;

	/**
	 * 
	 */
	@:native("APP_HAS_SYNCED_DATA")
	static function appHasSyncedData(appName:String):Bool;

	/**
	 * 
	 */
	@:native("APP_SET_STRING")
	static function appSetString(property:String, value:String):Dynamic;

	/**
	 * 
	 */
	@:native("APP_SET_INT")
	static function appSetInt(property:String, value:Int):Dynamic;

}
