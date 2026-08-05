package fivem.client.natives;

@:native("_G")
extern class Event {
	/**
	 * ```
	 * eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
	 * This is limited to 4 blocked events at a time.
	 * ```
	 */
	@:native("BlockDecisionMakerEvent")
	static function blockDecisionMakerEvent(name:Int, eventType:Int):Dynamic;

	/**
	 * ```
	 * eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
	 * ```
	 */
	@:native("IsShockingEventInSphere")
	static function isShockingEventInSphere(eventType:Int, x:Float, y:Float, z:Float, radius:Float):Bool;

	/**
	 * ```
	 * eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
	 * ```
	 */
	@:native("AddShockingEventAtPosition")
	static function addShockingEventAtPosition(eventType:Int, x:Float, y:Float, z:Float, duration:Float):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveShockingEvent")
	static function removeShockingEvent(event:Dynamic):Bool;

	/**
	 * ```
	 * eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
	 * ```
	 */
	@:native("ClearDecisionMakerEventResponse")
	static function clearDecisionMakerEventResponse(name:Int, eventType:Int):Dynamic;

	/**
	 * ```
	 * eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
	 * ```
	 */
	@:native("AddShockingEventForEntity")
	static function addShockingEventForEntity(eventType:Int, entity:Dynamic, duration:Float):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveAllShockingEvents")
	static function removeAllShockingEvents(p0:Bool):Dynamic;

	/**
	 * ```
	 * eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
	 * ```
	 */
	@:native("SuppressShockingEventTypeNextFrame")
	static function suppressShockingEventTypeNextFrame(eventType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveShockingEventSpawnBlockingAreas")
	static function removeShockingEventSpawnBlockingAreas():Dynamic;

	/**
	 * 
	 */
	@:native("SetDecisionMaker")
	static function setDecisionMaker(ped:Dynamic, name:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SuppressAgitationEventsNextFrame")
	static function suppressAgitationEventsNextFrame():Dynamic;

	/**
	 * 
	 */
	@:native("SuppressShockingEventsNextFrame")
	static function suppressShockingEventsNextFrame():Dynamic;

	/**
	 * ```
	 * eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
	 * ```
	 */
	@:native("UnblockDecisionMakerEvent")
	static function unblockDecisionMakerEvent(name:Int, eventType:Int):Dynamic;

}
