package fivem.shared.core;

import fivem.shared.Citizen;
import fivem.shared.Citizen.LuaPromise;

/**
	A typed wrapper over FiveM's Lua promises, for turning callback-style APIs
	into blocking, straight-line code.

	```haxe
	function fetchProfile(id:String):Profile {
	    var deferred = new Deferred<Profile>();
	    someResource.getProfile(id, profile -> deferred.resolve(profile));
	    return deferred.await();
	}
	```

	`await()` suspends the calling coroutine, not the resource: other threads,
	events and the game itself keep running. It is only valid inside a
	coroutine — a thread, event handler, command handler or export — which
	covers nearly all resource code but not the top level of `main()`.

	Resolving twice is ignored, matching promise semantics; the first
	settlement wins.
**/
class Deferred<T> {
	/** The underlying Lua promise, for handing to resources that expect one. **/
	public final handle:Dynamic;

	var settled = false;

	public function new() {
		handle = LuaPromise.create();
	}

	/** Whether the promise has already been resolved or rejected. **/
	public var isSettled(get, never):Bool;

	inline function get_isSettled():Bool
		return settled;

	/** Settles the promise successfully, waking anything blocked in `await`. **/
	public function resolve(value:T):Void {
		if (settled) return;
		settled = true;
		// Colon-call syntax: FiveM's promise methods take the promise as self,
		// which Haxe's dot-call on a Dynamic would not pass.
		untyped __lua__("{0}:resolve({1})", handle, value);
	}

	/** Settles the promise with a failure. `await` will then throw `reason`. **/
	public function reject(reason:Dynamic):Void {
		if (settled) return;
		settled = true;
		untyped __lua__("{0}:reject({1})", handle, reason);
	}

	/**
		Blocks the current coroutine until the promise settles, then returns the
		resolved value. A rejection is raised as a Lua error, catchable with an
		ordinary Haxe `try`/`catch`.
	**/
	public function await():T {
		return Citizen.await(handle);
	}

	/**
		Blocks until the promise settles or `timeoutMs` elapses, returning
		`null` on timeout instead of hanging.

		The underlying operation is *not* cancelled — it just stops being waited
		on, and a late resolution is discarded.
	**/
	public function awaitWithTimeout(timeoutMs:Int):Null<T> {
		var result:Null<T> = null;
		var done = false;

		Thread.create(() -> {
			result = await();
			done = true;
		});

		return Thread.waitUntil(() -> done, timeoutMs) ? result : null;
	}

	/**
		Adapts a callback-style function into a blocking call.

		```haxe
		var rows = Deferred.awaitCallback(resolve -> db.query("...", resolve));
		```
	**/
	public static function awaitCallback<T>(register:(resolve:T->Void) -> Void):T {
		var deferred = new Deferred<T>();
		register(value -> deferred.resolve(value));
		return deferred.await();
	}

	/** A promise that is already settled with `value`. **/
	public static function resolved<T>(value:T):Deferred<T> {
		var deferred = new Deferred<T>();
		deferred.resolve(value);
		return deferred;
	}
}
