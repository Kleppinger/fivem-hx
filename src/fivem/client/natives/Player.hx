package fivem.client.natives;

@:native("_G")
extern class Player {
	/**
	 * 
	 */
	@:native("ASSISTED_MOVEMENT_FLUSH_ROUTE")
	static function assistedMovementFlushRoute():Dynamic;

	/**
	 * 
	 */
	@:native("ARE_PLAYER_FLASHING_STARS_ABOUT_TO_DROP")
	static function arePlayerFlashingStarsAboutToDrop(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("ARE_PLAYER_STARS_GREYED_OUT")
	static function arePlayerStarsGreyedOut(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("CHANGE_PLAYER_PED")
	static function changePlayerPed(player:Dynamic, ped:Dynamic, b2:Bool, resetDamage:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ASSISTED_MOVEMENT_CLOSE_ROUTE")
	static function assistedMovementCloseRoute():Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE")
	static function clearPlayerParachutePackModelOverride(player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("CAN_PED_HEAR_PLAYER")
	static function canPedHearPlayer(player:Dynamic, ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("CLEAR_PLAYER_HAS_DAMAGED_AT_LEAST_ONE_NON_ANIMAL_PED")
	static function clearPlayerHasDamagedAtLeastOneNonAnimalPed(player:Dynamic):Dynamic;

	/**
	 * Inhibits the player from using any method of combat including melee and firearms.\
	 * NOTE: Only disables the firing for one frame
	 */
	@:native("DISABLE_PLAYER_FIRING")
	static function disablePlayerFiring(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CAN_PLAYER_START_MISSION")
	static function canPlayerStartMission(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("CLEAR_PLAYER_PARACHUTE_VARIATION_OVERRIDE")
	static function clearPlayerParachuteVariationOverride(player:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 3: Any p2
	 * ```
	 */
	@:native("ENABLE_SPECIAL_ABILITY")
	static function enableSpecialAbility(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_PLAYER_PARACHUTE_MODEL_OVERRIDE")
	static function clearPlayerParachuteModelOverride(player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_PLAYER_HAS_DAMAGED_AT_LEAST_ONE_PED")
	static function clearPlayerHasDamagedAtLeastOnePed(player:Dynamic):Dynamic;

	/**
	 * ```
	 * used with 1,2,8,64,128 in the scripts  
	 * ```
	 */
	@:native("FORCE_CLEANUP")
	static function forceCleanup(cleanupFlags:Int):Dynamic;

	/**
	 * Disables vehicle rewards for the current frame.
	 */
	@:native("DISABLE_PLAYER_VEHICLE_REWARDS")
	static function disablePlayerVehicleRewards(player:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_CLEAR_PLAYER_RESERVE_PARACHUTE_MODEL_OVERRIDE")
	static function ClearPlayerReserveParachuteModelOverride(player:Dynamic):Dynamic;

	/**
	 * ```
	 * This executes at the same as speed as PLAYER::SET_PLAYER_WANTED_LEVEL(player, 0, false);  
	 * PLAYER::GET_PLAYER_WANTED_LEVEL(player); executes in less than half the time. Which means that it's worth first checking if the wanted level needs to be cleared before clearing. However, this is mostly about good code practice and can important in other situations. The difference in time in this example is negligible.  
	 * ```
	 */
	@:native("CLEAR_PLAYER_WANTED_LEVEL")
	static function clearPlayerWantedLevel(player:Dynamic):Dynamic;

	/**
	 * ```
	 * For Steam.
	 * Always returns 0 in retail version of the game.
	 * ```
	 */
	@:native("_GET_ACHIEVEMENT_PROGRESS")
	static function GetAchievementProgress(achievement:Int):Int;

	/**
	 * ```
	 * Appears only 3 times in the scripts, more specifically in michael1.ysc
	 * -
	 * This can be used to prevent dying if you are "out of the world"
	 * ```
	 */
	@:native("EXTEND_WORLD_BOUNDARY_FOR_PLAYER")
	static function extendWorldBoundaryForPlayer(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * ```
	 * Purpose of the BOOL currently unknown.  
	 * Both, true and false, work  
	 * ```
	 */
	@:native("DISPLAY_SYSTEM_SIGNIN_UI")
	static function displaySystemSigninUi(unk:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("GET_CAUSE_OF_MOST_RECENT_FORCE_CLEANUP")
	static function getCauseOfMostRecentForceCleanup():Int;

	/**
	 * 
	 */
	@:native("FORCE_CLEANUP_FOR_THREAD_WITH_THIS_ID")
	static function forceCleanupForThreadWithThisId(id:Int, cleanupFlags:Int):Dynamic;

	/**
	 * ```
	 * PLAYER::FORCE_CLEANUP_FOR_ALL_THREADS_WITH_THIS_NAME("pb_prostitute", 1); // Found in decompilation  
	 * ```
	 */
	@:native("FORCE_CLEANUP_FOR_ALL_THREADS_WITH_THIS_NAME")
	static function forceCleanupForAllThreadsWithThisName(name:String, cleanupFlags:Int):Dynamic;

	/**
	 * ```
	 * Gets the maximum wanted level the player can get.  
	 * Ranges from 0 to 5.  
	 * ```
	 */
	@:native("GET_MAX_WANTED_LEVEL")
	static function getMaxWantedLevel():Int;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("_GET_NUMBER_OF_PLAYERS_IN_TEAM")
	static function GetNumberOfPlayersInTeam(team:Int):Int;

	/**
	 * ```
	 * Returns TRUE if it found an entity in your crosshair within range of your weapon. Assigns the handle of the target to the *entity that you pass it.  
	 * Returns false if no entity found.  
	 * ```
	 */
	@:native("GET_ENTITY_PLAYER_IS_FREE_AIMING_AT")
	static function getEntityPlayerIsFreeAimingAt(player:Dynamic, entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GET_IS_PLAYER_DRIVING_ON_HIGHWAY")
	static function getIsPlayerDrivingOnHighway(playerId:Dynamic):Bool;

	/**
	 * ```
	 * Gets the number of players in the current session.
	 * If not multiplayer, always returns 1.
	 * ```
	 */
	@:native("GET_NUMBER_OF_PLAYERS")
	static function getNumberOfPlayers():Int;

	/**
	 * ```
	 * Returns the group ID the player is member of.  
	 * ```
	 */
	@:native("GET_PLAYER_GROUP")
	static function getPlayerGroup(player:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_PLAYER_CURRENT_STEALTH_NOISE")
	static function getPlayerCurrentStealthNoise(player:Dynamic):Float;

	/**
	 * 
	 */
	@:native("_GET_PLAYER_HEALTH_RECHARGE_LIMIT")
	static function GetPlayerHealthRechargeLimit(player:Dynamic):Float;

	/**
	 * ```
	 * Returns the same as PLAYER_ID and NETWORK_PLAYER_ID_TO_INT  
	 * ```
	 */
	@:native("GET_PLAYER_INDEX")
	static function getPlayerIndex():Dynamic;

	/**
	 * 
	 */
	@:native("GET_PLAYER_FAKE_WANTED_LEVEL")
	static function getPlayerFakeWantedLevel(player:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_PLAYER_HAS_RESERVE_PARACHUTE")
	static function getPlayerHasReserveParachute(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GET_PLAYER_MAX_ARMOUR")
	static function getPlayerMaxArmour(player:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_PLAYER_PARACHUTE_PACK_TINT_INDEX")
	static function getPlayerParachutePackTintIndex(player:Dynamic, tintIndex:Dynamic):Dynamic;

	/**
	 * Returns the players name from a specified player index
	 */
	@:native("GET_PLAYER_NAME")
	static function getPlayerName(player:Dynamic):String;

	/**
	 * ```
	 * Returns the Player's Invincible status.  
	 * This function will always return false if 0x733A643B5B0C53C1 is used to set the invincibility status. To always get the correct result, use this:  
	 * 	bool IsPlayerInvincible(Player player)  
	 * 	{  
	 * auto addr = getScriptHandleBaseAddress(GET_PLAYER_PED(player));	  
	 * if (addr)  
	 * {  
	 * 	DWORD flag = *(DWORD *)(addr + 0x188);  
	 * 	return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0);  
	 * }  
	 * return false;  
	 * 	}  
	 * ============================================================  
	 * This has bothered me for too long, whoever may come across this, where did anyone ever come up with this made up hash? 0x733A643B5B0C53C1 I've looked all over old hash list, and this nativedb I can not find that PC hash anywhere. What native name is it now or was it?  
	 * ```
	 */
	@:native("GET_PLAYER_INVINCIBLE")
	static function getPlayerInvincible(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GET_PLAYER_PARACHUTE_SMOKE_TRAIL_COLOR")
	static function getPlayerParachuteSmokeTrailColor(player:Dynamic, r:Dynamic, g:Dynamic, b:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_GET_PLAYER_PARACHUTE_MODEL_OVERRIDE")
	static function GetPlayerParachuteModelOverride(player:Dynamic):Int;

	/**
	 * ```
	 * Does the same like PLAYER::GET_PLAYER_PED
	 * ```
	 */
	@:native("GET_PLAYER_PED_SCRIPT_INDEX")
	static function getPlayerPedScriptIndex(player:Dynamic):Dynamic;

	/**
	 * Gets the ped for a specified player index.
	 */
	@:native("GET_PLAYER_PED")
	static function getPlayerPed(playerId:Dynamic):Dynamic;

	/**
	 * ```
	 * Tints:  
	 * None = -1,  
	 * Rainbow = 0,  
	 * Red = 1,  
	 * SeasideStripes = 2,  
	 * WidowMaker = 3,  
	 * Patriot = 4,  
	 * Blue = 5,  
	 * Black = 6,  
	 * Hornet = 7,  
	 * AirFocce = 8,  
	 * Desert = 9,  
	 * Shadow = 10,  
	 * HighAltitude = 11,  
	 * Airbone = 12,  
	 * Sunrise = 13,  
	 * ```
	 */
	@:native("GET_PLAYER_PARACHUTE_TINT_INDEX")
	static function getPlayerParachuteTintIndex(player:Dynamic, tintIndex:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_GET_PLAYER_RESERVE_PARACHUTE_MODEL_OVERRIDE")
	static function GetPlayerReserveParachuteModelOverride(player:Dynamic):Int;

	/**
	 * ```
	 * Gets the player's team.  
	 * Does nothing in singleplayer.  
	 * ```
	 */
	@:native("GET_PLAYER_TEAM")
	static function getPlayerTeam(player:Dynamic):Int;

	/**
	 * ```
	 * Assigns the handle of locked-on melee target to *entity that you pass it.  
	 * Returns false if no entity found.  
	 * ```
	 */
	@:native("GET_PLAYER_TARGET_ENTITY")
	static function getPlayerTargetEntity(player:Dynamic, entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GET_PLAYER_RGB_COLOUR")
	static function getPlayerRgbColour(player:Dynamic, r:Dynamic, g:Dynamic, b:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_PLAYER_WANTED_CENTRE_POSITION")
	static function getPlayerWantedCentrePosition(player:Dynamic):Dynamic;

	/**
	 * ```
	 * Tints:  
	 * None = -1,  
	 * Rainbow = 0,  
	 * Red = 1,  
	 * SeasideStripes = 2,  
	 * WidowMaker = 3,  
	 * Patriot = 4,  
	 * Blue = 5,  
	 * Black = 6,  
	 * Hornet = 7,  
	 * AirFocce = 8,  
	 * Desert = 9,  
	 * Shadow = 10,  
	 * HighAltitude = 11,  
	 * Airbone = 12,  
	 * Sunrise = 13,  
	 * ```
	 */
	@:native("GET_PLAYER_RESERVE_PARACHUTE_TINT_INDEX")
	static function getPlayerReserveParachuteTintIndex(player:Dynamic, index:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_PLAYER_SPRINT_TIME_REMAINING")
	static function getPlayerSprintTimeRemaining(player:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_PLAYER_UNDERWATER_TIME_REMAINING")
	static function getPlayerUnderwaterTimeRemaining(player:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_PLAYER_SPRINT_STAMINA_REMAINING")
	static function getPlayerSprintStaminaRemaining(player:Dynamic):Float;

	/**
	 * ```
	 * Returns the time since the character was arrested in (ms) milliseconds.  
	 * example  
	 * var time = Function.call<int>(Hash.GET_TIME_SINCE_LAST_ARREST();  
	 * UI.DrawSubtitle(time.ToString());  
	 * if player has not been arrested, the int returned will be -1.  
	 * ```
	 */
	@:native("GET_TIME_SINCE_LAST_ARREST")
	static function getTimeSinceLastArrest():Int;

	/**
	 * ### Warning
	 * 
	 * This native will return `0` if the last vehicle the player was in was destroyed.
	 * 
	 * ### Alternative
	 * 
	 * You can use [GET_VEHICLE_PED_IS_IN](#\_0x9A9112A0FE9A4713), which will actually get the last vehicle, even if it was destroyed.
	 */
	@:native("GET_PLAYERS_LAST_VEHICLE")
	static function getPlayersLastVehicle():Dynamic;

	/**
	 * 
	 */
	@:native("GET_PLAYER_WANTED_LEVEL")
	static function getPlayerWantedLevel(player:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_TIME_SINCE_PLAYER_DROVE_AGAINST_TRAFFIC")
	static function getTimeSincePlayerDroveAgainstTraffic(player:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_TIME_SINCE_PLAYER_HIT_VEHICLE")
	static function getTimeSincePlayerHitVehicle(player:Dynamic):Int;

	/**
	 * ```
	 * Returns the time since the character died in (ms) milliseconds.  
	 * example  
	 * var time = Function.call<int>(Hash.GET_TIME_SINCE_LAST_DEATH();  
	 * UI.DrawSubtitle(time.ToString());  
	 * if player has not died, the int returned will be -1.  
	 * ```
	 */
	@:native("GET_TIME_SINCE_LAST_DEATH")
	static function getTimeSinceLastDeath():Int;

	/**
	 * 
	 */
	@:native("GET_TIME_SINCE_PLAYER_HIT_PED")
	static function getTimeSincePlayerHitPed(player:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_TIME_SINCE_PLAYER_DROVE_ON_PAVEMENT")
	static function getTimeSincePlayerDroveOnPavement(player:Dynamic):Int;

	/**
	 * ```
	 * Remnant from GTA IV. Does nothing in GTA V.
	 * ```
	 */
	@:native("GET_WANTED_LEVEL_RADIUS")
	static function getWantedLevelRadius(player:Dynamic):Float;

	/**
	 * ```
	 * Drft  
	 * ```
	 */
	@:native("GET_WANTED_LEVEL_THRESHOLD")
	static function getWantedLevelThreshold(wantedLevel:Int):Int;

	/**
	 * 
	 */
	@:native("HAS_ACHIEVEMENT_BEEN_PASSED")
	static function hasAchievementBeenPassed(achievement:Int):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_GET_WANTED_LEVEL_PAROLE_DURATION")
	static function GetWantedLevelParoleDuration():Int;

	/**
	 * 
	 */
	@:native("_HAS_PLAYER_BEEN_SHOT_BY_COP")
	static function HasPlayerBeenShotByCop(player:Dynamic, ms:Int, p2:Bool):Bool;

	/**
	 * 
	 */
	@:native("HAS_FORCE_CLEANUP_OCCURRED")
	static function hasForceCleanupOccurred(cleanupFlags:Int):Bool;

	/**
	 * 
	 */
	@:native("HAS_PLAYER_LEFT_THE_WORLD")
	static function hasPlayerLeftTheWorld(player:Dynamic):Bool;

	/**
	 * ```
	 * Achievements from 0-57
	 * more achievements came with update 1.29 (freemode events update), I'd say that they now go to 60, but I'll need to check.
	 * ```
	 */
	@:native("GIVE_ACHIEVEMENT_TO_PLAYER")
	static function giveAchievementToPlayer(achievement:Int):Bool;

	/**
	 * 
	 */
	@:native("HAS_PLAYER_DAMAGED_AT_LEAST_ONE_NON_ANIMAL_PED")
	static function hasPlayerDamagedAtLeastOneNonAnimalPed(player:Dynamic):Bool;

	/**
	 * ```
	 * Returns true when the player is not able to control the cam i.e. when running a benchmark test, switching the player or viewing a cutscene.  
	 * Note: I am not 100% sure if the native actually checks if the cam control is disabled but it seems promising.  
	 * ```
	 */
	@:native("_IS_PLAYER_CAM_CONTROL_DISABLED")
	static function IsPlayerCamControlDisabled():Bool;

	/**
	 * 
	 */
	@:native("GIVE_PLAYER_RAGDOLL_CONTROL")
	static function givePlayerRagdollControl(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
	 * ```
	 */
	@:native("INT_TO_PLAYERINDEX")
	static function intToPlayerindex(value:Int):Dynamic;

	/**
	 * ```
	 * Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
	 * --------------------------------------------------------  
	 * if (NETWORK::NETWORK_IS_PARTICIPANT_ACTIVE(PLAYER::INT_TO_PARTICIPANTINDEX(i)))  
	 * ```
	 */
	@:native("INT_TO_PARTICIPANTINDEX")
	static function intToParticipantindex(value:Int):Int;

	/**
	 * 
	 */
	@:native("HAS_PLAYER_BEEN_SPOTTED_IN_STOLEN_VEHICLE")
	static function hasPlayerBeenSpottedInStolenVehicle(player:Dynamic):Bool;

	/**
	 * ```
	 * Returns true if an unk value is greater than 0.0f  
	 * ```
	 */
	@:native("IS_PLAYER_BATTLE_AWARE")
	static function isPlayerBattleAware(player:Dynamic):Bool;

	/**
	 * ```
	 * Return true while player is being arrested / busted.  
	 * If atArresting is set to 1, this function will return 1 when player is being arrested (while player is putting his hand up, but still have control)  
	 * If atArresting is set to 0, this function will return 1 only when the busted screen is shown.  
	 * ```
	 */
	@:native("IS_PLAYER_BEING_ARRESTED")
	static function isPlayerBeingArrested(player:Dynamic, atArresting:Bool):Bool;

	/**
	 * ```
	 * Can the player control himself, used to disable controls for player for things like a cutscene.  
	 * ---  
	 * You can't disable controls with this, use SET_PLAYER_CONTROL(...) for this.  
	 * ```
	 */
	@:native("IS_PLAYER_CONTROL_ON")
	static function isPlayerControlOn(player:Dynamic):Bool;

	/**
	 * ```
	 * Returns TRUE if the player ('s ped) is climbing at the moment.  
	 * ```
	 */
	@:native("IS_PLAYER_CLIMBING")
	static function isPlayerClimbing(player:Dynamic):Bool;

	/**
	 * ```
	 * Gets a value indicating whether the specified player is currently aiming freely.  
	 * ```
	 */
	@:native("IS_PLAYER_FREE_AIMING")
	static function isPlayerFreeAiming(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("HAS_PLAYER_DAMAGED_AT_LEAST_ONE_PED")
	static function hasPlayerDamagedAtLeastOnePed(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PLAYER_BLUETOOTH_ENABLE")
	static function isPlayerBluetoothEnable(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PLAYER_DEAD")
	static function isPlayerDead(player:Dynamic):Bool;

	/**
	 * It returns true if the player is online, suggesting they are also logged in locally. Note that this is an alias for `NETWORK_IS_SIGNED_ONLINE`.
	 */
	@:native("IS_PLAYER_ONLINE")
	static function isPlayerOnline():Bool;

	/**
	 * ```
	 * Gets a value indicating whether the specified player is currently aiming freely at the specified entity.  
	 * ```
	 */
	@:native("IS_PLAYER_FREE_AIMING_AT_ENTITY")
	static function isPlayerFreeAimingAtEntity(player:Dynamic, entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PLAYER_READY_FOR_CUTSCENE")
	static function isPlayerReadyForCutscene(player:Dynamic):Bool;

	/**
	 * ```cpp
	 * enum eViolationType {
	 *   // Checks if the player is driving on pedestrians walk ways
	 *   VT_PAVED_PEDESTRIAN_AREAS = 0,
	 *   // Checks if the player is running through red lights
	 *   // This takes some time to return true.
	 *   VT_RUNNING_REDS = 1,
	 *   // checks if the player is driving on the wrong side of the road
	 *   VT_AGAINST_TRAFFIC = 2
	 * };
	 * ```
	 * 
	 * Used solely in "Al Di Napoli" with type 2 for a voiceline.
	 */
	@:native("_IS_PLAYER_DRIVING_DANGEROUSLY")
	static function IsPlayerDrivingDangerously(player:Dynamic, type:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_PLAYER_PRESSING_HORN")
	static function isPlayerPressingHorn(player:Dynamic):Bool;

	/**
	 * ```
	 * this function is hard-coded to always return 0.  
	 * ```
	 */
	@:native("IS_PLAYER_LOGGING_IN_NP")
	static function isPlayerLoggingInNp():Bool;

	/**
	 * 
	 */
	@:native("IS_PLAYER_TARGETTING_ANYTHING")
	static function isPlayerTargettingAnything(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PLAYER_FREE_FOR_AMBIENT_TASK")
	static function isPlayerFreeForAmbientTask(player:Dynamic):Bool;

	/**
	 * ```
	 * Returns true if the player is riding a train.  
	 * ```
	 */
	@:native("IS_PLAYER_RIDING_TRAIN")
	static function isPlayerRidingTrain(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PLAYER_SCRIPT_CONTROL_ON")
	static function isPlayerScriptControlOn(player:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("IS_SPECIAL_ABILITY_ENABLED")
	static function isSpecialAbilityEnabled(player:Dynamic):Bool;

	/**
	 * ```
	 * Checks whether the specified player has a Ped, the Ped is not dead, is not injured and is not arrested.  
	 * ```
	 */
	@:native("IS_PLAYER_PLAYING")
	static function isPlayerPlaying(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PLAYER_TARGETTING_ENTITY")
	static function isPlayerTargettingEntity(player:Dynamic, entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PLAYER_TELEPORT_ACTIVE")
	static function isPlayerTeleportActive():Bool;

	/**
	 * 
	 */
	@:native("IS_SYSTEM_UI_BEING_DISPLAYED")
	static function isSystemUiBeingDisplayed():Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("IS_SPECIAL_ABILITY_ACTIVE")
	static function isSpecialAbilityActive(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_SPECIAL_ABILITY_UNLOCKED")
	static function isSpecialAbilityUnlocked(playerModel:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_PLAYER_WANTED_LEVEL_GREATER")
	static function isPlayerWantedLevelGreater(player:Dynamic, wantedLevel:Int):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("IS_SPECIAL_ABILITY_METER_FULL")
	static function isSpecialAbilityMeterFull(player:Dynamic):Bool;

	/**
	 * ```
	 * Does exactly the same thing as PLAYER_ID()  
	 * ```
	 */
	@:native("NETWORK_PLAYER_ID_TO_INT")
	static function networkPlayerIdToInt():Int;

	/**
	 * Returns the entity handle for the local player ped. Note that this entity handle will change after using commands such as SET_PLAYER_MODEL.
	 */
	@:native("PLAYER_PED_ID")
	static function playerPedId():Dynamic;

	/**
	 * ```
	 * 1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;  
	 * ```
	 */
	@:native("PLAYER_DETACH_VIRTUAL_BOUND")
	static function playerDetachVirtualBound():Dynamic;

	/**
	 * ```
	 * Only 1 match. ob_sofa_michael.  
	 * PLAYER::PLAYER_ATTACH_VIRTUAL_BOUND(-804.5928f, 173.1801f, 71.68436f, 0f, 0f, 0.590625f, 1f, 0.7f);1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;  
	 * ```
	 */
	@:native("PLAYER_ATTACH_VIRTUAL_BOUND")
	static function playerAttachVirtualBound(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Float, p7:Float):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_PLAYER_HELMET")
	static function removePlayerHelmet(player:Dynamic, p2:Bool):Dynamic;

	/**
	 * Returns the player index for the local player.
	 */
	@:native("PLAYER_ID")
	static function playerId():Dynamic;

	/**
	 * ```
	 * PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(), 37, PLAYER::GET_WANTED_LEVEL_THRESHOLD(1));  
	 * From am_armybase.ysc.c4:  
	 * PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(4), 36, PLAYER::GET_WANTED_LEVEL_THRESHOLD(4));  
	 * -----  
	 * This was taken from the GTAV.exe v1.334. The function is called sub_140592CE8. For a full decompilation of the function, see here: pastebin.com/09qSMsN7   
	 * -----  
	 * crimeType:  
	 * 1: Firearms possession  
	 * 2: Person running a red light ("5-0-5")  
	 * 3: Reckless driver  
	 * 4: Speeding vehicle (a "5-10")  
	 * 5: Traffic violation (a "5-0-5")  
	 * 6: Motorcycle rider without a helmet  
	 * 7: Vehicle theft (a "5-0-3")  
	 * 8: Grand Theft Auto  
	 * 9: ???  
	 * 10: ???  
	 * 11: Assault on a civilian (a "2-40")  
	 * 12: Assault on an officer  
	 * 13: Assault with a deadly weapon (a "2-45")  
	 * 14: Officer shot (a "2-45")  
	 * 15: Pedestrian struck by a vehicle  
	 * 16: Officer struck by a vehicle  
	 * 17: Helicopter down (an "AC"?)  
	 * 18: Civilian on fire (a "2-40")  
	 * 19: Officer set on fire (a "10-99")  
	 * 20: Car on fire  
	 * 21: Air unit down (an "AC"?)  
	 * 22: An explosion (a "9-96")  
	 * 23: A stabbing (a "2-45") (also something else I couldn't understand)  
	 * 24: Officer stabbed (also something else I couldn't understand)  
	 * 25: Attack on a vehicle ("MDV"?)  
	 * 26: Damage to property  
	 * 27: Suspect threatening officer with a firearm  
	 * 28: Shots fired  
	 * 29: ???  
	 * 30: ???  
	 * 31: ???  
	 * 32: ???  
	 * 33: ???  
	 * 34: A "2-45"  
	 * 35: ???  
	 * 36: A "9-25"  
	 * 37: ???  
	 * 38: ???  
	 * 39: ???  
	 * 40: ???  
	 * 41: ???  
	 * 42: ???  
	 * 43: Possible disturbance  
	 * 44: Civilian in need of assistance  
	 * 45: ???  
	 * 46: ???  
	 * ```
	 */
	@:native("REPORT_CRIME")
	static function reportCrime(player:Dynamic, crimeType:Int, wantedLvlThresh:Int):Dynamic;

	/**
	 * 
	 */
	@:native("REPORT_POLICE_SPOTTED_PLAYER")
	static function reportPoliceSpottedPlayer(player:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("RESET_WORLD_BOUNDARY_FOR_PLAYER")
	static function resetWorldBoundaryForPlayer():Dynamic;

	/**
	 * 
	 */
	@:native("RESET_PLAYER_ARREST_STATE")
	static function resetPlayerArrestState(player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("RESET_PLAYER_STAMINA")
	static function resetPlayerStamina(player:Dynamic):Dynamic;

	/**
	 * For Steam.
	 * Does nothing and always returns false in the retail version of the game.
	 */
	@:native("_SET_ACHIEVEMENT_PROGRESS")
	static function SetAchievementProgress(achievement:Int, progress:Int):Bool;

	/**
	 * 
	 */
	@:native("RESET_PLAYER_INPUT_GAIT")
	static function resetPlayerInputGait(player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("RESET_WANTED_LEVEL_DIFFICULTY")
	static function resetWantedLevelDifficulty(player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ALL_RANDOM_PEDS_FLEE_THIS_FRAME")
	static function setAllRandomPedsFleeThisFrame(player:Dynamic):Dynamic;

	/**
	 * Adds a percentage to a players stamina
	 */
	@:native("RESTORE_PLAYER_STAMINA")
	static function restorePlayerStamina(player:Dynamic, percentage:Float):Dynamic;

	/**
	 * ```
	 * This can be between 1.0f - 14.9f   
	 * You can change the max in IDA from 15.0. I say 15.0 as the function blrs if what you input is greater than or equal to 15.0 hence why it's 14.9 max default.  
	 * On PC the multiplier can be between 0.0f and 50.0f (inclusive).  
	 * ```
	 */
	@:native("SET_AIR_DRAG_MULTIPLIER_FOR_PLAYERS_VEHICLE")
	static function setAirDragMultiplierForPlayersVehicle(player:Dynamic, multiplier:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_DISABLE_AMBIENT_MELEE_MOVE")
	static function setDisableAmbientMeleeMove(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_AUTO_GIVE_PARACHUTE_WHEN_ENTER_PLANE")
	static function setAutoGiveParachuteWhenEnterPlane(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_AUTO_GIVE_SCUBA_GEAR_WHEN_EXIT_VEHICLE")
	static function setAutoGiveScubaGearWhenExitVehicle(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Sets whether all random peds will run away from the player if they are agitated (threatened) (bool=true), or if they will stand their ground (bool=false).
	 */
	@:native("SET_ALL_RANDOM_PEDS_FLEE")
	static function setAllRandomPedsFlee(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_EVERYONE_IGNORE_PLAYER")
	static function setEveryoneIgnorePlayer(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_IGNORE_LOW_PRIORITY_SHOCKING_EVENTS")
	static function setIgnoreLowPriorityShockingEvents(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_DISPATCH_COPS_FOR_PLAYER")
	static function setDispatchCopsForPlayer(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_BLUETOOTH_STATE")
	static function setPlayerBluetoothState(player:Dynamic, state:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_MAX_WANTED_LEVEL")
	static function setMaxWantedLevel(maxWantedLevel:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_CAN_LEAVE_PARACHUTE_SMOKE_TRAIL")
	static function setPlayerCanLeaveParachuteSmokeTrail(player:Dynamic, enabled:Bool):Dynamic;

	/**
	 * Sets whether the player is able to do drive-bys in vehicle (shooting & aiming in vehicles), this also includes middle finger taunts.
	 * 
	 * This is a toggle, it does not have to be ran every frame.
	 */
	@:native("SET_PLAYER_CAN_DO_DRIVE_BY")
	static function setPlayerCanDoDriveBy(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sets whether this player can be hassled by gangs.  
	 * ```
	 */
	@:native("SET_PLAYER_CAN_BE_HASSLED_BY_GANGS")
	static function setPlayerCanBeHassledByGangs(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Every occurrence was either 0 or 2.  
	 * ```
	 */
	@:native("SET_PLAYER_CLOTH_PACKAGE_INDEX")
	static function setPlayerClothPackageIndex(index:Int):Dynamic;

	/**
	 * ```
	 * 6 matches across 4 scripts. 5 occurrences were 240. The other was 255.  
	 * ```
	 */
	@:native("SET_PLAYER_CLOTH_LOCK_COUNTER")
	static function setPlayerClothLockCounter(value:Int):Dynamic;

	/**
	 * ```
	 * Sets whether this player can take cover.
	 * ```
	 */
	@:native("SET_PLAYER_CAN_USE_COVER")
	static function setPlayerCanUseCover(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Flags:
	 * SPC_AMBIENT_SCRIPT = (1 << 1),
	 * SPC_CLEAR_TASKS = (1 << 2),
	 * SPC_REMOVE_FIRES = (1 << 3),
	 * SPC_REMOVE_EXPLOSIONS = (1 << 4),
	 * SPC_REMOVE_PROJECTILES = (1 << 5),
	 * SPC_DEACTIVATE_GADGETS = (1 << 6),
	 * SPC_REENABLE_CONTROL_ON_DEATH = (1 << 7),
	 * SPC_LEAVE_CAMERA_CONTROL_ON = (1 << 8),
	 * SPC_ALLOW_PLAYER_DAMAGE = (1 << 9),
	 * SPC_DONT_STOP_OTHER_CARS_AROUND_PLAYER = (1 << 10),
	 * SPC_PREVENT_EVERYBODY_BACKOFF = (1 << 11),
	 * SPC_ALLOW_PAD_SHAKE = (1 << 12)
	 * See: https://alloc8or.re/gta5/doc/enums/eSetPlayerControlFlag.txt
	 * ```
	 */
	@:native("SET_PLAYER_CONTROL")
	static function setPlayerControl(player:Dynamic, bHasControl:Bool, flags:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_FORCED_ZOOM")
	static function setPlayerForcedZoom(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_CLOTH_PIN_FRAMES")
	static function setPlayerClothPinFrames(player:Dynamic, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_PLAYER_FALL_DISTANCE")
	static function SetPlayerFallDistance(player:Dynamic, distance:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_HAS_RESERVE_PARACHUTE")
	static function setPlayerHasReserveParachute(player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_PLAYER_HEALTH_RECHARGE_LIMIT")
	static function SetPlayerHealthRechargeLimit(player:Dynamic, limit:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_FORCE_SKIP_AIM_INTRO")
	static function setPlayerForceSkipAimIntro(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_FORCED_AIM")
	static function setPlayerForcedAim(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Make the player impervious to all forms of damage.
	 */
	@:native("SET_PLAYER_INVINCIBLE")
	static function setPlayerInvincible(player:Dynamic, bInvincible:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_LEAVE_PED_BEHIND")
	static function setPlayerLeavePedBehind(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("_SET_PLAYER_HOMING_ROCKET_DISABLED")
	static function SetPlayerHomingRocketDisabled(player:Dynamic, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_PLAYER_INVINCIBLE_KEEP_RAGDOLL_ENABLED")
	static function SetPlayerInvincibleKeepRagdollEnabled(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * This multiplier is reset to `1.0` every time the player ped is changed, often times via [`SET_PLAYER_MODEL`](#\_0x00A1CADD00108836) or [`CHANGE_PLAYER_PED`](#\_0x048189FAC643DEEE).
	 */
	@:native("SET_PLAYER_HEALTH_RECHARGE_MULTIPLIER")
	static function setPlayerHealthRechargeMultiplier(player:Dynamic, regenRate:Float):Dynamic;

	/**
	 * ```
	 * Used to toggle the square up aim.
	 * ```
	 */
	@:native("SET_PLAYER_LOCKON")
	static function setPlayerLockon(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Affects the range of auto aim target.  
	 * ```
	 */
	@:native("SET_PLAYER_LOCKON_RANGE_OVERRIDE")
	static function setPlayerLockonRangeOverride(player:Dynamic, range:Float):Dynamic;

	/**
	 * Establishes a reset flag to prevent the player from entering any vehicle. Not that this native must be called every frame.
	 */
	@:native("SET_PLAYER_MAY_NOT_ENTER_ANY_VEHICLE")
	static function setPlayerMayNotEnterAnyVehicle(player:Dynamic):Dynamic;

	/**
	 * Limit the player to only enter this vehicle. Note set vehicle to false if you want them to access any vehicle.
	 */
	@:native("SET_PLAYER_MAY_ONLY_ENTER_THIS_VEHICLE")
	static function setPlayerMayOnlyEnterThisVehicle(player:Dynamic, vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 3: BOOL p2
	 * ```
	 */
	@:native("SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER")
	static function setPlayerMeleeWeaponDamageModifier(player:Dynamic, modifier:Float):Dynamic;

	/**
	 * ```
	 * Default is 100. Use player id and not ped id. For instance: PLAYER::SET_PLAYER_MAX_ARMOUR(PLAYER::PLAYER_ID(), 100); // main_persistent.ct4  
	 * ```
	 */
	@:native("SET_PLAYER_MAX_ARMOUR")
	static function setPlayerMaxArmour(player:Dynamic, value:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_NOISE_MULTIPLIER")
	static function setPlayerNoiseMultiplier(player:Dynamic, multiplier:Float):Dynamic;

	/**
	 * Set the model for a specific Player. Note that this will destroy the current Ped for the Player and create a new one, any reference to the old ped will be invalid after calling this.
	 * 
	 * As per usual, make sure to request the model first and wait until it has loaded.
	 */
	@:native("SET_PLAYER_MODEL")
	static function setPlayerModel(player:Dynamic, model:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE")
	static function setPlayerParachutePackModelOverride(player:Dynamic, model:Int):Dynamic;

	/**
	 * ```
	 * modifier's min value is 0.1
	 * ```
	 */
	@:native("SET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER")
	static function setPlayerMeleeWeaponDefenseModifier(player:Dynamic, modifier:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_SET_PLAYER_RESERVE_PARACHUTE_MODEL_OVERRIDE")
	static function SetPlayerReserveParachuteModelOverride(player:Dynamic, model:Int):Dynamic;

	/**
	 * ```
	 * tints 0- 13
	 * 0 - unkown
	 * 1 - unkown
	 * 2 - unkown
	 * 3 - unkown
	 * 4 - unkown
	 * ```
	 */
	@:native("SET_PLAYER_PARACHUTE_PACK_TINT_INDEX")
	static function setPlayerParachutePackTintIndex(player:Dynamic, tintIndex:Int):Dynamic;

	/**
	 * ```
	 * example:  
	 * PLAYER::SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(PLAYER::PLAYER_ID(), 0x73268708);  
	 * ```
	 */
	@:native("SET_PLAYER_PARACHUTE_MODEL_OVERRIDE")
	static function setPlayerParachuteModelOverride(player:Dynamic, model:Int):Dynamic;

	/**
	 * ```
	 * p1 was always 5.  
	 * p4 was always false.  
	 * ```
	 */
	@:native("SET_PLAYER_PARACHUTE_VARIATION_OVERRIDE")
	static function setPlayerParachuteVariationOverride(player:Dynamic, p1:Int, p2:Dynamic, p3:Dynamic, p4:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_SIMULATE_AIMING")
	static function setPlayerSimulateAiming(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Tints:  
	 * None = -1,  
	 * Rainbow = 0,  
	 * Red = 1,  
	 * SeasideStripes = 2,  
	 * WidowMaker = 3,  
	 * Patriot = 4,  
	 * Blue = 5,  
	 * Black = 6,  
	 * Hornet = 7,  
	 * AirFocce = 8,  
	 * Desert = 9,  
	 * Shadow = 10,  
	 * HighAltitude = 11,  
	 * Airbone = 12,  
	 * Sunrise = 13,  
	 * ```
	 */
	@:native("SET_PLAYER_PARACHUTE_TINT_INDEX")
	static function setPlayerParachuteTintIndex(player:Dynamic, tintIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_PARACHUTE_SMOKE_TRAIL_COLOR")
	static function setPlayerParachuteSmokeTrailColor(player:Dynamic, r:Int, g:Int, b:Int):Dynamic;

	/**
	 * ```
	 * example:  
	 * flags: 0-6  
	 * PLAYER::SET_PLAYER_RESET_FLAG_PREFER_REAR_SEATS(PLAYER::PLAYER_ID(), 6);  
	 * wouldnt the flag be the seatIndex?  
	 * ```
	 */
	@:native("SET_PLAYER_RESET_FLAG_PREFER_REAR_SEATS")
	static function setPlayerResetFlagPreferRearSeats(player:Dynamic, flags:Int):Dynamic;

	/**
	 * ```
	 * Tints:  
	 * None = -1,  
	 * Rainbow = 0,  
	 * Red = 1,  
	 * SeasideStripes = 2,  
	 * WidowMaker = 3,  
	 * Patriot = 4,  
	 * Blue = 5,  
	 * Black = 6,  
	 * Hornet = 7,  
	 * AirFocce = 8,  
	 * Desert = 9,  
	 * Shadow = 10,  
	 * HighAltitude = 11,  
	 * Airbone = 12,  
	 * Sunrise = 13,  
	 * ```
	 */
	@:native("SET_PLAYER_RESERVE_PARACHUTE_TINT_INDEX")
	static function setPlayerReserveParachuteTintIndex(player:Dynamic, index:Int):Dynamic;

	/**
	 * ```
	 * Values around 1.0f to 2.0f used in game scripts.  
	 * ```
	 */
	@:native("SET_PLAYER_SNEAKING_NOISE_MULTIPLIER")
	static function setPlayerSneakingNoiseMultiplier(player:Dynamic, multiplier:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_SPRINT")
	static function setPlayerSprint(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Seems to lock the underwater timer of the specified player. Set `percentage` to `50.0` will reduce the value of [GET_PLAYER_UNDERWATER_TIME_REMAINING](#\_0xA1FCF8E6AF40B731) to 5.0.
	 * 
	 * If you want to increase the underwater time for ped, use [SET_PED_MAX_TIME_UNDERWATER](#\_0x6BA428C528D9E522) instead.
	 * 
	 * Using this native after [SET_PED_MAX_TIME_UNDERWATER](#\_0x6BA428C528D9E522) **WILL NOT** get what you want. For example, if you set the max time underwater to `100.0` seconds using [SET_PED_MAX_TIME_UNDERWATER](#\_0x6BA428C528D9E522) and then call this native and set the `percentage` to 50.0, you will not get `50.0`, instead `2.0`.
	 */
	@:native("_SET_PLAYER_UNDERWATER_TIME_REMAINING")
	static function SetPlayerUnderwaterTimeRemaining(player:Dynamic, percentage:Float):Dynamic;

	/**
	 * ```
	 * Sets your targeting mode.
	 * 0 = Assisted Aim - Full
	 * 1 = Assisted Aim - Partial
	 * 2 = Free Aim - Assisted
	 * 3 = Free Aim
	 * ```
	 */
	@:native("SET_PLAYER_TARGETING_MODE")
	static function setPlayerTargetingMode(targetMode:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_TARGET_LEVEL")
	static function setPlayerTargetLevel(targetLevel:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_STEALTH_PERCEPTION_MODIFIER")
	static function setPlayerStealthPerceptionModifier(player:Dynamic, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_WANTED_LEVEL")
	static function setPlayerWantedLevel(player:Dynamic, wantedLevel:Int, delayedResponse:Bool):Dynamic;

	/**
	 * ```
	 * # Predominant call signatures  
	 * PLAYER::SET_PLAYER_WANTED_CENTRE_POSITION(PLAYER::PLAYER_ID(), ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1));  
	 * # Parameter value ranges  
	 * P0: PLAYER::PLAYER_ID()  
	 * P1: ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1)  
	 * P2: Not set by any call  
	 * ```
	 */
	@:native("SET_PLAYER_WANTED_CENTRE_POSITION")
	static function setPlayerWantedCentrePosition(player:Dynamic, position:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_WEAPON_DEFENSE_MODIFIER")
	static function setPlayerWeaponDefenseModifier(player:Dynamic, modifier:Float):Dynamic;

	/**
	 * ```
	 * modifier's min value is 0.1
	 * ```
	 */
	@:native("SET_PLAYER_VEHICLE_DAMAGE_MODIFIER")
	static function setPlayerVehicleDamageModifier(player:Dynamic, modifier:Float):Dynamic;

	/**
	 * Set the player's current team.
	 */
	@:native("SET_PLAYER_TEAM")
	static function setPlayerTeam(player:Dynamic, team:Int):Dynamic;

	/**
	 * ```
	 * Forces any pending wanted level to be applied to the specified player immediately.  
	 * Call SET_PLAYER_WANTED_LEVEL with the desired wanted level, followed by SET_PLAYER_WANTED_LEVEL_NOW.  
	 * Second parameter is unknown (always false).  
	 * ```
	 */
	@:native("SET_PLAYER_WANTED_LEVEL_NOW")
	static function setPlayerWantedLevelNow(player:Dynamic, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_WANTED_LEVEL_NO_DROP")
	static function setPlayerWantedLevelNoDrop(player:Dynamic, wantedLevel:Int, delayedResponse:Bool):Dynamic;

	/**
	 * ```
	 * The player will be ignored by the police if toggle is set to true  
	 * ```
	 */
	@:native("SET_POLICE_IGNORE_PLAYER")
	static function setPoliceIgnorePlayer(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * modifier's min value is 0.1
	 * ```
	 */
	@:native("SET_PLAYER_VEHICLE_DEFENSE_MODIFIER")
	static function setPlayerVehicleDefenseModifier(player:Dynamic, modifier:Float):Dynamic;

	/**
	 * The native ensures the 'modifier' parameter is 0.1 or greater.
	 */
	@:native("SET_PLAYER_WEAPON_DAMAGE_MODIFIER")
	static function setPlayerWeaponDamageModifier(player:Dynamic, modifier:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_SPECIAL_ABILITY_MULTIPLIER")
	static function setSpecialAbilityMultiplier(multiplier:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_PLAYER_WEAPON_DEFENSE_MODIFIER_2")
	static function SetPlayerWeaponDefenseModifier2(player:Dynamic, modifier:Float):Dynamic;

	/**
	 * ```
	 * Multiplier goes up to 1.49 any value above will be completely overruled by the game and the multiplier will not take effect, this can be edited in memory however.  
	 * Just call it one time, it is not required to be called once every tick.  
	 * Note: At least the IDA method if you change the max float multiplier from 1.5 it will change it for both this and SWIM above. I say 1.5 as the function blrs if what you input is greater than or equal to 1.5 hence why it's 1.49 max default.  
	 * It is not possible to "decrease" speed. Anything below 1 will be ignored.  
	 * ```
	 */
	@:native("SET_RUN_SPRINT_MULTIPLIER_FOR_PLAYER")
	static function setRunSprintMultiplierForPlayer(player:Dynamic, multiplier:Float):Dynamic;

	/**
	 * ```
	 * If toggle is set to false:
	 *  The police won't be shown on the (mini)map
	 * If toggle is set to true:
	 *  The police will be shown on the (mini)map
	 * ```
	 */
	@:native("SET_POLICE_RADAR_BLIPS")
	static function setPoliceRadarBlips(toggle:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 3: Any p2
	 * ```
	 */
	@:native("_SET_SPECIAL_ABILITY")
	static function SetSpecialAbility(player:Dynamic, p1:Int):Dynamic;

	/**
	 * ```
	 * Swim speed multiplier.  
	 * Multiplier goes up to 1.49  
	 * Just call it one time, it is not required to be called once every tick. - Note copied from below native.  
	 * Note: At least the IDA method if you change the max float multiplier from 1.5 it will change it for both this and RUN_SPRINT below. I say 1.5 as the function blrs if what you input is greater than or equal to 1.5 hence why it's 1.49 max default.  
	 * ```
	 */
	@:native("SET_SWIM_MULTIPLIER_FOR_PLAYER")
	static function setSwimMultiplierForPlayer(player:Dynamic, multiplier:Float):Dynamic;

	/**
	 * ```
	 * Max value is 1.0  
	 * ```
	 */
	@:native("SET_WANTED_LEVEL_DIFFICULTY")
	static function setWantedLevelDifficulty(player:Dynamic, difficulty:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2060
	 * ```
	 */
	@:native("_SET_WANTED_LEVEL_HIDDEN_EVASION_TIME")
	static function SetWantedLevelHiddenEvasionTime(player:Dynamic, wantedLevel:Int, lossTime:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("_SPECIAL_ABILITY_ACTIVATE")
	static function SpecialAbilityActivate(player:Dynamic):Dynamic;

	/**
	 * ```
	 * 2 matches. p1 was always true.
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 4: Any p3
	 * ```
	 */
	@:native("SPECIAL_ABILITY_CHARGE_LARGE")
	static function specialAbilityChargeLarge(player:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_WANTED_LEVEL_MULTIPLIER")
	static function setWantedLevelMultiplier(multiplier:Float):Dynamic;

	/**
	 * This is to make the player walk without accepting input.
	 * 
	 * Call this native every frame so you can control the direction of your ped.
	 */
	@:native("SIMULATE_PLAYER_INPUT_GAIT")
	static function simulatePlayerInputGait(player:Dynamic, amount:Float, gaitType:Int, rotationSpeed:Float, p4:Bool, p5:Bool):Dynamic;

	/**
	 * ```
	 * Every occurrence of p1 & p2 were both true.
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 4: Any p3
	 * ```
	 */
	@:native("SPECIAL_ABILITY_CHARGE_SMALL")
	static function specialAbilityChargeSmall(player:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * p1 appears to always be 1 (only comes up twice)
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 3: Any p2
	 * ```
	 */
	@:native("SPECIAL_ABILITY_CHARGE_CONTINUOUS")
	static function specialAbilityChargeContinuous(player:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * p1 appears as 5, 10, 15, 25, or 30. p2 is always true.
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 4: Any p3
	 * ```
	 */
	@:native("SPECIAL_ABILITY_CHARGE_ABSOLUTE")
	static function specialAbilityChargeAbsolute(player:Dynamic, p1:Int, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("_SPECIAL_ABILITY_DEPLETE")
	static function SpecialAbilityDeplete(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * Only 1 match. Both p1 & p2 were true.
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 4: Any p3
	 * ```
	 */
	@:native("SPECIAL_ABILITY_CHARGE_MEDIUM")
	static function specialAbilityChargeMedium(player:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("SPECIAL_ABILITY_CHARGE_ON_MISSION_FAILED")
	static function specialAbilityChargeOnMissionFailed(player:Dynamic):Dynamic;

	/**
	 * ```
	 * normalizedValue is from 0.0 - 1.0
	 * p2 is always 1
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 4: Any p3
	 * ```
	 */
	@:native("SPECIAL_ABILITY_CHARGE_NORMALIZED")
	static function specialAbilityChargeNormalized(player:Dynamic, normalizedValue:Float, p2:Bool):Dynamic;

	/**
	 * ```
	 * p1 was always true.
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 3: Any p2
	 * ```
	 */
	@:native("SPECIAL_ABILITY_DEPLETE_METER")
	static function specialAbilityDepleteMeter(player:Dynamic, p1:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("SPECIAL_ABILITY_DEACTIVATE")
	static function specialAbilityDeactivate(player:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("SPECIAL_ABILITY_DEACTIVATE_FAST")
	static function specialAbilityDeactivateFast(player:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("SPECIAL_ABILITY_RESET")
	static function specialAbilityReset(player:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("SPECIAL_ABILITY_UNLOCK")
	static function specialAbilityUnlock(playerModel:Int):Dynamic;

	/**
	 * ```
	 * Also known as _RECHARGE_SPECIAL_ABILITY
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 3: Any p2
	 * ```
	 */
	@:native("SPECIAL_ABILITY_FILL_METER")
	static function specialAbilityFillMeter(player:Dynamic, p1:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("SPECIAL_ABILITY_LOCK")
	static function specialAbilityLock(playerModel:Int):Dynamic;

	/**
	 * Teleports the player to the given coordinates.
	 * 
	 * If findCollisionLand is true it will try to find the Z value for you, this however has a timeout of 100 frames.
	 * 
	 * When trying to find the Z value the native will take longer the higher the difference from the given Z to the ground, this combined with the timeout can cause the teleport to just teleport to the given Z value, so try to estimate the z value, so don't just pass in 1000.0.
	 * 
	 * Also if you're in a vehicle and teleportWithVehicle is true it will not find the Z value for you.
	 */
	@:native("START_PLAYER_TELEPORT")
	static function startPlayerTeleport(player:Dynamic, x:Float, y:Float, z:Float, heading:Float, teleportWithVehicle:Bool, findCollisionLand:Bool, p7:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("START_FIRING_AMNESTY")
	static function startFiringAmnesty(duration:Int):Dynamic;

	/**
	 * Suppresses a crime for a given player for this frame only.
	 * 
	 * **Note:** This native needs to be executed inside a thread if a crime is meant to be suppressed for a given amount of time.
	 */
	@:native("SUPPRESS_CRIME_THIS_FRAME")
	static function suppressCrimeThisFrame(player:Dynamic, crimeType:Int):Dynamic;

	/**
	 * ```
	 * Disables the player's teleportation  
	 * ```
	 */
	@:native("STOP_PLAYER_TELEPORT")
	static function stopPlayerTeleport():Dynamic;

	/**
	 * 
	 */
	@:native("_UPDATE_PLAYER_TELEPORT")
	static function UpdatePlayerTeleport(player:Dynamic):Bool;

}
