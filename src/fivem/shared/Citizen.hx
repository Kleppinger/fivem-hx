package fivem.shared;

/**
	Externs for the `Citizen` table — FiveM's Lua-side scheduler.

	These are not natives. `Citizen` is a table the FiveM Lua runtime injects
	into every resource, documented separately from the native reference, so
	`generate.py` has nothing to generate them from. Like `CoreEvents`, this
	file is hand-written and deliberately kept out of `natives/` so
	regeneration never touches it.

	`@:native("_G.Citizen")` on the class plus `@:native("Wait")` on a member
	compiles to `_G.Citizen.Wait(...)`. The `_G.` prefix is required, not
	cosmetic: FXServer loads each resource chunk under its own sandboxed
	`_ENV`, and a bare `Citizen` resolves through that sandbox and comes back
	`nil` — the same reason every generated native extern is declared
	`@:native("_G")`.

	Most code should prefer `fivem.shared.core.Thread`, which wraps these in a
	friendlier API with cancellable intervals. Reach for `Citizen` directly
	when you need something the wrapper doesn't expose.
**/
@:native("_G.Citizen")
extern class Citizen {
	/**
		Starts a coroutine that runs on the resource's tick. The function runs
		immediately up to its first `wait`, then resumes each frame.

		A thread that never waits will hang the resource, so any loop inside
		one must call `Citizen.wait` (or `Thread.wait`) on every iteration.
	**/
	@:native("CreateThread")
	static function createThread(body:() -> Void):Void;

	/**
		Like `createThread`, but runs the body synchronously up to its first
		wait instead of deferring it to the next tick. Useful when startup
		ordering matters.
	**/
	@:native("CreateThreadNow")
	static function createThreadNow(body:() -> Void):Void;

	/**
		Yields the current coroutine for at least `ms` milliseconds. `0` yields
		until the next frame.

		Only valid inside a coroutine — i.e. inside a thread, event handler,
		command handler, or export. Calling it from the resource's top-level
		chunk raises a Lua error.
	**/
	@:native("Wait")
	static function wait(ms:Int):Void;

	/**
		Runs `body` once, `ms` milliseconds from now, on its own coroutine.
		Does not block the caller.
	**/
	@:native("SetTimeout")
	static function setTimeout(ms:Int, body:() -> Void):Void;

	/**
		Blocks the current coroutine until `promise` settles, then returns its
		value. This is what makes asynchronous FiveM APIs (database queries,
		HTTP requests, client callbacks) read as straight-line code.

		Rejections surface as Lua errors, catchable with a normal Haxe
		`try`/`catch`.
	**/
	@:native("Await")
	static function await(promise:Dynamic):Dynamic;

	/**
		Invokes a native by hash. Only needed for natives missing from the
		generated externs — everything in `fivem.*.natives` is already typed.
	**/
	@:native("InvokeNative")
	static function invokeNative(hash:Dynamic, args:haxe.extern.Rest<Dynamic>):Dynamic;

	/** Writes to the console without a trailing newline, bypassing `print`. **/
	@:native("Trace")
	static function trace(message:String):Void;

	/** Wraps a Lua function so it can be passed across the resource boundary. **/
	@:native("GetFunctionReference")
	static function getFunctionReference(fn:haxe.Constraints.Function):String;
}

/**
	Externs for the `promise` table FiveM injects alongside `Citizen`.

	Used together with `Citizen.await` to bridge callback-style APIs into
	blocking calls. `fivem.shared.core.Deferred` wraps this with type safety;
	prefer that unless you specifically need the raw handle to hand to a
	third-party resource.
**/
@:native("_G.promise")
extern class LuaPromise {
	/** Creates a fresh, unsettled promise. **/
	@:native("new")
	static function create():Dynamic;
}
