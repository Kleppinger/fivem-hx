package fivem.client.natives;

@:native("_G")
extern class Interior {
	/**
	 * ```
	 * Does something similar to INTERIOR::DISABLE_INTERIOR  
	 * ```
	 */
	@:native("CAP_INTERIOR")
	static function capInterior(interiorID:Int, toggle:Bool):Dynamic;

	/**
	 * ```
	 * More info: http://gtaforums.com/topic/836367-adding-props-to-interiors/  
	 * ```
	 */
	@:native("ACTIVATE_INTERIOR_ENTITY_SET")
	static function activateInteriorEntitySet(interior:Int, entitySetName:String):Dynamic;

	/**
	 * 
	 */
	@:native("ADD_PICKUP_TO_INTERIOR_ROOM_BY_NAME")
	static function addPickupToInteriorRoomByName(pickup:Dynamic, roomName:String):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_ROOM_FOR_ENTITY")
	static function clearRoomForEntity(entity:Dynamic):Dynamic;

	/**
	 * Immediately removes entity from an interior. Like sets entity to `limbo` room.
	 * 
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("_CLEAR_INTERIOR_FOR_ENTITY")
	static function ClearInteriorForEntity(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_ROOM_FOR_GAME_VIEWPORT")
	static function clearRoomForGameViewport():Dynamic;

	/**
	 * 
	 */
	@:native("DEACTIVATE_INTERIOR_ENTITY_SET")
	static function deactivateInteriorEntitySet(interior:Int, entitySetName:String):Dynamic;

	/**
	 * ```
	 * Example:   
	 * This removes the interior from the strip club and when trying to walk inside the player just falls:  
	 * INTERIOR::DISABLE_INTERIOR(118018, true);  
	 * ```
	 */
	@:native("DISABLE_INTERIOR")
	static function disableInterior(interiorID:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_ENABLE_SCRIPT_CULL_MODEL_THIS_FRAME")
	static function EnableScriptCullModelThisFrame(mapObjectHash:Int):Dynamic;

	/**
	 * ```
	 * This is the native that is used to hide the exterior of GTA Online apartment buildings when you are inside an apartment.
	 * ```
	 */
	@:native("ENABLE_EXTERIOR_CULL_MODEL_THIS_FRAME")
	static function enableExteriorCullModelThisFrame(mapObjectHash:Int):Dynamic;

	/**
	 * ```
	 * Hashed version of GET_INTERIOR_AT_COORDS_WITH_TYPE
	 * ```
	 */
	@:native("GET_INTERIOR_AT_COORDS_WITH_TYPEHASH")
	static function getInteriorAtCoordsWithTypehash(x:Float, y:Float, z:Float, typeHash:Int):Int;

	/**
	 * 
	 */
	@:native("FORCE_ROOM_FOR_GAME_VIEWPORT")
	static function forceRoomForGameViewport(interiorID:Int, roomHashKey:Int):Dynamic;

	/**
	 * ```
	 * Returns the interior ID representing the requested interior at that location (if found?). The supplied interior string is not the same as the one used to load the interior.  
	 * Use: INTERIOR::UNPIN_INTERIOR(INTERIOR::GET_INTERIOR_AT_COORDS_WITH_TYPE(x, y, z, interior))  
	 * Interior types include: "V_Michael", "V_Franklins", "V_Franklinshouse", etc.. you can find them in the scripts.  
	 * Not a very useful native as you could just use GET_INTERIOR_AT_COORDS instead and get the same result, without even having to specify the interior type.  
	 * ```
	 */
	@:native("GET_INTERIOR_AT_COORDS_WITH_TYPE")
	static function getInteriorAtCoordsWithType(x:Float, y:Float, z:Float, interiorType:String):Int;

	/**
	 * ```
	 * Forces the particular room in an interior to load incase not teleporting into the portal.
	 * ```
	 */
	@:native("FORCE_ROOM_FOR_ENTITY")
	static function forceRoomForEntity(entity:Dynamic, interior:Int, roomHashKey:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("GET_INTERIOR_FROM_PRIMARY_VIEW")
	static function getInteriorFromPrimaryView():Int;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_FROM_COLLISION")
	static function getInteriorFromCollision(x:Float, y:Float, z:Float):Int;

	/**
	 * 
	 */
	@:native("GET_OFFSET_FROM_INTERIOR_IN_WORLD_COORDS")
	static function getOffsetFromInteriorInWorldCoords(interior:Int, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * ```
	 * Returns interior ID from specified coordinates. If coordinates are outside, then it returns 0.  
	 * Example for VB.NET  
	 * Dim interiorID As Integer = Native.Function.Call(Of Integer)(Hash.GET_INTERIOR_AT_COORDS, X, Y, Z)  
	 * ```
	 */
	@:native("GET_INTERIOR_AT_COORDS")
	static function getInteriorAtCoords(x:Float, y:Float, z:Float):Int;

	/**
	 * ```
	 * Returns the handle of the interior that the entity is in. Returns 0 if outside.  
	 * ```
	 */
	@:native("GET_INTERIOR_FROM_ENTITY")
	static function getInteriorFromEntity(entity:Dynamic):Int;

	/**
	 * ```
	 * Returns the group ID of the specified interior. For example, regular interiors have group 0, subway interiors have group 1. There are a few other groups too.  
	 * ```
	 */
	@:native("GET_INTERIOR_GROUP_ID")
	static function getInteriorGroupId(interior:Int):Int;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("GET_INTERIOR_HEADING")
	static function getInteriorHeading(interior:Int):Float;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("GET_INTERIOR_LOCATION_AND_NAMEHASH")
	static function getInteriorLocationAndNamehash(interior:Int, position:Dynamic, nameHash:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_ROOM_KEY_FOR_GAME_VIEWPORT")
	static function getRoomKeyForGameViewport():Int;

	/**
	 * 
	 */
	@:native("IS_INTERIOR_DISABLED")
	static function isInteriorDisabled(interior:Int):Bool;

	/**
	 * ```
	 * Seems to do the exact same as INTERIOR::GET_ROOM_KEY_FROM_ENTITY  
	 * ```
	 */
	@:native("GET_KEY_FOR_ENTITY_IN_ROOM")
	static function getKeyForEntityInRoom(entity:Dynamic):Int;

	/**
	 * ```
	 * Gets the room hash key from the room that the specified entity is in. Each room in every interior has a unique key. Returns 0 if the entity is outside.  
	 * ```
	 */
	@:native("GET_ROOM_KEY_FROM_ENTITY")
	static function getRoomKeyFromEntity(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("IS_INTERIOR_SCENE")
	static function isInteriorScene():Bool;

	/**
	 * Returns true if the collision at the specified coords is marked as being outside (false if there's an interior)
	 */
	@:native("IS_COLLISION_MARKED_OUTSIDE")
	static function isCollisionMarkedOutside(x:Float, y:Float, z:Float):Bool;

	/**
	 * 
	 */
	@:native("IS_INTERIOR_CAPPED")
	static function isInteriorCapped(interiorID:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_INTERIOR_READY")
	static function isInteriorReady(interiorID:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_INTERIOR_ENTITY_SET_ACTIVE")
	static function isInteriorEntitySetActive(interior:Int, entitySetName:String):Bool;

	/**
	 * 
	 */
	@:native("IS_VALID_INTERIOR")
	static function isValidInterior(interior:Int):Bool;

	/**
	 * 
	 */
	@:native("REFRESH_INTERIOR")
	static function refreshInterior(interiorID:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PIN_INTERIOR_IN_MEMORY")
	static function pinInteriorInMemory(interior:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_INTERIOR_ENTITY_SET_COLOR")
	static function SetInteriorEntitySetColor(interior:Int, entitySetName:String, color:Int):Dynamic;

	/**
	 * ```
	 * Does something similar to INTERIOR::DISABLE_INTERIOR.  
	 * You don't fall through the floor but everything is invisible inside and looks the same as when INTERIOR::DISABLE_INTERIOR is used. Peds behaves normally inside.  
	 * ```
	 */
	@:native("UNPIN_INTERIOR")
	static function unpinInterior(interior:Int):Dynamic;

}
