package fivem.client.core;

import fivem.shared.core.CallbackProtocol;
import fivem.shared.core.Deferred;
import fivem.shared.core.Events;
import fivem.shared.util.LuaTables;

/**
	Request/response calls between client and server.

	FiveM events only travel one way. `Callbacks` layers a correlation key over
	a pair of events so a client can ask the server a question and block on the
	answer, and vice versa:

	```haxe
	// client
	var balance:Int = Callbacks.await("bank:getBalance");

	// server (fivem.server.core.Callbacks)
	Callbacks.register("bank:getBalance", (source, args) -> accounts.balanceOf(source));
	```

	`await` suspends only the calling coroutine, so it must be called from
	inside one — a thread, event handler, command handler or export. The rest
	of the resource keeps running while it waits.

	A callback is a network round trip. Don't put one in a per-frame loop;
	cache the answer, or push updates through a state bag instead.
**/
class Callbacks {
	static final handlers = new Map<String, (args:Array<Dynamic>) -> Dynamic>();
	static final pending = new Map<String, Deferred<Dynamic>>();

	static var listening = false;

	/**
		Asks the server and waits for the answer.

		@param timeoutMs How long to wait before giving up and returning
		       `null`. The server not answering usually means no handler is
		       registered under that name.
	**/
	public static function await(name:String, args:haxe.Rest<Dynamic>):Dynamic {
		return awaitWithTimeout(name, 10000, ...args);
	}

	/** As `await`, with an explicit timeout. **/
	public static function awaitWithTimeout(name:String, timeoutMs:Int, args:haxe.Rest<Dynamic>):Dynamic {
		listen();

		var key = CallbackProtocol.nextKey();
		var deferred = new Deferred<Dynamic>();
		pending.set(key, deferred);

		Net.emitServer(CallbackProtocol.clientRequest(), name, key, LuaTables.fromArray(args.toArray()));

		var result = deferred.awaitWithTimeout(timeoutMs);
		pending.remove(key);
		return result;
	}

	/**
		Asks the server without blocking, delivering the answer to `onResult`.

		Use this from code that isn't running on a coroutine, or when the
		result isn't needed to continue.
	**/
	public static function request(name:String, onResult:(result:Dynamic) -> Void, args:haxe.Rest<Dynamic>):Void {
		var captured = args.toArray();
		fivem.shared.core.Thread.create(() -> onResult(await(name, ...captured)));
	}

	/**
		Registers a handler the *server* can call.

		The handler's return value is sent back as the answer. It runs on a
		coroutine, so it may block — awaiting another callback or a database
		query inside one is fine.
	**/
	public static function register(name:String, handler:(args:Array<Dynamic>) -> Dynamic):Void {
		listen();
		handlers.set(name, handler);
	}

	public static function unregister(name:String):Void {
		handlers.remove(name);
	}

	/**
		Attaches the two protocol event handlers, once per resource.

		Deferred until the first use rather than done at load time so a
		resource that never uses callbacks doesn't register net events for
		them.
	**/
	static function listen():Void {
		if (listening) return;
		listening = true;

		Events.onNet(CallbackProtocol.clientResponse(), (key:String, result:Dynamic) -> {
			var deferred = pending.get(key);
			// A missing key means the request already timed out; the late
			// answer is simply dropped.
			if (deferred != null) {
				pending.remove(key);
				deferred.resolve(result);
			}
		});

		Events.onNet(CallbackProtocol.serverRequest(), (name:String, key:String, args:Dynamic) -> {
			var handler = handlers.get(name);
			var result = handler == null ? null : handler(LuaTables.toArray(args));
			Net.emitServer(CallbackProtocol.serverResponse(), key, result);
		});
	}
}
