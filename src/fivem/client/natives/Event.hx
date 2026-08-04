package fivem.client.natives;

@:native("_G")
extern class Event {
	/**
	 * ```
	 * eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
	 * This is limited to 4 blocked events at a time.
	 * ```
	 */
	@:native("BLOCK_DECISION_MAKER_EVENT")
	static function blockDecisionMakerEvent(name:Int, eventType:Int):Dynamic;

	/**
	 * ```
	 * eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
	 * ```
	 */
	@:native("IS_SHOCKING_EVENT_IN_SPHERE")
	static function isShockingEventInSphere(eventType:Int, x:Float, y:Float, z:Float, radius:Float):Bool;

	/**
	 * ```
	 * eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
	 * ```
	 */
	@:native("ADD_SHOCKING_EVENT_AT_POSITION")
	static function addShockingEventAtPosition(eventType:Int, x:Float, y:Float, z:Float, duration:Float):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_SHOCKING_EVENT")
	static function removeShockingEvent(event:Dynamic):Bool;

	/**
	 * ```
	 * eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
	 * ```
	 */
	@:native("CLEAR_DECISION_MAKER_EVENT_RESPONSE")
	static function clearDecisionMakerEventResponse(name:Int, eventType:Int):Dynamic;

	/**
	 * ```
	 * eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
	 * ```
	 */
	@:native("ADD_SHOCKING_EVENT_FOR_ENTITY")
	static function addShockingEventForEntity(eventType:Int, entity:Dynamic, duration:Float):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_ALL_SHOCKING_EVENTS")
	static function removeAllShockingEvents(p0:Bool):Dynamic;

	/**
	 * ```
	 * eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
	 * ```
	 */
	@:native("SUPPRESS_SHOCKING_EVENT_TYPE_NEXT_FRAME")
	static function suppressShockingEventTypeNextFrame(eventType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_SHOCKING_EVENT_SPAWN_BLOCKING_AREAS")
	static function removeShockingEventSpawnBlockingAreas():Dynamic;

	/**
	 * 
	 */
	@:native("SET_DECISION_MAKER")
	static function setDecisionMaker(ped:Dynamic, name:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SUPPRESS_AGITATION_EVENTS_NEXT_FRAME")
	static function suppressAgitationEventsNextFrame():Dynamic;

	/**
	 * 
	 */
	@:native("SUPPRESS_SHOCKING_EVENTS_NEXT_FRAME")
	static function suppressShockingEventsNextFrame():Dynamic;

	/**
	 * ```
	 * eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
	 * ```
	 */
	@:native("UNBLOCK_DECISION_MAKER_EVENT")
	static function unblockDecisionMakerEvent(name:Int, eventType:Int):Dynamic;

}
