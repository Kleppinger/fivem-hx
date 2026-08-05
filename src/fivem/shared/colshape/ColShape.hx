package fivem.shared.colshape;

import fivem.shared.util.Vector3;

/**
	The base class for every collision shape.

	A `ColShape` is pure geometry: it knows its own bounds and can answer
	"is this point inside me?". It does no polling, registers no events, and
	is entirely environment-agnostic, which is what lets the same shape
	definition be shared between client and server code.

	The polling layer that turns shapes into enter/exit callbacks lives in
	`fivem.client.core.Zones` (against the local player) and
	`fivem.server.core.Zones` (against every connected player).

	Subclasses must implement `contains`, `distanceTo` and `boundingRadius`.
	`boundingRadius` exists so the zone managers can reject far-away shapes
	with a single cheap distance check before running the real containment
	test — the difference between a viable per-frame poll and a stutter.
**/
class ColShape {
	/** An identifier for this shape, useful for keying zone state. Assigned automatically if not given. **/
	public var id(default, null):String;

	/** The shape's centre point. **/
	public var center:Vector3;

	/** Arbitrary user data carried along with the shape. **/
	public var data:Dynamic;

	static var nextId = 0;

	function new(center:Vector3, ?id:String) {
		this.center = center;
		this.id = id != null ? id : 'colshape_${nextId++}';
	}

	/** Whether `point` lies inside the shape. **/
	public function contains(point:Vector3):Bool {
		throw "ColShape.contains must be implemented by a subclass";
	}

	/**
		Distance from `point` to the shape's surface, or 0 when inside.
	**/
	public function distanceTo(point:Vector3):Float {
		throw "ColShape.distanceTo must be implemented by a subclass";
	}

	/**
		The radius of a sphere centred on `center` that fully encloses the
		shape. Used as a cheap rejection test before `contains`.
	**/
	public function boundingRadius():Float {
		throw "ColShape.boundingRadius must be implemented by a subclass";
	}

	/**
		A cheap conservative test: false means `point` is definitely outside,
		true means `contains` is worth calling.
	**/
	public inline function mightContain(point:Vector3):Bool {
		var radius = boundingRadius();
		return center.distanceSquared(point) <= radius * radius;
	}
}
