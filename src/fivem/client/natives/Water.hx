package fivem.client.natives;

@:native("_G")
extern class Water {
	/**
	 * ```
	 * Gets the aggressiveness factor of the ocean waves.  
	 * ```
	 */
	@:native("GetDeepOceanScaler")
	static function getDeepOceanScaler():Float;

	/**
	 * ```
	 * Sets the water height for a given position and radius.  
	 * ```
	 */
	@:native("ModifyWater")
	static function modifyWater(x:Float, y:Float, height:Float, radius:Float):Dynamic;

	/**
	 * Only 8 current rises can exist. If rises need to be changed, use REMOVE_EXTRA_CALMING_QUAD and then ADD_EXTRA_CALMING_QUAD again.
	 * After removing a rise, you will be able to add a rise again.
	 */
	@:native("AddExtraCalmingQuad")
	static function addExtraCalmingQuad(xLow:Float, yLow:Float, xHigh:Float, yHigh:Float, height:Float):Int;

	/**
	 * Retrieves the depth of the water beneath the specified position, disregarding wave effects.
	 * 
	 * **Note:** The result remains consistent across different frames as it doesn't consider wave fluctuations.
	 */
	@:native("GetWaterHeightNoWaves")
	static function getWaterHeightNoWaves(x:Float, y:Float, z:Float, height:Dynamic):Bool;

	/**
	 * Retrieves the depth of the water beneath the specified position, accounting for the waves.
	 * 
	 * **Note:** The result might vary depending on the specific frame when this command is executed due to wave fluctuations.
	 */
	@:native("GetWaterHeight")
	static function getWaterHeight(x:Float, y:Float, z:Float, height:Dynamic):Bool;

	/**
	 * ```
	 * Sets a value that determines how aggressive the ocean waves will be. Values of 2.0 or more make for very aggressive waves like you see during a thunderstorm.  
	 * Works only ~200 meters around the player.  
	 * ```
	 */
	@:native("SetDeepOceanScaler")
	static function setDeepOceanScaler(intensity:Float):Dynamic;

	/**
	 * ```
	 * p0 is the handle returned from _0xFDBF4CDBC07E1706  
	 * ```
	 */
	@:native("RemoveCurrentRise")
	static function RemoveCurrentRise(p0:Int):Dynamic;

	/**
	 * Flags are identical to START_SHAPE_TEST\*, however, 128 is automatically set.
	 */
	@:native("TestProbeAgainstAllWater")
	static function testProbeAgainstAllWater(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, flag:Int, result:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("TestVerticalProbeAgainstAllWater")
	static function testVerticalProbeAgainstAllWater(x:Float, y:Float, z:Float, flag:Int, height:Dynamic):Bool;

	/**
	 * ```
	 * Sets the waves intensity back to original (1.0 in most cases). 
	 * ```
	 */
	@:native("ResetDeepOceanScaler")
	static function resetDeepOceanScaler():Dynamic;

	/**
	 * 
	 */
	@:native("TestProbeAgainstWater")
	static function testProbeAgainstWater(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, result:Dynamic):Bool;

}
