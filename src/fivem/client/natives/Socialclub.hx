package fivem.client.natives;

@:native("_G")
extern class Socialclub {
	/**
	 * 
	 */
	@:native("IsRockstarMessageReadyForScript")
	static function IsRockstarMessageReadyForScript():Bool;

	/**
	 * 
	 */
	@:native("ScEmailMessagePushGamerToRecipList")
	static function scEmailMessagePushGamerToRecipList(networkHandle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("RockstarMessageGetString")
	static function RockstarMessageGetString():String;

	/**
	 * ```
	 * Same as HAS_ACHIEVEMENT_BEEN_PASSED
	 * ```
	 */
	@:native("ScGetHasAchievementBeenPassed")
	static function ScGetHasAchievementBeenPassed(achievement:Int):Bool;

	/**
	 * ```
	 * sfink: from scripts:
	 * func_720(socialclub::_0x8416FE4E4629D7D7("bIgnoreCheaterOverride"));
	 * func_719(socialclub::_0x8416FE4E4629D7D7("bIgnoreBadSportOverride"));
	 * ```
	 */
	@:native("ScGamerdataGetBool")
	static function scGamerdataGetBool(name:String):Bool;

	/**
	 * 
	 */
	@:native("ScInboxGetEmails")
	static function ScInboxGetEmails(offset:Int, limit:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ScEmailMessageClearRecipList")
	static function scEmailMessageClearRecipList():Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("ScGamerdataGetFloat")
	static function scGamerdataGetFloat(name:String, outValue:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("ScInboxGetMessageIsReadAtIndex")
	static function scInboxGetMessageIsReadAtIndex(msgIndex:Int):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("ScGamerdataGetInt")
	static function scGamerdataGetInt(name:String, outValue:Dynamic):Bool;

	/**
	 * ```
	 * Returns the nickname of the logged-in Rockstar Social Club account.
	 * ```
	 */
	@:native("ScGetNickname")
	static function ScGetNickname():String;

	/**
	 * 
	 */
	@:native("ScInboxGetTotalNumMessages")
	static function scInboxGetTotalNumMessages():Int;

	/**
	 * 
	 */
	@:native("ScInboxMessageGetBountyData")
	static function ScInboxMessageGetBountyData(index:Int, outData:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("ScInboxMessageGetString")
	static function ScInboxMessageGetString(p0:Int):String;

	/**
	 * 
	 */
	@:native("ScInboxMessageGetDataBool")
	static function ScInboxMessageGetDataBool(p0:Int, p1:String):Bool;

	/**
	 * 
	 */
	@:native("ScInboxGetMessageTypeAtIndex")
	static function scInboxGetMessageTypeAtIndex(msgIndex:Int):Int;

	/**
	 * 
	 */
	@:native("ScInboxMessageGetDataInt")
	static function scInboxMessageGetDataInt(p0:Int, context:String, out:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("ScInboxMessageGetUgcdata")
	static function scInboxMessageGetUgcdata(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("ScInboxMessageDoApply")
	static function scInboxMessageDoApply(p0:Int):Bool;

	/**
	 * 
	 */
	@:native("ScInboxMessagePop")
	static function ScInboxMessagePop(p0:Int):Bool;

	/**
	 * 
	 */
	@:native("ScInboxMessageGetDataString")
	static function scInboxMessageGetDataString(p0:Int, context:String, out:String):Bool;

	/**
	 * Social Club native to add license plate for the user
	 */
	@:native("ScLicenseplateAdd")
	static function scLicenseplateAdd(plateText:String, plateData:String, tokenOut:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("ScInboxMessageSendBountyPresenceEvent")
	static function ScInboxMessageSendBountyPresenceEvent(data:String):Bool;

	/**
	 * 
	 */
	@:native("ScInboxMessagePushGamerToEventRecipList")
	static function ScInboxMessagePushGamerToEventRecipList(networkHandle:Dynamic):Dynamic;

	/**
	 * Returns true if the add license plate text request is still pending.
	 */
	@:native("ScLicenseplateGetAddIsPending")
	static function scLicenseplateGetAddIsPending(token:Int):Bool;

	/**
	 * Gets number of plates in the response of the get license plates request.
	 * Range: \[0, count) can be used as second argument to \_0x1D4446A62D35B0D0 and \_0x2E89990DDFF670C3
	 */
	@:native("ScLicenseplateGetCount")
	static function scLicenseplateGetCount(token:Int):Int;

	/**
	 * 
	 */
	@:native("ScInboxMessageSendUgcStatUpdateEvent")
	static function ScInboxMessageSendUgcStatUpdateEvent(data:String):Dynamic;

	/**
	 * Gets license plate data related to the get license plate info request
	 */
	@:native("ScLicenseplateGetPlateData")
	static function scLicenseplateGetPlateData(token:Int, plateIndex:Int):String;

	/**
	 * Gets license plate text related to the get license plate info request
	 */
	@:native("ScLicenseplateGetPlate")
	static function scLicenseplateGetPlate(token:Int, plateIndex:Int):String;

	/**
	 * Returns a status for adding the license plate
	 */
	@:native("ScLicenseplateGetAddStatus")
	static function scLicenseplateGetAddStatus(token:Int):Int;

	/**
	 * 
	 */
	@:native("ScPresenceAttrSetInt")
	static function scPresenceAttrSetInt(attrHash:Int, value:Int):Bool;

	/**
	 * Checks if the "is valid license plate" request is still pending.
	 */
	@:native("ScLicenseplateGetIsvalidIsPending")
	static function scLicenseplateGetIsvalidIsPending(token:Int):Bool;

	/**
	 * Gets the status of the is valid license plate request
	 */
	@:native("ScLicenseplateGetIsvalidStatus")
	static function scLicenseplateGetIsvalidStatus(token:Int):Int;

	/**
	 * Changes the license plate for the user (no insert).
	 */
	@:native("ScLicenseplateSetPlateData")
	static function scLicenseplateSetPlateData(oldPlateText:String, newPlateText:String, plateData:String):Bool;

	/**
	 * Starts a task to check an entered string for profanity on the ROS/Social Club services.
	 * 
	 * See also: [`SC_PROFANITY_GET_CHECK_IS_VALID`](#\_0x1753344C770358AE) and [`SC_PROFANITY_GET_CHECK_IS_PENDING`](#\_0x82E4A58BABC15AE7).
	 */
	@:native("ScProfanityCheckString")
	static function scProfanityCheckString(string:String, token:Dynamic):Bool;

	/**
	 * SC native to start a request for if license plate text is valid
	 */
	@:native("ScLicenseplateIsvalid")
	static function scLicenseplateIsvalid(plateText:String, tokenOut:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("ScProfanityCheckUgcString")
	static function ScProfanityCheckUgcString(string:String, token:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("ScProfanityGetStringPassed")
	static function scProfanityGetStringPassed(token:Int):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * NativeDB Added Parameter 1: Hash attrHash
	 * NativeDB Added Parameter 2: float value
	 * ```
	 */
	@:native("ScPresenceAttrSetFloat")
	static function scPresenceAttrSetFloat():Bool;

	/**
	 * 
	 */
	@:native("ScProfanityGetCheckIsValid")
	static function scProfanityGetCheckIsValid(token:Int):Bool;

	/**
	 * 
	 */
	@:native("ScPresenceAttrSetString")
	static function scPresenceAttrSetString(attrHash:Int, value:String):Bool;

	/**
	 * 
	 */
	@:native("ScProfanityGetCheckIsPending")
	static function scProfanityGetCheckIsPending(token:Int):Bool;

	/**
	 * 
	 */
	@:native("ScProfanityGetStringStatus")
	static function scProfanityGetStringStatus(token:Int):Int;

	/**
	 * 
	 */
	@:native("SetHandleRockstarMessageViaScript")
	static function SetHandleRockstarMessageViaScript(toggle:Bool):Dynamic;

}
