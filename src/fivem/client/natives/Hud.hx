package fivem.client.natives;

@:native("_G")
extern class Hud {
	/**
	 * Adds a rectangular blip for the specified coordinates/area.
	 * 
	 * It is recommended to use [SET_BLIP_ROTATION](#\_0xF87683CDF73C3F6E) and [SET_BLIP_COLOUR](#\_0x03D7FB09E75D6B7E) to make the blip not rotate along with the camera.
	 * 
	 * By default, the blip will show as a *regular* blip with the specified color/sprite if it is outside of the minimap view.
	 * 
	 * Example image:
	 * ![minimap](https://i.imgur.com/qLbXWcQ.png)
	 * ![big map](https://i.imgur.com/0j7O7Rh.png)
	 * 
	 * (Native name is *likely* to actually be ADD_BLIP_FOR_AREA, but due to the usual reasons this can't be confirmed)
	 */
	@:native("AddBlipForArea")
	static function AddBlipForArea(x:Float, y:Float, z:Float, width:Float, height:Float):Dynamic;

	/**
	 * Does stuff like this:\
	 * gyazo.com/7fcb78ea3520e3dbc5b2c0c0f3712617\
	 * Example:\
	 * int GetHash = GET_HASH_KEY("fe_menu_version_corona_lobby");\
	 * ACTIVATE_FRONTEND_MENU(GetHash, 0, -1);\
	 * BOOL p1 is a toggle to define the game in pause.\
	 * int p2 is unknown but -1 always works, not sure why though.\
	 * \[30/03/2017] ins1de :\
	 * the int p2 is actually a component variable. When the pause menu is visible, it opens the tab related to it.\
	 * Example : Function.Call(Hash.ACTIVATE_FRONTEND_MENU,-1171018317, 0, 42);\
	 * Result : Opens the "Online" tab without pausing the menu, with -1 it opens the map.
	 * 
	 * Below is a list of all known Frontend Menu Hashes.
	 * 
	 * *   FE_MENU_VERSION_SP_PAUSE
	 * *   FE_MENU_VERSION_MP_PAUSE
	 * *   FE_MENU_VERSION_CREATOR_PAUSE
	 * *   FE_MENU_VERSION_CUTSCENE_PAUSE
	 * *   FE_MENU_VERSION_SAVEGAME
	 * *   FE_MENU_VERSION_PRE_LOBBY
	 * *   FE_MENU_VERSION_LOBBY
	 * *   FE_MENU_VERSION_MP_CHARACTER_SELECT
	 * *   FE_MENU_VERSION_MP_CHARACTER_CREATION
	 * *   FE_MENU_VERSION_EMPTY
	 * *   FE_MENU_VERSION_EMPTY_NO_BACKGROUND
	 * *   FE_MENU_VERSION_TEXT_SELECTION
	 * *   FE_MENU_VERSION_CORONA
	 * *   FE_MENU_VERSION_CORONA_LOBBY
	 * *   FE_MENU_VERSION_CORONA_JOINED_PLAYERS
	 * *   FE_MENU_VERSION_CORONA_INVITE_PLAYERS
	 * *   FE_MENU_VERSION_CORONA_INVITE_FRIENDS
	 * *   FE_MENU_VERSION_CORONA_INVITE_CREWS
	 * *   FE_MENU_VERSION_CORONA_INVITE_MATCHED_PLAYERS
	 * *   FE_MENU_VERSION_CORONA_INVITE_LAST_JOB_PLAYERS
	 * *   FE_MENU_VERSION_CORONA_RACE
	 * *   FE_MENU_VERSION_CORONA_BETTING
	 * *   FE_MENU_VERSION_JOINING_SCREEN
	 * *   FE_MENU_VERSION_LANDING_MENU
	 * *   FE_MENU_VERSION_LANDING_KEYMAPPING_MENU
	 */
	@:native("ActivateFrontendMenu")
	static function activateFrontendMenu(menuhash:Int, togglePause:Bool, component:Int):Dynamic;

	/**
	 * Creates a blip for the specified coordinates. You can use `SET_BLIP_` natives to change the blip.
	 */
	@:native("AddBlipForCoord")
	static function addBlipForCoord(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * Create a blip with a radius for the specified coordinates (it doesnt create the blip sprite, so you need to use [AddBlipCoords](#\_0xC6F43D0E))
	 * 
	 * Example image:
	 * ![example](https://i.imgur.com/9hQl3DB.png)
	 */
	@:native("AddBlipForRadius")
	static function addBlipForRadius(posX:Float, posY:Float, posZ:Float, radius:Float):Dynamic;

	/**
	 * 
	 */
	@:native("AddNextMessageToPreviousBriefs")
	static function addNextMessageToPreviousBriefs(addToBrief:Bool):Dynamic;

	/**
	 * Adds a float to a text component placeholder, replacing `~1~` in the current text command's text label.
	 * 
	 * ![Example output](https://i.imgur.com/jvuQ0II.png)
	 */
	@:native("AddTextComponentFloat")
	static function addTextComponentFloat(value:Float, decimalPlaces:Int):Dynamic;

	/**
	 * 
	 */
	@:native("AddPointToGpsCustomRoute")
	static function addPointToGpsCustomRoute(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("AddTextComponentSubstringBlipName")
	static function addTextComponentSubstringBlipName(blip:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("AddBlipForPickup")
	static function addBlipForPickup(pickup:Dynamic):Dynamic;

	/**
	 * ```
	 * p1 was always -1
	 * ```
	 */
	@:native("AddTextComponentSubstringPhoneNumber")
	static function addTextComponentSubstringPhoneNumber(p0:String, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("AddTextComponentSubstringTextLabel")
	static function addTextComponentSubstringTextLabel(labelName:String):Dynamic;

	/**
	 * 
	 */
	@:native("AddTextComponentInteger")
	static function addTextComponentInteger(value:Int):Dynamic;

	/**
	 * Create a blip that by default is red (enemy), you can use [SET_BLIP_AS_FRIENDLY](#\_0xC6F43D0E) to make it blue (friend).\
	 * Can be used for objects, vehicles and peds.
	 * 
	 * Example of enemy:
	 * ![enemy](https://i.imgur.com/fl78svv.png)
	 * Example of friend:
	 * ![friend](https://i.imgur.com/Q16ho5d.png)
	 */
	@:native("AddBlipForEntity")
	static function addBlipForEntity(entity:Dynamic):Dynamic;

	/**
	 * ```
	 * Adds a timer (e.g. "00:00:00:000"). The appearance of the timer depends on the flags, which needs more research.  
	 * ```
	 */
	@:native("AddTextComponentSubstringTime")
	static function addTextComponentSubstringTime(timestamp:Int, flags:Int):Dynamic;

	/**
	 * 
	 */
	@:native("AddTextComponentFormattedInteger")
	static function addTextComponentFormattedInteger(value:Int, commaSeparated:Bool):Dynamic;

	/**
	 * ```
	 * clears a print text command with this text  
	 * ```
	 */
	@:native("BeginTextCommandClearPrint")
	static function beginTextCommandClearPrint(text:String):Dynamic;

	/**
	 * 
	 */
	@:native("AddPointToGpsMultiRoute")
	static function addPointToGpsMultiRoute(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * Adds an arbitrary string as a text component placeholder, replacing `~a~` in the current text command's text label.
	 * 
	 * See the documentation on text formatting for more information.
	 */
	@:native("AddTextComponentSubstringPlayerName")
	static function addTextComponentSubstringPlayerName(text:String):Dynamic;

	/**
	 * ```
	 * It adds the localized text of the specified GXT entry name. Eg. if the argument is GET_HASH_KEY("ES_HELP"), adds "Continue". Just uses a text labels hash key  
	 * ```
	 */
	@:native("AddTextComponentSubstringTextLabelHashKey")
	static function addTextComponentSubstringTextLabelHashKey(gxtEntryHash:Int):Dynamic;

	/**
	 * Certain characters like `<` will have to be escaped using html entities (e.g. `&lt;`), otherwise the text wont display properly.
	 */
	@:native("AddTextComponentSubstringKeyboardDisplay")
	static function addTextComponentSubstringKeyboardDisplay(string:String):Dynamic;

	/**
	 * 
	 */
	@:native("AllowSonarBlips")
	static function allowSonarBlips(toggle:Bool):Dynamic;

	/**
	 * ```
	 * This native (along with 0x5F68520888E69014 and 0x6C188BE134E074AA) do not actually filter anything. They simply add the provided text (as of 944)  
	 * ```
	 */
	@:native("AddTextComponentSubstringWebsite")
	static function addTextComponentSubstringWebsite(website:String):Dynamic;

	/**
	 * ```
	 * Initializes the text entry for the the text next to a loading prompt. All natives for for building UI texts can be used here  
	 * BEGIN_TEXT_COMMAND_PRINT  
	 * e.g  
	 * void StartLoadingMessage(char *text, int spinnerType = 3)  
	 * 	{  
	 * _SET_LOADING_PROMPT_TEXT_ENTRY("STRING");  
	 * ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	 * _SHOW_LOADING_PROMPT(spinnerType);  
	 * 	}  
	 * / *OR* /  
	 * 	void ShowLoadingMessage(char *text, int spinnerType = 3, int timeMs = 10000)  
	 * 	{  
	 * _SET_LOADING_PROMPT_TEXT_ENTRY("STRING");  
	 * ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	 * _SHOW_LOADING_PROMPT(spinnerType);  
	 * WAIT(timeMs);  
	 * _REMOVE_LOADING_PROMPT();  
	 * 	}  
	 * These are some localized strings used in the loading spinner.  
	 * "PM_WAIT"                   = Please Wait  
	 * "CELEB_WPLYRS"              = Waiting For Players.  
	 * "CELL_SPINNER2"             = Scanning storage.  
	 * "ERROR_CHECKYACHTNAME" = Registering your yacht's name. Please wait.  
	 * "ERROR_CHECKPROFANITY"   = Checking your text for profanity. Please wait.  
	 * "FM_COR_AUTOD"                        = Just spinner no text  
	 * "FM_IHELP_WAT2"                        = Waiting for other players  
	 * "FM_JIP_WAITO"                            = Game options are being set  
	 * "FMMC_DOWNLOAD"                    = Downloading  
	 * "FMMC_PLYLOAD"                         = Loading  
	 * "FMMC_STARTTRAN"                    = Launching session  
	 * "HUD_QUITTING"                           =  Quiting session  
	 * "KILL_STRIP_IDM"                         = Waiting for to accept  
	 * "MP_SPINLOADING"                      = Loading  
	 * ```
	 */
	@:native("BeginTextCommandBusyspinnerOn")
	static function beginTextCommandBusyspinnerOn(string:String):Dynamic;

	/**
	 * ```
	 * The following were found in the decompiled script files:  
	 * STRING, TWOSTRINGS, NUMBER, PERCENTAGE, FO_TWO_NUM, ESMINDOLLA, ESDOLLA, MTPHPER_XPNO, AHD_DIST, CMOD_STAT_0, CMOD_STAT_1, CMOD_STAT_2, CMOD_STAT_3, DFLT_MNU_OPT, F3A_TRAFDEST, ES_HELP_SOC3  
	 * ESDOLLA   
	 * ESMINDOLLA - cash (negative)  
	 * Used to be known as _SET_TEXT_ENTRY  
	 * ```
	 */
	@:native("BeginTextCommandDisplayText")
	static function beginTextCommandDisplayText(text:String):Dynamic;

	/**
	 * Allows opening the pause menu this frame, when the player is dead.
	 */
	@:native("AllowPauseMenuWhenDeadThisFrame")
	static function AllowPauseMenuWhenDeadThisFrame():Dynamic;

	/**
	 * ```
	 * BEGIN_TEXT_COMMAND_*
	 * Example:
	 * _BEGIN_TEXT_COMMAND_GET_WIDTH("NUMBER");
	 * ADD_TEXT_COMPONENT_FLOAT(69.420f, 2);
	 * float width = _END_TEXT_COMMAND_GET_WIDTH(1);
	 * ```
	 */
	@:native("BeginTextCommandGetWidth")
	static function BeginTextCommandGetWidth(text:String):Dynamic;

	/**
	 * ```
	 * nothin doin.   
	 * BOOL Message(char* text)  
	 * 	{  
	 * BEGIN_TEXT_COMMAND_IS_MESSAGE_DISPLAYED("STRING");  
	 * ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	 * return END_TEXT_COMMAND_IS_MESSAGE_DISPLAYED();  
	 * 	}  
	 * ```
	 */
	@:native("BeginTextCommandIsMessageDisplayed")
	static function beginTextCommandIsMessageDisplayed(text:String):Dynamic;

	/**
	 * 
	 */
	@:native("BeginTextCommandIsThisHelpMessageBeingDisplayed")
	static function beginTextCommandIsThisHelpMessageBeingDisplayed(labelName:String):Dynamic;

	/**
	 * ```
	 * Used to be known as _SET_TEXT_COMPONENT_FORMAT  
	 * ```
	 */
	@:native("BeginTextCommandDisplayHelp")
	static function beginTextCommandDisplayHelp(inputType:String):Dynamic;

	/**
	 * ```
	 * get's line count  
	 * int GetLineCount(char *text, float x, float y)  
	 * 	{  
	 * _BEGIN_TEXT_COMMAND_LINE_COUNT("STRING");  
	 *                 ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	 * return _END_TEXT_COMMAND_GET_LINE_COUNT(x, y);  
	 * 	}  
	 * ```
	 */
	@:native("BeginTextCommandLineCount")
	static function BeginTextCommandLineCount(entry:String):Dynamic;

	/**
	 * ```
	 * Used to be known as _SET_TEXT_ENTRY_2  
	 * void ShowSubtitle(char *text)  
	 * {  
	 * 	BEGIN_TEXT_COMMAND_PRINT("STRING");  
	 * 	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	 * 	END_TEXT_COMMAND_PRINT(2000, 1);  
	 * }  
	 * ```
	 */
	@:native("BeginTextCommandPrint")
	static function beginTextCommandPrint(GxtEntry:String):Dynamic;

	/**
	 * 
	 */
	@:native("BeginTextCommandOverrideButtonText")
	static function beginTextCommandOverrideButtonText(gxtEntry:String):Dynamic;

	/**
	 * 
	 */
	@:native("BusyspinnerIsOn")
	static function busyspinnerIsOn():Bool;

	/**
	 * Declares the entry type of a notification, for example "STRING".
	 * int ShowNotification(char \*text)
	 * {
	 * BEGIN_TEXT_COMMAND_THEFEED_POST("STRING");
	 * ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
	 * return \_DRAW_NOTIFICATION(1, 1);
	 * }
	 */
	@:native("BeginTextCommandThefeedPost")
	static function beginTextCommandThefeedPost(text:String):Dynamic;

	/**
	 * 
	 */
	@:native("BeginTextCommandObjective")
	static function BeginTextCommandObjective(p0:String):Dynamic;

	/**
	 * Starts a text command to change the name of a blip displayed in the pause menu.
	 * 
	 * This should be paired with [`END_TEXT_COMMAND_SET_BLIP_NAME`](#\_0xBC38B49BCB83BC9B), once adding all required text components.
	 */
	@:native("BeginTextCommandSetBlipName")
	static function beginTextCommandSetBlipName(textLabel:String):Dynamic;

	/**
	 * 
	 */
	@:native("BusyspinnerIsDisplaying")
	static function busyspinnerIsDisplaying():Bool;

	/**
	 * ```
	 * Displays cash change notifications on HUD.  
	 * ```
	 */
	@:native("ChangeFakeMpCash")
	static function changeFakeMpCash(cash:Int, bank:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ClearAdditionalText")
	static function clearAdditionalText(p0:Int, p1:Bool):Dynamic;

	/**
	 * Clears all active blip routes that have been set with [`SetBlipRoute`](#\_0x3E160C90).
	 */
	@:native("ClearAllBlipRoutes")
	static function ClearAllBlipRoutes():Dynamic;

	/**
	 * 
	 */
	@:native("ClearDynamicPauseMenuErrorMessage")
	static function clearDynamicPauseMenuErrorMessage():Dynamic;

	/**
	 * ```
	 * Removes the loading prompt at the bottom right of the screen.
	 * ```
	 */
	@:native("BusyspinnerOff")
	static function busyspinnerOff():Dynamic;

	/**
	 * 
	 */
	@:native("ClearBrief")
	static function clearBrief():Dynamic;

	/**
	 * 
	 */
	@:native("ClearAllHelpMessages")
	static function clearAllHelpMessages():Dynamic;

	/**
	 * 
	 */
	@:native("ClearGpsCustomRoute")
	static function clearGpsCustomRoute():Dynamic;

	/**
	 * 
	 */
	@:native("ClearFloatingHelp")
	static function clearFloatingHelp(hudIndex:Int, p1:Bool):Dynamic;

	/**
	 * Does the same as [`SET_GPS_MULTI_ROUTE_RENDER(false)`](#\_0x3DDA37128DD1ACA8)
	 */
	@:native("ClearGpsMultiRoute")
	static function clearGpsMultiRoute():Dynamic;

	/**
	 * ```
	 * Clears the GPS flags. Only the script that originally called SET_GPS_FLAGS can clear them.  
	 * Doesn't seem like the flags are actually read by the game at all.  
	 * ```
	 */
	@:native("ClearGpsFlags")
	static function clearGpsFlags():Dynamic;

	/**
	 * 
	 */
	@:native("ClearGpsPlayerWaypoint")
	static function clearGpsPlayerWaypoint():Dynamic;

	/**
	 * 
	 */
	@:native("ClearPedInPauseMenu")
	static function clearPedInPauseMenu():Dynamic;

	/**
	 * ```
	 * Does the same as SET_RACE_TRACK_RENDER(false);
	 * ```
	 */
	@:native("ClearGpsRaceTrack")
	static function clearGpsRaceTrack():Dynamic;

	/**
	 * 
	 */
	@:native("ClearHelp")
	static function clearHelp(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ClearPrints")
	static function clearPrints():Dynamic;

	/**
	 * **This native does absolutely nothing, just a nullsub**
	 */
	@:native("ClearReminderMessage")
	static function clearReminderMessage():Dynamic;

	/**
	 * 
	 */
	@:native("ClearRaceGalleryBlips")
	static function ClearRaceGalleryBlips():Dynamic;

	/**
	 * 
	 */
	@:native("ClearSmallPrints")
	static function clearSmallPrints():Dynamic;

	/**
	 * ```
	 * p0: found arguments in the b617d scripts: pastebin.com/X5akCN7z  
	 * ```
	 */
	@:native("ClearThisPrint")
	static function clearThisPrint(p0:String):Dynamic;

	/**
	 * 
	 */
	@:native("CloseMultiplayerChat")
	static function CloseMultiplayerChat():Dynamic;

	/**
	 * 
	 */
	@:native("CloseSocialClubMenu")
	static function closeSocialClubMenu():Dynamic;

	/**
	 * 
	 */
	@:native("DeleteWaypoint")
	static function DeleteWaypoint():Dynamic;

	/**
	 * 
	 */
	@:native("DisplayAreaName")
	static function displayAreaName(toggle:Bool):Dynamic;

	/**
	 * Shows a help message for one frame.
	 * Do note that this message doesn't get added to the Pause Menu info section.
	 */
	@:native("DisplayHelpTextThisFrame")
	static function displayHelpTextThisFrame(pTextLabel:String, bCurvedWindow:Bool):Dynamic;

	/**
	 * Creates a gamer tag for the specified local player ID, automatically attached to the player's current ped.
	 * The created gamer tag will have the same ID as the player. You can use [IS_MP_GAMER_TAG_ACTIVE](#\_0x4E929E7A5796FD26) to check if a gamer tag already exists for a player.
	 * After the gamer tag is created, all components will be set as invisible. Use [SET_MP_GAMER_TAG_VISIBILITY](#\_0x63BB75ABEDC1F6A0) to change the visibility of individual components or [\_SET_MP_GAMER_TAG_VISIBILITY_ALL](#\_0xEE76FF7E6A0166B0) to set all of them at once.
	 * 
	 * To create a gamer tag for a ped that is not a player, see [CREATE_FAKE_MP_GAMER_TAG](#\_0xBFEFE3321A3F5015).
	 */
	@:native("CreateMpGamerTagWithCrewColor")
	static function createMpGamerTagWithCrewColor(player:Dynamic, username:String, crewIsPrivate:Bool, crewIsRockstar:Bool, crewName:String, crewRank:Int, crewR:Int, crewG:Int, crewB:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DisableFrontendThisFrame")
	static function disableFrontendThisFrame():Dynamic;

	/**
	 * ```
	 * If Minimap / Radar should be displayed.
	 * ```
	 */
	@:native("DisplayRadar")
	static function displayRadar(toggle:Bool):Dynamic;

	/**
	 * If true is passed, the player won't be able to open the multiplayer chat
	 */
	@:native("DisableMultiplayerChat")
	static function DisableMultiplayerChat(disable:Bool):Dynamic;

	/**
	 * As per the name, this native creates a "fake" gamer tag that is attached to a specific ped.
	 * Unlike "real" gamer tags, you cannot set the crew colour of these gamer tags.
	 * 
	 * To create gamer tags for actual players and for more gamer tag information, see [CREATE_MP_GAMER_TAG_WITH_CREW_COLOR](#\_0x6DD05E9D83EFA4C9).
	 */
	@:native("CreateFakeMpGamerTag")
	static function createFakeMpGamerTag(ped:Dynamic, username:String, crewIsPrivate:Bool, crewIsRockstar:Bool, crewName:String, crewRank:Int):Int;

	/**
	 * ```
	 * "DISPLAY_CASH(true);" makes the cash amount render on the screen when appropriate  
	 * "DISPLAY_CASH(false);" disables cash amount rendering  
	 * ```
	 */
	@:native("DisplayCash")
	static function displayCash(display:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DoesBlipHaveGpsRoute")
	static function doesBlipHaveGpsRoute(blip:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("DisplayAmmoThisFrame")
	static function displayAmmoThisFrame(display:Bool):Dynamic;

	/**
	 * ```
	 * When calling this, the current frame will have the players "arrow icon" be focused on the dead center of the radar.
	 * ```
	 */
	@:native("DontTiltMinimapThisFrame")
	static function dontTiltMinimapThisFrame():Dynamic;

	/**
	 * 
	 */
	@:native("DoesBlipExist")
	static function doesBlipExist(blip:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("DisplayHudWhenPausedThisFrame")
	static function displayHudWhenPausedThisFrame():Dynamic;

	/**
	 * ```
	 * If Hud should be displayed  
	 * ```
	 */
	@:native("DisplayHud")
	static function displayHud(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("EndTextCommandDisplayHelp")
	static function endTextCommandDisplayHelp(shape:Int, loop:Bool, beep:Bool, duration:Int):Dynamic;

	/**
	 * ```
	 * Returns whether the ped's blip is controlled by the game.   
	 * It's the default blip you can see on enemies during freeroam in singleplayer (the one that fades out quickly).  
	 * ```
	 */
	@:native("DoesPedHaveAiBlip")
	static function doesPedHaveAiBlip(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("EndTextCommandClearPrint")
	static function endTextCommandClearPrint():Dynamic;

	/**
	 * Enables drawing some hud components, such as help labels, this frame, when the player is dead.
	 */
	@:native("DisplayHudWhenDeadThisFrame")
	static function DisplayHudWhenDeadThisFrame():Dynamic;

	/**
	 * Toggles whether or not name labels are shown on the expanded minimap next to player blips, like in GTA:O.
	 * Doesn't need to be called every frame.
	 * Preview: https://i.imgur.com/DfqKWfJ.png
	 * Make sure to call SET_BLIP_CATEGORY with index 7 for this to work on the desired blip.
	 */
	@:native("DisplayPlayerNameTagsOnBlips")
	static function displayPlayerNameTagsOnBlips(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Displays the crosshair for this frame.  
	 * ```
	 */
	@:native("DisplaySniperScopeThisFrame")
	static function displaySniperScopeThisFrame():Dynamic;

	/**
	 * 
	 */
	@:native("DoesTextBlockExist")
	static function doesTextBlockExist(gxt:String):Bool;

	/**
	 * ```
	 * After applying the properties to the text (See UI::SET_TEXT_), this will draw the text in the applied position. Also 0.0f < x, y < 1.0f, percentage of the axis.  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 3: int p2
	 * ```
	 */
	@:native("EndTextCommandDisplayText")
	static function endTextCommandDisplayText(x:Float, y:Float):Dynamic;

	/**
	 * ```
	 * Checks if the passed gxt name exists in the game files.  
	 * ```
	 */
	@:native("DoesTextLabelExist")
	static function doesTextLabelExist(gxt:String):Bool;

	/**
	 * 
	 */
	@:native("EndTextCommandIsMessageDisplayed")
	static function endTextCommandIsMessageDisplayed():Bool;

	/**
	 * Returns whether a specific help message is being displayed or not.
	 * 
	 * ```cpp
	 * enum HudIndexes {
	 *     HELP_TEXT = 0,
	 *     FLOATING_HELP_TEXT_1 = 1,
	 *     FLOATING_HELP_TEXT_2 = 2,
	 * }
	 * ```
	 */
	@:native("EndTextCommandIsThisHelpMessageBeingDisplayed")
	static function endTextCommandIsThisHelpMessageBeingDisplayed(hudIndex:Int):Bool;

	/**
	 * ```
	 * END_TEXT_COMMAND_*
	 * In scripts font most of the time is passed as 1.
	 * Use _BEGIN_TEXT_GET_COMMAND_GET_WIDTH
	 * param is not font from what i've tested
	 * ```
	 */
	@:native("EndTextCommandGetWidth")
	static function EndTextCommandGetWidth(p0:Bool):Float;

	/**
	 * ```cpp
	 * enum eBusySpinnerType
	 * {
	 * 	BUSY_SPINNER_LEFT = 0,
	 * 	BUSY_SPINNER_LEFT_2 = 1,
	 * 	BUSY_SPINNER_LEFT_3 = 2,
	 * 	BUSY_SPINNER_SAVE = 3,
	 * 	BUSY_SPINNER_RIGHT = 4,
	 * };
	 * ```
	 */
	@:native("EndTextCommandBusyspinnerOn")
	static function endTextCommandBusyspinnerOn(busySpinnerType:Int):Dynamic;

	/**
	 * Finalizes a text command started with [`BEGIN_TEXT_COMMAND_SET_BLIP_NAME`](#\_0xF9113A30DE5C6670), setting the name
	 * of the specified blip.
	 */
	@:native("EndTextCommandSetBlipName")
	static function endTextCommandSetBlipName(blip:Dynamic):Dynamic;

	/**
	 * ```
	 * END_TEXT_COMMAND_*
	 * Determines how many lines the text string will use when drawn on screen.
	 * Must use 0x521FB041D93DD0E4 for setting up
	 * ```
	 */
	@:native("EndTextCommandLineCount")
	static function EndTextCommandLineCount(x:Float, y:Float):Int;

	/**
	 * 
	 */
	@:native("EndTextCommandObjective")
	static function EndTextCommandObjective(p0:Bool):Dynamic;

	/**
	 * ```
	 * This function and the one below it are for after you receive an invite, not sending it.  
	 * p0 = 1 or 0  
	 * nothin doin.   
	 * int invite(Player player)  
	 * 	{  
	 * int iVar2, iVar3;  
	 * networkHandleMgr handle;  
	 * NETWORK_HANDLE_FROM_PLAYER(player, &handle.netHandle, 13);  
	 * networkClanMgr clan;  
	 * char *playerName = GET_PLAYER_NAME(player);  
	 * _SET_NOTIFICATION_TEXT_ENTRY("STRING");  
	 * _SET_NOTIFACTION_COLOR_NEXT(0);  
	 * ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(playerName);  
	 * if (NETWORK_CLAN_PLAYER_GET_DESC(&clan, 35, &handle.netHandle))  
	 * {  
	 * 	iVar2 = 0;  
	 * 	if (ARE_STRINGS_EQUAL(clan.unk22, "Leader") && clan.unk30 == 0)  
	 * 	{  
	 * iVar2 = 1;  
	 * 	}  
	 * 	if (clan.unk21 > 0)  
	 * 	{  
	 * iVar3 = 0;  
	 * 	}  
	 * 	else  
	 * 	{  
	 * iVar3 = 1;  
	 * 	}  
	 * 	BOOL unused = _0x54E79E9C(&clan.clanHandle, 35);  
	 * 	return _DRAW_NOTIFICATION_APARTMENT_INVITE(iVar3, 0 / *unused* /, &clan.unk17, clan.unk30, iVar2, 0, clan.clanHandle, 0, 0, 0);  
	 * }  
	 * 	}  
	 * ```
	 */
	@:native("EndTextCommandThefeedPostCrewtag")
	static function endTextCommandThefeedPostCrewtag(crewTypeIsPrivate:Bool, crewTagContainsRockstar:Bool, crewTag:Dynamic, rank:Int, hasFounderStatus:Bool, isImportant:Bool, clanHandle:Int, r:Int, g:Int, b:Int):Int;

	/**
	 * 
	 */
	@:native("EndTextCommandOverrideButtonText")
	static function endTextCommandOverrideButtonText(buttonIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("EndTextCommandThefeedPostCrewRankup")
	static function endTextCommandThefeedPostCrewRankup(chTitle:String, clanTxd:String, clanTxn:String, isImportant:Bool, showSubtitle:Bool):Int;

	/**
	 * ```
	 * Draws the subtitle at middle center of the screen.  
	 * int duration = time in milliseconds to show text on screen before disappearing  
	 * drawImmediately = If true, the text will be drawn immediately, if false, the text will be drawn after the previous subtitle has finished  
	 * Used to be known as _DRAW_SUBTITLE_TIMED  
	 * ```
	 */
	@:native("EndTextCommandPrint")
	static function endTextCommandPrint(duration:Int, drawImmediately:Bool):Dynamic;

	/**
	 * Example, only occurrence in the scripts:
	 * 
	 * ```
	 * v_8 = UI::END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_TU("CHAR_SOCIAL_CLUB", "CHAR_SOCIAL_CLUB", 0, 0, &v_9, "", a_5);
	 * ```
	 * 
	 * Example result:
	 * ![](https://i.imgur.com/YrN4Bcm.png)
	 */
	@:native("EndTextCommandThefeedPostMessagetextTu")
	static function endTextCommandThefeedPostMessagetextTu(picTxd:String, picTxn:String, flash:Bool, iconType:Int, nameStr:String, subtitleStr:String, durationMultiplier:Float):Int;

	/**
	 * ```
	 * p0 = 1 or 0  
	 * crashes my game...  
	 * this is for sending invites to network players - jobs/apartment/ect...   
	 * return notification handle  
	 * int invite(Player player)  
	 * 	{  
	 * networkHandleMgr netHandle;  
	 * networkClanMgr clan;  
	 * char *playerName = GET_PLAYER_NAME(player);  
	 * _SET_NOTIFICATION_TEXT_ENTRY("STRING");  
	 * _SET_NOTIFACTION_COLOR_NEXT(1);  
	 * ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(playerName);  
	 * NETWORK_HANDLE_FROM_PLAYER(player, &netHandle.netHandle, 13);  
	 * if (NETWORK_CLAN_PLAYER_IS_ACTIVE(&netHandle.netHandle))  
	 * {  
	 * 	NETWORK_CLAN_PLAYER_GET_DESC(&clan.clanHandle, 35, &netHandle.netHandle);  
	 * 	_DRAW_NOTIFICATION_CLAN_INVITE(0, _0x54E79E9C(&clan.clanHandle, 35), &clan.unk17, clan.isLeader, 0, 0, clan.clanHandle, playerName, 0, 0, 0);  
	 * }  
	 * 	}  
	 * ```
	 */
	@:native("EndTextCommandThefeedPostCrewtagWithGameName")
	static function endTextCommandThefeedPostCrewtagWithGameName(crewTypeIsPrivate:Bool, crewTagContainsRockstar:Bool, crewTag:Dynamic, rank:Int, isLeader:Bool, isImportant:Bool, clanHandle:Int, gamerStr:String, r:Int, g:Int, b:Int):Int;

	/**
	 * This function can show pictures of every texture that can be requested by REQUEST_STREAMED_TEXTURE_DICT.
	 * Needs more research.
	 * Only one type of usage in the scripts:
	 * HUD::\_C6F580E4C94926AC("CHAR_ACTING_UP", "CHAR_ACTING_UP", 0, 0, "DI_FEED_CHAR", a\_0);
	 */
	@:native("EndTextCommandThefeedPostMessagetextGxtEntry")
	static function EndTextCommandThefeedPostMessagetextGxtEntry(txdName:String, textureName:String, flash:Bool, iconType:Int, sender:String, subject:String):Int;

	/**
	 * Shows an "award" notification above the minimap, lua example result:
	 * 
	 * ![](https://i.imgur.com/e2DNaKX.png)
	 * 
	 * Old description:
	 * 
	 * ```
	 * Example:  
	 * UI::_SET_NOTIFICATION_TEXT_ENTRY("HUNT");  
	 * UI::_0xAA295B6F28BD587D("Hunting", "Hunting_Gold_128", 0, 109, "HUD_MED_UNLKED");  
	 * ```
	 */
	@:native("EndTextCommandThefeedPostAward")
	static function endTextCommandThefeedPostAward(textureDict:String, textureName:String, rpBonus:Int, colorOverlay:Int, titleLabel:String):Int;

	/**
	 * ```
	 * returns a notification handle, prints out a notification like below:
	 * type range: 0 - 2
	 * if you set type to 1, button accepts "~INPUT_SOMETHING~"
	 * example:
	 * HUD::_0xDD6CB2CCE7C2735C(1, "~INPUT_TALK~", "Who you trynna get crazy with, ese? Don't you know I'm LOCO?!");
	 * - imgur.com/UPy0Ial
	 * Examples from the scripts:
	 * l_D1[1/ *1* /]=HUD::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING~","");
	 * l_D1[2/ *1* /]=HUD::_DD6CB2CCE7C2735C(1,"~INPUT_SAVE_REPLAY_CLIP~","");
	 * l_D1[1/ *1* /]=HUD::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING~","");
	 * l_D1[2/ *1* /]=HUD::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING_SECONDARY~","");
	 * ```
	 */
	@:native("EndTextCommandThefeedPostReplayInput")
	static function EndTextCommandThefeedPostReplayInput(type:Int, button:String, text:String):Int;

	/**
	 * 
	 */
	@:native("EndTextCommandThefeedPostMpticker")
	static function endTextCommandThefeedPostMpticker(blink:Bool, bHasTokens:Bool):Int;

	/**
	 * ```
	 * List of picNames pastebin.com/XdpJVbHz  
	 * flash is a bool for fading in.  
	 * iconTypes:  
	 * 1 : Chat Box  
	 * 2 : Email  
	 * 3 : Add Friend Request  
	 * 4 : Nothing  
	 * 5 : Nothing  
	 * 6 : Nothing  
	 * 7 : Right Jumping Arrow  
	 * 8 : RP Icon  
	 * 9 : $ Icon  
	 * "sender" is the very top header. This can be any old string.  
	 * "subject" is the header under the sender.  
	 * "duration" is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.  
	 * "clanTag" shows a crew tag in the "sender" header, after the text. You need to use 3 underscores as padding. Maximum length of this field seems to be 7. (e.g. "MK" becomes "___MK", "ACE" becomes "___ACE", etc.)  
	 * ```
	 */
	@:native("EndTextCommandThefeedPostMessagetextWithCrewTag")
	static function endTextCommandThefeedPostMessagetextWithCrewTag(picTxd:String, picTxn:String, flash:Bool, iconType:Int, nameStr:String, subtitleStr:String, duration:Float, crewPackedStr:String):Int;

	/**
	 * Example output preview:
	 * 
	 * ![](https://i.imgur.com/TJvqkYq.png)
	 */
	@:native("EndTextCommandThefeedPostTicker")
	static function endTextCommandThefeedPostTicker(isImportant:Bool, bHasTokens:Bool):Int;

	/**
	 * Sets some extra options for a notification. It adds an image (or icon type) and sets a notification title (sender) and subtitle (subject).
	 * 
	 * Texture dictionary and texture name parameters are usually the same exact value.
	 * 
	 * Example result:
	 * 
	 * ![](https://i.imgur.com/LviutDl.png)
	 * 
	 * Old description with list of possible icons and texture names:
	 * 
	 * ```
	 * List of picNames: pastebin.com/XdpJVbHz  
	 * flash is a bool for fading in.  
	 * iconTypes:  
	 * 1 : Chat Box  
	 * 2 : Email  
	 * 3 : Add Friend Request  
	 * 4 : Nothing  
	 * 5 : Nothing  
	 * 6 : Nothing  
	 * 7 : Right Jumping Arrow  
	 * 8 : RP Icon  
	 * 9 : $ Icon  
	 * "sender" is the very top header. This can be any old string.  
	 * "subject" is the header under the sender.  
	 * ```
	 */
	@:native("EndTextCommandThefeedPostMessagetext")
	static function endTextCommandThefeedPostMessagetext(textureDict:String, textureName:String, flash:Bool, iconType:Int, sender:String, subject:String):Int;

	/**
	 * ```
	 * returns a notification handle, prints out a notification like below:  
	 * type range: 0   
	 * if you set type to 1, image goes from 0 - 39 - Xbox you can add text to  
	 * example:   
	 * UI::_0xD202B92CBF1D816F(1, 20, "Who you trynna get crazy with, ese? Don't you know I'm LOCO?!");  
	 * ```
	 */
	@:native("EndTextCommandThefeedPostReplayIcon")
	static function EndTextCommandThefeedPostReplayIcon(eType:Int, iIcon:Int, sTitle:String):Int;

	/**
	 * ```
	 * List of picNames: pastebin.com/XdpJVbHz  
	 * flash is a bool for fading in.  
	 * iconTypes:  
	 * 1 : Chat Box  
	 * 2 : Email  
	 * 3 : Add Friend Request  
	 * 4 : Nothing  
	 * 5 : Nothing  
	 * 6 : Nothing  
	 * 7 : Right Jumping Arrow  
	 * 8 : RP Icon  
	 * 9 : $ Icon  
	 * "sender" is the very top header. This can be any old string.  
	 * "subject" is the header under the sender.  
	 * "duration" is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.  
	 * "clanTag" shows a crew tag in the "sender" header, after the text. You need to use 3 underscores as padding. Maximum length of this field seems to be 7. (e.g. "MK" becomes "___MK", "ACE" becomes "___ACE", etc.)  
	 * iconType2 is a mirror of iconType. It shows in the "subject" line, right under the original iconType.  
	 * int IconNotification(char *text, char *text2, char *Subject)  
	 * {  
	 * 	_SET_NOTIFICATION_TEXT_ENTRY("STRING");  
	 * 	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	 * 	_SET_NOTIFICATION_MESSAGE_CLAN_TAG_2("CHAR_SOCIAL_CLUB", "CHAR_SOCIAL_CLUB", 1, 7, text2, Subject, 1.0f, "__EXAMPLE", 7);  
	 * 	return _DRAW_NOTIFICATION(1, 1);  
	 * }  
	 * ```
	 */
	@:native("EndTextCommandThefeedPostMessagetextWithCrewTagAndAdditionalIcon")
	static function endTextCommandThefeedPostMessagetextWithCrewTagAndAdditionalIcon(picTxd:String, picTxn:String, flash:Bool, iconType1:Int, nameStr:String, subtitleStr:String, duration:Float, crewPackedStr:String, iconType2:Int, textColor:Int):Int;

	/**
	 * 
	 */
	@:native("EndTextCommandThefeedPostTickerForced")
	static function endTextCommandThefeedPostTickerForced(blink:Bool, bHasTokens:Bool):Int;

	/**
	 * [List of picture names](https://pastebin.com/XdpJVbHz)
	 * 
	 * Example result:
	 * 
	 * ![](https://i.imgur.com/SdEZ22m.png)
	 */
	@:native("EndTextCommandThefeedPostStats")
	static function endTextCommandThefeedPostStats(statTitle:String, iconEnum:Int, stepVal:Bool, barValue:Int, isImportant:Bool, picTxd:String, picTxn:String):Int;

	/**
	 * 
	 */
	@:native("EndTextCommandThefeedPostUnlockTuWithColor")
	static function endTextCommandThefeedPostUnlockTuWithColor(chTitle:String, iconType:Int, chSubtitle:String, isImportant:Bool, titleColor:Int, p5:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("FlagPlayerContextInTournament")
	static function flagPlayerContextInTournament(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("EndTextCommandThefeedPostTickerWithTokens")
	static function endTextCommandThefeedPostTickerWithTokens(isImportant:Bool, bHasTokens:Bool):Int;

	/**
	 * 
	 */
	@:native("EndTextCommandThefeedPostUnlock")
	static function endTextCommandThefeedPostUnlock(chTitle:String, iconType:Int, chSubtitle:String):Dynamic;

	/**
	 * 
	 */
	@:native("FlashAbilityBar")
	static function flashAbilityBar(millisecondsToFlash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ForceCloseTextInputBox")
	static function forceCloseTextInputBox():Dynamic;

	/**
	 * 
	 */
	@:native("EndTextCommandThefeedPostUnlockTu")
	static function endTextCommandThefeedPostUnlockTu(chTitle:String, iconType:Int, chSubtitle:String, isImportant:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 7: int hudColorIndex1
	 * NativeDB Added Parameter 8: int hudColorIndex2
	 * ```
	 */
	@:native("EndTextCommandThefeedPostVersusTu")
	static function endTextCommandThefeedPostVersusTu(ch1TXD:String, ch1TXN:String, val1:Int, ch2TXD:String, ch2TXN:String, val2:Int):Int;

	/**
	 * ```
	 * Returns the current AI BLIP for the specified ped  
	 * ```
	 */
	@:native("GetAiBlip")
	static function GetAiBlip(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * adds a short flash to the Radar/Minimap  
	 * Usage: UI.FLASH_MINIMAP_DISPLAY  
	 * ```
	 */
	@:native("FlashMinimapDisplay")
	static function flashMinimapDisplay():Dynamic;

	/**
	 * 
	 */
	@:native("ForceCloseReportugcMenu")
	static function forceCloseReportugcMenu():Dynamic;

	/**
	 * 
	 */
	@:native("GetBlipCoords")
	static function getBlipCoords(blip:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("FlashMinimapDisplayWithColor")
	static function flashMinimapDisplayWithColor(hudColorIndex:Int):Dynamic;

	/**
	 * ```
	 * Doesn't actually return anything.
	 * ```
	 */
	@:native("ForceSonarBlipsThisFrame")
	static function forceSonarBlipsThisFrame():Dynamic;

	/**
	 * 
	 */
	@:native("FlashWantedDisplay")
	static function flashWantedDisplay(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("GetBlipAlpha")
	static function getBlipAlpha(blip:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetAiBlip_2")
	static function GetAiBlip2(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetBlipColour")
	static function getBlipColour(blip:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetBlipInfoIdDisplay")
	static function getBlipInfoIdDisplay(blip:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetBlipHudColour")
	static function getBlipHudColour(blip:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetBlipInfoIdCoord")
	static function getBlipInfoIdCoord(blip:Dynamic):Dynamic;

	/**
	 * ```
	 * Returns the Blip handle of given Entity.  
	 * ```
	 */
	@:native("GetBlipFromEntity")
	static function getBlipFromEntity(entity:Dynamic):Dynamic;

	/**
	 * ```
	 * Returns a value based on what the blip is attached to
	 * 1 - Vehicle
	 * 2 - Ped
	 * 3 - Object
	 * 4 - Coord
	 * 5 - unk
	 * 6 - Pickup
	 * 7 - Radius
	 * ```
	 */
	@:native("GetBlipInfoIdType")
	static function getBlipInfoIdType(blip:Dynamic):Int;

	/**
	 * ```
	 * This function is hard-coded to always return 0.  
	 * ```
	 */
	@:native("GetBlipInfoIdPickupIndex")
	static function getBlipInfoIdPickupIndex(blip:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetBlipInfoIdEntityIndex")
	static function getBlipInfoIdEntityIndex(blip:Dynamic):Dynamic;

	/**
	 * Gets the sprite id of the specified blip. Blip sprite ids and images can be found [here](https://docs.fivem.net/docs/game-references/blips/).
	 */
	@:native("GetBlipSprite")
	static function getBlipSprite(blip:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetCurrentWebpageId")
	static function getCurrentWebpageId():Int;

	/**
	 * ```
	 * if (HUD::GET_CURRENT_FRONTEND_MENU_VERSION() == joaat("fe_menu_version_empty_no_background"))
	 * ```
	 */
	@:native("GetCurrentFrontendMenuVersion")
	static function getCurrentFrontendMenuVersion():Int;

	/**
	 * ```
	 * NativeDB Introduced: v2060
	 * ```
	 */
	@:native("GetBlipRotation")
	static function GetBlipRotation(blip:Dynamic):Int;

	/**
	 * Also see [`GET_NEXT_BLIP_INFO_ID`](#\_0x14F96AA50D6FBEA7) for an example.
	 */
	@:native("GetFirstBlipInfoId")
	static function getFirstBlipInfoId(blipSprite:Int):Dynamic;

	/**
	 * Gets a localized string literal from a label name. This is used to get the filename of the audio conversation associated with the provided label name.
	 */
	@:native("GetFilenameForAudioConversation")
	static function getFilenameForAudioConversation(labelName:String):String;

	/**
	 * ```
	 * This function is hard-coded to always return 1.  
	 * ```
	 */
	@:native("GetDefaultScriptRendertargetRenderId")
	static function getDefaultScriptRendertargetRenderId():Int;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("GetClosestBlipOfType")
	static function GetClosestBlipOfType(blipSprite:Int):Dynamic;

	/**
	 * ```
	 * World to relative screen coords
	 * this world to screen will keep the text on screen. it will keep it in the screen pos
	 * ```
	 */
	@:native("GetHudScreenPositionFromWorldPosition")
	static function getHudScreenPositionFromWorldPosition(worldX:Float, worldY:Float, worldZ:Float, screenX:Dynamic, screenY:Dynamic):Bool;

	/**
	 * Gets hud color RGBA parameter values by passing a hud color index (hudColorIndex).
	 * 
	 * HUD colors can be found [here](https://docs.fivem.net/docs/game-references/hud-colors/)
	 */
	@:native("GetHudColour")
	static function getHudColour(hudColorIndex:Int, r:Dynamic, g:Dynamic, b:Dynamic, a:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetHudComponentPosition")
	static function getHudComponentPosition(id:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GetCurrentWebsiteId")
	static function getCurrentWebsiteId():Int;

	/**
	 * ```
	 * Returns the length of the string passed (much like strlen).  
	 * ```
	 */
	@:native("GetLengthOfLiteralString")
	static function getLengthOfLiteralString(string:String):Int;

	/**
	 * ```
	 * Returns the ActionScript flagValue.
	 * ActionScript flags are global flags that scaleforms use
	 * Flags found during testing
	 * 0: Returns 1 if the web_browser keyboard is open, otherwise 0
	 * 1: Returns 1 if the player has clicked back twice on the opening page, otherwise 0 (web_browser)
	 * 2: Returns how many links the player has clicked in the web_browser scaleform, returns 0 when the browser gets closed
	 * 9: Returns the current selection on the mobile phone scaleform
	 * There are 20 flags in total.
	 * ```
	 */
	@:native("GetGlobalActionscriptFlag")
	static function getGlobalActionscriptFlag(flagIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GetLengthOfLiteralStringInBytes")
	static function getLengthOfLiteralStringInBytes(string:String):Int;

	/**
	 * ```
	 * Returns the string length of the string from the gxt string .  
	 * ```
	 */
	@:native("GetLengthOfStringWithThisTextLabel")
	static function getLengthOfStringWithThisTextLabel(gxt:String):Int;

	/**
	 * 
	 */
	@:native("GetMenuPedFloatStat")
	static function getMenuPedFloatStat(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * ```
	 * p0 was always 0xAE2602A3.
	 * ```
	 */
	@:native("GetMenuPedBoolStat")
	static function getMenuPedBoolStat(p0:Int, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetMainPlayerBlipId")
	static function getMainPlayerBlipId():Dynamic;

	/**
	 * 
	 */
	@:native("GetMinimapFowDiscoveryRatio")
	static function getMinimapFowDiscoveryRatio():Float;

	/**
	 * 
	 */
	@:native("GetNumberOfActiveBlips")
	static function getNumberOfActiveBlips():Int;

	/**
	 * 
	 */
	@:native("GetMenuPedIntStat")
	static function getMenuPedIntStat(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetMinimapFowCoordinateIsRevealed")
	static function getMinimapFowCoordinateIsRevealed(x:Float, y:Float, z:Float):Bool;

	/**
	 * 
	 */
	@:native("GetMenuPedMaskedIntStat")
	static function getMenuPedMaskedIntStat(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetNewSelectedMissionCreatorBlip")
	static function getNewSelectedMissionCreatorBlip():Dynamic;

	/**
	 * 
	 */
	@:native("GetNamedRendertargetRenderId")
	static function getNamedRendertargetRenderId(name:String):Int;

	/**
	 * 
	 */
	@:native("GetPauseMenuSelection")
	static function GetPauseMenuSelection(lastItemMenuId:Dynamic, selectedItemUniqueId:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetNextBlipInfoId")
	static function getNextBlipInfoId(blipSprite:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GetNorthRadarBlip")
	static function GetNorthRadarBlip():Dynamic;

	/**
	 * ```cpp
	 * enum ePauseMenuState
	 * {
	 *     PM_INACTIVE 	 =  0,
	 *     PM_STARTING_UP 	 =  5,
	 *     PM_RESTARTING 	 = 10,
	 *     PM_READY 		 = 15,
	 *     PM_IN_STORE 	 = 20,
	 *     PM_IN_SC_MENU 	 = 25,
	 *     PM_SHUTTING_DOWN = 30,
	 *     PM_IN_VIDEOEDITOR = 35,
	 * }
	 * ```
	 */
	@:native("GetPauseMenuState")
	static function getPauseMenuState():Int;

	/**
	 * Name between `GET_ONSCREEN_KEYBOARD_RESULT` and `GET_PAUSE_MENU_STATE`. Likely, `GET_PAUSE_MENU_*`.
	 */
	@:native("GetPauseMenuCursorPosition")
	static function GetPauseMenuCursorPosition():Dynamic;

	/**
	 * ```
	 * Returns a substring of a specified length starting at a specified position.
	 * Example:
	 * // Get "STRING" text from "MY_STRING"
	 * subStr = HUD::_GET_TEXT_SUBSTRING("MY_STRING", 3, 6);
	 * ```
	 */
	@:native("GetTextSubstring")
	static function GetTextSubstring(text:String, position:Int, length:Int):String;

	/**
	 * Gets mouse selection data from scaleforms with mouse support. Must be checked every frame.
	 * Returns item index if using the COLOUR_SWITCHER\_02 scaleform.
	 * Selection types, found in MOUSE_EVENTS.as:
	 * MOUSE_DRAG_OUT = 0;
	 * MOUSE_DRAG_OVER = 1;
	 * MOUSE_DOWN = 2;
	 * MOUSE_MOVE = 3;
	 * MOUSE_UP = 4;
	 * MOUSE_PRESS = 5;
	 * MOUSE_RELEASE = 6;
	 * MOUSE_RELEASE_OUTSIDE = 7;
	 * MOUSE_ROLL_OUT = 8;
	 * MOUSE_ROLL_OVER = 9;
	 * MOUSE_WHEEL_UP = 10;
	 * MOUSE_WHEEL_DOWN = 11;
	 * 
	 * Scaleforms that this works with:
	 * 
	 * *   COLOUR_SWITCHER\_02
	 * *   MP_RESULTS_PANEL
	 * *   MP_NEXT_JOB_SELECTION
	 * *   SC_LEADERBOARD
	 *     Probably works with other scaleforms, needs more research.
	 *     In order to use this Native you MUST have controls 239, 240, 237, 238 enabled!
	 *     This native, due to its erroneous redundancy of the returned boolean value, works differently in C#: shifting the parameters (where `received` becomes `selectionType` and so on making the fourth parameter unused and always 0).
	 */
	@:native("GetScaleformMovieCursorSelection")
	static function GetScaleformMovieCursorSelection(scaleformHandle:Int, received:Dynamic, selectionType:Dynamic, context:Dynamic, slotIndex:Dynamic):Bool;

	/**
	 * ```
	 * This gets the height of the FONT and not the total text. You need to get the number of lines your text uses, and get the height of a newline (I'm using a smaller value) to get the total text height.
	 * Old name: _GET_TEXT_SCALE_HEIGHT
	 * ```
	 */
	@:native("GetRenderedCharacterHeight")
	static function getRenderedCharacterHeight(size:Float, font:Int):Float;

	/**
	 * Converts the hash of a street name into a readable string. To retrieve a hash for a given (street) coordinate, see [`GET_STREET_NAME_AT_COORD`](#\_0x2EB41072B4C1E4C0).
	 */
	@:native("GetStreetNameFromHashKey")
	static function getStreetNameFromHashKey(hash:Int):String;

	/**
	 * ```
	 * Returns a substring of a specified length starting at a specified position. The result is guaranteed not to exceed the specified max length.
	 * NOTE: The 'maxLength' parameter might actually be the size of the buffer that is returned. More research is needed. -CL69
	 * Example:
	 * // Condensed example of how Rockstar uses this function
	 * strLen = HUD::GET_LENGTH_OF_LITERAL_STRING(MISC::GET_ONSCREEN_KEYBOARD_RESULT());
	 * subStr = HUD::_GET_TEXT_SUBSTRING_SAFE(MISC::GET_ONSCREEN_KEYBOARD_RESULT(), 0, strLen, 63);
	 * --
	 * "fm_race_creator.ysc", line 85115:
	 * // parameters modified for clarity
	 * BOOL sub_8e5aa(char *text, int length) {
	 *     for (i = 0; i <= (length - 2); i += 1) {
	 *         if (!MISC::ARE_STRINGS_EQUAL(HUD::_GET_TEXT_SUBSTRING_SAFE(text, i, i + 1, 1), " ")) {
	 *             return FALSE;
	 *         }
	 *     }
	 *     return TRUE;
	 * }
	 * ```
	 */
	@:native("GetTextSubstringSafe")
	static function GetTextSubstringSafe(text:String, position:Int, length:Int, maxLength:Int):String;

	/**
	 * ```
	 * lastItemMenuId: this is the menuID of the last selected item minus 1000 (lastItem.menuID - 1000)
	 * selectedItemMenuId: same as lastItemMenuId except for the currently selected menu item
	 * selectedItemUniqueId: this is uniqueID of the currently selected menu item
	 * when the pausemenu is closed:
	 * lastItemMenuId = -1
	 * selectedItemMenuId = -1
	 * selectedItemUniqueId = 0
	 * when the header gains focus:
	 * lastItemMenuId updates as normal or 0 if the pausemenu was just opened
	 * selectedItemMenuId becomes a unique id for the pausemenu page that focus was taken from (?) or 0 if the pausemenu was just opened
	 * selectedItemUniqueId = -1
	 * when focus is moved from the header to a pausemenu page:
	 * lastItemMenuId becomes a unique id for the pausemenu page that focus was moved to (?)
	 * selectedItemMenuId = -1
	 * selectedItemUniqueId updates as normal
	 * ```
	 */
	@:native("GetPauseMenuSelectionData")
	static function GetPauseMenuSelectionData(lastItemMenuId:Dynamic, selectedItemMenuId:Dynamic, selectedItemUniqueId:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("GetWarningMessageTitleHash")
	static function GetWarningMessageTitleHash():Int;

	/**
	 * ```
	 * Returns a substring that is between two specified positions. The length of the string will be calculated using (endPosition - startPosition).
	 * Example:
	 * // Get "STRING" text from "MY_STRING"
	 * subStr = HUD::_GET_TEXT_SUBSTRING_SLICE("MY_STRING", 3, 9);
	 * // Overflows are possibly replaced with underscores (needs verification)
	 * subStr = HUD::_GET_TEXT_SUBSTRING_SLICE("MY_STRING", 3, 10); // "STRING_"?
	 * ```
	 */
	@:native("GetTextSubstringSlice")
	static function GetTextSubstringSlice(text:String, startPosition:Int, endPosition:Int):String;

	/**
	 * 
	 */
	@:native("GetStandardBlipEnumId")
	static function getStandardBlipEnumId():Int;

	/**
	 * 
	 */
	@:native("GetWaypointBlipEnumId")
	static function getWaypointBlipEnumId():Int;

	/**
	 * 
	 */
	@:native("HasAdditionalTextLoaded")
	static function hasAdditionalTextLoaded(slot:Int):Bool;

	/**
	 * ```
	 * p1 is either 1 or 2 in the PC scripts.  
	 * ```
	 * 
	 * This native is used to "give"/duplicate a player ped to a frontend menu as configured via the `ACTIVATE_FRONTEND_MENU` native, you first must utilize the [CLONE_PED](#\_0xEF29A16337FACADB) to clone said ped.
	 */
	@:native("GivePedToPauseMenu")
	static function givePedToPauseMenu(ped:Dynamic, p1:Int):Dynamic;

	/**
	 * ```
	 * HAS_*
	 * ```
	 */
	@:native("HasDirectorModeBeenTriggered")
	static function HasDirectorModeBeenTriggered():Bool;

	/**
	 * This function hides various HUD (Heads-up Display) components.
	 * 
	 * Listed below are the integers and the corresponding HUD component.
	 * 
	 * *   1 : WANTED_STARS
	 * *   2 : WEAPON_ICON
	 * *   3 : CASH
	 * *   4 : MP_CASH
	 * *   5 : MP_MESSAGE
	 * *   6 : VEHICLE_NAME
	 * *   7 : AREA_NAME
	 * *   8 : VEHICLE_CLASS
	 * *   9 : STREET_NAME
	 * *   10 : HELP_TEXT
	 * *   11 : FLOATING_HELP_TEXT\_1
	 * *   12 : FLOATING_HELP_TEXT\_2
	 * *   13 : CASH_CHANGE
	 * *   14 : RETICLE
	 * *   15 : SUBTITLE_TEXT
	 * *   16 : RADIO_STATIONS
	 * *   17 : SAVING_GAME
	 * *   18 : GAME_STREAM
	 * *   19 : WEAPON_WHEEL
	 * *   20 : WEAPON_WHEEL_STATS
	 * *   21 : HUD_COMPONENTS
	 * *   22 : HUD_WEAPONS
	 * 
	 * These integers also work for the [`SHOW_HUD_COMPONENT_THIS_FRAME`](#\_0x0B4DF1FA60C0E664) native, but instead shows the HUD Component.
	 */
	@:native("HideHudComponentThisFrame")
	static function hideHudComponentThisFrame(id:Int):Dynamic;

	/**
	 * ```
	 * HIDE_*_THIS_FRAME
	 * 
	 * Hides area and vehicle name HUD components for one frame.
	 * ```
	 */
	@:native("HideAreaAndVehicleNameThisFrame")
	static function HideAreaAndVehicleNameThisFrame():Dynamic;

	/**
	 * 
	 */
	@:native("HideMinimapInteriorMapThisFrame")
	static function hideMinimapInteriorMapThisFrame():Dynamic;

	/**
	 * ```
	 * Checks if the specified gxt has loaded into the passed slot.  
	 * ```
	 */
	@:native("HasThisAdditionalTextLoaded")
	static function hasThisAdditionalTextLoaded(gxt:String, slot:Int):Bool;

	/**
	 * 
	 */
	@:native("HideHelpTextThisFrame")
	static function hideHelpTextThisFrame():Dynamic;

	/**
	 * 
	 */
	@:native("HideScriptedHudComponentThisFrame")
	static function hideScriptedHudComponentThisFrame(id:Int):Dynamic;

	/**
	 * 
	 */
	@:native("HideLoadingOnFadeThisFrame")
	static function hideLoadingOnFadeThisFrame():Dynamic;

	/**
	 * ```
	 * I think this works, but seems to prohibit switching to other weapons (or accessing the weapon wheel)  
	 * ```
	 */
	@:native("HideHudAndRadarThisFrame")
	static function hideHudAndRadarThisFrame():Dynamic;

	/**
	 * 
	 */
	@:native("HideMinimapExteriorMapThisFrame")
	static function hideMinimapExteriorMapThisFrame():Dynamic;

	/**
	 * 
	 */
	@:native("HideNumberOnBlip")
	static function hideNumberOnBlip(blip:Dynamic):Dynamic;

	/**
	 * Displays loading screen tips, requires `_0x56C8B608CFD49854` to be called beforehand.
	 */
	@:native("HudDisplayLoadingScreenTips")
	static function HudDisplayLoadingScreenTips():Dynamic;

	/**
	 * ```
	 * Set the active slotIndex in the wheel weapon to the slot associated with the provided Weapon hash
	 * ```
	 */
	@:native("HudSetWeaponWheelTopSlot")
	static function hudSetWeaponWheelTopSlot(weaponHash:Int):Dynamic;

	/**
	 * ```
	 * Returns the weapon hash active in a specific weapon wheel slotList
	 * ```
	 */
	@:native("HudWeaponWheelGetSlotHash")
	static function HudWeaponWheelGetSlotHash(weaponTypeIndex:Int):Int;

	/**
	 * ```
	 * Forces the weapon wheel to show/hide.
	 * ```
	 */
	@:native("HudForceWeaponWheel")
	static function hudForceWeaponWheel(show:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("IsBlipOnMinimap")
	static function isBlipOnMinimap(blip:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsBlipFlashing")
	static function isBlipFlashing(blip:Dynamic):Bool;

	/**
	 * ```
	 * Sets a global that disables many weapon input tasks (shooting, aiming, etc.). Does not work with vehicle weapons, only used in selector.ysc
	 * ```
	 */
	@:native("HudWeaponWheelIgnoreControlInput")
	static function HudWeaponWheelIgnoreControlInput(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Returns the weapon hash to the selected/highlighted weapon in the wheel
	 * ```
	 */
	@:native("HudWeaponWheelGetSelectedHash")
	static function HudWeaponWheelGetSelectedHash():Int;

	/**
	 * 
	 */
	@:native("IsFloatingHelpTextOnScreen")
	static function isFloatingHelpTextOnScreen(hudIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("IsHelpMessageFadingOut")
	static function isHelpMessageFadingOut():Bool;

	/**
	 * ```
	 * Calling this each frame, stops the player from receiving a weapon via the weapon wheel.
	 * ```
	 */
	@:native("HudWeaponWheelIgnoreSelection")
	static function HudWeaponWheelIgnoreSelection():Dynamic;

	/**
	 * 
	 */
	@:native("IsBlipShortRange")
	static function isBlipShortRange(blip:Dynamic):Bool;

	/**
	 * ```
	 * Full list of components below  
	 * HUD = 0;  
	 * HUD_WANTED_STARS = 1;  
	 * HUD_WEAPON_ICON = 2;  
	 * HUD_CASH = 3;  
	 * HUD_MP_CASH = 4;  
	 * HUD_MP_MESSAGE = 5;  
	 * HUD_VEHICLE_NAME = 6;  
	 * HUD_AREA_NAME = 7;  
	 * HUD_VEHICLE_CLASS = 8;  
	 * HUD_STREET_NAME = 9;  
	 * HUD_HELP_TEXT = 10;  
	 * HUD_FLOATING_HELP_TEXT_1 = 11;  
	 * HUD_FLOATING_HELP_TEXT_2 = 12;  
	 * HUD_CASH_CHANGE = 13;  
	 * HUD_RETICLE = 14;  
	 * HUD_SUBTITLE_TEXT = 15;  
	 * HUD_RADIO_STATIONS = 16;  
	 * HUD_SAVING_GAME = 17;  
	 * HUD_GAME_STREAM = 18;  
	 * HUD_WEAPON_WHEEL = 19;  
	 * HUD_WEAPON_WHEEL_STATS = 20;  
	 * MAX_HUD_COMPONENTS = 21;  
	 * MAX_HUD_WEAPONS = 22;  
	 * MAX_SCRIPTED_HUD_COMPONENTS = 141;  
	 * ```
	 */
	@:native("IsHudComponentActive")
	static function isHudComponentActive(id:Int):Bool;

	/**
	 * 
	 */
	@:native("IsFrontendReadyForControl")
	static function isFrontendReadyForControl():Bool;

	/**
	 * 
	 */
	@:native("IsHelpMessageBeingDisplayed")
	static function isHelpMessageBeingDisplayed():Bool;

	/**
	 * **Note:** The buttons need to support mouse (with the `TOGGLE_MOUSE_SUPPORT` scaleform movie method) for it to return `true`.
	 */
	@:native("IsMouseRolledOverInstructionalButtons")
	static function isMouseRolledOverInstructionalButtons():Bool;

	/**
	 * 
	 */
	@:native("IsHelpMessageOnScreen")
	static function isHelpMessageOnScreen():Bool;

	/**
	 * 
	 */
	@:native("IsHoveringOverMissionCreatorBlip")
	static function isHoveringOverMissionCreatorBlip():Bool;

	/**
	 * 
	 */
	@:native("IsMessageBeingDisplayed")
	static function isMessageBeingDisplayed():Bool;

	/**
	 * 
	 */
	@:native("IsHudHidden")
	static function isHudHidden():Bool;

	/**
	 * 
	 */
	@:native("IsMpGamerTagMovieActive")
	static function isMpGamerTagMovieActive():Bool;

	/**
	 * 
	 */
	@:native("IsMinimapRendering")
	static function isMinimapRendering():Bool;

	/**
	 * 
	 */
	@:native("IsMpGamerTagFree")
	static function isMpGamerTagFree(gamerTagId:Int):Bool;

	/**
	 * 
	 */
	@:native("IsHudPreferenceSwitchedOn")
	static function isHudPreferenceSwitchedOn():Bool;

	/**
	 * 
	 */
	@:native("IsNamedRendertargetLinked")
	static function isNamedRendertargetLinked(modelHash:Int):Bool;

	/**
	 * 
	 */
	@:native("IsMissionCreatorBlip")
	static function isMissionCreatorBlip(blip:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsMpGamerTagActive")
	static function isMpGamerTagActive(gamerTagId:Int):Bool;

	/**
	 * 
	 */
	@:native("IsNavigatingMenuContent")
	static function isNavigatingMenuContent():Dynamic;

	/**
	 * Returns the same as `IS_SOCIAL_CLUB_ACTIVE`.
	 */
	@:native("IsOnlinePoliciesMenuActive")
	static function isOnlinePoliciesMenuActive():Bool;

	/**
	 * ```
	 * Returns whether or not the text chat (MULTIPLAYER_CHAT Scaleform component) is active.  
	 * ```
	 */
	@:native("IsMultiplayerChatActive")
	static function IsMultiplayerChatActive():Bool;

	/**
	 * 
	 */
	@:native("IsPauseMenuActive")
	static function isPauseMenuActive():Bool;

	/**
	 * 
	 */
	@:native("IsRadarHidden")
	static function isRadarHidden():Bool;

	/**
	 * 
	 */
	@:native("IsNamedRendertargetRegistered")
	static function isNamedRendertargetRegistered(name:String):Bool;

	/**
	 * 
	 */
	@:native("IsReportugcMenuOpen")
	static function isReportugcMenuOpen():Bool;

	/**
	 * 
	 */
	@:native("IsScriptedHudComponentActive")
	static function isScriptedHudComponentActive(id:Int):Bool;

	/**
	 * 
	 */
	@:native("IsPauseMenuRestarting")
	static function isPauseMenuRestarting():Bool;

	/**
	 * 
	 */
	@:native("IsPausemapInInteriorMode")
	static function isPausemapInInteriorMode():Bool;

	/**
	 * 
	 */
	@:native("IsStreamingAdditionalText")
	static function isStreamingAdditionalText(p0:Int):Bool;

	/**
	 * 
	 */
	@:native("IsSocialClubActive")
	static function isSocialClubActive():Bool;

	/**
	 * 
	 */
	@:native("IsRadarPreferenceSwitchedOn")
	static function isRadarPreferenceSwitchedOn():Bool;

	/**
	 * Returns true if a Warning Message or ReportUGC menu is active.
	 */
	@:native("IsWarningMessageActive")
	static function isWarningMessageActive():Bool;

	/**
	 * 
	 */
	@:native("IsScriptedHudComponentHiddenThisFrame")
	static function isScriptedHudComponentHiddenThisFrame(id:Int):Bool;

	/**
	 * 
	 */
	@:native("IsSubtitlePreferenceSwitchedOn")
	static function isSubtitlePreferenceSwitchedOn():Bool;

	/**
	 * ```
	 * IS_WARNING_MESSAGE_*
	 * ```
	 */
	@:native("IsWarningMessageActive_2")
	static function IsWarningMessageActive2():Bool;

	/**
	 * 
	 */
	@:native("LinkNamedRendertarget")
	static function linkNamedRendertarget(modelHash:Int):Dynamic;

	/**
	 * ```
	 * IS_*
	 * ```
	 */
	@:native("IsValidMpGamerTagMovie")
	static function IsValidMpGamerTagMovie(gamerTagId:Int):Bool;

	/**
	 * ```
	 * Locks the minimap to the specified world position.  
	 * ```
	 */
	@:native("LockMinimapPosition")
	static function lockMinimapPosition(x:Float, y:Float):Dynamic;

	/**
	 * 
	 */
	@:native("IsWaypointActive")
	static function isWaypointActive():Bool;

	/**
	 * ```
	 * Locks the minimap to the specified angle in integer degrees.  
	 * angle: The angle in whole degrees. If less than 0 or greater than 360, unlocks the angle.  
	 * ```
	 */
	@:native("LockMinimapAngle")
	static function lockMinimapAngle(angle:Int):Dynamic;

	/**
	 * ```
	 * Not present in retail version of the game, actual definiton seems to be
	 * _LOG_DEBUG_INFO(const char* category, const char* debugText);
	 * ```
	 */
	@:native("LogDebugInfo")
	static function LogDebugInfo(p0:String):Dynamic;

	/**
	 * Enables loading screen tips to be be shown (`_0x15CFA549788D35EF` and `_0x488043841BBE156F`), blocks other kinds of notifications from being displayed (at least from current script). Call `0xADED7F5748ACAFE6` to display those again.
	 */
	@:native("ThefeedForceRenderOff")
	static function thefeedForceRenderOff():Dynamic;

	/**
	 * ```
	 * Displays "normal" notifications again after calling `_0x56C8B608CFD49854` (those that were drawn before calling this native too), though those will have a weird offset and stay on screen forever (tested with notifications created from same script).
	 * ```
	 */
	@:native("ThefeedCommentTeleportPoolOff")
	static function thefeedCommentTeleportPoolOff():Dynamic;

	/**
	 * 
	 */
	@:native("OverrideMultiplayerChatColour")
	static function OverrideMultiplayerChatColour(p0:Int, hudColor:Int):Dynamic;

	/**
	 * Uses the `SOCIAL_CLUB2` scaleform.
	 */
	@:native("OpenSocialClubMenu")
	static function openSocialClubMenu():Dynamic;

	/**
	 * Sets a loading icon in the pause menu.
	 */
	@:native("PauseMenuSetBusySpinner")
	static function pauseMenuSetBusySpinner(bVisible:Bool, iColumnID:Int, iSpinnerIndex:Int):Dynamic;

	/**
	 * Forces the Pause Menu to back out of unique pages such as Awards, Unlocks, Key Bindings etc
	 */
	@:native("PauseMenuceptionTheKick")
	static function pauseMenuceptionTheKick():Dynamic;

	/**
	 * 
	 */
	@:native("OpenOnlinePoliciesMenu")
	static function openOnlinePoliciesMenu():Dynamic;

	/**
	 * Activates the specified frontend menu context.
	 * 
	 * pausemenu.xml defines some specific menu options using 'context'. Context is basically a 'condition'.
	 * 
	 * The `*ALL*` part of the context means that whatever is being defined, will be active when any or all of those conditions after `*ALL*` are met.
	 * 
	 * The `*NONE*` part of the context section means that whatever is being defined, will NOT be active if any or all of the conditions after `*NONE*` are met.
	 * 
	 * This basically allows you to hide certain menu sections, or things like instructional buttons.
	 * 
	 * See the old description below for more info.
	 * 
	 * ***
	 * 
	 * > Seems to add/set the current menu context (to show/hide buttons?)
	 * > Pausemenu.xml:
	 * > `<Contexts>*ALL*, DISPLAY_CORONA_BUTTONS, *NONE*, BET_LOCKED, BET_AVAILABLE, SCROLL_OPTION</Contexts>`
	 * > Code:
	 * >
	 * > ```
	 * > if (...) {
	 * >     sub_bbd34(a_0, 0, "FM_BET_HELP");
	 * >     UI::PAUSE_MENU_ACTIVATE_CONTEXT(${bet_available}); // This native
	 * >     UI::OBJECT_DECAL_TOGGLE(${bet_locked});
	 * > } else {
	 * >     sub_bbd34(a_0, 0, "");
	 * >     UI::OBJECT_DECAL_TOGGLE(${bet_available});
	 * >     UI::PAUSE_MENU_ACTIVATE_CONTEXT(${bet_locked}); // This native
	 * > }
	 * > ```
	 * >
	 * > OBJECT_DECAL_TOGGLE seems to remove a context, It also has a hash collision
	 * > // Old
	 * > Scripts do not make this native's purpose clear. However, this native most likely has something to do with decals since in nearly every instance, "OBJECT_DECAL_TOGGLE" is called prior.
	 */
	@:native("PauseMenuActivateContext")
	static function pauseMenuActivateContext(hash:Int):Dynamic;

	/**
	 * ```
	 * Shows a menu for reporting UGC content.
	 * ```
	 */
	@:native("OpenReportugcMenu")
	static function openReportugcMenu():Dynamic;

	/**
	 * Disables the loading spinner in Pause Menu when switching from one header tab to another.
	 */
	@:native("PauseMenuDisableBusyspinner")
	static function PauseMenuDisableBusyspinner(toggle:Bool):Dynamic;

	/**
	 * Toggles pause menu map rendering.
	 */
	@:native("PauseToggleFullscreenMap")
	static function pauseToggleFullscreenMap(enabled:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("PauseMenuDeactivateContext")
	static function pauseMenuDeactivateContext(contextHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("OverrideMultiplayerChatPrefix")
	static function OverrideMultiplayerChatPrefix(gxtEntryHash:Int):Dynamic;

	/**
	 * If mouse is hovering on a slot, it returns uniqueid of that slot, else it returns -1.
	 */
	@:native("PauseMenuGetUniqueIdOfMouseHoveredSlot")
	static function PauseMenuGetUniqueIdOfMouseHoveredSlot():Int;

	/**
	 * If mouse is hovering on a slot, it returns the slot's index, else it returns -1.
	 */
	@:native("PauseMenuGetIndexOfMouseHoveredSlot")
	static function PauseMenuGetIndexOfMouseHoveredSlot():Int;

	/**
	 * ```
	 * Add a BLIP_GALLERY at the specific coordinate. Used in fm_maintain_transition_players to display race track points.
	 * ```
	 */
	@:native("RaceGalleryAddBlip")
	static function RaceGalleryAddBlip(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * Updates instructional buttons in Pause Menu after menu contexts have been toggled. p0 purpose is currently unknown, only 0 is used in scripts.
	 */
	@:native("PauseMenuRedrawInstructionalButtons")
	static function pauseMenuRedrawInstructionalButtons(p0:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PauseMenuIsContextMenuActive")
	static function pauseMenuIsContextMenuActive():Dynamic;

	/**
	 * 
	 */
	@:native("RegisterNamedRendertarget")
	static function registerNamedRendertarget(name:String, p1:Bool):Bool;

	/**
	 * 
	 */
	@:native("PreloadBusyspinner")
	static function preloadBusyspinner():Dynamic;

	/**
	 * Shows this warning message when trying to switch pause menu header tabs: https://i.imgur.com/8qmfztu.png
	 */
	@:native("PauseMenuSetWarnOnTabChange")
	static function pauseMenuSetWarnOnTabChange(setWarn:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("PauseMenuIsContextActive")
	static function pauseMenuIsContextActive(contextHash:Int):Bool;

	/**
	 * ```
	 * If toggle is true, the map is shown in full screen
	 * If toggle is false, the map is shown in normal mode
	 * ```
	 */
	@:native("RaceGalleryFullscreen")
	static function RaceGalleryFullscreen(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("PulseBlip")
	static function pulseBlip(blip:Dynamic):Dynamic;

	/**
	 * Forces the map menu to reload.
	 */
	@:native("ReloadMapMenu")
	static function reloadMapMenu():Dynamic;

	/**
	 * Sets current pause menu page/component to the specified value.
	 * Available page IDs: https://pastebin.com/qxuhwjPT
	 */
	@:native("PauseMenuceptionGoDeeper")
	static function pauseMenuceptionGoDeeper(pageId:Int):Dynamic;

	/**
	 * Enables frontend (works in custom frontends, not sure about regular pause menu) navigation keys on keyboard if they were disabled using the native below.
	 * 
	 * To disable the keys, use [`0xEC9264727EEC0F28`](#\_0xEC9264727EEC0F28).
	 */
	@:native("ReleaseControlOfFrontend")
	static function releaseControlOfFrontend():Dynamic;

	/**
	 * 
	 */
	@:native("RemoveMultiplayerBankCash")
	static function removeMultiplayerBankCash():Dynamic;

	/**
	 * ```
	 * Sets the sprite of the next BLIP_GALLERY blip, values used in the native scripts: 143 (ObjectiveBlue), 144 (ObjectiveGreen), 145 (ObjectiveRed), 146 (ObjectiveYellow).
	 * ```
	 */
	@:native("RaceGalleryNextBlipSprite")
	static function RaceGalleryNextBlipSprite(spriteId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveMultiplayerWalletCash")
	static function removeMultiplayerWalletCash():Dynamic;

	/**
	 * 
	 */
	@:native("RemoveWarningMessageListItems")
	static function RemoveWarningMessageListItems():Dynamic;

	/**
	 * Removes the blip from your map.
	 * 
	 * **Note:** This function only works on the script that created the blip, if you wish to remove blips created by other scripts, see [`SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT`](#\_0x86A652570E5F25DD).
	 */
	@:native("RemoveBlip")
	static function removeBlip(blip:Dynamic):Dynamic;

	/**
	 * Changes the hud color at a given index (hudColorIndex) by another one (hudColorIndex2).
	 * 
	 * HUD colors can be found [here](https://docs.fivem.net/docs/game-references/hud-colors/)
	 */
	@:native("ReplaceHudColour")
	static function replaceHudColour(hudColorIndex:Int, hudColorIndex2:Int):Dynamic;

	/**
	 * Hud colors can be found [here](https://docs.fivem.net/docs/game-references/hud-colors/)
	 */
	@:native("ReplaceHudColourWithRgba")
	static function replaceHudColourWithRgba(hudColorIndex:Int, r:Int, g:Int, b:Int, a:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RefreshWaypoint")
	static function refreshWaypoint():Dynamic;

	/**
	 * ```
	 * Removes multiplayer cash hud each frame  
	 * ```
	 */
	@:native("RemoveMultiplayerHudCash")
	static function removeMultiplayerHudCash():Dynamic;

	/**
	 * ```
	 * Request a gxt into the passed slot.  
	 * ```
	 */
	@:native("RequestAdditionalText")
	static function requestAdditionalText(gxt:String, slot:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RequestAdditionalTextForDlc")
	static function requestAdditionalTextForDlc(gxt:String, slot:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ReleaseNamedRendertarget")
	static function releaseNamedRendertarget(name:String):Bool;

	/**
	 * Removes the gamer tag associated with the provided ID. This does not happen instantly. Use [IS_MP_GAMER_TAG_FREE](#\_0x595B5178E412E199) to determine when the ID is free for reuse.
	 */
	@:native("RemoveMpGamerTag")
	static function removeMpGamerTag(gamerTagId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ResetReticuleValues")
	static function resetReticuleValues():Dynamic;

	/**
	 * 
	 */
	@:native("ResetHudComponentValues")
	static function resetHudComponentValues(id:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetAbilityBarValue")
	static function setAbilityBarValue(value:Float, maxValue:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("SetAllowAbilityBarInMultiplayer")
	static function SetAllowAbilityBarInMultiplayer(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ResetGlobalActionscriptFlag")
	static function resetGlobalActionscriptFlag(flagIndex:Int):Dynamic;

	/**
	 * Toggles the big minimap state like in GTA:Online.
	 * 
	 * To get the current state of the minimap, use [`IS_BIGMAP_ACTIVE`](#\_0xFFF65C63).
	 */
	@:native("SetBigmapActive")
	static function setBigmapActive(toggleBigMap:Bool, showFullMap:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("SetAbilityBarVisibilityInMultiplayer")
	static function SetAbilityBarVisibilityInMultiplayer(visible:Bool):Dynamic;

	/**
	 * ```
	 * Sets alpha-channel for blip color.
	 * Example:
	 * Blip blip = HUD::ADD_BLIP_FOR_ENTITY(entity);
	 * HUD::SET_BLIP_COLOUR(blip , 3);
	 * HUD::SET_BLIP_ALPHA(blip , 64);
	 * ```
	 */
	@:native("SetBlipAlpha")
	static function setBlipAlpha(blip:Dynamic, alpha:Int):Dynamic;

	/**
	 * Sets whether or not the specified blip should only be displayed when nearby, or on the minimap.
	 */
	@:native("SetBlipAsShortRange")
	static function setBlipAsShortRange(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Changes the current frontend menu to the desired frontend menu version.
	 */
	@:native("RestartFrontendMenu")
	static function restartFrontendMenu(menuHash:Int, highlightedTab:Int):Dynamic;

	/**
	 * Allows the user to set a blip as friendly or enemy based on the toggle.
	 */
	@:native("SetBlipAsFriendly")
	static function setBlipAsFriendly(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetBlipBright")
	static function setBlipBright(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetBlipColour")
	static function setBlipColour(blip:Dynamic, color:Int):Dynamic;

	/**
	 * **NOTE:** This must be called before you open the text input box.
	 */
	@:native("SetAllowCommaOnTextInput")
	static function setAllowCommaOnTextInput(allow:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetBlipCoords")
	static function setBlipCoords(blip:Dynamic, posX:Float, posY:Float, posZ:Float):Dynamic;

	/**
	 * ```
	 * Must be toggled before being queued for animation
	 * ```
	 */
	@:native("SetBlipDisplayIndicatorOnBlip")
	static function SetBlipDisplayIndicatorOnBlip(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * **displayId Behaviour**
	 * 
	 * | display ID 	| Behaviour                                                   	|
	 * |------------	|-------------------------------------------------------------	|
	 * | 0          	| Doesn't show up, ever, anywhere.                            	|
	 * | 1          	| Doesn't show up, ever, anywhere.                            	|
	 * | 2          	| Shows on both main map and minimap. (Selectable on map)     	|
	 * | 3          	| Shows on main map only. (Selectable on map)                 	|
	 * | 4          	| Shows on main map only. (Selectable on map)                 	|
	 * | 5          	| Shows on minimap only.                                      	|
	 * | 6          	| Shows on both main map and minimap. (Selectable on map)     	|
	 * | 7          	| Doesn't show up, ever, anywhere.                            	|
	 * | 8          	| Shows on both main map and minimap. (Not selectable on map) 	|
	 * | 9          	| Shows on minimap only.                                      	|
	 * | 10         	| Shows on both main map and minimap. (Not selectable on map) 	|
	 * 
	 * Anything higher than 10 seems to be exactly the same as 10.
	 * 
	 * Rockstar seem to only use 0, 2, 3, 4, 5 and 8 in the decompiled scripts.
	 */
	@:native("SetBlipDisplay")
	static function setBlipDisplay(blip:Dynamic, displayId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetBlipAsMissionCreatorBlip")
	static function setBlipAsMissionCreatorBlip(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetBlipHighDetail")
	static function setBlipHighDetail(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Examples result:
	 * 
	 * ![](https://i.imgur.com/skY6vAJ.png)
	 * 
	 * **index:**
	 * 
	 * ```
	 * 1 = No distance shown in legend
	 * 2 = Distance shown in legend
	 * 7 = "Other Players" category, also shows distance in legend
	 * 10 = "Property" category
	 * 11 = "Owned Property" category
	 * ```
	 * 
	 * Any other value behaves like `index = 1`, `index` wraps around after 255
	 * 
	 * Blips with categories `7`, `10` or `11` will all show under the specific categories listing in the map legend, regardless of sprite or name.
	 * 
	 * **Legend entries**
	 * 
	 * | index | Legend entry | Label |
	 * | --- | --- | --- |
	 * | 7 | Other Players | `BLIP_OTHPLYR` |
	 * | 10 | Property | `BLIP_PROPCAT` |
	 * | 11 | Owned Property | `BLIP_APARTCAT` |
	 */
	@:native("SetBlipCategory")
	static function setBlipCategory(blip:Dynamic, index:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetBlipFade")
	static function setBlipFade(blip:Dynamic, opacity:Int, duration:Int):Dynamic;

	/**
	 * Sets the interval in milliseconds before flashing the blip.
	 */
	@:native("SetBlipFlashInterval")
	static function setBlipFlashInterval(blip:Dynamic, interval:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetBlipNameToPlayerName")
	static function setBlipNameToPlayerName(blip:Dynamic, player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SetBlipFlashes")
	static function setBlipFlashes(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Flashes blip for time in milliseconds before stopping.
	 */
	@:native("SetBlipFlashTimer")
	static function setBlipFlashTimer(blip:Dynamic, duration:Int):Dynamic;

	/**
	 * ```
	 * Enable / disable showing route for the Blip-object.  
	 * ```
	 */
	@:native("SetBlipRoute")
	static function setBlipRoute(blip:Dynamic, enabled:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetBlipFlashesAlternate")
	static function setBlipFlashesAlternate(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetBlipScale")
	static function setBlipScale(blip:Dynamic, scale:Float):Dynamic;

	/**
	 * ```
	 * See this topic for more details : gtaforums.com/topic/717612-v-scriptnative-documentation-and-research/page-35?p=1069477935  
	 * ```
	 */
	@:native("SetBlipPriority")
	static function setBlipPriority(blip:Dynamic, priority:Int):Dynamic;

	/**
	 * ```
	 * Doesn't work if the label text of gxtEntry is >= 80.  
	 * ```
	 */
	@:native("SetBlipNameFromTextFile")
	static function setBlipNameFromTextFile(blip:Dynamic, gxtEntry:String):Dynamic;

	/**
	 * 
	 */
	@:native("SetBlipHiddenOnLegend")
	static function setBlipHiddenOnLegend(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetBlipRouteColour")
	static function setBlipRouteColour(blip:Dynamic, colour:Int):Dynamic;

	/**
	 * Sets the displayed sprite for a specific blip.
	 * 
	 * There's a [list of sprites](https://docs.fivem.net/game-references/blips/) on the FiveM documentation site.
	 */
	@:native("SetBlipSprite")
	static function setBlipSprite(blip:Dynamic, spriteId:Int):Dynamic;

	/**
	 * ```
	 * After some testing, looks like you need to use CEIL() on the rotation (vehicle/ped heading) before using it there.
	 * ```
	 */
	@:native("SetBlipRotation")
	static function setBlipRotation(blip:Dynamic, rotation:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetBlipSecondaryColour")
	static function setBlipSecondaryColour(blip:Dynamic, r:Int, g:Int, b:Int):Dynamic;

	/**
	 * See https://imgur.com/a/lLkEsMN
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("SetBlipScaleTransformation")
	static function SetBlipScaleTransformation(blip:Dynamic, xScale:Float, yScale:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 3: Any p2
	 * ```
	 */
	@:native("SetBlipShowCone")
	static function setBlipShowCone(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Does not require whole number/integer rotations.
	 * ```
	 */
	@:native("SetBlipSquaredRotation")
	static function SetBlipSquaredRotation(blip:Dynamic, heading:Float):Dynamic;

	/**
	 * ```
	 * Makes a blip go small when off the minimap.
	 * SET_BLIP_AS_*
	 * ```
	 */
	@:native("SetBlipShrink")
	static function SetBlipShrink(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Overrides the position of the main player blip for the current frame.
	 */
	@:native("SetFakePausemapPlayerPositionThisFrame")
	static function setFakePausemapPlayerPositionThisFrame(x:Float, y:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetColourOfNextTextComponent")
	static function setColourOfNextTextComponent(hudColor:Int):Dynamic;

	/**
	 * ```
	 * SET_*
	 * ```
	 */
	@:native("SetDirectorModeClearTriggeredFlag")
	static function SetDirectorModeClearTriggeredFlag():Dynamic;

	/**
	 * Set a custom color for the MP HUD, providing a way to customize the HUD's appearance similar to character color changes in MP.
	 * 
	 * ```cpp
	 * enum eHudColours {
	 *     HUD_COLOUR_PURE_WHITE = 0,
	 *     HUD_COLOUR_WHITE = 1,
	 *     HUD_COLOUR_BLACK = 2,
	 *     HUD_COLOUR_GREY = 3,
	 *     HUD_COLOUR_GREYLIGHT = 4,
	 *     HUD_COLOUR_GREYDARK = 5,
	 *     HUD_COLOUR_RED = 6,
	 *     HUD_COLOUR_REDLIGHT = 7,
	 *     HUD_COLOUR_REDDARK = 8,
	 *     HUD_COLOUR_BLUE = 9,
	 *     HUD_COLOUR_BLUELIGHT = 10,
	 *     HUD_COLOUR_BLUEDARK = 11,
	 *     HUD_COLOUR_YELLOW = 12,
	 *     HUD_COLOUR_YELLOWLIGHT = 13,
	 *     HUD_COLOUR_YELLOWDARK = 14,
	 *     HUD_COLOUR_ORANGE = 15,
	 *     HUD_COLOUR_ORANGELIGHT = 16,
	 *     HUD_COLOUR_ORANGEDARK = 17,
	 *     HUD_COLOUR_GREEN = 18,
	 *     HUD_COLOUR_GREENLIGHT = 19,
	 *     HUD_COLOUR_GREENDARK = 20,
	 *     HUD_COLOUR_PURPLE = 21,
	 *     HUD_COLOUR_PURPLELIGHT = 22,
	 *     HUD_COLOUR_PURPLEDARK = 23,
	 *     HUD_COLOUR_PINK = 24,
	 *     HUD_COLOUR_STAR = 25,
	 *     HUD_COLOUR_STARLIGHT = 26,
	 *     HUD_COLOUR_STARDARK = 27,
	 *     HUD_COLOUR_NET_PLAYER1 = 28,
	 *     HUD_COLOUR_NET_PLAYER2 = 29,
	 *     HUD_COLOUR_NET_PLAYER3 = 30,
	 *     HUD_COLOUR_NET_PLAYER4 = 31,
	 *     HUD_COLOUR_NET_PLAYER5 = 32,
	 *     HUD_COLOUR_NET_PLAYER6 = 33,
	 *     HUD_COLOUR_NET_PLAYER7 = 34,
	 *     HUD_COLOUR_NET_PLAYER8 = 35,
	 *     HUD_COLOUR_NET_PLAYER9 = 36,
	 *     HUD_COLOUR_NET_PLAYER10 = 37,
	 *     HUD_COLOUR_NET_PLAYER11 = 38,
	 *     HUD_COLOUR_NET_PLAYER12 = 39,
	 *     HUD_COLOUR_NET_PLAYER13 = 40,
	 *     HUD_COLOUR_NET_PLAYER14 = 41,
	 *     HUD_COLOUR_NET_PLAYER15 = 42,
	 *     HUD_COLOUR_NET_PLAYER16 = 43,
	 *     HUD_COLOUR_NET_PLAYER17 = 44,
	 *     HUD_COLOUR_NET_PLAYER18 = 45,
	 *     HUD_COLOUR_NET_PLAYER19 = 46,
	 *     HUD_COLOUR_NET_PLAYER20 = 47,
	 *     HUD_COLOUR_NET_PLAYER21 = 48,
	 *     HUD_COLOUR_NET_PLAYER22 = 49,
	 *     HUD_COLOUR_NET_PLAYER23 = 50,
	 *     HUD_COLOUR_NET_PLAYER24 = 51,
	 *     HUD_COLOUR_NET_PLAYER25 = 52,
	 *     HUD_COLOUR_NET_PLAYER26 = 53,
	 *     HUD_COLOUR_NET_PLAYER27 = 54,
	 *     HUD_COLOUR_NET_PLAYER28 = 55,
	 *     HUD_COLOUR_NET_PLAYER29 = 56,
	 *     HUD_COLOUR_NET_PLAYER30 = 57,
	 *     HUD_COLOUR_NET_PLAYER31 = 58,
	 *     HUD_COLOUR_NET_PLAYER32 = 59,
	 *     HUD_COLOUR_SIMPLEBLIP_DEFAULT = 60,
	 *     HUD_COLOUR_MENU_BLUE = 61,
	 *     HUD_COLOUR_MENU_GREY_LIGHT = 62,
	 *     HUD_COLOUR_MENU_BLUE_EXTRA_DARK = 63,
	 *     HUD_COLOUR_MENU_YELLOW = 64,
	 *     HUD_COLOUR_MENU_YELLOW_DARK = 65,
	 *     HUD_COLOUR_MENU_GREEN = 66,
	 *     HUD_COLOUR_MENU_GREY = 67,
	 *     HUD_COLOUR_MENU_GREY_DARK = 68,
	 *     HUD_COLOUR_MENU_HIGHLIGHT = 69,
	 *     HUD_COLOUR_MENU_STANDARD = 70,
	 *     HUD_COLOUR_MENU_DIMMED = 71,
	 *     HUD_COLOUR_MENU_EXTRA_DIMMED = 72,
	 *     HUD_COLOUR_BRIEF_TITLE = 73,
	 *     HUD_COLOUR_MID_GREY_MP = 74,
	 *     HUD_COLOUR_NET_PLAYER1_DARK = 75,
	 *     HUD_COLOUR_NET_PLAYER2_DARK = 76,
	 *     HUD_COLOUR_NET_PLAYER3_DARK = 77,
	 *     HUD_COLOUR_NET_PLAYER4_DARK = 78,
	 *     HUD_COLOUR_NET_PLAYER5_DARK = 79,
	 *     HUD_COLOUR_NET_PLAYER6_DARK = 80,
	 *     HUD_COLOUR_NET_PLAYER7_DARK = 81,
	 *     HUD_COLOUR_NET_PLAYER8_DARK = 82,
	 *     HUD_COLOUR_NET_PLAYER9_DARK = 83,
	 *     HUD_COLOUR_NET_PLAYER10_DARK = 84,
	 *     HUD_COLOUR_NET_PLAYER11_DARK = 85,
	 *     HUD_COLOUR_NET_PLAYER12_DARK = 86,
	 *     HUD_COLOUR_NET_PLAYER13_DARK = 87,
	 *     HUD_COLOUR_NET_PLAYER14_DARK = 88,
	 *     HUD_COLOUR_NET_PLAYER15_DARK = 89,
	 *     HUD_COLOUR_NET_PLAYER16_DARK = 90,
	 *     HUD_COLOUR_NET_PLAYER17_DARK = 91,
	 *     HUD_COLOUR_NET_PLAYER18_DARK = 92,
	 *     HUD_COLOUR_NET_PLAYER19_DARK = 93,
	 *     HUD_COLOUR_NET_PLAYER20_DARK = 94,
	 *     HUD_COLOUR_NET_PLAYER21_DARK = 95,
	 *     HUD_COLOUR_NET_PLAYER22_DARK = 96,
	 *     HUD_COLOUR_NET_PLAYER23_DARK = 97,
	 *     HUD_COLOUR_NET_PLAYER24_DARK = 98,
	 *     HUD_COLOUR_NET_PLAYER25_DARK = 99,
	 *     HUD_COLOUR_NET_PLAYER26_DARK = 100,
	 *     HUD_COLOUR_NET_PLAYER27_DARK = 101,
	 *     HUD_COLOUR_NET_PLAYER28_DARK = 102,
	 *     HUD_COLOUR_NET_PLAYER29_DARK = 103,
	 *     HUD_COLOUR_NET_PLAYER30_DARK = 104,
	 *     HUD_COLOUR_NET_PLAYER31_DARK = 105,
	 *     HUD_COLOUR_NET_PLAYER32_DARK = 106,
	 *     HUD_COLOUR_BRONZE = 107,
	 *     HUD_COLOUR_SILVER = 108,
	 *     HUD_COLOUR_GOLD = 109,
	 *     HUD_COLOUR_PLATINUM = 110,
	 *     HUD_COLOUR_GANG1 = 111,
	 *     HUD_COLOUR_GANG2 = 112,
	 *     HUD_COLOUR_GANG3 = 113,
	 *     HUD_COLOUR_GANG4 = 114,
	 *     HUD_COLOUR_SAME_CREW = 115,
	 *     HUD_COLOUR_FREEMODE = 116,
	 *     HUD_COLOUR_PAUSE_BG = 117,
	 *     HUD_COLOUR_FRIENDLY = 118,
	 *     HUD_COLOUR_ENEMY = 119,
	 *     HUD_COLOUR_LOCATION = 120,
	 *     HUD_COLOUR_PICKUP = 121,
	 *     HUD_COLOUR_PAUSE_SINGLEPLAYER = 122,
	 *     HUD_COLOUR_FREEMODE_DARK = 123,
	 *     HUD_COLOUR_INACTIVE_MISSION = 124,
	 *     HUD_COLOUR_DAMAGE = 125,
	 *     HUD_COLOUR_PINKLIGHT = 126,
	 *     HUD_COLOUR_PM_MITEM_HIGHLIGHT = 127,
	 *     HUD_COLOUR_SCRIPT_VARIABLE = 128,
	 *     HUD_COLOUR_YOGA = 129,
	 *     HUD_COLOUR_TENNIS = 130,
	 *     HUD_COLOUR_GOLF = 131,
	 *     HUD_COLOUR_SHOOTING_RANGE = 132,
	 *     HUD_COLOUR_FLIGHT_SCHOOL = 133,
	 *     HUD_COLOUR_NORTH_BLUE = 134,
	 *     HUD_COLOUR_SOCIAL_CLUB = 135,
	 *     HUD_COLOUR_PLATFORM_BLUE = 136,
	 *     HUD_COLOUR_PLATFORM_GREEN = 137,
	 *     HUD_COLOUR_PLATFORM_GREY = 138,
	 *     HUD_COLOUR_FACEBOOK_BLUE = 139,
	 *     HUD_COLOUR_INGAME_BG = 140,
	 *     HUD_COLOUR_DARTS = 141,
	 *     HUD_COLOUR_WAYPOINT = 142,
	 *     HUD_COLOUR_MICHAEL = 143,
	 *     HUD_COLOUR_FRANKLIN = 144,
	 *     HUD_COLOUR_TREVOR = 145,
	 *     HUD_COLOUR_GOLF_P1 = 146,
	 *     HUD_COLOUR_GOLF_P2 = 147,
	 *     HUD_COLOUR_GOLF_P3 = 148,
	 *     HUD_COLOUR_GOLF_P4 = 149,
	 *     HUD_COLOUR_WAYPOINTLIGHT = 150,
	 *     HUD_COLOUR_WAYPOINTDARK = 151,
	 *     HUD_COLOUR_PANEL_LIGHT = 152,
	 *     HUD_COLOUR_MICHAEL_DARK = 153,
	 *     HUD_COLOUR_FRANKLIN_DARK = 154,
	 *     HUD_COLOUR_TREVOR_DARK = 155,
	 *     HUD_COLOUR_OBJECTIVE_ROUTE = 156,
	 *     HUD_COLOUR_PAUSEMAP_TINT = 157,
	 *     HUD_COLOUR_PAUSE_DESELECT = 158,
	 *     HUD_COLOUR_PM_WEAPONS_PURCHASABLE = 159,
	 *     HUD_COLOUR_PM_WEAPONS_LOCKED = 160,
	 *     HUD_COLOUR_END_SCREEN_BG = 161,
	 *     HUD_COLOUR_CHOP = 162,
	 *     HUD_COLOUR_PAUSEMAP_TINT_HALF = 163,
	 *     HUD_COLOUR_NORTH_BLUE_OFFICIAL = 164,
	 *     HUD_COLOUR_SCRIPT_VARIABLE_2 = 165,
	 *     HUD_COLOUR_H = 166,
	 *     HUD_COLOUR_HDARK = 167,
	 *     HUD_COLOUR_T = 168,
	 *     HUD_COLOUR_TDARK = 169,
	 *     HUD_COLOUR_HSHARD = 170,
	 *     HUD_COLOUR_CONTROLLER_MICHAEL = 171 
	 *     HUD_COLOUR_CONTROLLER_FRANKLIN = 172 
	 *     HUD_COLOUR_CONTROLLER_TREVOR = 173 
	 *     HUD_COLOUR_CONTROLLER_CHOP = 174,
	 *     HUD_COLOUR_VIDEO_EDITOR_VIDEO = 175,
	 *     HUD_COLOUR_VIDEO_EDITOR_AUDIO = 176,
	 *     HUD_COLOUR_VIDEO_EDITOR_TEXT = 177,
	 *     HUD_COLOUR_HB_BLUE = 178,
	 *     HUD_COLOUR_HB_YELLOW = 179,
	 *     HUD_COLOUR_VIDEO_EDITOR_SCORE = 180,
	 *     HUD_COLOUR_VIDEO_EDITOR_AUDIO_FADEOUT = 181,
	 *     HUD_COLOUR_VIDEO_EDITOR_TEXT_FADEOUT = 182,
	 *     HUD_COLOUR_VIDEO_EDITOR_SCORE_FADEOUT = 183,
	 *     HUD_COLOUR_HEIST_BACKGROUND = 184,
	 *     HUD_COLOUR_VIDEO_EDITOR_AMBIENT = 185,
	 *     HUD_COLOUR_VIDEO_EDITOR_AMBIENT_FADEOUT = 186,
	 *     HUD_COLOUR_GANG_BOSS = 187,
	 *     HUD_COLOUR_GOON = 188,
	 *     HUD_COLOUR_BOSS = 189,
	 *     HUD_COLOUR_LOW_FLOW = 190,
	 *     HUD_COLOUR_LOW_FLOW_DARK = 191,
	 *     HUD_COLOUR_G1 = 192,
	 *     HUD_COLOUR_G2 = 193,
	 *     HUD_COLOUR_G3 = 194,
	 *     HUD_COLOUR_G4 = 195,
	 *     HUD_COLOUR_G5 = 196,
	 *     HUD_COLOUR_G6 = 197,
	 *     HUD_COLOUR_G7 = 198,
	 *     HUD_COLOUR_G8 = 199,
	 *     HUD_COLOUR_G9 = 200,
	 *     HUD_COLOUR_G10 = 201,
	 *     HUD_COLOUR_G11 = 202,
	 *     HUD_COLOUR_G12 = 203,
	 *     HUD_COLOUR_G13 = 204,
	 *     HUD_COLOUR_G14 = 205,
	 *     HUD_COLOUR_G15 = 206,
	 *     HUD_COLOUR_ADVERSARY = 207,
	 *     HUD_COLOUR_DEGEN_RED = 208,
	 *     HUD_COLOUR_DEGEN_YELLOW = 209,
	 *     HUD_COLOUR_DEGEN_GREEN = 210,
	 *     HUD_COLOUR_DEGEN_CYAN = 211,
	 *     HUD_COLOUR_DEGEN_BLUE = 212,
	 *     HUD_COLOUR_DEGEN_MAGENTA = 213,
	 *     HUD_COLOUR_STUNT_1 = 214,
	 *     HUD_COLOUR_STUNT_2 = 215,
	 *     HUD_COLOUR_SPECIAL_RACE_SERIES = 216 
	 *     HUD_COLOUR_SPECIAL_RACE_SERIES_DARK = 217,
	 *     HUD_COLOUR_CS = 218 
	 *     HUD_COLOUR_CS_DARK = 219,
	 *     HUD_COLOUR_TECH_GREEN = 220,
	 *     HUD_COLOUR_TECH_GREEN_DARK = 221,
	 *     HUD_COLOUR_TECH_RED = 222,
	 *     HUD_COLOUR_TECH_GREEN_VERY_DARK = 223,
	 *     HUD_COLOUR_PLACEHOLDER_01 = 224,
	 *     HUD_COLOUR_PLACEHOLDER_02 = 225,
	 *     HUD_COLOUR_PLACEHOLDER_03 = 226,
	 *     HUD_COLOUR_PLACEHOLDER_04 = 227,
	 *     HUD_COLOUR_PLACEHOLDER_05 = 228,
	 *     HUD_COLOUR_PLACEHOLDER_06 = 229,
	 *     HUD_COLOUR_PLACEHOLDER_07 = 230,
	 *     HUD_COLOUR_PLACEHOLDER_08 = 231,
	 *     HUD_COLOUR_PLACEHOLDER_09 = 232,
	 *     HUD_COLOUR_PLACEHOLDER_10 = 233,
	 *     HUD_COLOUR_JUNK_ENERGY = 234
	 * };
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: 2545
	 * ```
	 */
	@:native("SetCustomMpHudColor")
	static function setCustomMpHudColor(hudColorId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetFloatingHelpTextWorldPosition")
	static function setFloatingHelpTextWorldPosition(hudIndex:Int, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetFloatingHelpTextScreenPosition")
	static function setFloatingHelpTextScreenPosition(hudIndex:Int, x:Float, y:Float):Dynamic;

	/**
	 * ### Arrow Positions
	 * 
	 * *   0 = Off / No arrow
	 * *   1 = Top
	 * *   2 = Left
	 * *   3 = Bottom
	 * *   4 = Right
	 * 
	 * ### Note
	 * 
	 * Any numeric value greater than 4 will result in a right arrow (Index 4)
	 * 
	 * ### Important
	 * 
	 * Needs to be called every frame
	 * 
	 * ![Preview of the provided example code](https://forum.cfx.re/uploads/default/original/4X/7/f/3/7f319bc93c3a00b8829bd4ac8dddc235fbf3a9ef.png)
	 */
	@:native("SetFloatingHelpTextStyle")
	static function setFloatingHelpTextStyle(hudIndex:Int, style:Int, hudColor:Int, alpha:Int, arrowPosition:Int, boxOffset:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetGpsFlashes")
	static function setGpsFlashes(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetFloatingHelpTextToEntity")
	static function setFloatingHelpTextToEntity(hudIndex:Int, entity:Dynamic, offsetX:Float, offsetY:Float):Dynamic;

	/**
	 * ```
	 * Only the script that originally called SET_GPS_FLAGS can set them again. Another script cannot set the flags, until the first script that called it has called CLEAR_GPS_FLAGS.
	 * Doesn't seem like the flags are actually read by the game at all.
	 * ```
	 */
	@:native("SetGpsFlags")
	static function setGpsFlags(p0:Int, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetFrontendActive")
	static function setFrontendActive(active:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetHealthHudDisplayValues")
	static function setHealthHudDisplayValues(health:Int, capacity:Int, wasAdded:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetGpsCustomRouteRender")
	static function setGpsCustomRouteRender(toggle:Bool, radarThickness:Int, mapThickness:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetGpsMultiRouteRender")
	static function setGpsMultiRouteRender(toggle:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("SetInteriorZoomLevelDecreased")
	static function SetInteriorZoomLevelDecreased(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetHelpMessageTextStyle")
	static function SetHelpMessageTextStyle(style:Int, hudColor:Int, alpha:Int, p3:Int, p4:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("SetInteriorZoomLevelIncreased")
	static function SetInteriorZoomLevelIncreased(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetHudComponentPosition")
	static function setHudComponentPosition(id:Int, x:Float, y:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetMinimapBlockWaypoint")
	static function setMinimapBlockWaypoint(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetMainPlayerBlipColour")
	static function SetMainPlayerBlipColour(color:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetMaxArmourHudDisplay")
	static function setMaxArmourHudDisplay(maximumValue:Int):Dynamic;

	/**
	 * ```
	 * Argument must be 0.0f or above 38.0f, or it will be ignored.  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 3: Any p2
	 * ```
	 */
	@:native("SetMinimapAltitudeIndicatorLevel")
	static function SetMinimapAltitudeIndicatorLevel(altitude:Float, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetMaxHealthHudDisplay")
	static function setMaxHealthHudDisplay(maximumValue:Int):Dynamic;

	/**
	 * ```
	 * If true, the entire map will be revealed.
	 * ```
	 */
	@:native("SetMinimapHideFow")
	static function setMinimapHideFow(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetMinimapFowRevealCoordinate")
	static function setMinimapFowRevealCoordinate(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * This native is used to colorize/toggle certain map components like the army base.
	 * 
	 * Component IDs 6 through 14 are used by the freemode event King of the Castle in GTA Online.
	 * 
	 * ### An incomplete list of component IDs:
	 * 
	 * *   **0**: Los Santos International Airport yellow runway markers
	 * *   **1**: Sandy Shores Airfield yellow runway markers
	 * *   **2**: McKenzie Field yellow runway markers
	 * *   **6**: Vespucci Beach lifeguard building
	 * *   **7**: Top level zone of Alien Camp (Hippy Camp)
	 * *   **8**: Paleto Bay fire station drill tower
	 * *   **9** Land Act Dam tower
	 * *   **10** Pala Springs Aerial Tramway
	 * *   **11** Galileo Observatory power unit
	 * *   **12** Small zone (empty "interior") near Central Los Santos Medical Center
	 * *   **13** Richman Mansion grotto
	 * *   **14** 2 Alien Camp (Hippy Camp) circles
	 * *   **15** Fort Zancudo
	 */
	@:native("SetMinimapComponent")
	static function setMinimapComponent(componentID:Int, toggle:Bool, hudColor:Int):Int;

	/**
	 * 
	 */
	@:native("SetMinimapInSpectatorMode")
	static function setMinimapInSpectatorMode(toggle:Bool, ped:Dynamic):Dynamic;

	/**
	 * Not much is known so far on what it does *exactly*.
	 * All I know for sure is that it draws the specified hole ID on the pause menu map as well as on the mini-map/radar. This native also seems to change some other things related to the pause menu map's behaviour, for example: you can no longer set waypoints, the pause menu map starts up in a 'zoomed in' state. This native does not need to be executed every tick.
	 * 
	 * You need to center the minimap manually as well as change/lock it's zoom and angle in order for it to appear correctly on the minimap.
	 * You'll also need to use the `GOLF` scaleform in order to get the correct minmap border to show up.
	 * 
	 * Use [`SET_MINIMAP_GOLF_COURSE_OFF()`](#\_0x35EDD5B2E3FF01C0) to reset the map when you no longer want to display any golf holes (you still need to unlock zoom, position and angle of the radar manually after calling this).
	 */
	@:native("SetMinimapGolfCourse")
	static function setMinimapGolfCourse(hole:Int):Dynamic;

	/**
	 * Enables or disables the sonar sweep animation on the minimap.
	 * 
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("SetMinimapSonarSweep")
	static function setMinimapSonarSweep(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetMissionName_2")
	static function SetMissionName2(p0:Bool, name:String):Dynamic;

	/**
	 * 
	 */
	@:native("SetMinimapGolfCourseOff")
	static function setMinimapGolfCourseOff():Dynamic;

	/**
	 * 
	 */
	@:native("SetMissionName")
	static function setMissionName(p0:Bool, name:String):Dynamic;

	/**
	 * Sets the mouse pointer to be active on current frame.
	 */
	@:native("SetMouseCursorThisFrame")
	static function setMouseCursorThisFrame():Dynamic;

	/**
	 * Toggles the visibility of the cursor. Do note that if the game loses focus and then regains it, the cursor will become visible again.
	 */
	@:native("SetMouseCursorVisible")
	static function setMouseCursorVisible(isVisible:Bool):Dynamic;

	/**
	 * ```
	 * Toggles the North Yankton map
	 * ```
	 */
	@:native("SetMinimapInPrologue")
	static function setMinimapInPrologue(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sets flag's sprite transparency. 0-255.  
	 * ```
	 */
	@:native("SetMpGamerTagAlpha")
	static function setMpGamerTagAlpha(gamerTagId:Int, component:Int, alpha:Int):Dynamic;

	/**
	 * Changes the mouse style.
	 * 
	 * ```cpp
	 * enum eMousePointerStyle {
	 * 	ARROW = 1,
	 * 	ARROW_DIMMED = 2,
	 * 	HAND_OPEN = 3,
	 * 	HAND_GRAB = 4,
	 * 	HAND_MIDDLE_FINGER = 5,
	 * 	ARROW_LEFT = 6,
	 * 	ARROW_RIGHT = 7,
	 * 	ARROW_UP = 8,
	 * 	ARROW_DOWN = 9,
	 * 	ARROW_TRIMMING = 10,
	 * 	ARROW_PLUS = 11,
	 * 	ARROW_MINUS = 12
	 * };
	 * ```
	 */
	@:native("SetMouseCursorStyle")
	static function setMouseCursorStyle(style:Int):Dynamic;

	/**
	 * Sets a gamer tag's component colour
	 */
	@:native("SetMpGamerTagColour")
	static function setMpGamerTagColour(gamerTagId:Int, component:Int, hudColorIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetMpGamerTagBigText")
	static function setMpGamerTagBigText(gamerTagId:Int, string:String):Dynamic;

	/**
	 * 
	 */
	@:native("SetMpGamerTagName")
	static function setMpGamerTagName(gamerTagId:Int, string:String):Dynamic;

	/**
	 * Manually sets the player health value for a gamer tag, using the maximum health to calculate what percentage of the bar should be filled.
	 * Has no effect unless [\_SET_MP_GAMER_TAG_DISABLE_PLAYER_HEALTH_SYNC](#\_0xD29EC58C2F6B5014) has been called prior to disable synchronisation with the attached ped.
	 */
	@:native("SetMpGamerTagOverridePlayerHealth")
	static function SetMpGamerTagOverridePlayerHealth(gamerTagId:Int, health:Int, maximumHealth:Int):Dynamic;

	/**
	 * By default, the player health value shown by a gamer tag's health bar is synchronised with the health of the ped it is attached to.
	 * This native disables that behaviour, allowing [`_SET_MP_GAMER_TAG_OVERRIDE_PLAYER_HEALTH`](#\_0x1563FE35E9928E67) to have an effect.
	 */
	@:native("SetMpGamerTagDisablePlayerHealthSync")
	static function SetMpGamerTagDisablePlayerHealthSync(gamerTagId:Int, toggle:Bool):Dynamic;

	/**
	 * Should be enabled as component (2). Has 0 alpha by default.
	 */
	@:native("SetMpGamerTagHealthBarColour")
	static function setMpGamerTagHealthBarColour(gamerTagId:Int, hudColorIndex:Int):Dynamic;

	/**
	 * ```
	 * displays wanted star above head  
	 * ```
	 */
	@:native("SetMpGamerTagMpBagLargeCount")
	static function SetMpGamerTagMpBagLargeCount(gamerTagId:Int, count:Int):Dynamic;

	/**
	 * ```cpp
	 * enum eMpGamerTagComponent
	 * {
	 * 	MP_TAG_GAMER_NAME = 0,
	 * 	MP_TAG_CREW_TAG = 1,
	 * 	MP_TAG_HEALTH_ARMOUR = 2,
	 * 	MP_TAG_BIG_TEXT = 3,
	 * 	MP_TAG_AUDIO_ICON = 4,
	 * 	MP_TAG_USING_MENU = 5,
	 * 	MP_TAG_PASSIVE_MODE = 6,
	 * 	MP_TAG_WANTED_STARS = 7,
	 * 	MP_TAG_DRIVER = 8,
	 * 	MP_TAG_CO_DRIVER = 9,
	 * 	MP_TAG_TAGGED = 10,
	 * 	MP_TAG_GAMER_NAME_NEARBY = 11,
	 * 	MP_TAG_ARROW = 12,
	 * 	MP_TAG_PACKAGES = 13,
	 * 	MP_TAG_INV_IF_PED_FOLLOWING = 14,
	 * 	MP_TAG_RANK_TEXT = 15,
	 * 	MP_TAG_TYPING = 16,
	 * 	MP_TAG_BAG_LARGE = 17,
	 * 	MP_TAG_ARROW = 18,
	 * 	MP_TAG_GANG_CEO = 19,
	 * 	MP_TAG_GANG_BIKER = 20,
	 * 	MP_TAG_BIKER_ARROW = 21,
	 * 	MP_TAG_MC_ROLE_PRESIDENT = 22,
	 * 	MP_TAG_MC_ROLE_VICE_PRESIDENT = 23,
	 * 	MP_TAG_MC_ROLE_ROAD_CAPTAIN = 24,
	 * 	MP_TAG_MC_ROLE_SARGEANT = 25,
	 * 	MP_TAG_MC_ROLE_ENFORCER = 26,
	 * 	MP_TAG_MC_ROLE_PROSPECT = 27,
	 * 	MP_TAG_TRANSMITTER = 28,
	 * 	MP_TAG_BOMB = 29
	 * };
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 4: Any p3
	 * ```
	 */
	@:native("SetMpGamerTagVisibility")
	static function setMpGamerTagVisibility(gamerTagId:Int, component:Int, toggle:Bool):Dynamic;

	/**
	 * Preview image:
	 * 
	 * ![](https://i.imgur.com/1BTmdyv.png)
	 * 
	 * To change the bank balance use [`STAT_SET_INT`](#\_0xB3271D7AB655B441) with "BANK_BALANCE" to whatever value you need to.
	 */
	@:native("SetMultiplayerBankCash")
	static function setMultiplayerBankCash():Dynamic;

	/**
	 * Sets the visibility of all components of the gamer tag to the specified value.
	 */
	@:native("SetMpGamerTagVisibilityAll")
	static function SetMpGamerTagVisibilityAll(gamerTagId:Int, toggle:Bool):Dynamic;

	/**
	 * Preview image:
	 * 
	 * ![](https://i.imgur.com/1BTmdyv.png)
	 * 
	 * To change money value use [`STAT_SET_INT`](#\_0xB3271D7AB655B441) with "MP0\_WALLET_BALANCE" to whatever value you need to.
	 */
	@:native("SetMultiplayerWalletCash")
	static function setMultiplayerWalletCash():Dynamic;

	/**
	 * Sets the health bar of a gamer tag to show the health of the last (or current) vehicle of the ped the gamer tag is attached to.
	 * The vehicle health value is stored separate from the player health and using it won't clear any player health overrides.
	 */
	@:native("SetMpGamerTagUseVehicleHealth")
	static function SetMpGamerTagUseVehicleHealth(gamerTagId:Int, toggle:Bool):Dynamic;

	/**
	 * **This native does absolutely nothing, just a nullsub**
	 */
	@:native("SetMultiplayerHudCash")
	static function setMultiplayerHudCash(p0:Int, p1:Int):Dynamic;

	/**
	 * ```
	 * displays wanted star above head  
	 * ```
	 */
	@:native("SetMpGamerTagWantedLevel")
	static function setMpGamerTagWantedLevel(gamerTagId:Int, wantedlvl:Int):Dynamic;

	/**
	 * Toggles the light state for the pause menu ped in frontend menus.
	 * 
	 * This is used by R\* in combination with [`SET_PAUSE_MENU_PED_SLEEP_STATE`](#\_0xECF128344E9FF9F1) to toggle the "offline" or "online" state in the "friends" tab of the pause menu in GTA Online.
	 * 
	 * Example:
	 * On: ![lights on](https://vespura.com/hi/i/2019-04-01\_16-09\_540ee\_1015.png)
	 * Off: ![lights off](https://vespura.com/hi/i/2019-04-01\_16-10\_8b5e7\_1016.png)
	 */
	@:native("SetPauseMenuPedLighting")
	static function setPauseMenuPedLighting(state:Bool):Dynamic;

	/**
	 * ```
	 * if "flag" is true, the AI blip will always be displayed for the specified ped, if it has an AI blip  
	 * If "flag" is false, the AI blip will only be displayed when the player is in combat with the specified ped, if it has an AI blip  
	 * ```
	 */
	@:native("SetPedAiBlipForcedOn")
	static function setPedAiBlipForcedOn(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedAiBlipHasCone")
	static function setPedAiBlipHasCone(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * This native is deprecated.
	 * 
	 * If you're looking to:
	 * 
	 * *   Toggle the pause menu on, use [`ACTIVATE_FRONTEND_MENU`](#\_0xEF01D36B9C9D0C7B)
	 * *   Toggle the pause menu off, use [`SET_FRONTEND_ACTIVE`](#\_0x745711A75AB09277)
	 * *   Disable toggling the pause menu, use [`DISABLE_FRONTEND_THIS_FRAME`](#\_0x6D3465A73092F0E6)
	 */
	@:native("SetPauseMenuActive")
	static function setPauseMenuActive(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetNewWaypoint")
	static function setNewWaypoint(x:Float, y:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedAiBlipNoticeRange")
	static function setPedAiBlipNoticeRange(ped:Dynamic, range:Float):Dynamic;

	/**
	 * Toggles the pause menu ped sleep state for frontend menus.
	 * 
	 * [Example GIF](https://vespura.com/hi/i/2019-04-01\_15-51\_8ed38\_1014.gif)
	 */
	@:native("SetPauseMenuPedSleepState")
	static function setPauseMenuPedSleepState(state:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedAiBlipGangId")
	static function setPedAiBlipGangId(ped:Dynamic, gangId:Int):Dynamic;

	/**
	 * ```
	 * If toggle is true, hides special ability bar / character name in the pause menu
	 * If toggle is false, shows special ability bar / character name in the pause menu
	 * SET_PLAYER_*
	 * ```
	 */
	@:native("SetPlayerIsInDirectorMode")
	static function SetPlayerIsInDirectorMode(toggle:Bool):Dynamic;

	/**
	 * ```
	 * This native turns on the AI blip on the specified ped. It also disappears automatically when the ped is too far or if the ped is dead. You don't need to control it with other natives.
	 * See gtaforums.com/topic/884370-native-research-ai-blips for further information.
	 * ```
	 */
	@:native("SetPedHasAiBlip")
	static function setPedHasAiBlip(ped:Dynamic, hasCone:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedHasAiBlipWithColor")
	static function SetPedHasAiBlipWithColor(ped:Dynamic, hasCone:Bool, color:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedAiBlipSprite")
	static function SetPedAiBlipSprite(ped:Dynamic, spriteId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetRadarZoomPrecise")
	static function setRadarZoomPrecise(zoom:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetRadarAsExteriorThisFrame")
	static function setRadarAsExteriorThisFrame():Dynamic;

	/**
	 * ```
	 * List of interior hashes: pastebin.com/1FUyXNqY  
	 * Not for every interior zoom > 0 available.  
	 * ```
	 */
	@:native("SetRadarAsInteriorThisFrame")
	static function setRadarAsInteriorThisFrame(interior:Int, x:Float, y:Float, heading:Int, zoom:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetRaceTrackRender")
	static function setRaceTrackRender(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sets the color of HUD_COLOUR_SCRIPT_VARIABLE
	 * ```
	 */
	@:native("SetScriptVariableHudColour")
	static function setScriptVariableHudColour(r:Int, g:Int, b:Int, a:Int):Dynamic;

	/**
	 * Enabling this on a radius blip will make it outline only.\
	 * Please note that this only works on a **radius** blip (i.e. one generated using [`ADD_BLIP_FOR_RADIUS`](#\_0x46818D79B1F7499A)), not a normal blip.
	 * 
	 * **Example result:**\
	 * ![example-image](https://i.imgur.com/hS6ki7p.png)
	 */
	@:native("SetRadiusBlipEdge")
	static function setRadiusBlipEdge(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetRadarZoomToBlip")
	static function setRadarZoomToBlip(blip:Dynamic, zoom:Float):Dynamic;

	/**
	 * ```
	 * zoomLevel ranges from 0 to 200  
	 * ```
	 */
	@:native("SetRadarZoom")
	static function setRadarZoom(zoomLevel:Int):Dynamic;

	/**
	 * ```
	 * HUD::SET_SOCIAL_CLUB_TOUR("Gallery");
	 * HUD::SET_SOCIAL_CLUB_TOUR("Missions");
	 * HUD::SET_SOCIAL_CLUB_TOUR("General");
	 * HUD::SET_SOCIAL_CLUB_TOUR("Playlists");
	 * ```
	 */
	@:native("SetSocialClubTour")
	static function setSocialClubTour(name:String):Dynamic;

	/**
	 * ```
	 * Sets the color of HUD_COLOUR_SCRIPT_VARIABLE_2
	 * ```
	 */
	@:native("SetScriptVariable_2HudColour")
	static function SetScriptVariable2HudColour(r:Int, g:Int, b:Int, a:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetTextDropShadow")
	static function setTextDropShadow():Dynamic;

	/**
	 * 
	 */
	@:native("SetRadarZoomToDistance")
	static function setRadarZoomToDistance(zoom:Float):Dynamic;

	/**
	 * ```
	 * colors you input not same as you think?
	 * A: for some reason its R B G A
	 * ```
	 */
	@:native("SetTextColour")
	static function setTextColour(red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * **This native does absolutely nothing, just a nullsub**
	 */
	@:native("SetTextEdge")
	static function setTextEdge(p0:Int, r:Int, g:Int, b:Int, a:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetTextCentre")
	static function setTextCentre(align:Bool):Dynamic;

	/**
	 * ```
	 * Types -  
	 * 0: Center-Justify  
	 * 1: Left-Justify  
	 * 2: Right-Justify  
	 * Right-Justify requires SET_TEXT_WRAP, otherwise it will draw to the far right of the screen  
	 * ```
	 */
	@:native("SetTextJustification")
	static function setTextJustification(justifyType:Int):Dynamic;

	/**
	 * distance - shadow distance in pixels, both horizontal and vertical
	 * r, g, b, a - color
	 */
	@:native("SetTextDropshadow")
	static function setTextDropshadow(distance:Int, r:Int, g:Int, b:Int, a:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetTextOutline")
	static function setTextOutline():Dynamic;

	/**
	 * 
	 */
	@:native("SetTextLeading")
	static function setTextLeading(p0:Int):Dynamic;

	/**
	 * Toggles if the text input box can be opened with [`DISPLAY_ONSCREEN_KEYBOARD`](#\_0x00DC833F2568DBF6).
	 */
	@:native("SetTextInputBoxEnabled")
	static function setTextInputBoxEnabled(state:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetTextRightJustify")
	static function setTextRightJustify(toggle:Bool):Dynamic;

	/**
	 * ```
	 * It sets the text in a specified box and wraps the text if it exceeds the boundries. Both values are for X axis. Useful when positioning text set to center or aligned to the right.  
	 * start - left boundry on screen position (0.0 - 1.0)  
	 * end - right boundry on screen position (0.0 - 1.0)  
	 * ```
	 */
	@:native("SetTextWrap")
	static function setTextWrap(start:Float, end:Float):Dynamic;

	/**
	 * ```cpp
	 * enum eTextFonts
	 * {
	 *     FONT_STANDARD = 0,
	 *     FONT_CURSIVE = 1,
	 *     FONT_ROCKSTAR_TAG = 2,
	 *     FONT_LEADERBOAR0D = 3,
	 *     FONT_CONDENSED = 4,
	 *     FONT_STYLE_FIXED_WIDTH_NUMBERS = 5,
	 *     FONT_CONDENSED_NOT_GAMERNAME = 6,
	 *     FONT_STYLE_PRICEDOWN = 7,
	 *     FONT_STYLE_TAXI = 8,
	 * }
	 * ```
	 */
	@:native("SetTextFont")
	static function setTextFont(fontType:Int):Dynamic;

	/**
	 * Sets a global mode which makes the pause menu map show 'Destination' instead of 'Waypoint' in the key legend on the
	 * bottom of the screen.
	 * 
	 * <!--
	 * 
	 * Name guess:
	 * 
	 *   - alphabetical function order, below [SET_USER_RADIO_CONTROL_ENABLED, SET_USE_HI_DOF], above SET_VARIABLE_ON_SOUND.
	 * 
	 * -->
	 */
	@:native("SetUseWaypointAsDestination")
	static function SetUseWaypointAsDestination(toggle:Bool):Dynamic;

	/**
	 * **This native does absolutely nothing, just a nullsub**
	 */
	@:native("SetTextProportional")
	static function setTextProportional(p0:Bool):Dynamic;

	/**
	 * Switches the display of the in-game minimap to the Cayo Perico map. This native needs to be called every frame to maintain the toggled state effectively.
	 * 
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("SetUseIslandMap")
	static function setUseIslandMap(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Size range : 0F to 1.0F
	 * p0 is unknown and doesn't seem to have an effect, yet in the game scripts it changes to 1.0F sometimes.
	 * ```
	 */
	@:native("SetTextScale")
	static function setTextScale(scale:Float, size:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetTextRenderId")
	static function setTextRenderId(renderId:Int):Dynamic;

	/**
	 * ```
	 * You can only use text entries. No custom text.  
	 * C# Example :  
	 * Function.Call(Hash._SET_WARNING_MESSAGE_2, "HUD_QUIT", "HUD_CGIGNORE", 2, "HUD_CGINVITE", 0, -1, 0, 0, 1);  
	 * you can recreate this easily with scaleforms  
	 * ---------------  
	 * Fixed native name, from before nativedb restoration.  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 10: Any p9
	 * ```
	 */
	@:native("SetWarningMessageWithHeader")
	static function setWarningMessageWithHeader(titleMsg:String, entryLine1:String, flags:Int, promptMsg:String, p4:Bool, p5:Dynamic, background:Bool, p7:Dynamic, showBg:Bool):Dynamic;

	/**
	 * ```
	 * You can only use text entries. No custom text.  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 11: Any p10
	 * ```
	 */
	@:native("SetWarningMessageWithHeaderAndSubstringFlags")
	static function setWarningMessageWithHeaderAndSubstringFlags(entryHeader:String, entryLine1:String, instructionalKey:Dynamic, entryLine2:String, p4:Bool, p5:Dynamic, p6:Dynamic, p7:Dynamic, p8:Dynamic, p9:Bool):Dynamic;

	/**
	 * ```
	 * Param names copied from the corresponding scaleform function "SET_LIST_ROW"
	 * ```
	 */
	@:native("SetWarningMessageListRow")
	static function SetWarningMessageListRow(index:Int, name:String, cash:Int, rp:Int, lvl:Int, colour:Int):Bool;

	/**
	 * ```
	 * This native removes the current waypoint from the map.
	 * Example:
	 * C#:
	 * Function.Call(Hash.SET_WAYPOINT_OFF);
	 * C++:
	 * HUD::SET_WAYPOINT_OFF();
	 * ```
	 */
	@:native("SetWaypointOff")
	static function setWaypointOff():Dynamic;

	/**
	 * ```cpp
	 * enum eInstructionalButtonTypes
	 * {
	 *     NONE = 0,
	 *     SELECT = 1,
	 *     OK = 2,
	 *     YES = 4,
	 *     BACK = 8,
	 *     BACK_SELECT = 9,
	 *     BACK_OK = 10,
	 *     BACK_YES = 12,
	 *     CANCEL = 16,
	 *     CANCEL_SELECT = 17,
	 *     CANCEL_OK = 18,
	 *     CANCEL_YES = 20,
	 *     NO = 32,
	 *     NO_SELECT = 33,
	 *     NO_OK = 34,
	 *     YES_NO = 36,
	 *     RETRY = 64,
	 *     RETRY_SELECT = 65,
	 *     RETRY_OK = 66,
	 *     RETRY_YES = 68,
	 *     RETRY_BACK = 72,
	 *     RETRY_BACK_SELECT = 73,
	 *     RETRY_BACK_OK = 74,
	 *     RETRY_BACK_YES = 76,
	 *     RETRY_CANCEL = 80,
	 *     RETRY_CANCEL_SELECT = 81,
	 *     RETRY_CANCEL_OK = 82,
	 *     RETRY_CANCEL_YES = 84,
	 *     SKIP = 256,
	 *     SKIP_SELECT = 257,
	 *     SKIP_OK = 258,
	 *     SKIP_YES = 260,
	 *     SKIP_BACK = 264,
	 *     SKIP_BACK_SELECT = 265,
	 *     SKIP_BACK_OK = 266,
	 *     SKIP_BACK_YES = 268,
	 *     SKIP_CANCEL = 272,
	 *     SKIP_CANCEL_SELECT = 273,
	 *     SKIP_CANCEL_OK = 274,
	 *     SKIP_CANCEL_YES = 276,
	 *     CONTINUE = 16384,
	 *     BACK_CONTINUE = 16392,
	 *     CANCEL_CONTINUE = 16400,
	 *     LOADING_SPINNER = 134217728,
	 *     SELECT_LOADING_SPINNER = 134217729,
	 *     OK_LOADING_SPINNER = 134217730,
	 *     YES_LOADING_SPINNER = 134217732,
	 *     BACK_LOADING_SPINNER = 134217736,
	 *     BACK_SELECT_LOADING_SPINNER = 134217737,
	 *     BACK_OK_LOADING_SPINNER = 134217738,
	 *     BACK_YES_LOADING_SPINNER = 134217740,
	 *     CANCEL_LOADING_SPINNER = 134217744,
	 *     CANCEL_SELECT_LOADING_SPINNER = 134217745,
	 *     CANCEL_OK_LOADING_SPINNER = 134217746,
	 *     CANCEL_YES_LOADING_SPINNER = 134217748
	 * }
	 * ```
	 * 
	 * Note: this list is definitely NOT complete, but these are the ones I've been able to find before giving up because it's such a boring thing to look for 'good' combinations.
	 * 
	 * **Result of the example code:**
	 * <https://i.imgur.com/imwoimm.png>
	 */
	@:native("SetWarningMessage")
	static function setWarningMessage(entryLine1:String, instructionalKey:Int, entryLine2:String, p3:Bool, p4:Int, background:String, p6:String, showBg:Bool, errorCode:Int):Dynamic;

	/**
	 * Controls the visibility of the "Contact" instructional buttons on the map screen.
	 * 
	 * ```
	 * NativeDB Introduced: 2545
	 * ```
	 */
	@:native("ShowContactInstructionalButton")
	static function showContactInstructionalButton(toggle:Bool):Dynamic;

	/**
	 * Sets a warning message for one frame with header and upper buttons bit field that don't fit the standard 32 bit set.
	 */
	@:native("SetWarningMessageWithHeaderExtended")
	static function setWarningMessageWithHeaderExtended(headerTextLabel:String, line1TextLabel:String, buttonsBitField:Int, buttonsBitFieldUpper:Int, line2TextLabel:String, addNumber:Bool, numberToAdd:Int, firstSubstring:String, secondSubstring:String, showBackground:Bool, errorCode:Int):Dynamic;

	/**
	 * ```
	 * Adds a orange checkmark on top of a given blip handle: https://imgur.com/a/aw5OTMF
	 * _SHOW_FRIEND_INDICATOR_ON_BLIP* - _SHOW_HEADING_INDICATOR_ON_BLIP*
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("ShowHasCompletedIndicatorOnBlip")
	static function ShowHasCompletedIndicatorOnBlip(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetWidescreenFormat")
	static function setWidescreenFormat(p0:Dynamic):Dynamic;

	/**
	 * instructionalKey enum list:
	 * 
	 * ```
	 * Buttons = {
	 *       Empty = 0,
	 *       Select = 1, -- (RETURN)
	 *       Ok = 2, -- (RETURN)
	 *       Yes = 4, -- (RETURN)
	 *       Back = 8, -- (ESC)
	 *       Cancel = 16, -- (ESC)
	 *       No = 32, -- (ESC)
	 *       RetrySpace = 64, -- (SPACE)
	 *       Restart = 128, -- (SPACE)
	 *       Skip = 256, -- (SPACE)
	 *       Quit = 512, -- (ESC)
	 *       Adjust = 1024, -- (ARROWS)
	 *       SpaceKey = 2048, -- (SPACE)
	 *       Share = 4096, -- (SPACE)
	 *       SignIn = 8192, -- (SPACE)
	 *       Continue = 16384, -- (RETURN)
	 *       AdjustLeftRight = 32768, -- (SCROLL L/R)
	 *       AdjustUpDown = 65536, -- (SCROLL U/D)
	 *       Overwrite = 131072, -- (SPACE)
	 *       SocialClubSignup = 262144, -- (RETURN)
	 *       Confirm = 524288, -- (RETURN)
	 *       Queue = 1048576, -- (RETURN)
	 *       RetryReturn = 2097152, -- (RETURN)
	 *       BackEsc = 4194304, -- (ESC)
	 *       SocialClub = 8388608, -- (RETURN)
	 *       Spectate = 16777216, -- (SPACE)
	 *       OkEsc = 33554432, -- (ESC)
	 *       CancelTransfer = 67108864, -- (ESC)
	 *       LoadingSpinner = 134217728,
	 *       NoReturnToGTA = 268435456, -- (ESC)
	 *       CancelEsc = 536870912, -- (ESC)
	 * }
	 * 
	 * Alt = {
	 *       Empty = 0,
	 *       No = 1, -- (SPACE)
	 *       Host = 2, -- (ESC)
	 *       SearchForJob = 4, -- (RETURN)
	 *       ReturnKey = 8, -- (TURN)
	 *       Freemode = 16, -- (ESC)
	 * }
	 * ```
	 * 
	 * **Result of the example code:** <https://i.imgur.com/TvmNF4k.png>
	 */
	@:native("SetWarningMessageWithAlert")
	static function SetWarningMessageWithAlert(labelTitle:String, labelMsg:String, p2:Int, p3:Int, labelMsg2:String, p5:Bool, p6:Int, p7:Int, p8:String, p9:String, background:Bool, errorCode:Int):Dynamic;

	/**
	 * Enables or disables the blue half circle ![](https://i.imgur.com/iZes9Ec.png) around the specified blip on the left side of the blip. This is used to indicate that the player is in your crew in GTA:O. Color is changeable by using [`SET_BLIP_SECONDARY_COLOUR`](#\_0x14892474891E09EB).
	 * 
	 * To toggle the right side of the circle use: [`SHOW_FRIEND_INDICATOR_ON_BLIP`](#\_0x23C3EB807312F01A).
	 * 
	 * Example code result:
	 * ![](https://i.imgur.com/iZ9tNWl.png)
	 */
	@:native("ShowCrewIndicatorOnBlip")
	static function showCrewIndicatorOnBlip(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ShowNumberOnBlip")
	static function showNumberOnBlip(blip:Dynamic, number:Int):Dynamic;

	/**
	 * ```
	 * Adds the GTA: Online player heading indicator to a blip.  
	 * ```
	 */
	@:native("ShowHeadingIndicatorOnBlip")
	static function showHeadingIndicatorOnBlip(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * This function shows various HUD (Heads-up Display) components.
	 * 
	 * Listed below are the integers and the corresponding HUD component.
	 * 
	 * *   1 : WANTED_STARS
	 * *   2 : WEAPON_ICON
	 * *   3 : CASH
	 * *   4 : MP_CASH
	 * *   5 : MP_MESSAGE
	 * *   6 : VEHICLE_NAME
	 * *   7 : AREA_NAME
	 * *   8 : VEHICLE_CLASS
	 * *   9 : STREET_NAME
	 * *   10 : HELP_TEXT
	 * *   11 : FLOATING_HELP_TEXT\_1
	 * *   12 : FLOATING_HELP_TEXT\_2
	 * *   13 : CASH_CHANGE
	 * *   14 : RETICLE
	 * *   15 : SUBTITLE_TEXT
	 * *   16 : RADIO_STATIONS
	 * *   17 : SAVING_GAME
	 * *   18 : GAME_STREAM
	 * *   19 : WEAPON_WHEEL
	 * *   20 : WEAPON_WHEEL_STATS
	 * *   21 : HUD_COMPONENTS
	 * *   22 : HUD_WEAPONS
	 * 
	 * These integers also work for the [`HIDE_HUD_COMPONENT_THIS_FRAME`](#\_0x6806C51AD12B83B8) native, but instead hides the HUD component.
	 */
	@:native("ShowHudComponentThisFrame")
	static function showHudComponentThisFrame(id:Int):Dynamic;

	/**
	 * Highlights a blip by a half cyan circle on the right side of the blip. ![](https://i.imgur.com/FrV9M4e.png) Indicating that that player is a friend (in GTA:O). This color can not be changed.
	 * 
	 * To toggle the left side (crew member indicator) of the half circle around the blip, use: [`SHOW_CREW_INDICATOR_ON_BLIP`](#\_0xDCFB5D4DB8BF367E).
	 */
	@:native("ShowFriendIndicatorOnBlip")
	static function showFriendIndicatorOnBlip(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ShowStartMissionInstructionalButton")
	static function showStartMissionInstructionalButton(p0:Bool):Dynamic;

	/**
	 * SHOW_\*
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("ShowScriptedHudComponentThisFrame")
	static function ShowScriptedHudComponentThisFrame(id:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SuppressFrontendRenderingThisFrame")
	static function suppressFrontendRenderingThisFrame():Dynamic;

	/**
	 * Toggles a cyan outline around the blip.
	 * 
	 * Color can be changed with [`SET_BLIP_SECONDARY_COLOUR`](#\_0x14892474891E09EB). Enabling this circle will override the "crew" and "friend" half-circles (see [`SHOW_CREW_INDICATOR_ON_BLIP`](#\_0xDCFB5D4DB8BF367E) and [`SHOW_FRIEND_INDICATOR_ON_BLIP`](#\_0x23C3EB807312F01A)).
	 */
	@:native("ShowOutlineIndicatorOnBlip")
	static function showOutlineIndicatorOnBlip(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ShowHeightOnBlip")
	static function showHeightOnBlip(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Adds a green checkmark on top of a blip.  
	 * ```
	 */
	@:native("ShowTickOnBlip")
	static function showTickOnBlip(blip:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Starts a new GPS multi-route, allowing you to create custom GPS paths.
	 * GPS functions like the waypoint, except it can contain multiple points it's forced to go through.
	 * Once the player has passed a point, the GPS will no longer force its path through it.
	 * 
	 * Works independently from the player-placed waypoint and blip routes.
	 * 
	 * **Example result:**
	 * 
	 * ![](https://i.imgur.com/ZZHQatX.png)
	 */
	@:native("StartGpsMultiRoute")
	static function startGpsMultiRoute(hudColor:Int, routeFromPlayer:Bool, displayOnFoot:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ShowSigninUi")
	static function ShowSigninUi():Dynamic;

	/**
	 * Starts a new GPS custom-route, allowing you to plot lines on the map.
	 * Lines are drawn directly between points.
	 * The GPS custom route works like the GPS multi route, except it does not follow roads.
	 * 
	 * **Example result:**
	 * 
	 * ![](https://i.imgur.com/BDm5pzt.png)
	 */
	@:native("StartGpsCustomRoute")
	static function startGpsCustomRoute(hudColor:Int, displayOnFoot:Bool, followPlayer:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ThefeedClearFrozenPost")
	static function thefeedClearFrozenPost():Dynamic;

	/**
	 * Disables frontend (works in custom frontends, not sure about regular pause menu) navigation keys on keyboard. Not sure about controller. Does not disable mouse controls. No need to call this every tick.
	 * 
	 * To enable the keys again, use [`0x14621BB1DF14E2B2`](#\_0x14621BB1DF14E2B2).
	 */
	@:native("TakeControlOfFrontend")
	static function takeControlOfFrontend():Dynamic;

	/**
	 * ```
	 * Returns the handle for the notification currently displayed on the screen. Name may be a hash collision, but describes the function accurately.
	 * ```
	 */
	@:native("ThefeedGetFirstVisibleDeleteRemaining")
	static function thefeedGetFirstVisibleDeleteRemaining():Int;

	/**
	 * ```
	 * Enables loading screen tips to be be shown (`_0x15CFA549788D35EF` and `_0x488043841BBE156F`), blocks other kinds of notifications from being displayed (at least from current script). Call `0xADED7F5748ACAFE6` to display those again.
	 * ```
	 */
	@:native("ThefeedCommentTeleportPoolOn")
	static function thefeedCommentTeleportPoolOn():Dynamic;

	/**
	 * 
	 */
	@:native("ThefeedOnlyShowTooltips")
	static function thefeedOnlyShowTooltips(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ThefeedFlushQueue")
	static function thefeedFlushQueue():Dynamic;

	/**
	 * Stops loading screen tips shown by invoking either `0x488043841BBE156F` or `0x15CFA549788D35EF`
	 */
	@:native("ThefeedDisableLoadingScreenTips")
	static function ThefeedDisableLoadingScreenTips():Dynamic;

	/**
	 * Displays loading screen tips, requires `0x56C8B608CFD49854` to be called beforehand.
	 */
	@:native("ThefeedDisplayLoadingScreenTips")
	static function ThefeedDisplayLoadingScreenTips():Dynamic;

	/**
	 * ```
	 * Requires manual management of game stream handles (i.e., 0xBE4390CB40B3E627).
	 * ```
	 */
	@:native("ThefeedFreezeNextPost")
	static function thefeedFreezeNextPost():Dynamic;

	/**
	 * ```
	 * Removes a notification instantly instead of waiting for it to disappear  
	 * ```
	 */
	@:native("ThefeedRemoveItem")
	static function thefeedRemoveItem(notificationId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ThefeedForceRenderOn")
	static function thefeedForceRenderOn():Dynamic;

	/**
	 * Once called each frame hides all above radar notifications.
	 */
	@:native("ThefeedHideThisFrame")
	static function thefeedHideThisFrame():Dynamic;

	/**
	 * 
	 */
	@:native("ThefeedResetAllParameters")
	static function thefeedResetAllParameters():Dynamic;

	/**
	 * 
	 */
	@:native("ThefeedIsPaused")
	static function thefeedIsPaused():Bool;

	/**
	 * 
	 */
	@:native("ThefeedResume")
	static function thefeedResume():Dynamic;

	/**
	 * 
	 */
	@:native("ThefeedSetAnimpostfxColor")
	static function ThefeedSetAnimpostfxColor(red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * Related to notification color flashing, setting p0 to 0 invalidates a `_SET_NOTIFICATION_FLASH_COLOR` call for the target notification.
	 */
	@:native("ThefeedSetAnimpostfxCount")
	static function ThefeedSetAnimpostfxCount(count:Int):Dynamic;

	/**
	 * ```
	 * If true, remove all feed components instantly. Otherwise tween/animate close each component
	 * ```
	 */
	@:native("ThefeedSetFlushAnimpostfx")
	static function ThefeedSetFlushAnimpostfx(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ThefeedPause")
	static function thefeedPause():Dynamic;

	/**
	 * ```
	 * Used in the native scripts to reference "GET_PEDHEADSHOT_TXD_STRING" and "CHAR_DEFAULT".
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("ThefeedUpdateItemTexture")
	static function thefeedUpdateItemTexture(txdString1:String, txnString1:String, txdString2:String, txnString2:String):Dynamic;

	/**
	 * 
	 */
	@:native("ThefeedSetScriptedMenuHeight")
	static function thefeedSetScriptedMenuHeight(pos:Float):Dynamic;

	/**
	 * ```
	 * Requires GAME_STREAM_ENUMS.MSGTEXT. Default sounds: "DPAD_WEAPON_SCROLL" and "HUD_FRONTEND_DEFAULT_SOUNDSET"
	 * ```
	 */
	@:native("ThefeedSetAnimpostfxSound")
	static function ThefeedSetAnimpostfxSound(toggle:Bool):Dynamic;

	/**
	 * ```
	 * From the decompiled scripts:
	 * HUD::_92F0DA1E27DB96DC(6);
	 * HUD::_92F0DA1E27DB96DC(184);
	 * HUD::_92F0DA1E27DB96DC(190);
	 * sets background color for the next notification
	 * 6 = red
	 * 184 = green
	 * 190 = yellow
	 * Here is a list of some colors that can be used: gyazo.com/68bd384455fceb0a85a8729e48216e15
	 * ```
	 */
	@:native("ThefeedSetNextPostBackgroundColor")
	static function ThefeedSetNextPostBackgroundColor(hudColorIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ThefeedSpsExtendWidescreenOn")
	static function thefeedSpsExtendWidescreenOn():Dynamic;

	/**
	 * 
	 */
	@:native("ThefeedSpsExtendWidescreenOff")
	static function thefeedSpsExtendWidescreenOff():Dynamic;

	/**
	 * 
	 */
	@:native("ToggleStealthRadar")
	static function toggleStealthRadar(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("UnlockMinimapAngle")
	static function unlockMinimapAngle():Dynamic;

	/**
	 * 
	 */
	@:native("UnlockMinimapPosition")
	static function unlockMinimapPosition():Dynamic;

	/**
	 * 
	 */
	@:native("TriggerSonarBlip")
	static function triggerSonarBlip(posX:Float, posY:Float, posZ:Float, radius:Float, p4:Int):Dynamic;

	/**
	 * ```
	 * Related to displaying cash on the HUD
	 * Always called before HUD::CHANGE_FAKE_MP_CASH in decompiled scripts
	 * ```
	 */
	@:native("UseFakeMpCash")
	static function useFakeMpCash(p0:Bool):Dynamic;

}
