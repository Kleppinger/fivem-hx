package fivem.client.natives;

@:native("_G")
extern class App {
	/**
	 * 
	 */
	@:native("AppCloseBlock")
	static function appCloseBlock():Dynamic;

	/**
	 * 
	 */
	@:native("AppClearBlock")
	static function appClearBlock():Dynamic;

	/**
	 * 
	 */
	@:native("AppCloseApp")
	static function appCloseApp():Dynamic;

	/**
	 * 
	 */
	@:native("AppGetFloat")
	static function appGetFloat(property:String):Float;

	/**
	 * 
	 */
	@:native("AppGetDeletedFileStatus")
	static function appGetDeletedFileStatus():Int;

	/**
	 * 
	 */
	@:native("AppDeleteAppData")
	static function appDeleteAppData(appName:String):Bool;

	/**
	 * 
	 */
	@:native("AppDataValid")
	static function appDataValid():Bool;

	/**
	 * 
	 */
	@:native("AppSaveData")
	static function appSaveData():Dynamic;

	/**
	 * 
	 */
	@:native("AppHasLinkedSocialClubAccount")
	static function appHasLinkedSocialClubAccount():Bool;

	/**
	 * 
	 */
	@:native("AppGetString")
	static function appGetString(property:String):String;

	/**
	 * 
	 */
	@:native("AppGetInt")
	static function appGetInt(property:String):Int;

	/**
	 * 
	 */
	@:native("AppSetFloat")
	static function appSetFloat(property:String, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("AppSetBlock")
	static function appSetBlock(blockName:String):Dynamic;

	/**
	 * ```
	 * Called in the gamescripts like:  
	 * APP::APP_SET_APP("car");  
	 * APP::APP_SET_APP("dog");  
	 * ```
	 */
	@:native("AppSetApp")
	static function appSetApp(appName:String):Dynamic;

	/**
	 * 
	 */
	@:native("AppHasSyncedData")
	static function appHasSyncedData(appName:String):Bool;

	/**
	 * 
	 */
	@:native("AppSetString")
	static function appSetString(property:String, value:String):Dynamic;

	/**
	 * 
	 */
	@:native("AppSetInt")
	static function appSetInt(property:String, value:Int):Dynamic;

}
