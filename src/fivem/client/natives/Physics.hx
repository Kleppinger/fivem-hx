package fivem.client.natives;

@:native("_G")
extern class Physics {
	/**
	 * 
	 */
	@:native("APPLY_IMPULSE_TO_CLOTH")
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
	@:native("ADD_ROPE")
	static function addRope(x:Float, y:Float, z:Float, rotX:Float, rotY:Float, rotZ:Float, maxLength:Float, ropeType:Int, initLength:Float, minLength:Float, lengthChangeRate:Float, onlyPPU:Bool, collisionOn:Bool, lockFromFront:Bool, timeMultiplier:Float, breakable:Bool, unkPtr:Dynamic):Int;

	/**
	 * 
	 */
	@:native("ACTIVATE_PHYSICS")
	static function activatePhysics(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("BREAK_ENTITY_GLASS")
	static function breakEntityGlass(entity:Dynamic, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Float, p7:Float, p8:Float, p9:Dynamic, p10:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DELETE_CHILD_ROPE")
	static function deleteChildRope(ropeId:Int):Dynamic;

	/**
	 * ```
	 * The position supplied can be anywhere, and the entity should anchor relative to that point from it's origin.  
	 * ```
	 */
	@:native("ATTACH_ROPE_TO_ENTITY")
	static function attachRopeToEntity(ropeId:Int, entity:Dynamic, x:Float, y:Float, z:Float, p5:Bool):Dynamic;

	/**
	 * Deletes the rope with the specified handle.
	 * 
	 * You should check if the rope exists before trying to delete it, see [DOES_ROPE_EXIST](#\_0xFD5448BE3111ED96).
	 * 
	 * For an example on how to use this native please refer to [ADD_ROPE](#\_0xE832D760399EB220)
	 */
	@:native("DELETE_ROPE")
	static function deleteRope(ropeId:Dynamic):Dynamic;

	/**
	 * ```
	 * Attaches entity 1 to entity 2.  
	 * ```
	 */
	@:native("ATTACH_ENTITIES_TO_ROPE")
	static function attachEntitiesToRope(ropeId:Int, ent1:Dynamic, ent2:Dynamic, ent1_x:Float, ent1_y:Float, ent1_z:Float, ent2_x:Float, ent2_y:Float, ent2_z:Float, length:Float, p10:Bool, p11:Bool, boneName1:String, boneName2:String):Dynamic;

	/**
	 * ```
	 * GET_*
	 * ```
	 */
	@:native("_GET_HAS_OBJECT_FRAG_INST")
	static function GetHasObjectFragInst(object:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("DETACH_ROPE_FROM_ENTITY")
	static function detachRopeFromEntity(ropeId:Int, entity:Dynamic):Dynamic;

	/**
	 * Return if the rope was generated or not by the script where the native is called.
	 */
	@:native("_DOES_ROPE_BELONG_TO_THIS_SCRIPT")
	static function DoesRopeBelongToThisScript(ropeId:Int):Bool;

	/**
	 * For an example on how to use this native please refer to [ADD_ROPE](#\_0xE832D760399EB220)
	 */
	@:native("DOES_ROPE_EXIST")
	static function doesRopeExist(ropeId:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GET_ROPE_VERTEX_COORD")
	static function getRopeVertexCoord(ropeId:Int, vertex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GET_CGOFFSET")
	static function getCgoffset(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_ROPE_LAST_VERTEX_COORD")
	static function getRopeLastVertexCoord(ropeId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GET_ROPE_VERTEX_COUNT")
	static function getRopeVertexCount(ropeId:Int):Int;

	/**
	 * ```
	 * Rope presets can be found in the gamefiles. One example is "ropeFamily3", it is NOT a hash but rather a string.
	 * ```
	 */
	@:native("LOAD_ROPE_DATA")
	static function loadRopeData(ropeId:Int, rope_preset:String):Dynamic;

	/**
	 * 
	 */
	@:native("ROPE_ARE_TEXTURES_LOADED")
	static function ropeAreTexturesLoaded():Bool;

	/**
	 * 
	 */
	@:native("PIN_ROPE_VERTEX")
	static function pinRopeVertex(ropeId:Int, vertex:Int, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("ROPE_GET_DISTANCE_BETWEEN_ENDS")
	static function ropeGetDistanceBetweenEnds(ropeId:Int):Float;

	/**
	 * ```
	 * Forces a rope to a certain length.
	 * ```
	 */
	@:native("ROPE_FORCE_LENGTH")
	static function ropeForceLength(ropeId:Int, length:Float):Dynamic;

	/**
	 * 
	 */
	@:native("ROPE_CONVERT_TO_SIMPLE")
	static function ropeConvertToSimple(ropeId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ROPE_SET_UPDATE_ORDER")
	static function ropeSetUpdateOrder(ropeId:Int, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("ROPE_DRAW_SHADOW_ENABLED")
	static function ropeDrawShadowEnabled(ropeId:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ROPE_SET_UPDATE_PINVERTS")
	static function ropeSetUpdatePinverts(ropeId:Int):Dynamic;

	/**
	 * ```
	 * Loads rope textures for all ropes in the current scene.
	 * ```
	 */
	@:native("ROPE_LOAD_TEXTURES")
	static function ropeLoadTextures():Dynamic;

	/**
	 * ```
	 * Reset a rope to a certain length.  
	 * ```
	 */
	@:native("ROPE_RESET_LENGTH")
	static function ropeResetLength(ropeId:Int, length:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_DISABLE_BREAKING")
	static function setDisableBreaking(object:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Unloads rope textures for all ropes in the current scene.
	 * ```
	 */
	@:native("ROPE_UNLOAD_TEXTURES")
	static function ropeUnloadTextures():Dynamic;

	/**
	 * Related to the lower-end of a vehicles fTractionCurve, e.g., from standing starts and acceleration from low/zero speeds.
	 * 
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_SET_LAUNCH_CONTROL_ENABLED")
	static function SetLaunchControlEnabled(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CG_AT_BOUNDCENTER")
	static function setCgAtBoundcenter(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_ENTITY_PROOF_UNK")
	static function SetEntityProofUnk(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("UNPIN_ROPE_VERTEX")
	static function unpinRopeVertex(ropeId:Int, vertex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_DAMPING")
	static function setDamping(entity:Dynamic, vertex:Int, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CGOFFSET")
	static function setCgoffset(entity:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("START_ROPE_WINDING")
	static function startRopeWinding(ropeId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("START_ROPE_UNWINDING_FRONT")
	static function startRopeUnwindingFront(ropeId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("STOP_ROPE_WINDING")
	static function stopRopeWinding(ropeId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_DISABLE_FRAG_DAMAGE")
	static function setDisableFragDamage(object:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("STOP_ROPE_UNWINDING_FRONT")
	static function stopRopeUnwindingFront(ropeId:Int):Dynamic;

}
