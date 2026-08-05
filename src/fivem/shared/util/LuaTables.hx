package fivem.shared.util;

import lua.Table;
import lua.TableTools;

/**
	Conversions between raw Lua tables and Haxe collections.

	This is needed more often than it looks. Haxe arrays on the Lua target are
	0-based objects carrying their own `length` field, while everything coming
	out of FiveM — `GetActivePlayers()`, `GetGamePool()`,
	`GetEntitiesInRadius()`, command arguments, msgpack-decoded event payloads
	— is a plain 1-based Lua table. Assigning one to an `Array<T>` type-checks
	but produces an array that reads as empty.

	Anything in this library that returns a collection has already been through
	these helpers; they're exposed for when you call a native directly.
**/
class LuaTables {
	/**
		Converts a 1-based Lua array table into a Haxe `Array`. A `null` input
		becomes an empty array, which is what natives return for "no results".
	**/
	public static function toArray<T>(raw:Dynamic):Array<T> {
		if (raw == null) return [];
		var table:Table<Int, T> = cast raw;
		var length = TableTools.maxn(cast table);
		var result = [];
		for (i in 1...length + 1) result.push(table[i]);
		return result;
	}

	/**
		Converts a string-keyed Lua table into an anonymous structure, so its
		fields can be read with ordinary dot access.
	**/
	public static inline function toObject(raw:Dynamic):Dynamic {
		return raw == null ? null : Table.toObject(cast raw);
	}

	/** Converts a string-keyed Lua table into a Haxe `Map`. **/
	public static function toMap<T>(raw:Dynamic):Map<String, T> {
		var result = new Map<String, T>();
		if (raw == null) return result;

		var object = Table.toObject(cast raw);
		for (field in Reflect.fields(object)) result.set(field, Reflect.field(object, field));
		return result;
	}

	/** Converts a Haxe `Array` into a 1-based Lua table, for passing back into natives. **/
	public static inline function fromArray<T>(values:Array<T>):Table<Int, T> {
		return values == null ? null : Table.fromArray(values);
	}

	/** Converts a Haxe `Map` into a Lua table. **/
	public static inline function fromMap<T>(values:Map<String, T>):Table<String, T> {
		return values == null ? null : Table.fromMap(values);
	}

	/** The number of entries in the array portion of a Lua table. **/
	public static inline function count(raw:Dynamic):Int {
		return raw == null ? 0 : TableTools.maxn(cast raw);
	}
}
