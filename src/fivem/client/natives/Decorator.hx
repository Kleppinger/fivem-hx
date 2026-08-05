package fivem.client.natives;

@:native("_G")
extern class Decorator {
	/**
	 * 
	 */
	@:native("DecorGetBool")
	static function decorGetBool(entity:Dynamic, propertyName:String):Bool;

	/**
	 * ```
	 * Returns whether or not the specified property is set for the entity.  
	 * ```
	 */
	@:native("DecorExistOn")
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
	@:native("DecorRegister")
	static function decorRegister(propertyName:String, type:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DecorGetInt")
	static function decorGetInt(entity:Dynamic, propertyName:String):Int;

	/**
	 * ```
	 * This function sets metadata of type bool to specified entity.  
	 * ```
	 */
	@:native("DecorSetBool")
	static function decorSetBool(entity:Dynamic, propertyName:String, value:Bool):Bool;

	/**
	 * 
	 */
	@:native("DecorGetFloat")
	static function decorGetFloat(entity:Dynamic, propertyName:String):Float;

	/**
	 * 
	 */
	@:native("DecorRemove")
	static function decorRemove(entity:Dynamic, propertyName:String):Bool;

	/**
	 * 
	 */
	@:native("DecorIsRegisteredAsType")
	static function decorIsRegisteredAsType(propertyName:String, type:Int):Bool;

	/**
	 * ```
	 * Called after all decorator type initializations.  
	 * ```
	 */
	@:native("DecorRegisterLock")
	static function decorRegisterLock():Dynamic;

	/**
	 * 
	 */
	@:native("DecorSetTime")
	static function decorSetTime(entity:Dynamic, propertyName:String, timestamp:Int):Bool;

	/**
	 * 
	 */
	@:native("DecorSetFloat")
	static function decorSetFloat(entity:Dynamic, propertyName:String, value:Float):Bool;

	/**
	 * ```
	 * Sets property to int.  
	 * ```
	 */
	@:native("DecorSetInt")
	static function decorSetInt(entity:Dynamic, propertyName:String, value:Int):Bool;

}
