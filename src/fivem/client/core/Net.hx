package fivem.client.core;

import fivem.shared.CoreEvents;
import fivem.shared.core.Events;

/**
	Sending events from the client to the server.

	Receiving is environment-agnostic and lives in `fivem.shared.core.Events`;
	only the sending direction differs between client and server, which is why
	it is split out here.

	```haxe
	Net.emitServer("shop:buy", itemId, quantity);
	```

	Every payload is msgpack-serialised, so send plain data: numbers, strings,
	booleans, anonymous structures. A class instance arrives on the server as a
	bare table with no methods.

	Nothing sent from a client can be trusted. The server must validate every
	argument — including things that "can't" be wrong, like a price the client
	calculated.
**/
class Net {
	/** Sends an event to the server. **/
	public static inline function emitServer(eventName:String, args:haxe.Rest<Dynamic>):Void {
		CoreEvents.triggerServerEvent(eventName, ...args);
	}

	/**
		Sends an event to the server at a limited rate, for payloads large
		enough that sending them in one packet would stall the connection.

		@param bytesPerSecond A sensible ceiling is around 128000.
	**/
	public static inline function emitServerLatent(eventName:String, bytesPerSecond:Int, args:haxe.Rest<Dynamic>):Void {
		CoreEvents.triggerLatentServerEvent(eventName, bytesPerSecond, ...args);
	}

	/**
		Handles an event sent by the server.

		A convenience alias for `Events.onNet`, so client code that only
		imports `Net` still has both directions to hand.
	**/
	public static inline function onServer(eventName:String, handler:haxe.Constraints.Function):EventSubscription {
		return Events.onNet(eventName, handler);
	}
}
