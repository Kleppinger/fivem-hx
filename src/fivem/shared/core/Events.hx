package fivem.shared.core;

import fivem.shared.CoreEvents;
import fivem.shared.natives.Cfx;

/**
	A detachable event handler. Hold onto one if the listener should ever stop
	firing — otherwise ignore the return value.
**/
class EventSubscription {
	final handle:Dynamic;

	var attached = true;

	@:allow(fivem.shared.core.Events)
	function new(handle:Dynamic) {
		this.handle = handle;
	}

	/** Detaches the handler. Safe to call more than once. **/
	public function remove():Void {
		if (!attached) return;
		attached = false;
		CoreEvents.removeEventHandler(handle);
	}
}

/**
	FiveM's event bus, with the two-step registration collapsed into one call.

	Raw FiveM requires `RegisterNetEvent(name)` *and* `AddEventHandler(name,
	fn)` to receive an event from the network; forgetting the first silently
	drops every incoming event, which is one of the most common bugs in FiveM
	resources. `Events.onNet` does both.

	```haxe
	Events.onNet("shop:opened", (shopId:String) -> openShop(shopId));
	Events.emit("shop:opened", "ammunation");        // local only
	```

	Cross-network *sending* lives in the environment-specific classes, since
	the direction differs: `fivem.client.core.Net.emitServer` and
	`fivem.server.core.Net.emitClient` / `emitAll`.
**/
class Events {
	/**
		Handles a purely local event — one raised by `emit`, or by the game
		itself (`gameEventTriggered`, `entityCreated`, `playerConnecting`, ...).

		Deliberately does *not* register a net event, so a handler added this
		way can't be triggered by a malicious client.
	**/
	public static function on(eventName:String, handler:haxe.Constraints.Function):EventSubscription {
		return new EventSubscription(CoreEvents.addEventHandler(eventName, handler));
	}

	/**
		Handles an event that may arrive over the network, registering it as a
		net event first.

		On the server, the triggering player's ID is available inside the
		handler as the `source` global rather than as an argument — read it via
		`Events.source()`. Always validate it: a client can trigger any
		registered net event with any arguments it likes.
	**/
	public static function onNet(eventName:String, handler:haxe.Constraints.Function):EventSubscription {
		CoreEvents.registerNetEvent(eventName);
		return new EventSubscription(CoreEvents.addEventHandler(eventName, handler));
	}

	/**
		Handles an event once, then detaches.
	**/
	public static function once(eventName:String, handler:haxe.Constraints.Function):EventSubscription {
		var subscription:EventSubscription = null;
		subscription = new EventSubscription(CoreEvents.addEventHandler(eventName, Reflect.makeVarArgs(args -> {
			subscription.remove();
			Reflect.callMethod(null, handler, args);
		})));
		return subscription;
	}

	/** Raises an event locally, in this and every other resource listening for it. **/
	public static inline function emit(eventName:String, args:haxe.Rest<Dynamic>):Void {
		CoreEvents.triggerEvent(eventName, ...args);
	}

	/**
		The player who triggered the currently executing net event, on the
		server. Returns 0 when the event didn't come from a player.

		`source` is a Lua global the runtime sets around each event handler
		rather than an argument, which is why it needs reading like this.
	**/
	public static inline function source():Int {
		return untyped __lua__("(_G.source or 0)");
	}

	/**
		Cancels the event currently being handled, stopping handlers in other
		resources from running and — for cancellable game events like
		`playerConnecting` or `entityCreating` — telling the game not to
		proceed.
	**/
	public static inline function cancel():Void {
		Cfx.cancelEvent();
	}

	/** Whether the event currently being handled has already been cancelled by someone. **/
	public static inline function wasCancelled():Bool {
		return Cfx.wasEventCanceled();
	}
}
