package fivem.shared.colshape;

import fivem.shared.util.MathUtil;
import fivem.shared.util.Vector3;

/**
	An oriented box: axis-aligned by default, or rotated about the vertical
	axis by `heading`.

	The natural shape for building interiors, garages and parking bays, where
	an axis-aligned bounding box would either miss corners or spill into the
	street. Give it the same heading as the building and the fit is exact.

	`size` is the full extent along each axis, not the half-extent — a
	`size` of `(4, 8, 3)` is 4 m wide, 8 m deep and 3 m tall.
**/
class Box extends ColShape {
	/** Full width, depth and height. **/
	public var size:Vector3;

	/** Rotation about the Z axis in degrees, using the same convention as entity headings. **/
	public var heading:Float;

	var cosHeading:Float;
	var sinHeading:Float;

	public function new(center:Vector3, size:Vector3, heading:Float = 0, ?id:String) {
		super(center, id);
		this.size = size;
		this.heading = heading;
		cacheRotation();
	}

	/**
		Recomputes the cached rotation. Call this after assigning `heading`
		directly; the constructor and `rotateTo` do it for you.
	**/
	public function cacheRotation():Void {
		// Cached because containment tests run per frame per shape, and
		// trigonometry is by far the most expensive part of the test.
		var radians = heading * MathUtil.DEG_TO_RAD;
		cosHeading = Math.cos(radians);
		sinHeading = Math.sin(radians);
	}

	public function rotateTo(degrees:Float):Void {
		heading = degrees;
		cacheRotation();
	}

	override public function contains(point:Vector3):Bool {
		var local = toLocal(point);
		return Math.abs(local.x) <= size.x * 0.5 && Math.abs(local.y) <= size.y * 0.5 && Math.abs(local.z) <= size.z * 0.5;
	}

	override public function distanceTo(point:Vector3):Float {
		var local = toLocal(point);
		var dx = Math.abs(local.x) - size.x * 0.5;
		var dy = Math.abs(local.y) - size.y * 0.5;
		var dz = Math.abs(local.z) - size.z * 0.5;

		if (dx < 0) dx = 0;
		if (dy < 0) dy = 0;
		if (dz < 0) dz = 0;

		return Math.sqrt(dx * dx + dy * dy + dz * dz);
	}

	override public function boundingRadius():Float {
		return Math.sqrt(size.x * size.x + size.y * size.y + size.z * size.z) * 0.5;
	}

	/** Expresses `point` in the box's own unrotated frame, centred on the origin. **/
	inline function toLocal(point:Vector3):Vector3 {
		var dx = point.x - center.x;
		var dy = point.y - center.y;
		// Inverse rotation, so the containment test reduces to axis-aligned comparisons.
		return new Vector3(dx * cosHeading + dy * sinHeading, -dx * sinHeading + dy * cosHeading, point.z - center.z);
	}
}
