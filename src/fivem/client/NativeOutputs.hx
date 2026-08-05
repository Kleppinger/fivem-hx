package fivem.client;

import fivem.shared.util.Vector3;

/**
	Hand-written externs for natives whose Lua binding returns *multiple*
	values.

	Many GTA natives report results through pointer output parameters. FiveM's
	Lua runtime drops those parameters from the call and appends them to the
	return values instead, but the natives database still describes them as
	ordinary arguments — so `generate.py` produces, for example:

	```haxe
	static function getGroundZFor3DCoord(x:Float, y:Float, z:Float, groundZ:Dynamic, includeWater:Bool):Bool;
	```

	which type-checks but throws the ground height away. The declarations here
	model the real Lua signatures using `@:multiReturn`, so both halves of the
	result are reachable. They live outside `natives/` so regeneration never
	overwrites them.

	The wrappers in `fivem.client.core` use these; call them directly only if
	you need a native this library doesn't already wrap.
**/
@:native("_G")
extern class NativeOutputs {
	/**
		The ground height beneath a point. `found` is false when the collision
		around that spot isn't streamed in — which is the usual reason a
		spawn ends up under the map.
	**/
	@:native("GetGroundZFor_3dCoord")
	static function getGroundZFor3dCoord(x:Float, y:Float, z:Float, includeWater:Bool = false):GroundZResult;

	/** Projects a world position onto screen space, in 0..1 coordinates. **/
	@:native("GetScreenCoordFromWorldCoord")
	static function getScreenCoordFromWorldCoord(worldX:Float, worldY:Float, worldZ:Float):ScreenCoordResult;

	/**
		Polls a shape test started with one of the `START_SHAPE_TEST_*`
		natives. `status` is 0 while pending, 1 when ready, 2 when the handle
		is invalid.
	**/
	@:native("GetShapeTestResult")
	static function getShapeTestResult(shapeTestHandle:Int):ShapeTestResult;

	/** As `getShapeTestResult`, but also reports the material that was hit. **/
	@:native("GetShapeTestResultIncludingMaterial")
	static function getShapeTestResultIncludingMaterial(shapeTestHandle:Int):ShapeTestMaterialResult;

	/** The weapon a ped currently has equipped. **/
	@:native("GetCurrentPedWeapon")
	static function getCurrentPedWeapon(ped:Int, p2:Bool = true):CurrentWeaponResult;

	/** A vehicle's primary and secondary paint indices. **/
	@:native("GetVehicleColours")
	static function getVehicleColours(vehicle:Int):VehicleColoursResult;

	/** A vehicle's pearlescent and wheel colour indices. **/
	@:native("GetVehicleExtraColours")
	static function getVehicleExtraColours(vehicle:Int):VehicleColoursResult;

	/** An entity's orientation as a quaternion. **/
	@:native("GetEntityQuaternion")
	static function getEntityQuaternion(entity:Int):QuaternionResult;

	/** An entity's basis vectors and position in one call. **/
	@:native("GetEntityMatrix")
	static function getEntityMatrix(entity:Int):EntityMatrixResult;
}

@:multiReturn extern class GroundZResult {
	var found:Bool;
	var groundZ:Float;
}

@:multiReturn extern class ScreenCoordResult {
	/** False when the position is behind the camera or off-screen. **/
	var onScreen:Bool;

	var screenX:Float;
	var screenY:Float;
}

@:multiReturn extern class ShapeTestResult {
	/** 0 = still pending, 1 = complete, 2 = invalid handle. **/
	var status:Int;

	var hit:Bool;
	var endCoords:Vector3;
	var surfaceNormal:Vector3;

	/** The entity that was hit, or 0 for world geometry. **/
	var entityHit:Int;
}

@:multiReturn extern class ShapeTestMaterialResult {
	var status:Int;
	var hit:Bool;
	var endCoords:Vector3;
	var surfaceNormal:Vector3;
	var materialHash:Int;
	var entityHit:Int;
}

@:multiReturn extern class CurrentWeaponResult {
	var success:Bool;
	var weaponHash:Int;
}

@:multiReturn extern class VehicleColoursResult {
	var primary:Int;
	var secondary:Int;
}

@:multiReturn extern class QuaternionResult {
	var x:Float;
	var y:Float;
	var z:Float;
	var w:Float;
}

@:multiReturn extern class EntityMatrixResult {
	var forwardVector:Vector3;
	var rightVector:Vector3;
	var upVector:Vector3;
	var position:Vector3;
}
