package fivem.client.natives;

@:native("_G")
extern class Socialclub {
	/**
	 * 
	 */
	@:native("_IS_ROCKSTAR_MESSAGE_READY_FOR_SCRIPT")
	static function IsRockstarMessageReadyForScript():Bool;

	/**
	 * 
	 */
	@:native("SC_EMAIL_MESSAGE_PUSH_GAMER_TO_RECIP_LIST")
	static function scEmailMessagePushGamerToRecipList(networkHandle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_ROCKSTAR_MESSAGE_GET_STRING")
	static function RockstarMessageGetString():String;

	/**
	 * ```
	 * Same as HAS_ACHIEVEMENT_BEEN_PASSED
	 * ```
	 */
	@:native("_SC_GET_HAS_ACHIEVEMENT_BEEN_PASSED")
	static function ScGetHasAchievementBeenPassed(achievement:Int):Bool;

	/**
	 * ```
	 * sfink: from scripts:
	 * func_720(socialclub::_0x8416FE4E4629D7D7("bIgnoreCheaterOverride"));
	 * func_719(socialclub::_0x8416FE4E4629D7D7("bIgnoreBadSportOverride"));
	 * ```
	 */
	@:native("SC_GAMERDATA_GET_BOOL")
	static function scGamerdataGetBool(name:String):Bool;

	/**
	 * 
	 */
	@:native("_SC_INBOX_GET_EMAILS")
	static function ScInboxGetEmails(offset:Int, limit:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SC_EMAIL_MESSAGE_CLEAR_RECIP_LIST")
	static function scEmailMessageClearRecipList():Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SC_GAMERDATA_GET_FLOAT")
	static function scGamerdataGetFloat(name:String, outValue:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("SC_INBOX_GET_MESSAGE_IS_READ_AT_INDEX")
	static function scInboxGetMessageIsReadAtIndex(msgIndex:Int):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SC_GAMERDATA_GET_INT")
	static function scGamerdataGetInt(name:String, outValue:Dynamic):Bool;

	/**
	 * ```
	 * Returns the nickname of the logged-in Rockstar Social Club account.
	 * ```
	 */
	@:native("_SC_GET_NICKNAME")
	static function ScGetNickname():String;

	/**
	 * 
	 */
	@:native("SC_INBOX_GET_TOTAL_NUM_MESSAGES")
	static function scInboxGetTotalNumMessages():Int;

	/**
	 * 
	 */
	@:native("_SC_INBOX_MESSAGE_GET_BOUNTY_DATA")
	static function ScInboxMessageGetBountyData(index:Int, outData:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_SC_INBOX_MESSAGE_GET_STRING")
	static function ScInboxMessageGetString(p0:Int):String;

	/**
	 * 
	 */
	@:native("_SC_INBOX_MESSAGE_GET_DATA_BOOL")
	static function ScInboxMessageGetDataBool(p0:Int, p1:String):Bool;

	/**
	 * 
	 */
	@:native("SC_INBOX_GET_MESSAGE_TYPE_AT_INDEX")
	static function scInboxGetMessageTypeAtIndex(msgIndex:Int):Int;

	/**
	 * 
	 */
	@:native("SC_INBOX_MESSAGE_GET_DATA_INT")
	static function scInboxMessageGetDataInt(p0:Int, context:String, out:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("SC_INBOX_MESSAGE_GET_UGCDATA")
	static function scInboxMessageGetUgcdata(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("SC_INBOX_MESSAGE_DO_APPLY")
	static function scInboxMessageDoApply(p0:Int):Bool;

	/**
	 * 
	 */
	@:native("_SC_INBOX_MESSAGE_POP")
	static function ScInboxMessagePop(p0:Int):Bool;

	/**
	 * 
	 */
	@:native("SC_INBOX_MESSAGE_GET_DATA_STRING")
	static function scInboxMessageGetDataString(p0:Int, context:String, out:String):Bool;

	/**
	 * Social Club native to add license plate for the user
	 */
	@:native("SC_LICENSEPLATE_ADD")
	static function scLicenseplateAdd(plateText:String, plateData:String, tokenOut:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_SC_INBOX_MESSAGE_SEND_BOUNTY_PRESENCE_EVENT")
	static function ScInboxMessageSendBountyPresenceEvent(data:String):Bool;

	/**
	 * 
	 */
	@:native("_SC_INBOX_MESSAGE_PUSH_GAMER_TO_EVENT_RECIP_LIST")
	static function ScInboxMessagePushGamerToEventRecipList(networkHandle:Dynamic):Dynamic;

	/**
	 * Returns true if the add license plate text request is still pending.
	 */
	@:native("SC_LICENSEPLATE_GET_ADD_IS_PENDING")
	static function scLicenseplateGetAddIsPending(token:Int):Bool;

	/**
	 * Gets number of plates in the response of the get license plates request.
	 * Range: \[0, count) can be used as second argument to \_0x1D4446A62D35B0D0 and \_0x2E89990DDFF670C3
	 */
	@:native("SC_LICENSEPLATE_GET_COUNT")
	static function scLicenseplateGetCount(token:Int):Int;

	/**
	 * 
	 */
	@:native("_SC_INBOX_MESSAGE_SEND_UGC_STAT_UPDATE_EVENT")
	static function ScInboxMessageSendUgcStatUpdateEvent(data:String):Dynamic;

	/**
	 * Gets license plate data related to the get license plate info request
	 */
	@:native("SC_LICENSEPLATE_GET_PLATE_DATA")
	static function scLicenseplateGetPlateData(token:Int, plateIndex:Int):String;

	/**
	 * Gets license plate text related to the get license plate info request
	 */
	@:native("SC_LICENSEPLATE_GET_PLATE")
	static function scLicenseplateGetPlate(token:Int, plateIndex:Int):String;

	/**
	 * Returns a status for adding the license plate
	 */
	@:native("SC_LICENSEPLATE_GET_ADD_STATUS")
	static function scLicenseplateGetAddStatus(token:Int):Int;

	/**
	 * 
	 */
	@:native("SC_PRESENCE_ATTR_SET_INT")
	static function scPresenceAttrSetInt(attrHash:Int, value:Int):Bool;

	/**
	 * Checks if the "is valid license plate" request is still pending.
	 */
	@:native("SC_LICENSEPLATE_GET_ISVALID_IS_PENDING")
	static function scLicenseplateGetIsvalidIsPending(token:Int):Bool;

	/**
	 * Gets the status of the is valid license plate request
	 */
	@:native("SC_LICENSEPLATE_GET_ISVALID_STATUS")
	static function scLicenseplateGetIsvalidStatus(token:Int):Int;

	/**
	 * Changes the license plate for the user (no insert).
	 */
	@:native("SC_LICENSEPLATE_SET_PLATE_DATA")
	static function scLicenseplateSetPlateData(oldPlateText:String, newPlateText:String, plateData:String):Bool;

	/**
	 * Starts a task to check an entered string for profanity on the ROS/Social Club services.
	 * 
	 * See also: [`SC_PROFANITY_GET_CHECK_IS_VALID`](#\_0x1753344C770358AE) and [`SC_PROFANITY_GET_CHECK_IS_PENDING`](#\_0x82E4A58BABC15AE7).
	 */
	@:native("SC_PROFANITY_CHECK_STRING")
	static function scProfanityCheckString(string:String, token:Dynamic):Bool;

	/**
	 * SC native to start a request for if license plate text is valid
	 */
	@:native("SC_LICENSEPLATE_ISVALID")
	static function scLicenseplateIsvalid(plateText:String, tokenOut:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_SC_PROFANITY_CHECK_UGC_STRING")
	static function ScProfanityCheckUgcString(string:String, token:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("SC_PROFANITY_GET_STRING_PASSED")
	static function scProfanityGetStringPassed(token:Int):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * NativeDB Added Parameter 1: Hash attrHash
	 * NativeDB Added Parameter 2: float value
	 * ```
	 */
	@:native("SC_PRESENCE_ATTR_SET_FLOAT")
	static function scPresenceAttrSetFloat():Bool;

	/**
	 * 
	 */
	@:native("SC_PROFANITY_GET_CHECK_IS_VALID")
	static function scProfanityGetCheckIsValid(token:Int):Bool;

	/**
	 * 
	 */
	@:native("SC_PRESENCE_ATTR_SET_STRING")
	static function scPresenceAttrSetString(attrHash:Int, value:String):Bool;

	/**
	 * 
	 */
	@:native("SC_PROFANITY_GET_CHECK_IS_PENDING")
	static function scProfanityGetCheckIsPending(token:Int):Bool;

	/**
	 * 
	 */
	@:native("SC_PROFANITY_GET_STRING_STATUS")
	static function scProfanityGetStringStatus(token:Int):Int;

	/**
	 * 
	 */
	@:native("_SET_HANDLE_ROCKSTAR_MESSAGE_VIA_SCRIPT")
	static function SetHandleRockstarMessageViaScript(toggle:Bool):Dynamic;

}
