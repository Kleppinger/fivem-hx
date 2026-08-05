package fivem.shared.core;

import fivem.shared.CoreEvents;
import fivem.shared.natives.Cfx;
import fivem.shared.util.LuaTables;

/**
	Console and chat commands, with arguments delivered as a real Haxe
	`Array<String>` rather than a raw Lua table.

	```haxe
	Commands.register("givecash", (source, args) -> {
	    var amount = Commands.intArg(args, 0, 100);
	    grantCash(source, amount);
	}, "group.admin");
	```

	On the server `source` is the player who ran the command, or 0 for the
	console. On the client it is always 0.
**/
class Commands {
	/**
		Registers a command.

		@param name The command, without a leading `/`.
		@param handler Receives the invoking player and the parsed arguments.
		@param aceObject When set, the command is registered as restricted and
		       only principals granted this ACE object may run it (e.g.
		       `"group.admin"`, or `"command.givecash"`). Leave `null` for an
		       unrestricted command.
	**/
	public static function register(name:String, handler:(source:Int, args:Array<String>) -> Void, ?aceObject:String):Void {
		CoreEvents.registerCommand(name, (source, args, _) -> {
			handler(source, LuaTables.toArray(args));
		}, aceObject != null);

		grantAce(name, aceObject);
	}

	/**
		Registers a command whose handler also receives the raw, unparsed
		command line — needed when an argument may contain spaces.
	**/
	public static function registerRaw(name:String, handler:(source:Int, args:Array<String>, rawCommand:String) -> Void, ?aceObject:String):Void {
		CoreEvents.registerCommand(name, (source, args, rawCommand) -> {
			handler(source, LuaTables.toArray(args), rawCommand);
		}, aceObject != null);

		grantAce(name, aceObject);
	}

	/**
		Adds the ACE grant that makes a restricted command usable.

		`RegisterCommand`'s `restricted` flag only requires that *some* grant
		exists; the grant itself is a separate step. ACE is a server concept,
		so this is a no-op on the client — a client-side restricted command is
		simply blocked outright.
	**/
	static function grantAce(name:String, aceObject:String):Void {
		if (aceObject == null || !Cfx.isDuplicityVersion()) return;
		Cfx.executeCommand('add_ace $aceObject command.$name allow');
	}

	/** Runs a command as if typed into the console. **/
	public static inline function execute(commandString:String):Void {
		Cfx.executeCommand(commandString);
	}

	/**
		Whether `principal` (an identifier, `group.x`, or `player.x`) is
		allowed to perform `object`. Server-side ACE checks only.
	**/
	public static inline function isAceAllowed(principal:String, object:String):Bool {
		return Cfx.isPrincipalAceAllowed(principal, object);
	}

	// -- Argument helpers --------------------------------------------------

	/** Reads argument `index`, falling back to `fallback` when it is missing. **/
	public static inline function arg(args:Array<String>, index:Int, fallback:String = null):String {
		return index < args.length && args[index] != null ? args[index] : fallback;
	}

	/** Reads argument `index` as an integer, falling back when missing or unparseable. **/
	public static function intArg(args:Array<String>, index:Int, fallback:Int = 0):Int {
		if (index >= args.length) return fallback;
		var parsed = Std.parseInt(args[index]);
		return parsed == null ? fallback : parsed;
	}

	/** Reads argument `index` as a float, falling back when missing or unparseable. **/
	public static function floatArg(args:Array<String>, index:Int, fallback:Float = 0):Float {
		if (index >= args.length) return fallback;
		var parsed = Std.parseFloat(args[index]);
		return Math.isNaN(parsed) ? fallback : parsed;
	}

	/** Joins every argument from `index` onwards back into one string. **/
	public static function restArg(args:Array<String>, index:Int = 0):String {
		return args.slice(index).join(" ");
	}
}
