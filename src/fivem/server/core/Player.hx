package fivem.server.core;

import fivem.server.natives.Cfx;
import fivem.shared.CoreEvents;
import fivem.shared.core.StateBag;
import fivem.shared.util.Vector3;

/**
	A connected player, addressed by their server ID.

	The server ID (`source`) is the single identifier that means the same thing
	everywhere — in events, in state bags, and on every client. It is assigned
	on connect and *reused* after that player leaves, so never use it as a
	database key; use an `identifier` for that.

	```haxe
	Events.onNet("shop:buy", (item:String) -> {
	    var player = Player.fromSource(Events.source());
	    if (player == null) return;

	    if (player.coords.distance(shopPoint) > 5) return;   // always re-check
	    grant(player.identifier("license"), item);
	});
	```

	Most server player natives take the source as a *string* rather than a
	number — a longstanding FiveM quirk. This class holds an `Int` and does the
	conversion for you.
**/
class Player {
	/** The server ID, also called the `source`. **/
	public final source:Int;

	final src:String;

	public function new(source:Int) {
		this.source = source;
		this.src = Std.string(source);
	}

	/**
		Wraps a server ID, or returns `null` if no such player is connected.

		Always use this rather than `new Player(...)` on anything derived from
		a network event: a client can send whatever it likes, and a stale or
		invented source would otherwise sail straight through.
	**/
	public static function fromSource(source:Int):Player {
		if (source <= 0) return null;

		var player = new Player(source);
		return player.isConnected ? player : null;
	}

	/**
		Whether the player is still connected.

		Tested through the name because there is no direct native for it.
		FXServer answers for a source that has gone with either nil or the
		literal `"**Invalid**"` depending on how far through disconnecting it
		is, so both count as gone.
	**/
	public var isConnected(get, never):Bool;

	inline function get_isConnected():Bool {
		var name = Cfx.getPlayerName(src);
		return name != null && name != "**Invalid**";
	}

	public var name(get, never):String;

	inline function get_name():String
		return Cfx.getPlayerName(src);

	/** The player's ped, or `null` before they've spawned. **/
	public var ped(get, never):Ped;

	function get_ped():Ped {
		var pedHandle:Int = Cfx.getPlayerPed(src);
		return pedHandle == 0 ? null : new Ped(pedHandle);
	}

	public var coords(get, never):Vector3;

	function get_coords():Vector3 {
		var currentPed = ped;
		return currentPed == null ? null : currentPed.coords;
	}

	/** The vehicle the player is in, or `null`. **/
	public var vehicle(get, never):Vehicle;

	function get_vehicle():Vehicle {
		var currentPed = ped;
		return currentPed == null ? null : currentPed.currentVehicle;
	}

	/** Round-trip latency in milliseconds. **/
	public var ping(get, never):Int;

	inline function get_ping():Int
		return Cfx.getPlayerPing(src);

	/** The player's IP endpoint. Personal data — handle it accordingly. **/
	public var endpoint(get, never):String;

	inline function get_endpoint():String
		return Cfx.getPlayerEndpoint(src);

	/** Milliseconds since the last packet from this player. **/
	public var lastMessageMs(get, never):Int;

	inline function get_lastMessageMs():Int
		return Cfx.getPlayerLastMsg(src);

	public var team(get, never):Int;

	inline function get_team():Int
		return Cfx.getPlayerTeam(src);

	/** The player's replicated state bag. **/
	public var state(get, never):StateBag;

	inline function get_state():StateBag
		return StateBag.player(source);

	/**
		The routing bucket the player is in. Players in different buckets are
		completely invisible to one another — the mechanism behind instanced
		interiors and per-player worlds.
	**/
	public var routingBucket(get, set):Int;

	inline function get_routingBucket():Int
		return Cfx.getPlayerRoutingBucket(src);

	inline function set_routingBucket(value:Int):Int {
		Cfx.setPlayerRoutingBucket(src, value);
		return value;
	}

	// -- Identity ----------------------------------------------------------

	/**
		A stable identifier of the given type, or `null` if the player has
		none.

		Common types are `"license"`, `"license2"`, `"steam"`, `"discord"`,
		`"fivem"`, `"ip"`. `"license"` is the usual database key: it is always
		present and doesn't depend on the player linking an external account.

		The returned value includes its prefix (`"license:abc123..."`).
	**/
	public inline function identifier(type:String = "license"):String {
		return Cfx.getPlayerIdentifierByType(src, type);
	}

	/** Every identifier the player presented. **/
	public function identifiers():Array<String> {
		var found = [];
		for (index in 0...Cfx.getNumPlayerIdentifiers(src)) {
			var value = Cfx.getPlayerIdentifier(src, index);
			if (value != null) found.push(value);
		}
		return found;
	}

	/**
		Whether the player is granted an ACE permission — the server's built-in
		authorisation system, configured with `add_ace` / `add_principal` in
		`server.cfg`.
	**/
	public inline function isAceAllowed(object:String):Bool {
		return Cfx.isPlayerAceAllowed(src, object);
	}

	// -- Actions -----------------------------------------------------------

	/** Sends an event to this player. **/
	public inline function emit(eventName:String, args:haxe.Rest<Dynamic>):Void {
		CoreEvents.triggerClientEvent(eventName, source, ...args);
	}

	/** Disconnects the player with a reason shown to them. **/
	public inline function drop(reason:String = "Dropped"):Void {
		Cfx.dropPlayer(src, reason);
	}

	public function toString():String
		return 'Player($source, "$name")';
}
