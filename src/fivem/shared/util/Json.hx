package fivem.shared.util;

/**
	JSON encoding and decoding that works on FXServer.

	**Do not use `haxe.Json` in a FiveM resource.** On the Lua target Haxe
	overrides `haxe.format.JsonParser` with a binding to `hxsimdjson`, a native
	Lua module FXServer does not ship. The `require` for it is emitted
	unconditionally at the top of the compiled file, so a resource that merely
	*references* `haxe.Json` anywhere fails to start:

	```
	SCRIPT ERROR: @your-resource/dist/server/server.lua:264:
	  module 'hxsimdjson' not found
	```

	This class avoids that entirely, with no extra dependencies:

	- `encode` uses `haxe.format.JsonPrinter`, which is plain cross-platform
	  Haxe with no native binding. It understands Haxe values properly —
	  arrays serialise as JSON arrays, anonymous structures as objects, and
	  the Lua target's internal `__fields__` bookkeeping stays out of the
	  output.
	- `decode` uses FiveM's own `json` global, which is always present in both
	  the client and server runtimes.

	```haxe
	var text = Json.encode({name: "Kleppinger", roles: ["admin", "dev"]});
	var back = Json.decode(text);
	trace(back.name);
	```

	One asymmetry worth knowing: `decode` returns FiveM's raw Lua tables, so
	object fields read fine with dot access but *arrays are 1-based Lua
	tables, not Haxe arrays*. Use `decodeArray` when you expect a list, or run
	a nested one through `LuaTables.toArray`.
**/
class Json {
	/**
		Serialises a Haxe value to JSON.

		@param indent Pass e.g. `"  "` to pretty-print; omit for compact output.
	**/
	public static inline function encode(value:Dynamic, ?indent:String):String {
		return haxe.format.JsonPrinter.print(value, null, indent);
	}

	/**
		Parses JSON into FiveM's decoded representation: anonymous-object-like
		Lua tables for objects, 1-based Lua tables for arrays.

		Returns `null` for malformed input rather than throwing, since the
		usual sources — a KVP value, an HTTP response, an NUI message — are
		all things that can legitimately arrive corrupt.
	**/
	public static function decode(text:String):Null<Dynamic> {
		if (text == null) return null;
		return try untyped __lua__("_G.json.decode({0})", text) catch (_:Dynamic) null;
	}

	/**
		Parses JSON expected to hold an array, converting it to a real Haxe
		`Array`. Returns an empty array for malformed input.
	**/
	public static function decodeArray<T>(text:String):Array<T> {
		var decoded = decode(text);
		return decoded == null ? [] : LuaTables.toArray(decoded);
	}
}
