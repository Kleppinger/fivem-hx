package fivem.shared.util;

import fivem.shared.Runtime;
import fivem.shared.core.Thread;

/**
	A rate limiter keyed on nothing but time.

	The canonical use is a net event handler on the server: a client can
	trigger a registered net event as fast as it likes, so anything expensive
	behind one needs a guard.

	```haxe
	var cooldown = new Cooldown(1000);
	if (!cooldown.tryUse()) return;    // silently drop the spam
	doExpensiveThing();
	```
**/
class Cooldown {
	/** Milliseconds that must elapse between uses. **/
	public var intervalMs:Int;

	var nextAllowedAt = 0;

	public function new(intervalMs:Int) {
		this.intervalMs = intervalMs;
	}

	/** Whether a use would be allowed right now, without consuming it. **/
	public var ready(get, never):Bool;

	inline function get_ready():Bool
		return Runtime.getGameTimer() >= nextAllowedAt;

	/** Milliseconds until the next use is allowed, or 0 if it is allowed now. **/
	public var remainingMs(get, never):Int;

	inline function get_remainingMs():Int {
		var remaining = nextAllowedAt - Runtime.getGameTimer();
		return remaining > 0 ? remaining : 0;
	}

	/** Consumes the cooldown if it is ready, returning whether it was. **/
	public function tryUse():Bool {
		if (!ready) return false;
		nextAllowedAt = Runtime.getGameTimer() + intervalMs;
		return true;
	}

	/** Makes the next use allowed immediately. **/
	public function reset():Void {
		nextAllowedAt = 0;
	}
}

/**
	Per-key rate limiting — one independent `Cooldown` per key, created on
	demand.

	On the server this is the standard shape for "once per player per second":

	```haxe
	var limiter = new KeyedCooldown(1000);
	Events.onNet("shop:buy", (item:String) -> {
	    var source = Events.source();
	    if (!limiter.tryUse(Std.string(source))) return;
	    sell(source, item);
	});
	```

	Keys are held until `forget` or `clear` is called, so drop a player's key
	when they disconnect if you're limiting by source.
**/
class KeyedCooldown {
	public var intervalMs:Int;

	final nextAllowedAt = new Map<String, Int>();

	public function new(intervalMs:Int) {
		this.intervalMs = intervalMs;
	}

	public function ready(key:String):Bool {
		var next = nextAllowedAt.get(key);
		return next == null || Runtime.getGameTimer() >= next;
	}

	public function tryUse(key:String):Bool {
		if (!ready(key)) return false;
		nextAllowedAt.set(key, Runtime.getGameTimer() + intervalMs);
		return true;
	}

	public function remainingMs(key:String):Int {
		var next = nextAllowedAt.get(key);
		if (next == null) return 0;
		var remaining = next - Runtime.getGameTimer();
		return remaining > 0 ? remaining : 0;
	}

	public function forget(key:String):Void {
		nextAllowedAt.remove(key);
	}

	public function clear():Void {
		nextAllowedAt.clear();
	}
}

/**
	Collapses a burst of calls into a single delayed one.

	Each `trigger()` restarts the timer, so the action runs `delayMs` after
	things go quiet — the right behaviour for saving state after a flurry of
	inventory changes, or refreshing a UI while a slider is being dragged.
**/
class Debounce {
	public var delayMs:Int;

	final action:() -> Void;

	var pending:TimerHandle = null;

	public function new(delayMs:Int, action:() -> Void) {
		this.delayMs = delayMs;
		this.action = action;
	}

	/** Schedules the action, cancelling any run that was already pending. **/
	public function trigger():Void {
		if (pending != null) pending.cancel();
		pending = Thread.setTimeout(delayMs, () -> {
			pending = null;
			action();
		});
	}

	/** Runs the pending action immediately, if there is one. **/
	public function flush():Void {
		if (pending == null) return;
		pending.cancel();
		pending = null;
		action();
	}

	/** Drops the pending action without running it. **/
	public function cancel():Void {
		if (pending == null) return;
		pending.cancel();
		pending = null;
	}
}

/**
	Runs an action at most once per interval, executing the *first* call
	immediately and ignoring the rest until the interval elapses.

	The mirror image of `Debounce`: use this when the first event in a burst is
	the interesting one (a keypress, a zone entry) rather than the last.
**/
class Throttle {
	public var intervalMs:Int;

	final action:() -> Void;

	var lastRunAt = -1;

	public function new(intervalMs:Int, action:() -> Void) {
		this.intervalMs = intervalMs;
		this.action = action;
	}

	/** Runs the action if the interval has elapsed. Returns whether it ran. **/
	public function trigger():Bool {
		var now = Runtime.getGameTimer();
		if (lastRunAt >= 0 && now - lastRunAt < intervalMs) return false;
		lastRunAt = now;
		action();
		return true;
	}

	public function reset():Void {
		lastRunAt = -1;
	}
}

/**
	Measures elapsed time against the game clock — for profiling a slow
	handler, or timing how long a player has held an interaction key.
**/
class Stopwatch {
	var startedAt:Int;

	public function new() {
		startedAt = Runtime.getGameTimer();
	}

	/** Milliseconds since construction or the last `restart()`. **/
	public var elapsedMs(get, never):Int;

	inline function get_elapsedMs():Int
		return Runtime.getGameTimer() - startedAt;

	/** Resets to zero and returns the elapsed time up to that point. **/
	public function restart():Int {
		var elapsed = elapsedMs;
		startedAt = Runtime.getGameTimer();
		return elapsed;
	}
}
