package fivem.client.natives;

@:native("_G")
extern class Physics {
	/**
	 * 
	 */
	@:native("ApplyImpulseToCloth")
	static function applyImpulseToCloth(posX:Float, posY:Float, posZ:Float, vecX:Float, vecY:Float, vecZ:Float, impulse:Float):Dynamic;

	/**
	 * ```
	 * Creates a rope at the specific position, that extends in the specified direction when not attached to any entities.

	 * __

	 * Rope does NOT interact with anything you attach it to, in some cases it make interact with the world AFTER it breaks (seems to occur if you set the type to -1).

	 * Rope will sometimes contract and fall to the ground like you'd expect it to, but since it doesn't interact with the world the effect is just jaring.
	 * ```
	 * 
	 * There are 8 different rope types in the base game. Full rope data can be found in `ropedata.xml`.
	 * 
	 * ```cpp
	 * enum ePhysicsRopeType {

	 *     RopeThin = 0, // Verticies: 1, Radius: 0.03, Textures: rope & rope_n

	 *     RopeWire6 = 1, // Verticies: 4, Radius: 0.015, Textures: steel_cable & steel_cable_n

	 *     RopeWire32 = 2, // Verticies: 32, Radius: 0.025, Textures: steel_cable & steel_cable_n

	 *     RopeMesh = 3, // Verticies: 6, Radius: 0.03, Textures: rope & rope_n

	 *     RopeThinWire32 = 4, // Verticies: 32, Radius: 0.01, Textures: rope & rope_n

	 *     RopeReins = 5, // Verticies: 32, Radius: 0.005, Textures: rope & rope_n

	 *     RopeThin4 = 6, // Verticies: 4, Radius: 0.03, Textures: rope & rope_n

	 *     RopeWire64 = 7 // Verticies: 64, Radius: 0.025, Textures: steel_cable & steel_cable_n

	 * }
	 * ```
	 */
	@:native("AddRope")
	static function addRope(x:Float, y:Float, z:Float, rotX:Float, rotY:Float, rotZ:Float, maxLength:Float, ropeType:Int, initLength:Float, minLength:Float, lengthChangeRate:Float, onlyPPU:Bool, collisionOn:Bool, lockFromFront:Bool, timeMultiplier:Float, breakable:Bool, unkPtr:Dynamic):Int;

	/**
	 * 
	 */
	@:native("ActivatePhysics")
	static function activatePhysics(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("BreakEntityGlass")
	static function breakEntityGlass(entity:Dynamic, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Float, p7:Float, p8:Float, p9:Dynamic, p10:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DeleteChildRope")
	static function deleteChildRope(ropeId:Int):Dynamic;

	/**
	 * ```
	 * The position supplied can be anywhere, and the entity should anchor relative to that point from it's origin.  
	 * ```
	 */
	@:native("AttachRopeToEntity")
	static function attachRopeToEntity(ropeId:Int, entity:Dynamic, x:Float, y:Float, z:Float, p5:Bool):Dynamic;

	/**
	 * Deletes the rope with the specified handle.
	 * 
	 * You should check if the rope exists before trying to delete it, see [DOES_ROPE_EXIST](#\_0xFD5448BE3111ED96).
	 * 
	 * For an example on how to use this native please refer to [ADD_ROPE](#\_0xE832D760399EB220)
	 */
	@:native("DeleteRope")
	static function deleteRope(ropeId:Dynamic):Dynamic;

	/**
	 * ```
	 * Attaches entity 1 to entity 2.  
	 * ```
	 */
	@:native("AttachEntitiesToRope")
	static function attachEntitiesToRope(ropeId:Int, ent1:Dynamic, ent2:Dynamic, ent1_x:Float, ent1_y:Float, ent1_z:Float, ent2_x:Float, ent2_y:Float, ent2_z:Float, length:Float, p10:Bool, p11:Bool, boneName1:String, boneName2:String):Dynamic;

	/**
	 * ```
	 * GET_*
	 * ```
	 */
	@:native("GetHasObjectFragInst")
	static function GetHasObjectFragInst(object:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("DetachRopeFromEntity")
	static function detachRopeFromEntity(ropeId:Int, entity:Dynamic):Dynamic;

	/**
	 * Return if the rope was generated or not by the script where the native is called.
	 */
	@:native("DoesRopeBelongToThisScript")
	static function DoesRopeBelongToThisScript(ropeId:Int):Bool;

	/**
	 * For an example on how to use this native please refer to [ADD_ROPE](#\_0xE832D760399EB220)
	 */
	@:native("DoesRopeExist")
	static function doesRopeExist(ropeId:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetRopeVertexCoord")
	static function getRopeVertexCoord(ropeId:Int, vertex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GetCgoffset")
	static function getCgoffset(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetRopeLastVertexCoord")
	static function getRopeLastVertexCoord(ropeId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GetRopeVertexCount")
	static function getRopeVertexCount(ropeId:Int):Int;

	/**
	 * ```
	 * Rope presets can be found in the gamefiles. One example is "ropeFamily3", it is NOT a hash but rather a string.
	 * ```
	 */
	@:native("LoadRopeData")
	static function loadRopeData(ropeId:Int, rope_preset:String):Dynamic;

	/**
	 * 
	 */
	@:native("RopeAreTexturesLoaded")
	static function ropeAreTexturesLoaded():Bool;

	/**
	 * 
	 */
	@:native("PinRopeVertex")
	static function pinRopeVertex(ropeId:Int, vertex:Int, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("RopeGetDistanceBetweenEnds")
	static function ropeGetDistanceBetweenEnds(ropeId:Int):Float;

	/**
	 * ```
	 * Forces a rope to a certain length.
	 * ```
	 */
	@:native("RopeForceLength")
	static function ropeForceLength(ropeId:Int, length:Float):Dynamic;

	/**
	 * 
	 */
	@:native("RopeConvertToSimple")
	static function ropeConvertToSimple(ropeId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RopeSetUpdateOrder")
	static function ropeSetUpdateOrder(ropeId:Int, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("RopeDrawShadowEnabled")
	static function ropeDrawShadowEnabled(ropeId:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("RopeSetUpdatePinverts")
	static function ropeSetUpdatePinverts(ropeId:Int):Dynamic;

	/**
	 * ```
	 * Loads rope textures for all ropes in the current scene.
	 * ```
	 */
	@:native("RopeLoadTextures")
	static function ropeLoadTextures():Dynamic;

	/**
	 * ```
	 * Reset a rope to a certain length.  
	 * ```
	 */
	@:native("RopeResetLength")
	static function ropeResetLength(ropeId:Int, length:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetDisableBreaking")
	static function setDisableBreaking(object:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Unloads rope textures for all ropes in the current scene.
	 * ```
	 */
	@:native("RopeUnloadTextures")
	static function ropeUnloadTextures():Dynamic;

	/**
	 * Related to the lower-end of a vehicles fTractionCurve, e.g., from standing starts and acceleration from low/zero speeds.
	 * 
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("SetLaunchControlEnabled")
	static function SetLaunchControlEnabled(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetCgAtBoundcenter")
	static function setCgAtBoundcenter(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SetEntityProofUnk")
	static function SetEntityProofUnk(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("UnpinRopeVertex")
	static function unpinRopeVertex(ropeId:Int, vertex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetDamping")
	static function setDamping(entity:Dynamic, vertex:Int, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetCgoffset")
	static function setCgoffset(entity:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("StartRopeWinding")
	static function startRopeWinding(ropeId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("StartRopeUnwindingFront")
	static function startRopeUnwindingFront(ropeId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("StopRopeWinding")
	static function stopRopeWinding(ropeId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetDisableFragDamage")
	static function setDisableFragDamage(object:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("StopRopeUnwindingFront")
	static function stopRopeUnwindingFront(ropeId:Int):Dynamic;

}
