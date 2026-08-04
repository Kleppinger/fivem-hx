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
	@:native("BG_END_CONTEXT_HASH")
	static function bgEndContextHash(contextHash:Int):Dynamic;

	/**
	 * ```
	 * Hashed version of 0x9D5A25BADB742ACD.
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("BG_START_CONTEXT_HASH")
	static function bgStartContextHash(contextHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DOES_SCRIPT_EXIST")
	static function doesScriptExist(scriptName:String):Bool;

	/**
	 * ```
	 * eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
	 * Note: eventDataSize is NOT the size in bytes, it is the size determined by the SIZE_OF operator (RAGE Script operator, not C/C++ sizeof). That is, the size in bytes divided by 8 (script variables are always 8-byte aligned!).
	 * ```
	 */
	@:native("GET_EVENT_DATA")
	static function getEventData(eventGroup:Int, eventIndex:Int, eventData:Dynamic, eventDataSize:Int):Bool;

	/**
	 * ```
	 * Deletes the given context from the background scripts context map.
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("BG_END_CONTEXT")
	static function bgEndContext(contextName:String):Dynamic;

	/**
	 * ```
	 * eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
	 * ```
	 */
	@:native("GET_EVENT_AT_INDEX")
	static function getEventAtIndex(eventGroup:Int, eventIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GET_HASH_OF_THIS_SCRIPT_NAME")
	static function getHashOfThisScriptName():Int;

	/**
	 * ```
	 * eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
	 * ```
	 */
	@:native("GET_EVENT_EXISTS")
	static function getEventExists(eventGroup:Int, eventIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("GET_ID_OF_THIS_THREAD")
	static function getIdOfThisThread():Int;

	/**
	 * ```
	 * Inserts the given context into the background scripts context map.
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("BG_START_CONTEXT")
	static function bgStartContext(contextName:String):Dynamic;

	/**
	 * 
	 */
	@:native("GET_THIS_SCRIPT_NAME")
	static function getThisScriptName():String;

	/**
	 * 
	 */
	@:native("_GET_NAME_OF_THREAD")
	static function GetNameOfThread(threadId:Int):String;

	/**
	 * 
	 */
	@:native("GET_NO_LOADING_SCREEN")
	static function getNoLoadingScreen():Bool;

	/**
	 * 
	 */
	@:native("DOES_SCRIPT_WITH_NAME_HASH_EXIST")
	static function doesScriptWithNameHashExist(scriptHash:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_THREAD_ACTIVE")
	static function isThreadActive(threadId:Int):Bool;

	/**
	 * Updates the display of the MP/SP loading buttons, and locks the state so that other options are not displayed or changed. This can only be done once.
	 */
	@:native("_LOCK_LOADING_SCREEN_BUTTONS")
	static function LockLoadingScreenButtons():Dynamic;

	/**
	 * ```
	 * eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
	 * ```
	 */
	@:native("GET_NUMBER_OF_EVENTS")
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
	@:native("_GET_NUMBER_OF_REFERENCES_OF_SCRIPT_WITH_NAME_HASH")
	static function GetNumberOfReferencesOfScriptWithNameHash(scriptHash:Int):Int;

	/**
	 * 
	 */
	@:native("HAS_SCRIPT_WITH_NAME_HASH_LOADED")
	static function hasScriptWithNameHashLoaded(scriptHash:Int):Bool;

	/**
	 * Returns if a script has been loaded into the game. Used to see if a script was loaded after requesting.
	 */
	@:native("HAS_SCRIPT_LOADED")
	static function hasScriptLoaded(scriptName:String):Bool;

	/**
	 * 
	 */
	@:native("REQUEST_SCRIPT")
	static function requestScript(scriptName:String):Dynamic;

	/**
	 * 
	 */
	@:native("SET_NO_LOADING_SCREEN")
	static function setNoLoadingScreen(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_SCRIPT_AS_NO_LONGER_NEEDED")
	static function setScriptAsNoLongerNeeded(scriptName:String):Dynamic;

	/**
	 * ```
	 * formerly _REQUEST_STREAMED_SCRIPT  
	 * ```
	 */
	@:native("REQUEST_SCRIPT_WITH_NAME_HASH")
	static function requestScriptWithNameHash(scriptHash:Int):Dynamic;

	/**
	 * Starts a new iteration of the current threads.
	 * Call this first, then SCRIPT_THREAD_ITERATOR_GET_NEXT_THREAD_ID (0x30B4FA1C82DD4B9F)
	 */
	@:native("SCRIPT_THREAD_ITERATOR_RESET")
	static function scriptThreadIteratorReset():Dynamic;

	/**
	 * ```
	 * If the function returns 0, the end of the iteration has been reached.
	 * ```
	 */
	@:native("SCRIPT_THREAD_ITERATOR_GET_NEXT_THREAD_ID")
	static function scriptThreadIteratorGetNextThreadId():Int;

	/**
	 * 
	 */
	@:native("SET_SCRIPT_WITH_NAME_HASH_AS_NO_LONGER_NEEDED")
	static function setScriptWithNameHashAsNoLongerNeeded(scriptHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TERMINATE_THREAD")
	static function terminateThread(threadId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SHUTDOWN_LOADING_SCREEN")
	static function shutdownLoadingScreen():Dynamic;

	/**
	 * ```
	 * See TRIGGER_SCRIPT_EVENT
	 * ```
	 */
	@:native("_TRIGGER_SCRIPT_EVENT_2")
	static function TriggerScriptEvent2(eventGroup:Int, eventData:Dynamic, eventDataSize:Int, playerBits:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TERMINATE_THIS_THREAD")
	static function terminateThisThread():Dynamic;

	/**
	 * ```
	 * eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
	 * Note: eventDataSize is NOT the size in bytes, it is the size determined by the SIZE_OF operator (RAGE Script operator, not C/C++ sizeof). That is, the size in bytes divided by 8 (script variables are always 8-byte aligned!).
	 * playerBits (also known as playersToBroadcastTo) is a bitset that indicates which players this event should be sent to. In order to send the event to specific players only, use (1 << playerIndex). Set all bits if it should be broadcast to all players.
	 * ```
	 */
	@:native("TRIGGER_SCRIPT_EVENT")
	static function triggerScriptEvent(eventGroup:Int, eventData:Dynamic, eventDataSize:Int, playerBits:Int):Dynamic;

}
