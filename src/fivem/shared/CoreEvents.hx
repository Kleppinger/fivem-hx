package fivem.shared;

/**
	Hand-written core event/command externs not covered by the natives
	generated from the FiveM natives database (see `generate.py`).
	Kept separate from `fivem.shared.natives.*` so regeneration never
	overwrites it.
**/
@:native("_G")
extern class CoreEvents {
	/**
		Registers a command that can be executed from the client/server console or chat.
		@param commandName The name of the command to register.
		@param handler The function to execute when the command is run.
		@param restricted If true, requires ACE permissions to execute.
	**/
	@:native("RegisterCommand")
	static function registerCommand(commandName:String, handler:(source:Int, args:Array<String>, rawCommand:String) -> Void, restricted:Bool):Void;

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
	**/
	@:native("AddEventHandler")
	static function addEventHandler(eventName:String, handler:haxe.Constraints.Function):Void;

	/**
		Triggers a client event for a specific player (or all players if source is -1).
	**/
	@:native("TriggerClientEvent")
	static function triggerClientEvent(eventName:String, targetSource:Int, arg1:Dynamic, ?arg2:Dynamic):Void;
}
