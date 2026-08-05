package fivem.shared.core;

import fivem.shared.Citizen;
import fivem.shared.Runtime;

/**
	A cancellable handle returned by `Thread.setTimeout`, `Thread.setInterval`
	and `Thread.everyFrame`.

	Cancellation is cooperative: the underlying coroutine checks `active` each
	time it wakes up, so a cancelled interval stops before its next run rather
	than being killed mid-body.
**/
class TimerHandle {
	/** False once `cancel()` has been called, or once a timeout has fired. **/
	public var active(default, null):Bool = true;

	@:allow(fivem.shared.core.Thread)
	function new() {}

	/** Stops the timer. Safe to call repeatedly, and safe to call from inside the timer's own body. **/
	public function cancel():Void {
		active = false;
	}

	@:allow(fivem.shared.core.Thread)
	function finish():Void {
		active = false;
	}
}

/**
	Threads, waits and timers, wrapped around FiveM's `Citizen` scheduler.

	FiveM has no preemption: a resource runs on a single Lua state, and a
	"thread" is a coroutine that voluntarily yields. Everything here is built
	on that model, so no locking or synchronisation is ever needed — but a
	loop that forgets to `wait` will freeze the whole resource.

	```haxe
	Thread.create(() -> {
	    while (true) {
	        Thread.wait(1000);
	        checkSomething();
	    }
	});

	var ticker = Thread.setInterval(500, () -> updateHud());
	ticker.cancel();
	```
**/
class Thread {
	/**
		Runs `body` on a new coroutine, starting on the next tick.

		This is the FiveM equivalent of "go do this in the background" — the
		caller returns immediately.
	**/
	public static inline function create(body:() -> Void):Void {
		Citizen.createThread(body);
	}

	/**
		Like `create`, but starts `body` immediately (synchronously, up to its
		first `wait`) instead of deferring it to the next tick.
	**/
	public static inline function createNow(body:() -> Void):Void {
		Citizen.createThreadNow(body);
	}

	/**
		Yields for at least `ms` milliseconds. `0` waits for the next frame.

		Must be called from inside a coroutine — a thread, event handler,
		command handler or export. That covers nearly all resource code, but
		*not* the top level of your `main()`.
	**/
	public static inline function wait(ms:Int = 0):Void {
		Citizen.wait(ms);
	}

	/** Yields until the next frame. Shorthand for `wait(0)`. **/
	public static inline function nextFrame():Void {
		Citizen.wait(0);
	}

	/** Runs `body` on a fresh coroutine on the next tick, without blocking the caller. **/
	public static inline function defer(body:() -> Void):Void {
		Citizen.setTimeout(0, body);
	}

	/**
		Runs `body` once after `ms` milliseconds. Cancel via the returned handle
		to prevent it from firing.
	**/
	public static function setTimeout(ms:Int, body:() -> Void):TimerHandle {
		var handle = new TimerHandle();
		Citizen.setTimeout(ms, () -> {
			if (!handle.active) return;
			handle.finish();
			body();
		});
		return handle;
	}

	/**
		Runs `body` every `ms` milliseconds until cancelled.

		The delay is measured *between* runs, not on a fixed schedule: a body
		that takes longer than `ms` delays the next run rather than stacking up.
	**/
	public static function setInterval(ms:Int, body:() -> Void):TimerHandle {
		var handle = new TimerHandle();
		Citizen.createThread(() -> {
			while (handle.active) {
				Citizen.wait(ms);
				if (!handle.active) break;
				body();
			}
		});
		return handle;
	}

	/**
		Runs `body` once per frame until cancelled.

		Per-frame work is the most expensive thing a resource can do — reserve
		this for drawing (markers, text, outlines), which genuinely has to
		happen every frame, and use `setInterval` for everything else.
	**/
	public static function everyFrame(body:() -> Void):TimerHandle {
		var handle = new TimerHandle();
		Citizen.createThread(() -> {
			while (handle.active) {
				Citizen.wait(0);
				if (!handle.active) break;
				body();
			}
		});
		return handle;
	}

	/**
		Runs `body` repeatedly, waiting the number of milliseconds it returns
		between runs. Returning a negative value stops the loop.

		This is the pattern for distance-based polling, where you want to check
		often when the player is close and rarely when they're far:

		```haxe
		Thread.adaptiveLoop(() -> {
		    var distance = LocalPlayer.coords().distance(shopCoords);
		    if (distance > 50) return 1000;
		    drawShopMarker();
		    return 0;
		});
		```
	**/
	public static function adaptiveLoop(body:() -> Int):TimerHandle {
		var handle = new TimerHandle();
		Citizen.createThread(() -> {
			while (handle.active) {
				var delay = body();
				if (delay < 0) break;
				Citizen.wait(delay);
			}
			handle.finish();
		});
		return handle;
	}

	/**
		Blocks the current coroutine until `condition` returns true, polling
		every `pollMs`. Returns true if the condition was met, false if
		`timeoutMs` elapsed first.

		Pass a `timeoutMs` of 0 to wait forever — but be aware that a condition
		which never becomes true then leaks a coroutine for the resource's
		lifetime.
	**/
	public static function waitUntil(condition:() -> Bool, timeoutMs:Int = 5000, pollMs:Int = 0):Bool {
		// Timed against the game clock rather than by accumulating pollMs,
		// because Citizen.wait(0) advances a whole frame and Citizen.wait(n)
		// only guarantees *at least* n — counting intended waits would drift.
		var deadline = Runtime.getGameTimer() + timeoutMs;
		while (!condition()) {
			if (timeoutMs > 0 && Runtime.getGameTimer() >= deadline) return false;
			Citizen.wait(pollMs);
		}
		return true;
	}
}
