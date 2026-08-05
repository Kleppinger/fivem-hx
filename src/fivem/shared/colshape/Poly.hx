package fivem.shared.colshape;

import fivem.shared.util.Vector3;

/**
	An arbitrary polygon on the ground plane, extruded between `minZ` and
	`maxZ`.

	Use this when no primitive fits: a police station's grounds, a race track
	sector, a gang territory that follows the streets. Trace the outline as a
	list of points in order (either winding direction works) — the shape closes
	itself, so don't repeat the first point at the end.

	Containment is a standard ray-crossing test, which is exact for both convex
	and concave outlines. It costs one comparison pass per vertex, so the
	inherited `boundingRadius` rejection matters more here than for the
	primitive shapes.
**/
class Poly extends ColShape {
	/** The outline, in order. Only X and Y are used; Z is ignored. **/
	public var points(default, null):Array<Vector3>;

	/** Lower bound of the extrusion. **/
	public var minZ:Float;

	/** Upper bound of the extrusion. **/
	public var maxZ:Float;

	var cachedRadius:Float;

	/**
		@param points At least three outline points.
		@param minZ Floor height. Defaults to unbounded.
		@param maxZ Ceiling height. Defaults to unbounded.
	**/
	public function new(points:Array<Vector3>, minZ:Float = -1e9, maxZ:Float = 1e9, ?id:String) {
		if (points == null || points.length < 3) throw "Poly needs at least three points";

		super(centroidOf(points), id);
		this.points = points;
		this.minZ = minZ;
		this.maxZ = maxZ;

		// The outline points carry whatever Z the caller happened to trace at,
		// which says nothing about the extrusion. Centring on the extrusion
		// instead keeps the inherited bounding-sphere rejection honest.
		var midZ = (minZ + maxZ) * 0.5;
		if (Math.isFinite(midZ) && Math.abs(midZ) < 1e8) center = center.withZ(midZ);

		cachedRadius = furthestPointDistance();
	}

	override public function contains(point:Vector3):Bool {
		if (point.z < minZ || point.z > maxZ) return false;

		// Ray-crossing: count how many polygon edges a ray cast in +X from the
		// point crosses. Odd means inside. Works for concave outlines too.
		var inside = false;
		var count = points.length;
		var j = count - 1;

		for (i in 0...count) {
			var a = points[i];
			var b = points[j];

			if ((a.y > point.y) != (b.y > point.y)) {
				var crossingX = a.x + (point.y - a.y) / (b.y - a.y) * (b.x - a.x);
				if (point.x < crossingX) inside = !inside;
			}

			j = i;
		}

		return inside;
	}

	override public function distanceTo(point:Vector3):Float {
		if (contains(point)) return 0;

		var nearest = Math.POSITIVE_INFINITY;
		var count = points.length;
		var j = count - 1;

		for (i in 0...count) {
			var distance = distanceToSegment(point, points[j], points[i]);
			if (distance < nearest) nearest = distance;
			j = i;
		}

		var vertical = point.z < minZ ? minZ - point.z : (point.z > maxZ ? point.z - maxZ : 0);
		return Math.sqrt(nearest * nearest + vertical * vertical);
	}

	override public function boundingRadius():Float {
		return cachedRadius;
	}

	/** Flat (XY) distance from `point` to the line segment `a`–`b`. **/
	static function distanceToSegment(point:Vector3, a:Vector3, b:Vector3):Float {
		var abx = b.x - a.x, aby = b.y - a.y;
		var lengthSquared = abx * abx + aby * aby;

		// A degenerate edge (two identical points) collapses to a point test.
		if (lengthSquared == 0) return a.distance2d(point);

		var t = ((point.x - a.x) * abx + (point.y - a.y) * aby) / lengthSquared;
		if (t < 0) t = 0 else if (t > 1) t = 1;

		var dx = point.x - (a.x + abx * t);
		var dy = point.y - (a.y + aby * t);
		return Math.sqrt(dx * dx + dy * dy);
	}

	static function centroidOf(points:Array<Vector3>):Vector3 {
		var sum = Vector3.zero();
		for (point in points) sum = sum + point;
		return sum / points.length;
	}

	function furthestPointDistance():Float {
		var furthest = 0.0;
		for (point in points) {
			var distance = center.distance2d(point);
			if (distance > furthest) furthest = distance;
		}

		// The extrusion's own half-height has to be part of the enclosing
		// sphere, or a tall polygon would be rejected before contains() runs.
		var halfHeight = (maxZ - minZ) * 0.5;
		if (!Math.isFinite(halfHeight) || halfHeight > 1e8) return 1e9;

		return Math.sqrt(furthest * furthest + halfHeight * halfHeight);
	}
}
