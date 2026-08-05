package fivem.client.core;

import fivem.client.natives.Cfx;
import fivem.client.natives.Player as PlayerNatives;
import fivem.shared.core.StateBag;
import fivem.shared.util.Hash;
import fivem.shared.util.Vector3;

/**
	The player at this keyboard — the one entity client code touches most.

	Everything here is a static shortcut for `Player.local()`, avoiding both
	the wrapper allocation and the repeated `PlayerId()` call in per-frame
	code:

	```haxe
	Thread.everyFrame(() -> {
	    if (LocalPlayer.coords().distance(shopPoint) < 2.0) drawPrompt();
	});
	```

	`ped()` deliberately re-reads `PlayerPedId()` on every call rather than
	caching. The handle changes whenever the player respawns or their model is
	swapped, and a cached one silently stops working after either.
**/
class LocalPlayer {
	/** The client-local player index. **/
	public static inline function id():Int {
		return PlayerNatives.playerId();
	}

	/** The server-assigned ID — the value to send in events. **/
	public static inline function serverId():Int {
		return Cfx.getPlayerServerId(PlayerNatives.playerId());
	}

	/** The player's current character. Never cache the result. **/
	public static inline function ped():Ped {
		return new Ped(PlayerNatives.playerPedId());
	}

	/** The raw ped handle, for passing straight into a native. **/
	public static inline function pedHandle():Int {
		return PlayerNatives.playerPedId();
	}

	public static inline function coords():Vector3 {
		return cast fivem.client.natives.Entity.getEntityCoords(PlayerNatives.playerPedId(), true);
	}

	public static inline function heading():Float {
		return fivem.client.natives.Entity.getEntityHeading(PlayerNatives.playerPedId());
	}

	public static inline function name():String {
		return PlayerNatives.getPlayerName(PlayerNatives.playerId());
	}

	/** As a `Player`, for the properties that aren't shortcut here. **/
	public static inline function asPlayer():Player {
		return new Player(PlayerNatives.playerId());
	}

	/** The vehicle the player is in, or `null` when on foot. **/
	public static inline function vehicle():Vehicle {
		return ped().currentVehicle;
	}

	public static inline function isInVehicle():Bool {
		return fivem.client.natives.Ped.isPedInAnyVehicle(PlayerNatives.playerPedId(), false);
	}

	public static inline function isDead():Bool {
		return PlayerNatives.isPlayerDead(PlayerNatives.playerId());
	}

	/** The player's replicated state bag. **/
	public static inline function state():StateBag {
		return StateBag.player(serverId());
	}

	public static var invincible(never, set):Bool;

	static inline function set_invincible(value:Bool):Bool {
		PlayerNatives.setPlayerInvincible(PlayerNatives.playerId(), value);
		return value;
	}

	public static var wantedLevel(get, set):Int;

	static inline function get_wantedLevel():Int {
		return PlayerNatives.getPlayerWantedLevel(PlayerNatives.playerId());
	}

	static function set_wantedLevel(value:Int):Int {
		var player = PlayerNatives.playerId();
		PlayerNatives.setPlayerWantedLevel(player, value, false);
		// The wanted level only actually changes once it's applied; without
		// this the write is staged and silently discarded.
		PlayerNatives.setPlayerWantedLevelNow(player, false);
		return value;
	}

	/**
		Swaps the player's character model, streaming it in first.

		The ped handle changes as a result, so anything holding the old one
		must re-read it. Returns false if the model couldn't be loaded.
	**/
	public static function setModel(model:Hash):Bool {
		if (!Streaming.requestModel(model)) return false;

		PlayerNatives.setPlayerModel(PlayerNatives.playerId(), model);
		// The new ped starts with no clothing variation at all, which renders
		// as an untextured mannequin until something is assigned.
		fivem.client.natives.Ped.setPedDefaultComponentVariation(PlayerNatives.playerPedId());
		Streaming.releaseModel(model);
		return true;
	}

	/**
		Teleports the player, waiting for collision at the destination first so
		they don't drop through unloaded ground.
	**/
	public static function teleport(position:Vector3, ?heading:Float):Void {
		var player = ped();
		player.frozen = true;
		player.teleport(position, heading);
		Streaming.requestCollisionAt(position, player);
		player.frozen = false;
	}
}
