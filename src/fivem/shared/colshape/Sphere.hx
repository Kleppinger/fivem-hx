package fivem.shared.colshape;

import fivem.shared.util.Vector3;

/**
	A sphere — the cheapest shape to test, and the right default when height
	genuinely matters (an explosion radius, a proximity check that shouldn't
	reach through a floor).

	When it shouldn't matter, use `Circle` instead: a player standing on the
	roof of a building is 15 metres above the shop below, and a sphere will
	exclude them while a circle won't.
**/
class Sphere extends ColShape {
	public var radius:Float;

	public function new(center:Vector3, radius:Float, ?id:String) {
		super(center, id);
		this.radius = radius;
	}

	override public function contains(point:Vector3):Bool {
		return center.distanceSquared(point) <= radius * radius;
	}

	override public function distanceTo(point:Vector3):Float {
		var distance = center.distance(point) - radius;
		return distance > 0 ? distance : 0;
	}

	override public function boundingRadius():Float {
		return radius;
	}
}
