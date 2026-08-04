package fivem.client.natives;

@:native("_G")
extern class Shapetest {
	/**
	 * Returns the result of a shape test, also returning the material of any touched surface.
	 * 
	 * When used with an asynchronous shape test, this native should be looped until returning 0 or 2, after which the handle is invalidated.
	 * 
	 * Unless the return value is 2, the other return values are undefined.
	 */
	@:native("GET_SHAPE_TEST_RESULT_INCLUDING_MATERIAL")
	static function getShapeTestResultIncludingMaterial(shapeTestHandle:Int, hit:Dynamic, endCoords:Dynamic, surfaceNormal:Dynamic, materialHash:Dynamic, entityHit:Dynamic):Int;

	/**
	 * Returns the result of a shape test.
	 * 
	 * When used with an asynchronous shape test, this native should be looped until returning 0 or 2, after which the handle is invalidated.
	 * 
	 * Unless the return value is 2, the other return values are undefined.
	 */
	@:native("GET_SHAPE_TEST_RESULT")
	static function getShapeTestResult(shapeTestHandle:Int, hit:Dynamic, endCoords:Dynamic, surfaceNormal:Dynamic, entityHit:Dynamic):Int;

	/**
	 * See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
	 */
	@:native("START_SHAPE_TEST_BOUNDING_BOX")
	static function startShapeTestBoundingBox(entity:Dynamic, flags1:Int, flags2:Int):Int;

	/**
	 * Raycast from point to point, where the ray has a radius.
	 */
	@:native("START_SHAPE_TEST_CAPSULE")
	static function startShapeTestCapsule(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, radius:Float, flags:Int, entity:Dynamic, p9:Int):Int;

	/**
	 * Does the same as [START_SHAPE_TEST_LOS_PROBE](#\_0x7EE9F5D83DD4F90E), except blocking until the shape test completes.
	 * 
	 * Use [START_SHAPE_TEST_LOS_PROBE](#\_0x7EE9F5D83DD4F90E) instead. Literally. Rockstar named this correctly: it's expensive, and it's synchronous.
	 */
	@:native("START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE")
	static function startExpensiveSynchronousShapeTestLosProbe(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, flags:Int, entity:Dynamic, p8:Int):Int;

	/**
	 * See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
	 */
	@:native("START_SHAPE_TEST_BOUND")
	static function startShapeTestBound(entity:Dynamic, flags1:Int, flags2:Int):Int;

	/**
	 * Invalidates the entity handle passed by removing the fwScriptGuid from the entity. This should be used when receiving an
	 * ambient entity from shape testing natives, but can also be used for other natives returning an 'irrelevant' entity handle.
	 */
	@:native("RELEASE_SCRIPT_GUID_FROM_ENTITY")
	static function releaseScriptGuidFromEntity(entity:Dynamic):Dynamic;

	/**
	 * Performs the same type of trace as START_SHAPE_TEST_CAPSULE, but with some different hardcoded parameters.
	 */
	@:native("START_SHAPE_TEST_SWEPT_SPHERE")
	static function startShapeTestSweptSphere(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, radius:Float, flags:Int, entity:Dynamic, p9:Int):Int;

	/**
	 * For more information, see [`START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE`](#\_0x377906D8A31E5586) and [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E).
	 */
	@:native("START_SHAPE_TEST_BOX")
	static function startShapeTestBox(x:Float, y:Float, z:Float, x1:Float, y1:Float, z1:Float, rotX:Float, rotY:Float, rotZ:Float, p9:Int, flags:Int, entity:Dynamic, p12:Int):Int;

	/**
	 * Asynchronously starts a line-of-sight (raycast) world probe shape test.
	 * 
	 * ```cpp
	 * enum eTraceFlags
	 * {
	 *   None = 0,
	 *   IntersectWorld = 1,
	 *   IntersectVehicles = 2,
	 *   IntersectPeds = 4,
	 *   IntersectRagdolls = 8,
	 *   IntersectObjects = 16,
	 *   IntersectWater = 32,
	 *   IntersectGlass = 64,
	 *   IntersectRiver = 128,
	 *   IntersectFoliage = 256,
	 *   IntersectEverything = -1
	 * }
	 * ```
	 * 
	 * NOTE: Raycasts that intersect with mission_entites (flag = 2) has limited range and will not register for far away entites. The range seems to be about 30 metres.
	 * 
	 * Use the handle with [GET_SHAPE_TEST_RESULT](#\_0x3D87450E15D98694) or [GET_SHAPE_TEST_RESULT_INCLUDING_MATERIAL](#\_0x65287525D951F6BE) until it returns 0 or 2.
	 */
	@:native("START_SHAPE_TEST_LOS_PROBE")
	static function startShapeTestLosProbe(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, traceFlags:Int, entity:Dynamic, options:Int):Int;

	/**
	 * Since it is only used in the PC version, likely some mouse-friendly shape test. Uses **in** vector arguments.
	 * 
	 * Asynchronous.
	 * 
	 * ```
	 * it returns a ShapeTest handle that can be used with GET_SHAPE_TEST_RESULT.  
	 * In its only usage in game scripts its called with flag set to 511, entity to player_ped_id and flag2 set to 7  
	 * ```
	 * 
	 * See [`START_SHAPE_TEST_LOS_PROBE`](#\_0x7EE9F5D83DD4F90E) for flags.
	 */
	@:native("_START_SHAPE_TEST_SURROUNDING_COORDS")
	static function StartShapeTestSurroundingCoords(pVec1:Dynamic, pVec2:Dynamic, flag:Int, entity:Dynamic, flag2:Int):Int;

}
