package fivem.server.db;

import sys.db.Connection;
import sys.db.ResultSet;

/**
	`sys.db.Connection` backed by oxmysql. Assign an instance of this to
	`sys.db.Manager.cnx` (from the `record-macros` haxelib, which reimplements
	Haxe's classic `sys.db.Manager` ORM for Haxe 4) to use it against oxmysql,
	or call `request()` directly for raw SQL. See `docs/database.md`.

	`request()` looks at the SQL's leading keyword to pick which oxmysql verb
	to call (`SELECT`/`SHOW`/`DESCRIBE`/`EXPLAIN`/`PRAGMA` → `query`,
	`INSERT`/`REPLACE` → `insert`, everything else → `update`), because
	oxmysql doesn't expose a single generic "run anything, tell me what shape
	came back" call the way a native mysql client library does — each verb
	already returns a specific, well-defined shape (row array, insert id,
	affected-row count).

	Transactions aren't implemented: oxmysql's `transaction` export takes a
	whole batch of statements up front and runs them atomically, which
	doesn't match `Connection`'s interactive
	`startTransaction()` / `request()` / `commit()` model of holding one
	transaction open across separate calls. Use `OxMysql.transaction()` for
	an atomic batch instead.
**/
class OxMysqlConnection implements Connection {
	var lastInsertId_:Int = 0;

	public function new() {}

	public function request(s:String):ResultSet {
		return switch (firstKeyword(s)) {
			case "SELECT" | "SHOW" | "DESCRIBE" | "DESC" | "EXPLAIN" | "PRAGMA":
				OxMysqlResultSet.forRows(OxMysqlBridge.await("query", s, null));
			case "INSERT" | "REPLACE":
				var id:Int = OxMysqlBridge.await("insert", s, null);
				lastInsertId_ = id;
				OxMysqlResultSet.forAffected(id > 0 ? 1 : 0);
			default:
				var affected:Int = OxMysqlBridge.await("update", s, null);
				OxMysqlResultSet.forAffected(affected);
		}
	}

	public function close():Void {}

	/** Best-effort client-side escaping (mysql_real_escape_string-equivalent). Prefer parameterized queries where possible. **/
	public function escape(s:String):String {
		var buf = new StringBuf();
		for (i in 0...s.length) {
			switch (s.charCodeAt(i)) {
				case 0: buf.add("\\0");
				case 10: buf.add("\\n");
				case 13: buf.add("\\r");
				case 26: buf.add("\\Z");
				case 34: buf.add("\\\"");
				case 39: buf.add("\\'");
				case 92: buf.add("\\\\");
				default: buf.add(s.charAt(i));
			}
		}
		return buf.toString();
	}

	public function quote(s:String):String {
		return "'" + escape(s) + "'";
	}

	public function addValue(s:StringBuf, v:Dynamic):Void {
		if (v == null) s.add("NULL");
		else if (Std.isOfType(v, String)) s.add(quote(v));
		else if (Std.isOfType(v, Bool)) s.add((v : Bool) ? "1" : "0");
		else s.add(Std.string(v));
	}

	public function lastInsertId():Int
		return lastInsertId_;

	public function dbName():String
		return "MySQL";

	public function startTransaction():Void {
		throw "OxMysqlConnection does not support interactive transactions; use OxMysql.transaction() for an atomic batch instead.";
	}

	public function commit():Void
		throw "OxMysqlConnection does not support interactive transactions; use OxMysql.transaction() for an atomic batch instead.";

	public function rollback():Void
		throw "OxMysqlConnection does not support interactive transactions; use OxMysql.transaction() for an atomic batch instead.";

	static function firstKeyword(sql:String):String {
		var trimmed = StringTools.ltrim(sql);
		var end = 0;
		while (end < trimmed.length && !isBoundary(trimmed.charAt(end)))
			end++;
		return trimmed.substr(0, end).toUpperCase();
	}

	static function isBoundary(c:String):Bool {
		return c == " " || c == "\t" || c == "\n" || c == "\r" || c == "(";
	}
}
