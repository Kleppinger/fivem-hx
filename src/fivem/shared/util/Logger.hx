package fivem.shared.util;

import fivem.shared.core.Resource;

enum abstract LogLevel(Int) from Int to Int {
	var Debug = 0;
	var Info = 1;
	var Warn = 2;
	var Error = 3;
	/** Silences every level — useful for switching logging off in production. **/
	var Off = 4;
}

/**
	Console logging with a resource prefix, a level filter, and FiveM's
	`^n` colour codes.

	```haxe
	Logger.level = Info;   // drop Debug output in production
	Logger.info("garage", "spawned vehicle", vehicle.handle);
	```

	The `scope` argument is a free-form tag (a subsystem name, usually) that
	gets printed between the resource name and the message, so a busy console
	stays greppable.

	Output goes through Lua's `print`, which FXServer routes to the server
	console or the client's F8 console depending on where it runs.
**/
class Logger {
	/** Messages below this level are discarded. Defaults to `Debug` (everything). **/
	public static var level:LogLevel = Debug;

	/**
		Prefix shown before every message. Defaults to the resource name, which
		is what makes lines attributable once several Haxe resources are running.
	**/
	public static var prefix(get, set):String;

	static var customPrefix:String = null;

	static function get_prefix():String {
		if (customPrefix == null) customPrefix = Resource.current();
		return customPrefix;
	}

	static function set_prefix(value:String):String
		return customPrefix = value;

	public static inline function debug(scope:String, message:Dynamic, ?extra:Dynamic):Void
		write(Debug, "^7", "DEBUG", scope, message, extra);

	public static inline function info(scope:String, message:Dynamic, ?extra:Dynamic):Void
		write(Info, "^2", "INFO", scope, message, extra);

	public static inline function warn(scope:String, message:Dynamic, ?extra:Dynamic):Void
		write(Warn, "^3", "WARN", scope, message, extra);

	public static inline function error(scope:String, message:Dynamic, ?extra:Dynamic):Void
		write(Error, "^1", "ERROR", scope, message, extra);

	static function write(messageLevel:LogLevel, colour:String, label:String, scope:String, message:Dynamic, extra:Dynamic):Void {
		if ((messageLevel : Int) < (level : Int)) return;

		var text = '$colour[$label]^7 [${prefix}${scope == null ? "" : ":" + scope}] ${stringify(message)}';
		if (extra != null) text += " " + stringify(extra);
		untyped __lua__("_G.print({0})", text);
	}

	static function stringify(value:Dynamic):String {
		if (value == null) return "null";
		if (Std.isOfType(value, String)) return value;
		// Structures and arrays are far more useful as JSON than as "[object]".
		return try Json.encode(value) catch (_:Dynamic) Std.string(value);
	}
}
