package fivem.shared.core;

import fivem.shared.natives.Cfx;
import fivem.shared.util.Json;

/**
	The resource key/value store — FiveM's built-in persistence.

	Data is scoped to the resource that wrote it and stored on disk by the
	game (client-side) or the server, surviving restarts. It is the right place
	for small, resource-owned settings: UI preferences, a cached login token,
	feature toggles. It is *not* a database — there are no queries, no
	indexes, and no cross-resource access. For anything relational, use
	`fivem.server.db.OxMysql`.

	```haxe
	Kvp.setInt("volume", 80);
	var volume = Kvp.getInt("volume", 100);

	Kvp.setJson("layout", {x: 0.8, y: 0.2});
	var layout:{x:Float, y:Float} = Kvp.getJson("layout");
	```

	Every setter has a `sync` flag. Leaving it `true` (the default) flushes the
	write to disk immediately; passing `false` keeps it in memory until the
	next flush, which is much faster when writing many keys in a row.
**/
class Kvp {
	public static inline function setString(key:String, value:String, sync:Bool = true):Void {
		if (sync) Cfx.setResourceKvp(key, value) else Cfx.setResourceKvpNoSync(key, value);
	}

	public static inline function setInt(key:String, value:Int, sync:Bool = true):Void {
		if (sync) Cfx.setResourceKvpInt(key, value) else Cfx.setResourceKvpIntNoSync(key, value);
	}

	public static inline function setFloat(key:String, value:Float, sync:Bool = true):Void {
		if (sync) Cfx.setResourceKvpFloat(key, value) else Cfx.setResourceKvpFloatNoSync(key, value);
	}

	/** Stores a structure or array as JSON. **/
	public static inline function setJson(key:String, value:Dynamic, sync:Bool = true):Void {
		setString(key, Json.encode(value), sync);
	}

	public static inline function setBool(key:String, value:Bool, sync:Bool = true):Void {
		setInt(key, value ? 1 : 0, sync);
	}

	/** Reads a string, or `fallback` when the key is unset. **/
	public static inline function getString(key:String, fallback:String = null):String {
		var value = Cfx.getResourceKvpString(key);
		return value == null ? fallback : value;
	}

	/**
		Reads an integer. Unset keys read as 0, which is indistinguishable from
		a stored 0 — use `exists` first when that matters.
	**/
	public static inline function getInt(key:String, fallback:Int = 0):Int {
		return exists(key) ? Cfx.getResourceKvpInt(key) : fallback;
	}

	public static inline function getFloat(key:String, fallback:Float = 0):Float {
		return exists(key) ? Cfx.getResourceKvpFloat(key) : fallback;
	}

	public static inline function getBool(key:String, fallback:Bool = false):Bool {
		return exists(key) ? Cfx.getResourceKvpInt(key) != 0 : fallback;
	}

	/**
		Reads and parses a value written with `setJson`. Returns `null` if the
		key is unset or the stored text is malformed.

		The result comes back as FiveM's decoded Lua tables, so object fields
		read fine with dot access but a stored *array* arrives 1-based — see
		`Json.decode`. Use `getJsonArray` for lists.
	**/
	public static function getJson<T>(key:String):Null<T> {
		return Json.decode(Cfx.getResourceKvpString(key));
	}

	/** Reads a value written with `setJson` that holds an array. **/
	public static function getJsonArray<T>(key:String):Array<T> {
		var raw = Cfx.getResourceKvpString(key);
		return raw == null ? [] : Json.decodeArray(raw);
	}

	/**
		Whether a key has ever been written.

		Implemented as a key-prefix scan for an exact match, because FiveM
		exposes no direct existence check and the typed getters can't
		distinguish "unset" from a stored zero or empty string.
	**/
	public static function exists(key:String):Bool {
		var handle = Cfx.startFindKvp(key);
		if (handle == -1) return false;

		var found = false;
		var current = Cfx.findKvp(handle);
		while (current != null) {
			if (current == key) {
				found = true;
				break;
			}
			current = Cfx.findKvp(handle);
		}

		Cfx.endFindKvp(handle);
		return found;
	}

	public static inline function delete(key:String, sync:Bool = true):Void {
		if (sync) Cfx.deleteResourceKvp(key) else Cfx.deleteResourceKvpNoSync(key);
	}

	/** Every key beginning with `prefix`. Pass `""` to list everything this resource has stored. **/
	public static function find(prefix:String):Array<String> {
		var handle = Cfx.startFindKvp(prefix);
		if (handle == -1) return [];

		var keys = [];
		var current = Cfx.findKvp(handle);
		while (current != null) {
			keys.push(current);
			current = Cfx.findKvp(handle);
		}

		Cfx.endFindKvp(handle);
		return keys;
	}
}
