package fivem.shared.core;

/**
	Resource exports — the supported way for resources written in different
	languages to call into each other.

	```haxe
	// In your resource:
	Exports.register("getBalance", (playerId:Int) -> accounts.balanceOf(playerId));

	// From any other resource, Lua or Haxe:
	var balance:Int = Exports.call("my-bank", "getBalance", 3);
	```

	`exports` is a callable table injected by the FiveM runtime rather than a
	native, so both directions go through the small Lua glue below — the same
	approach `fivem.server.db.OxMysqlBridge` uses.

	Exports are synchronous across the resource boundary but *not* across the
	network: client code can only call client exports, server code only server
	exports. Use `Callbacks` to cross that gap.
**/
class Exports {
	static function __init__():Void {
		// `exports` is reachable only through _G: FXServer gives each resource
		// chunk its own sandboxed _ENV where a bare `exports` is nil. Same
		// reason every generated native extern is declared @:native("_G").
		//
		// The call form indexes the exports table by name and invokes the
		// result with an explicit nil self, rather than using colon-call
		// syntax — that is the convention FiveM's own Lua wrappers use.
		untyped __lua__("
function __hx_export_register(name, fn)
	_G.exports(name, fn)
end

function __hx_export_call(resource, name, argCount, args)
	return _G.exports[resource][name](nil, _G.table.unpack(args, 1, argCount))
end
");
	}

	/**
		Publishes `handler` under `name`, callable by any other resource in the
		same environment.

		Anything crossing the boundary is msgpack-serialised, so pass plain
		data — numbers, strings, arrays, anonymous structures. Class instances
		arrive on the other side as bare tables with no methods.
	**/
	public static function register(name:String, handler:haxe.Constraints.Function):Void {
		untyped __lua__("__hx_export_register({0}, {1})", name, handler);
	}

	/**
		Calls `name` on `resourceName` and returns its result.

		Throws a Lua error (catchable with `try`/`catch`) if the resource isn't
		started or doesn't export that name — guard with
		`Resource.isStarted(...)` when the dependency is optional, or use
		`tryCall`.
	**/
	public static function call(resourceName:String, name:String, args:haxe.Rest<Dynamic>):Dynamic {
		// The argument count is forwarded explicitly so the glue's unpack
		// covers the whole list rather than relying on the table's border.
		var packed = lua.Table.fromArray(args.toArray());
		return untyped __lua__("__hx_export_call({0}, {1}, {2}, {3})", resourceName, name, args.length, packed);
	}

	/**
		Like `call`, but returns `null` instead of throwing when the resource
		isn't started or the call fails. Intended for soft dependencies.
	**/
	public static function tryCall(resourceName:String, name:String, args:haxe.Rest<Dynamic>):Null<Dynamic> {
		if (!Resource.isStarted(resourceName)) return null;
		return try call(resourceName, name, ...args) catch (_:Dynamic) null;
	}
}
