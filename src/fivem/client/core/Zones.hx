package fivem.client.core;

import fivem.client.natives.Graphics;
import fivem.shared.colshape.Box;
import fivem.shared.colshape.Circle;
import fivem.shared.colshape.ColShape;
import fivem.shared.colshape.Poly;
import fivem.shared.colshape.Sphere;
import fivem.shared.core.Thread;
import fivem.shared.core.Thread.TimerHandle;
import fivem.shared.util.Rgba;
import fivem.shared.util.Vector3;

/**
	What to run as the local player moves through a zone.

	Written as a `@:structInit` class rather than a typedef, so it is still
	constructed from an object literal but generates valid Lua. Haxe's Lua
	target treats a function-typed field of an *anonymous structure* as a
	method: it calls it with colon syntax and therefore wraps the assigned
	closure in a self-stripping adapter. That adapter is emitted as
	`function(_, ...) return function(...) ... end(...) end`, and calling a
	function literal without wrapping it in parentheses is a syntax error in
	Lua, so the whole script fails to parse. A `@:structInit` class compiles
	the same literal to an ordinary constructor call and the field to an
	ordinary variable.
**/
@:structInit class ZoneOptions {
	/** Runs once, when the player crosses in. **/
	public var onEnter:(zone:Zone) -> Void = null;

	/** Runs once, when the player crosses back out. **/
	public var onExit:(zone:Zone) -> Void = null;

	/**
		Runs repeatedly while the player is inside, at `insideIntervalMs`.
		Leave that at 0 for once per frame — needed for drawing, wasteful for
		anything else.
	**/
	public var onInside:(zone:Zone) -> Void = null;

	/** How often `onInside` runs, in milliseconds. 0 means every frame. **/
	public var insideIntervalMs:Int = 0;

	/** Anything you want to read back inside the handlers. **/
	public var data:Dynamic = null;
}

/**
	One registered zone: a shape plus the handlers watching it.
**/
@:allow(fivem.client.core.Zones)
class Zone {
	public final shape:ColShape;

	/** Whether the local player is currently inside. **/
	public var isInside(default, null):Bool = false;

	/** The `data` passed in `ZoneOptions`, if any. **/
	public var data(get, never):Dynamic;

	inline function get_data():Dynamic
		return shape.data;

	@:allow(fivem.client.core.Zones)
	final options:ZoneOptions;

	@:allow(fivem.client.core.Zones)
	var nextInsideAt = 0;

	@:allow(fivem.client.core.Zones)
	function new(shape:ColShape, options:ZoneOptions) {
		this.shape = shape;
		this.options = options;
		if (options.data != null) shape.data = options.data;
	}

	/**
		Stops watching this zone.

		If the player is inside when this is called, `onExit` runs first, so
		cleanup in the exit handler can't be skipped by removing a zone at the
		wrong moment.
	**/
	public function remove():Void {
		Zones.remove(this);
	}
}

/**
	Zone tracking for the local player: enter, exit and inside callbacks over
	the shapes in `fivem.shared.colshape`.

	```haxe
	Zones.add(new Circle(shopPoint, 2.0, 3.0), {
	    onEnter: _ -> Ui.showHelp("Press ~INPUT_CONTEXT~ to shop"),
	    onExit: _ -> closeShopPrompt()
	});
	```

	Every zone is polled from a single shared thread rather than one thread
	each, so registering a hundred zones costs one loop, not a hundred. The
	poll runs at `pollIntervalMs` (200 ms by default) and each shape is
	rejected by a cheap bounding-sphere test before its real containment test
	runs.

	Zones live for as long as the resource does. Remove them on stop if the
	handlers touch anything that needs cleaning up.
**/
class Zones {
	/**
		How often the player's position is checked against every zone.

		200 ms is imperceptible for walking and cheap enough to ignore. Lower
		it if players routinely cross zone boundaries at speed — a car at
		100 km/h covers 5.5 metres between polls.
	**/
	public static var pollIntervalMs = 200;

	/** Draws every registered shape in the world. For development only. **/
	public static var debugDraw(default, set) = false;

	static final zones:Array<Zone> = [];

	static var pollTimer:TimerHandle = null;
	static var debugTimer:TimerHandle = null;

	/** Registers a shape and starts watching it. **/
	public static function add(shape:ColShape, options:ZoneOptions):Zone {
		var zone = new Zone(shape, options);
		zones.push(zone);
		startPolling();
		return zone;
	}

	/** Convenience for the most common shape: a cylinder around a point. **/
	public static function addCircle(center:Vector3, radius:Float, options:ZoneOptions, height:Float = 0):Zone {
		return add(new Circle(center, radius, height), options);
	}

	/** Convenience for a sphere, where height genuinely matters. **/
	public static function addSphere(center:Vector3, radius:Float, options:ZoneOptions):Zone {
		return add(new Sphere(center, radius), options);
	}

	/** Convenience for an oriented box. **/
	public static function addBox(center:Vector3, size:Vector3, options:ZoneOptions, heading:Float = 0):Zone {
		return add(new Box(center, size, heading), options);
	}

	public static function remove(zone:Zone):Void {
		if (!zones.remove(zone)) return;

		// Fire the exit handler on the way out, so a zone removed while the
		// player stands in it still gets to clean up after itself.
		if (zone.isInside && zone.options.onExit != null) {
			zone.isInside = false;
			zone.options.onExit(zone);
		}

		if (zones.length == 0 && pollTimer != null) {
			pollTimer.cancel();
			pollTimer = null;
		}
	}

	/** Removes every zone. Worth calling from a resource stop handler. **/
	public static function clear():Void {
		for (zone in zones.copy()) remove(zone);
	}

	/** Every zone the player is currently standing in. **/
	public static function inside():Array<Zone> {
		return [for (zone in zones) if (zone.isInside) zone];
	}

	/** Every registered zone. **/
	public static function all():Array<Zone> {
		return zones.copy();
	}

	static function startPolling():Void {
		// Checks `active` as well as null: the loop stops itself when the last
		// zone goes away, and a stale handle here would silently prevent it
		// from ever restarting.
		if (pollTimer != null && pollTimer.active) return;

		pollTimer = Thread.adaptiveLoop(() -> {
			if (zones.length == 0) return -1;

			var position = LocalPlayer.coords();
			var now = fivem.shared.Runtime.getGameTimer();

			// Iterated over a copy: a handler is free to add or remove zones,
			// and mutating the live array mid-loop would skip entries.
			for (zone in zones.copy()) {
				var contains = zone.shape.mightContain(position) && zone.shape.contains(position);

				if (contains && !zone.isInside) {
					zone.isInside = true;
					zone.nextInsideAt = 0;
					if (zone.options.onEnter != null) zone.options.onEnter(zone);
				} else if (!contains && zone.isInside) {
					zone.isInside = false;
					if (zone.options.onExit != null) zone.options.onExit(zone);
				}
			}

			return nextDelay(now);
		});
	}

	/**
		Works out how long to sleep, and runs any due `onInside` handlers.

		Zones asking for per-frame `onInside` pull the whole loop down to a
		frame while the player is inside one, and let it fall back to
		`pollIntervalMs` as soon as they leave.
	**/
	static function nextDelay(now:Int):Int {
		var delay = pollIntervalMs;

		for (zone in zones) {
			if (!zone.isInside || zone.options.onInside == null) continue;

			var interval = zone.options.insideIntervalMs;
			if (now >= zone.nextInsideAt) {
				zone.nextInsideAt = now + interval;
				zone.options.onInside(zone);
			}

			if (interval < delay) delay = interval;
		}

		return delay;
	}

	static function set_debugDraw(enabled:Bool):Bool {
		debugDraw = enabled;

		if (!enabled) {
			if (debugTimer != null) {
				debugTimer.cancel();
				debugTimer = null;
			}
			return enabled;
		}

		if (debugTimer == null) debugTimer = Thread.everyFrame(drawAll);
		return enabled;
	}

	static function drawAll():Void {
		var inside = Rgba.green(80);
		var outside = Rgba.red(80);

		for (zone in zones) {
			var colour = zone.isInside ? inside : outside;

			if (zone.shape is Poly) {
				drawPolyOutline(cast zone.shape, colour);
			} else if (zone.shape is Circle) {
				var circle:Circle = cast zone.shape;
				Ui.drawMarker(circle.center, 1, new Vector3(circle.radius * 2, circle.radius * 2, circle.height > 0 ? circle.height : 2.0), colour);
			} else if (zone.shape is Sphere) {
				var sphere:Sphere = cast zone.shape;
				Ui.drawMarker(sphere.center, 28, new Vector3(sphere.radius, sphere.radius, sphere.radius), colour);
			} else if (zone.shape is Box) {
				var box:Box = cast zone.shape;
				Ui.drawMarker(box.center, 1, box.size, colour);
			}
		}
	}

	static function drawPolyOutline(poly:Poly, colour:Rgba):Void {
		var points = poly.points;
		var top = Math.isFinite(poly.maxZ) && Math.abs(poly.maxZ) < 1e8 ? poly.maxZ : poly.center.z + 2;
		var bottom = Math.isFinite(poly.minZ) && Math.abs(poly.minZ) < 1e8 ? poly.minZ : poly.center.z - 2;

		for (i in 0...points.length) {
			var a = points[i];
			var b = points[(i + 1) % points.length];

			Graphics.drawLine(a.x, a.y, bottom, b.x, b.y, bottom, colour.r, colour.g, colour.b, 255);
			Graphics.drawLine(a.x, a.y, top, b.x, b.y, top, colour.r, colour.g, colour.b, 255);
			Graphics.drawLine(a.x, a.y, bottom, a.x, a.y, top, colour.r, colour.g, colour.b, 255);
		}
	}
}
