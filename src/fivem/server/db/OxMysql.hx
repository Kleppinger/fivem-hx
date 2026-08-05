package fivem.server.db;

import lua.Table;
import lua.TableTools;

/**
	Typed bindings to the [oxmysql](https://overextended.dev/oxmysql) resource.

	Add `dependency 'oxmysql'` to `fxmanifest.lua` — nothing else is required,
	this talks directly to `exports.oxmysql`. Server-side only, since oxmysql
	itself is a server-only resource.

	The plain methods (`query`, `single`, `scalar`, `insert`, `update`,
	`rawExecute`, `transaction`) block the current Citizen coroutine until
	oxmysql replies, so the call reads like ordinary synchronous Haxe code.
	That's safe from event handlers, threads, and commands — virtually
	everywhere FiveM resource code runs. Use the `Async` variants if you
	need a non-blocking, callback-style call instead.

	For a `sys.db.Connection`-based ORM workflow (e.g. the `record-macros`
	haxelib), use `OxMysqlConnection` instead of calling this directly.
**/
class OxMysql {
	public static function query(sql:String, ?params:Array<Dynamic>):Array<Dynamic> {
		return rowsOf(OxMysqlBridge.await("query", sql, toParams(params)));
	}

	public static function single(sql:String, ?params:Array<Dynamic>):Dynamic {
		var row:Table<String, Dynamic> = OxMysqlBridge.await("single", sql, toParams(params));
		return row == null ? null : Table.toObject(row);
	}

	public static function scalar(sql:String, ?params:Array<Dynamic>):Dynamic {
		return OxMysqlBridge.await("scalar", sql, toParams(params));
	}

	public static function insert(sql:String, ?params:Array<Dynamic>):Int {
		return OxMysqlBridge.await("insert", sql, toParams(params));
	}

	public static function update(sql:String, ?params:Array<Dynamic>):Int {
		return OxMysqlBridge.await("update", sql, toParams(params));
	}

	/** Runs `sql` and returns oxmysql's raw, unprocessed reply. **/
	public static function rawExecute(sql:String, ?params:Array<Dynamic>):Dynamic {
		return OxMysqlBridge.await("rawExecute", sql, toParams(params));
	}

	/** Runs every `{query, values}` entry as a single atomic transaction. Returns whether it succeeded. **/
	public static function transaction(queries:Array<{query:String, ?values:Array<Dynamic>}>):Bool {
		var t:Table<Int, Table<String, Dynamic>> = Table.create();
		for (i in 0...queries.length) {
			var entry:Table<String, Dynamic> = Table.create();
			untyped entry["query"] = queries[i].query;
			if (queries[i].values != null) untyped entry["values"] = Table.fromArray(queries[i].values);
			t[i + 1] = entry;
		}
		return OxMysqlBridge.await("transaction", t, null);
	}

	public static function queryAsync(sql:String, ?params:Array<Dynamic>, ?callback:(rows:Array<Dynamic>) -> Void):Void {
		OxMysqlBridge.call("query", sql, toParams(params), (result, error) -> {
			if (callback != null) callback(error != null ? [] : rowsOf(result));
		});
	}

	public static function insertAsync(sql:String, ?params:Array<Dynamic>, ?callback:(id:Int) -> Void):Void {
		OxMysqlBridge.call("insert", sql, toParams(params), (result, error) -> {
			if (callback != null) callback(error != null ? 0 : cast result);
		});
	}

	public static function updateAsync(sql:String, ?params:Array<Dynamic>, ?callback:(affected:Int) -> Void):Void {
		OxMysqlBridge.call("update", sql, toParams(params), (result, error) -> {
			if (callback != null) callback(error != null ? 0 : cast result);
		});
	}

	static function rowsOf(raw:Dynamic):Array<Dynamic> {
		if (raw == null) return [];
		var rows:Table<Int, Table<String, Dynamic>> = cast raw;
		var n = TableTools.maxn(cast rows);
		var result = [];
		for (i in 1...n + 1) result.push(Table.toObject(rows[i]));
		return result;
	}

	static function toParams(params:Array<Dynamic>):Table<Int, Dynamic> {
		return params == null ? null : Table.fromArray(params);
	}
}
