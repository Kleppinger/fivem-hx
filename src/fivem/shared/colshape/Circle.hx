package fivem.shared.colshape;

import fivem.shared.util.Vector3;

/**
	An upright cylinder: a circle on the ground plane, extended vertically.

	This is the workhorse shape for interaction zones. Ground in GTA is rarely
	flat and a player's Z varies as they walk, crouch or sit in a vehicle, so a
	sphere sized to feel right at eye level often fails at the kerb. A circle
	with a generous height band doesn't.

	Leave `height` at its default for an infinitely tall cylinder — correct for
	anything outdoors where there is no floor above to worry about.
**/
class Circle extends ColShape {
	public var radius:Float;

	/**
		Total vertical extent, centred on `center.z`. A value of 0 (the
		default) means unbounded — the shape ignores height entirely.
	**/
	public var height:Float;

	public function new(center:Vector3, radius:Float, height:Float = 0, ?id:String) {
		super(center, id);
		this.radius = radius;
		this.height = height;
	}

	override public function contains(point:Vector3):Bool {
		if (height > 0 && Math.abs(point.z - center.z) > height * 0.5) return false;
		var dx = point.x - center.x, dy = point.y - center.y;
		return dx * dx + dy * dy <= radius * radius;
	}

	override public function distanceTo(point:Vector3):Float {
		var flat = center.distance2d(point) - radius;
		if (flat < 0) flat = 0;

		if (height <= 0) return flat;

		var vertical = Math.abs(point.z - center.z) - height * 0.5;
		if (vertical < 0) vertical = 0;

		return Math.sqrt(flat * flat + vertical * vertical);
	}

	override public function boundingRadius():Float {
		// An unbounded cylinder can't be enclosed by a sphere; reporting a
		// huge radius keeps the zone managers' cheap rejection test correct
		// (it simply never rejects) rather than quietly wrong.
		return height <= 0 ? 1e9 : Math.sqrt(radius * radius + (height * 0.5) * (height * 0.5));
	}
}
