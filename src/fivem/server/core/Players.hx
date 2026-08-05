package fivem.server.core;

import fivem.server.natives.Cfx;
import fivem.shared.core.Events;
import fivem.shared.util.Vector3;

/**
	The connected-player registry, plus the connection lifecycle hooks.

	```haxe
	Players.onJoined(player -> Logger.info("join", player.name));
	Players.onDropped((source, reason) -> saveCharacter(source));

	for (player in Players.near(robberyPoint, 100.0)) {
	    player.emit("alarm:triggered");
	}
	```

	Unlike the client's `Player.all()`, this really is everyone on the server —
	there is no streaming distance to limit it.
**/
class Players {
	/** Every connected player. **/
	public static function all():Array<Player> {
		var players = [];
		for (index in 0...Cfx.getNumPlayerIndices()) {
			var source = Std.parseInt(Cfx.getPlayerFromIndex(index));
			if (source != null) players.push(new Player(source));
		}
		return players;
	}

	public static inline function count():Int {
		return Cfx.getNumPlayerIndices();
	}

	/** A player by server ID, or `null` if they aren't connected. **/
	public static inline function get(source:Int):Player {
		return Player.fromSource(source);
	}

	/** The player whose identifier of `type` matches `value`, or `null`. **/
	public static function findByIdentifier(value:String, type:String = "license"):Player {
		for (player in all()) {
			if (player.identifier(type) == value) return player;
		}
		return null;
	}

	/** Every player within `radius` of `position`. **/
	public static function near(position:Vector3, radius:Float):Array<Player> {
		var found = [];
		for (player in all()) {
			var coords = player.coords;
			if (coords != null && coords.distance(position) <= radius) found.push(player);
		}
		return found;
	}

	/** The closest player to `position` within `radius`, or `null`. **/
	public static function closest(position:Vector3, radius:Float = 1e9):Player {
		var nearest:Player = null;
		var nearestDistance = radius;

		for (player in all()) {
			var coords = player.coords;
			if (coords == null) continue;

			var distance = coords.distance(position);
			if (distance < nearestDistance) {
				nearestDistance = distance;
				nearest = player;
			}
		}

		return nearest;
	}

	/**
		Runs `handler` once a player has fully connected and their client is
		ready to receive events.

		This fires on `playerJoining`, not `playerConnecting`. The difference
		matters: during `playerConnecting` the player has no source yet and
		can't be sent anything, so it is only useful for accepting or rejecting
		the connection — see `onConnecting`.
	**/
	public static function onJoined(handler:(player:Player) -> Void):Void {
		Events.on("playerJoining", (_:String) -> {
			var player = Player.fromSource(Events.source());
			if (player != null) handler(player);
		});
	}

	/**
		Runs `handler` while a player is still connecting, before they have a
		source.

		Call `deferrals.done("reason")` to reject them, or
		`deferrals.done()` to let them in. The handler must settle the
		deferral, or the player hangs on the connecting screen.
	**/
	public static function onConnecting(handler:(name:String, setKickReason:(reason:String) -> Void, deferrals:Dynamic) -> Void):Void {
		Events.on("playerConnecting", handler);
	}

	/**
		Runs `handler` when a player disconnects, with their source and the
		stated reason.

		The `Player` object is deliberately not passed: by the time this fires
		the player is already gone, so their ped, coords and identifiers are no
		longer readable. Anything needed at disconnect has to be cached while
		they were still connected.
	**/
	public static function onDropped(handler:(source:Int, reason:String) -> Void):Void {
		Events.on("playerDropped", (reason:String) -> handler(Events.source(), reason));
	}
}
