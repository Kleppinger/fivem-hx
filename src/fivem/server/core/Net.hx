package fivem.server.core;

import fivem.shared.CoreEvents;
import fivem.shared.core.Events;
import fivem.shared.core.Events.EventSubscription;
import fivem.shared.util.Vector3;

/**
	Sending events from the server to clients.

	Receiving is environment-agnostic and lives in `fivem.shared.core.Events`;
	only the sending direction is server-specific.

	```haxe
	Net.emitClient("hud:update", player.source, cash, bank);
	Net.emitAll("weather:changed", "RAIN");
	Net.emitNear(explosionPoint, 200.0, "effects:explosion", explosionPoint);
	```

	Every payload is msgpack-serialised, so send plain data. Broadcasting is
	cheap per call but not free per client — `emitNear` exists because sending
	a local effect to all 64 players wastes bandwidth on the 60 who can't
	see it.
**/
class Net {
	/** Sends an event to one player. **/
	public static inline function emitClient(eventName:String, target:Int, args:haxe.Rest<Dynamic>):Void {
		CoreEvents.triggerClientEvent(eventName, target, ...args);
	}

	/**
		Sends an event to every connected player.

		Uses the `-1` broadcast target the runtime understands, so this costs
		one call rather than one per player.
	**/
	public static inline function emitAll(eventName:String, args:haxe.Rest<Dynamic>):Void {
		CoreEvents.triggerClientEvent(eventName, -1, ...args);
	}

	/** Sends an event to every player within `radius` of `position`. **/
	public static function emitNear(position:Vector3, radius:Float, eventName:String, args:haxe.Rest<Dynamic>):Void {
		var captured = args.toArray();
		for (player in Players.near(position, radius)) {
			CoreEvents.triggerClientEvent(eventName, player.source, ...captured);
		}
	}

	/** Sends an event to every player except `excluded`. **/
	public static function emitAllExcept(excluded:Int, eventName:String, args:haxe.Rest<Dynamic>):Void {
		var captured = args.toArray();
		for (player in Players.all()) {
			if (player.source != excluded) CoreEvents.triggerClientEvent(eventName, player.source, ...captured);
		}
	}

	/**
		Sends an event to one player at a limited rate, for payloads large
		enough that one packet would stall their connection.

		@param bytesPerSecond A sensible ceiling is around 128000.
	**/
	public static inline function emitClientLatent(eventName:String, target:Int, bytesPerSecond:Int, args:haxe.Rest<Dynamic>):Void {
		CoreEvents.triggerLatentClientEvent(eventName, target, bytesPerSecond, ...args);
	}

	/**
		Handles an event sent by a client.

		A convenience alias for `Events.onNet`. Read the sender with
		`Events.source()` and validate everything it sent — a client can
		trigger any registered net event with any arguments.
	**/
	public static inline function onClient(eventName:String, handler:haxe.Constraints.Function):EventSubscription {
		return Events.onNet(eventName, handler);
	}
}
