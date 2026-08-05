package fivem.server.db;

import lua.Table;
import lua.TableTools;
import lua.PairTools;
import sys.db.ResultSet;

/**
	`sys.db.ResultSet` over an oxmysql reply.

	Two shapes come out of `OxMysqlConnection.request()`: a `SELECT`-style
	call (`forRows`) gets a Lua array of row tables, string-keyed by column
	name; an `INSERT`/`UPDATE`-style call (`forAffected`) gets a plain scalar
	(insert id / affected row count), wrapped here into a rowless result set
	whose `length` reports that scalar — matching how `sys.db.Manager`
	(the `record-macros` haxelib) expects `request()` to behave for both
	statement kinds. There's no live cursor or streaming: the whole reply
	already arrived over the exports boundary by the time this exists, so
	this is just Haxe-side bookkeeping over an in-memory table.

	The read cursor starts pointing at the first row rather than before it,
	so `getResult`/`getIntResult`/`getFloatResult` work without an explicit
	`next()` call first (this matches `sys.db.Manager.unsafeCount()`, which
	calls `getIntResult(0)` directly on a fresh result set).
**/
class OxMysqlResultSet implements ResultSet {
	var rows:Table<Int, Table<String, Dynamic>>;
	var rowCount:Int;
	var fieldNames:Array<String>;
	var cursor:Int = 1;
	var affected:Int;
	var isRows:Bool;

	public static function forRows(raw:Dynamic):OxMysqlResultSet {
		var rs = new OxMysqlResultSet();
		rs.isRows = true;
		rs.rows = raw == null ? Table.create() : cast raw;
		rs.rowCount = TableTools.maxn(cast rs.rows);
		rs.fieldNames = rs.rowCount > 0 ? fieldsOf(rs.rows[1]) : [];
		return rs;
	}

	public static function forAffected(count:Int):OxMysqlResultSet {
		var rs = new OxMysqlResultSet();
		rs.isRows = false;
		rs.rows = Table.create();
		rs.rowCount = 0;
		rs.fieldNames = [];
		rs.affected = count;
		return rs;
	}

	function new() {}

	static function fieldsOf(row:Table<String, Dynamic>):Array<String> {
		var names = [];
		PairTools.pairsEach(row, (k, v) -> names.push(k));
		return names;
	}

	public var length(get, null):Int;

	function get_length():Int
		return isRows ? rowCount : affected;

	public var nfields(get, null):Int;

	function get_nfields():Int
		return fieldNames.length;

	public function hasNext():Bool
		return cursor <= rowCount;

	public function next():Dynamic {
		var row = Table.toObject(rows[cursor]);
		cursor++;
		return row;
	}

	public function results():List<Dynamic> {
		var l = new List<Dynamic>();
		while (cursor <= rowCount) {
			l.add(Table.toObject(rows[cursor]));
			cursor++;
		}
		return l;
	}

	public function getFieldsNames():Array<String>
		return fieldNames;

	public function getResult(n:Int):String {
		var v = currentField(n);
		return v == null ? null : Std.string(v);
	}

	public function getIntResult(n:Int):Int {
		return Std.int(currentField(n));
	}

	public function getFloatResult(n:Int):Float {
		return currentField(n);
	}

	function currentField(n:Int):Dynamic {
		return untyped rows[cursor][fieldNames[n]];
	}
}
