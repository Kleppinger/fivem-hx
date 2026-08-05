package fivem.server.core;

import fivem.shared.colshape.Box;
import fivem.shared.colshape.Circle;
import fivem.shared.colshape.ColShape;
import fivem.shared.colshape.Sphere;
import fivem.shared.core.Thread;
import fivem.shared.core.Thread.TimerHandle;
import fivem.shared.util.Vector3;

/**
	What to run as players move through a server zone.
**/
typedef ZoneOptions = {
	/** Runs when a player crosses in. **/
	var ?onEnter:(zone:Zone, player:Player) -> Void;

	/** Runs when a player crosses back out, or disconnects while inside. **/
	var ?onExit:(zone:Zone, player:Player) -> Void;

	/** Anything you want to read back inside the handlers. **/
	var ?data:Dynamic;
}

/**
	One registered server zone, tracking which players are inside it.
**/
@:allow(fivem.server.core.Zones)
class Zone {
	public final shape:ColShape;

	public var data(get, never):Dynamic;

	inline function get_data():Dynamic
		return shape.data;

	final options:ZoneOptions;

	/** Sources of the players currently inside. **/
	final occupants = new Map<Int, Bool>();

	function new(shape:ColShape, options:ZoneOptions) {
		this.shape = shape;
		this.options = options;
		if (options.data != null) shape.data = options.data;
	}

	/** Whether a given player is inside. **/
	public inline function contains(player:Player):Bool {
		return occupants.exists(player.source);
	}

	/** The sources of every player currently inside. **/
	public function insideSources():Array<Int> {
		return [for (source in occupants.keys()) source];
	}

	public function remove():Void {
		Zones.remove(this);
	}
}

/**
	Server-side zone tracking: enter and exit callbacks over the shapes in
	`fivem.shared.colshape`, evaluated against every connected player.

	```haxe
	Zones.add(new Circle(bankVault, 8.0, 5.0), {
	    onEnter: (_, player) -> Logger.info("vault", '${player.name} entered'),
	    onExit: (_, player) -> Logger.info("vault", '${player.name} left')
	});
	```

	The server has no per-frame tick, so this polls on a timer — 500 ms by
	default. That is the right trade: server zone checks are for authoritative
	decisions (may this player open the vault?), not for responsive UI, which
	belongs on the client where per-frame polling is free.

	Cost is players × zones per poll, with a cheap bounding-sphere rejection
	first. That's fine into the hundreds; beyond that, bucket your zones
	spatially rather than registering thousands here.
**/
class Zones {
	/** How often every player is tested against every zone. **/
	public static var pollIntervalMs = 500;

	static final zones:Array<Zone> = [];

	static var pollTimer:TimerHandle = null;

	public static function add(shape:ColShape, options:ZoneOptions):Zone {
		var zone = new Zone(shape, options);
		zones.push(zone);
		startPolling();
		return zone;
	}

	public static function addCircle(center:Vector3, radius:Float, options:ZoneOptions, height:Float = 0):Zone {
		return add(new Circle(center, radius, height), options);
	}

	public static function addSphere(center:Vector3, radius:Float, options:ZoneOptions):Zone {
		return add(new Sphere(center, radius), options);
	}

	public static function addBox(center:Vector3, size:Vector3, options:ZoneOptions, heading:Float = 0):Zone {
		return add(new Box(center, size, heading), options);
	}

	public static function remove(zone:Zone):Void {
		if (!zones.remove(zone)) return;

		// Everyone still inside gets an exit, so a zone removed underneath
		// them can't strand state their exit handler was meant to clear.
		if (zone.options.onExit != null) {
			for (source in zone.insideSources()) {
				var player = Player.fromSource(source);
				if (player != null) zone.options.onExit(zone, player);
			}
		}
		zone.occupants.clear();

		if (zones.length == 0 && pollTimer != null) {
			pollTimer.cancel();
			pollTimer = null;
		}
	}

	public static function clear():Void {
		for (zone in zones.copy()) remove(zone);
	}

	public static function all():Array<Zone> {
		return zones.copy();
	}

	static function startPolling():Void {
		if (pollTimer != null && pollTimer.active) return;

		// An adaptive loop rather than setInterval, so that changing
		// `pollIntervalMs` after startup actually takes effect.
		pollTimer = Thread.adaptiveLoop(() -> {
			if (zones.length == 0) return -1;

			var players = Players.all();

			for (zone in zones.copy()) {
				// Players who left the server never generate a position, so
				// their stale occupancy is swept here rather than waiting for
				// a disconnect handler that may never have been registered.
				var stillConnected = new Map<Int, Bool>();

				for (player in players) {
					stillConnected.set(player.source, true);

					var coords = player.coords;
					var inside = coords != null && zone.shape.mightContain(coords) && zone.shape.contains(coords);
					var wasInside = zone.occupants.exists(player.source);

					if (inside && !wasInside) {
						zone.occupants.set(player.source, true);
						if (zone.options.onEnter != null) zone.options.onEnter(zone, player);
					} else if (!inside && wasInside) {
						zone.occupants.remove(player.source);
						if (zone.options.onExit != null) zone.options.onExit(zone, player);
					}
				}

				for (source in zone.insideSources()) {
					if (!stillConnected.exists(source)) zone.occupants.remove(source);
				}
			}

			return pollIntervalMs;
		});
	}
}
