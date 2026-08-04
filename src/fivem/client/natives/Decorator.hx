package fivem.client.natives;

@:native("_G")
extern class Decorator {
	/**
	 * 
	 */
	@:native("DECOR_GET_BOOL")
	static function decorGetBool(entity:Dynamic, propertyName:String):Bool;

	/**
	 * ```
	 * Returns whether or not the specified property is set for the entity.  
	 * ```
	 */
	@:native("DECOR_EXIST_ON")
	static function decorExistOn(entity:Dynamic, propertyName:String):Bool;

	/**
	 * ```cpp
	 * enum eDecorType
	 * {
	 *     DECOR_TYPE_FLOAT = 1,
	 *     DECOR_TYPE_BOOL = 2,
	 *     DECOR_TYPE_INT = 3,
	 *     DECOR_TYPE_STRING = 4,
	 *     DECOR_TYPE_TIME = 5
	 * };
	 * ```
	 */
	@:native("DECOR_REGISTER")
	static function decorRegister(propertyName:String, type:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DECOR_GET_INT")
	static function decorGetInt(entity:Dynamic, propertyName:String):Int;

	/**
	 * ```
	 * This function sets metadata of type bool to specified entity.  
	 * ```
	 */
	@:native("DECOR_SET_BOOL")
	static function decorSetBool(entity:Dynamic, propertyName:String, value:Bool):Bool;

	/**
	 * 
	 */
	@:native("DECOR_GET_FLOAT")
	static function decorGetFloat(entity:Dynamic, propertyName:String):Float;

	/**
	 * 
	 */
	@:native("DECOR_REMOVE")
	static function decorRemove(entity:Dynamic, propertyName:String):Bool;

	/**
	 * 
	 */
	@:native("DECOR_IS_REGISTERED_AS_TYPE")
	static function decorIsRegisteredAsType(propertyName:String, type:Int):Bool;

	/**
	 * ```
	 * Called after all decorator type initializations.  
	 * ```
	 */
	@:native("DECOR_REGISTER_LOCK")
	static function decorRegisterLock():Dynamic;

	/**
	 * 
	 */
	@:native("DECOR_SET_TIME")
	static function decorSetTime(entity:Dynamic, propertyName:String, timestamp:Int):Bool;

	/**
	 * 
	 */
	@:native("DECOR_SET_FLOAT")
	static function decorSetFloat(entity:Dynamic, propertyName:String, value:Float):Bool;

	/**
	 * ```
	 * Sets property to int.  
	 * ```
	 */
	@:native("DECOR_SET_INT")
	static function decorSetInt(entity:Dynamic, propertyName:String, value:Int):Bool;

}
