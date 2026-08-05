package fivem.client.core;

import fivem.client.natives.Cfx;
import fivem.client.natives.Network;
import fivem.client.natives.Player as PlayerNatives;
import fivem.shared.core.StateBag;
import fivem.shared.util.LuaTables;
import fivem.shared.util.Vector3;

/**
	A player, as seen from the client.

	Two different numbers identify a player and mixing them up is the single
	most common source of "it works for me but not for anyone else":

	- **player index** (`index`) — a small, client-local slot number. Valid
	  only on the machine that read it, and reused when players leave.
	- **server ID** (`serverId`) — assigned by the server, identical on every
	  machine. This is the one to send in events and store in state bags.

	```haxe
	for (player in Player.all()) {
	    if (player.ped.distanceToEntity(LocalPlayer.ped()) < 20) {
	        trace('${player.name} is nearby');
	    }
	}
	```
**/
class Player {
	/** The client-local player index. Meaningless on any other machine. **/
	public final index:Int;

	public function new(index:Int) {
		this.index = index;
	}

	/** The player this client is controlling. **/
	public static inline function local():Player {
		return new Player(PlayerNatives.playerId());
	}

	/**
		Resolves a server ID to a local `Player`, or `null` if that player
		isn't currently known to this client (out of scope, or gone).
	**/
	public static function fromServerId(serverId:Int):Player {
		var index:Int = Cfx.getPlayerFromServerId(serverId);
		return index == -1 ? null : new Player(index);
	}

	/**
		Every player this client currently knows about.

		That is *not* everyone on the server: clients only ever see players
		within streaming range plus a few extras. For a server-wide list, ask
		the server.
	**/
	public static function all():Array<Player> {
		var players = [];
		for (index in LuaTables.toArray((Cfx.getActivePlayers() : Dynamic))) players.push(new Player(index));
		return players;
	}

	/** The server-assigned ID — safe to send over the network. **/
	public var serverId(get, never):Int;

	inline function get_serverId():Int
		return Cfx.getPlayerServerId(index);

	public var name(get, never):String;

	inline function get_name():String
		return PlayerNatives.getPlayerName(index);

	/** The character this player controls. **/
	public var ped(get, never):Ped;

	inline function get_ped():Ped
		return new Ped(PlayerNatives.getPlayerPed(index));

	public var coords(get, never):Vector3;

	inline function get_coords():Vector3
		return ped.coords;

	/** Whether the player is connected and streamed in on this client. **/
	public var isActive(get, never):Bool;

	inline function get_isActive():Bool
		return Network.networkIsPlayerActive(index);

	public var isDead(get, never):Bool;

	inline function get_isDead():Bool
		return PlayerNatives.isPlayerDead(index);

	public var wantedLevel(get, never):Int;

	inline function get_wantedLevel():Int
		return PlayerNatives.getPlayerWantedLevel(index);

	/** The player's replicated state bag, keyed by server ID. **/
	public var state(get, never):StateBag;

	inline function get_state():StateBag
		return StateBag.player(serverId);

	public function toString():String
		return 'Player(#$index, server $serverId)';
}
