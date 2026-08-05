package fivem.server.core;

import fivem.shared.core.CallbackProtocol;
import fivem.shared.core.Deferred;
import fivem.shared.core.Events;
import fivem.shared.core.Thread;
import fivem.shared.util.LuaTables;

/**
	The server half of the request/response bridge. See
	`fivem.client.core.Callbacks` for the shape of the protocol.

	```haxe
	Callbacks.register("bank:getBalance", (source, args) -> {
	    var player = Player.fromSource(source);
	    if (player == null) return 0;
	    return accounts.balanceOf(player.identifier("license"));
	});
	```

	Handlers run on a coroutine, so they may block — awaiting a database query
	inside one is fine, and the answer is sent once it returns.

	Treat a callback handler exactly like a net event handler: `source` is the
	only trustworthy argument, and everything in `args` came from a client that
	may be lying.
**/
class Callbacks {
	static final handlers = new Map<String, (source:Int, args:Array<Dynamic>) -> Dynamic>();
	static final pending = new Map<String, Deferred<Dynamic>>();

	static var listening = false;

	/**
		Registers a handler clients can call by name. The return value is sent
		back as the answer.
	**/
	public static function register(name:String, handler:(source:Int, args:Array<Dynamic>) -> Dynamic):Void {
		listen();
		handlers.set(name, handler);
	}

	public static function unregister(name:String):Void {
		handlers.remove(name);
	}

	/**
		Asks a client something and waits for the answer.

		Returns `null` on timeout — which includes the ordinary case of the
		player disconnecting mid-request, so always handle it.
	**/
	public static function await(target:Int, name:String, args:haxe.Rest<Dynamic>):Dynamic {
		return awaitWithTimeout(target, name, 10000, ...args);
	}

	/** As `await`, with an explicit timeout. **/
	public static function awaitWithTimeout(target:Int, name:String, timeoutMs:Int, args:haxe.Rest<Dynamic>):Dynamic {
		listen();

		var key = CallbackProtocol.nextKey();
		var deferred = new Deferred<Dynamic>();
		pending.set(key, deferred);

		Net.emitClient(CallbackProtocol.serverRequest(), target, name, key, LuaTables.fromArray(args.toArray()));

		var result = deferred.awaitWithTimeout(timeoutMs);
		pending.remove(key);
		return result;
	}

	/** Asks a client without blocking, delivering the answer to `onResult`. **/
	public static function request(target:Int, name:String, onResult:(result:Dynamic) -> Void, args:haxe.Rest<Dynamic>):Void {
		var captured = args.toArray();
		Thread.create(() -> onResult(await(target, name, ...captured)));
	}

	static function listen():Void {
		if (listening) return;
		listening = true;

		Events.onNet(CallbackProtocol.clientRequest(), (name:String, key:String, args:Dynamic) -> {
			var source = Events.source();
			var handler = handlers.get(name);
			var result = handler == null ? null : handler(source, LuaTables.toArray(args));
			Net.emitClient(CallbackProtocol.clientResponse(), source, key, result);
		});

		Events.onNet(CallbackProtocol.serverResponse(), (key:String, result:Dynamic) -> {
			var deferred = pending.get(key);
			// A missing key means the request already timed out; drop the
			// late answer rather than resolving a promise nobody holds.
			if (deferred != null) {
				pending.remove(key);
				deferred.resolve(result);
			}
		});
	}
}
