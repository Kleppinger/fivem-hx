package fivem.client.natives;

@:native("_G")
extern class Script {
	/**
	 * ```
	 * Hashed version of 0xDC2BACD920D0A0DD.
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("BgEndContextHash")
	static function bgEndContextHash(contextHash:Int):Dynamic;

	/**
	 * ```
	 * Hashed version of 0x9D5A25BADB742ACD.
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("BgStartContextHash")
	static function bgStartContextHash(contextHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DoesScriptExist")
	static function doesScriptExist(scriptName:String):Bool;

	/**
	 * ```
	 * eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
	 * Note: eventDataSize is NOT the size in bytes, it is the size determined by the SIZE_OF operator (RAGE Script operator, not C/C++ sizeof). That is, the size in bytes divided by 8 (script variables are always 8-byte aligned!).
	 * ```
	 */
	@:native("GetEventData")
	static function getEventData(eventGroup:Int, eventIndex:Int, eventData:Dynamic, eventDataSize:Int):Bool;

	/**
	 * ```
	 * Deletes the given context from the background scripts context map.
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("BgEndContext")
	static function bgEndContext(contextName:String):Dynamic;

	/**
	 * ```
	 * eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
	 * ```
	 */
	@:native("GetEventAtIndex")
	static function getEventAtIndex(eventGroup:Int, eventIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GetHashOfThisScriptName")
	static function getHashOfThisScriptName():Int;

	/**
	 * ```
	 * eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
	 * ```
	 */
	@:native("GetEventExists")
	static function getEventExists(eventGroup:Int, eventIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("GetIdOfThisThread")
	static function getIdOfThisThread():Int;

	/**
	 * ```
	 * Inserts the given context into the background scripts context map.
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("BgStartContext")
	static function bgStartContext(contextName:String):Dynamic;

	/**
	 * 
	 */
	@:native("GetThisScriptName")
	static function getThisScriptName():String;

	/**
	 * 
	 */
	@:native("GetNameOfThread")
	static function GetNameOfThread(threadId:Int):String;

	/**
	 * 
	 */
	@:native("GetNoLoadingScreen")
	static function getNoLoadingScreen():Bool;

	/**
	 * 
	 */
	@:native("DoesScriptWithNameHashExist")
	static function doesScriptWithNameHashExist(scriptHash:Int):Bool;

	/**
	 * 
	 */
	@:native("IsThreadActive")
	static function isThreadActive(threadId:Int):Bool;

	/**
	 * Updates the display of the MP/SP loading buttons, and locks the state so that other options are not displayed or changed. This can only be done once.
	 */
	@:native("LockLoadingScreenButtons")
	static function LockLoadingScreenButtons():Dynamic;

	/**
	 * ```
	 * eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
	 * ```
	 */
	@:native("GetNumberOfEvents")
	static function getNumberOfEvents(eventGroup:Int):Int;

	/**
	 * ```
	 * Gets the number of instances of the specified script is currently running.
	 * Actually returns numRefs - 1.
	 * if (program)
	 * 	v3 = rage::scrProgram::GetNumRefs(program) - 1;
	 * return v3;
	 * ```
	 */
	@:native("GetNumberOfReferencesOfScriptWithNameHash")
	static function GetNumberOfReferencesOfScriptWithNameHash(scriptHash:Int):Int;

	/**
	 * 
	 */
	@:native("HasScriptWithNameHashLoaded")
	static function hasScriptWithNameHashLoaded(scriptHash:Int):Bool;

	/**
	 * Returns if a script has been loaded into the game. Used to see if a script was loaded after requesting.
	 */
	@:native("HasScriptLoaded")
	static function hasScriptLoaded(scriptName:String):Bool;

	/**
	 * 
	 */
	@:native("RequestScript")
	static function requestScript(scriptName:String):Dynamic;

	/**
	 * 
	 */
	@:native("SetNoLoadingScreen")
	static function setNoLoadingScreen(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetScriptAsNoLongerNeeded")
	static function setScriptAsNoLongerNeeded(scriptName:String):Dynamic;

	/**
	 * ```
	 * formerly _REQUEST_STREAMED_SCRIPT  
	 * ```
	 */
	@:native("RequestScriptWithNameHash")
	static function requestScriptWithNameHash(scriptHash:Int):Dynamic;

	/**
	 * Starts a new iteration of the current threads.
	 * Call this first, then SCRIPT_THREAD_ITERATOR_GET_NEXT_THREAD_ID (0x30B4FA1C82DD4B9F)
	 */
	@:native("ScriptThreadIteratorReset")
	static function scriptThreadIteratorReset():Dynamic;

	/**
	 * ```
	 * If the function returns 0, the end of the iteration has been reached.
	 * ```
	 */
	@:native("ScriptThreadIteratorGetNextThreadId")
	static function scriptThreadIteratorGetNextThreadId():Int;

	/**
	 * 
	 */
	@:native("SetScriptWithNameHashAsNoLongerNeeded")
	static function setScriptWithNameHashAsNoLongerNeeded(scriptHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TerminateThread")
	static function terminateThread(threadId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ShutdownLoadingScreen")
	static function shutdownLoadingScreen():Dynamic;

	/**
	 * ```
	 * See TRIGGER_SCRIPT_EVENT
	 * ```
	 */
	@:native("TriggerScriptEvent_2")
	static function TriggerScriptEvent2(eventGroup:Int, eventData:Dynamic, eventDataSize:Int, playerBits:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TerminateThisThread")
	static function terminateThisThread():Dynamic;

	/**
	 * ```
	 * eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
	 * Note: eventDataSize is NOT the size in bytes, it is the size determined by the SIZE_OF operator (RAGE Script operator, not C/C++ sizeof). That is, the size in bytes divided by 8 (script variables are always 8-byte aligned!).
	 * playerBits (also known as playersToBroadcastTo) is a bitset that indicates which players this event should be sent to. In order to send the event to specific players only, use (1 << playerIndex). Set all bits if it should be broadcast to all players.
	 * ```
	 */
	@:native("TriggerScriptEvent")
	static function triggerScriptEvent(eventGroup:Int, eventData:Dynamic, eventDataSize:Int, playerBits:Int):Dynamic;

}
