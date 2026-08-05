package fivem.shared;

/**
	Hand-written core event/command externs not covered by the natives
	generated from the FiveM natives database (see `generate.py`).
	Kept separate from `fivem.shared.natives.*` so regeneration never
	overwrites it.

	These are raw externs. For an ergonomic, typed layer on top — with
	automatic net-event registration and unsubscribe handles — use
	`fivem.shared.core.Events`.

	Note that `triggerClientEvent` only exists on the server and
	`triggerServerEvent` only on the client; both are declared here because
	the externs themselves cost nothing, but calling the wrong one for your
	environment fails at runtime, not at compile time.
**/
@:native("_G")
extern class CoreEvents {
	/**
		Registers a command that can be executed from the client/server console or chat.

		`args` arrives as a raw, 1-based Lua table, *not* a Haxe `Array` — Haxe
		arrays on the Lua target are 0-based and carry their own `length`
		field, so indexing this directly with `args[0]` yields `nil`. Convert
		it with `lua.Table.toArray(args)`, or use
		`fivem.shared.core.Commands.register`, which hands you a real
		`Array<String>`.

		@param commandName The name of the command to register.
		@param handler The function to execute when the command is run.
		@param restricted If true, requires ACE permissions to execute.
	**/
	@:native("RegisterCommand")
	static function registerCommand(commandName:String, handler:(source:Int, args:lua.Table<Int, String>, rawCommand:String) -> Void, restricted:Bool):Void;

	/**
		Registers a network event so it can be triggered from clients.
		@param eventName The name of the event to register.
	**/
	@:native("RegisterNetEvent")
	static function registerNetEvent(eventName:String):Void;

	/**
		Adds an event handler for the specified event.
		@param eventName The name of the event to listen for.
		@param handler The callback function executed when the event triggers.
		@return An opaque handle accepted by `removeEventHandler`.
	**/
	@:native("AddEventHandler")
	static function addEventHandler(eventName:String, handler:haxe.Constraints.Function):Dynamic;

	/**
		Detaches a handler previously returned by `addEventHandler`.
	**/
	@:native("RemoveEventHandler")
	static function removeEventHandler(handle:Dynamic):Void;

	/**
		Triggers an event locally, within this resource and any other resource
		listening for it. Does not cross the network.
	**/
	@:native("TriggerEvent")
	static function triggerEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Void;

	/**
		Triggers a client event for a specific player. Server-side only.
		@param targetSource The player to send to, or `-1` to broadcast to everyone.
	**/
	@:native("TriggerClientEvent")
	static function triggerClientEvent(eventName:String, targetSource:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;

	/**
		Like `triggerClientEvent`, but streams the payload at `bytesPerSecond`
		instead of sending it in one packet. Use for anything large enough to
		stall the network — bulk inventory syncs, map data — so it doesn't
		block ordinary events. Server-side only.
	**/
	@:native("TriggerLatentClientEvent")
	static function triggerLatentClientEvent(eventName:String, targetSource:Dynamic, bytesPerSecond:Int, args:haxe.extern.Rest<Dynamic>):Void;

	/**
		Triggers a server event from the client.
		@param eventName The name of the event to trigger.
	**/
	@:native("TriggerServerEvent")
	static function triggerServerEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Void;

	/**
		Like `triggerServerEvent`, but rate-limited to `bytesPerSecond`.
		Client-side only.
	**/
	@:native("TriggerLatentServerEvent")
	static function triggerLatentServerEvent(eventName:String, bytesPerSecond:Int, args:haxe.extern.Rest<Dynamic>):Void;
}
