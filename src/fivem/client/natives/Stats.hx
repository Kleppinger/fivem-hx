package fivem.client.natives;

@:native("_G")
extern class Stats {
	/**
	 * 
	 */
	@:native("GET_PACKED_BOOL_STAT_KEY")
	static function getPackedBoolStatKey(index:Int, spStat:Bool, charStat:Bool, character:Int):Int;

	/**
	 * 
	 */
	@:native("LEADERBOARDS2_READ_BY_HANDLE")
	static function leaderboards2ReadByHandle(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * ```
	 * Needs more research. Gets the stat name of a masked bool?
	 * section - values used in the decompiled scripts:
	 * "_NGPSTAT_BOOL"
	 * "_NGTATPSTAT_BOOL"
	 * "_NGDLCPSTAT_BOOL"
	 * "_DLCBIKEPSTAT_BOOL"
	 * "_DLCGUNPSTAT_BOOL"
	 * "_GUNTATPSTAT_BOOL"
	 * "_DLCSMUGCHARPSTAT_BOOL"
	 * "_GANGOPSPSTAT_BOOL"
	 * "_BUSINESSBATPSTAT_BOOL"
	 * "_ARENAWARSPSTAT_BOOL"
	 * "_CASINOPSTAT_BOOL"
	 * "_CASINOHSTPSTAT_BOOL"
	 * "_HEIST3TATTOOSTAT_BOOL"
	 * ```
	 */
	@:native("_GET_NGSTAT_BOOL_HASH")
	static function GetNgstatBoolHash(index:Int, spStat:Bool, charStat:Bool, character:Int, section:String):Int;

	/**
	 * ```
	 * Needs more research. Gets the stat name of a masked int?
	 * section - values used in the decompiled scripts:
	 * "_NGPSTAT_INT"
	 * "_MP_NGPSTAT_INT"
	 * "_MP_LRPSTAT_INT"
	 * "_MP_APAPSTAT_INT"
	 * "_MP_LR2PSTAT_INT"
	 * "_MP_BIKEPSTAT_INT"
	 * "_MP_IMPEXPPSTAT_INT"
	 * "_MP_GUNRPSTAT_INT"
	 * "_NGDLCPSTAT_INT"
	 * "_MP_NGDLCPSTAT_INT"
	 * "_DLCSMUGCHARPSTAT_INT"
	 * "_GANGOPSPSTAT_INT"
	 * "_BUSINESSBATPSTAT_INT"
	 * "_ARENAWARSPSTAT_INT"
	 * "_CASINOPSTAT_INT"
	 * "_CASINOHSTPSTAT_INT"
	 * ```
	 */
	@:native("_GET_NGSTAT_INT_HASH")
	static function GetNgstatIntHash(index:Int, spStat:Bool, charStat:Bool, character:Int, section:String):Int;

	/**
	 * 
	 */
	@:native("LEADERBOARDS2_READ_BY_RADIUS")
	static function leaderboards2ReadByRadius(p0:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GET_PACKED_TU_BOOL_STAT_KEY")
	static function getPackedTuBoolStatKey(index:Int, spStat:Bool, charStat:Bool, character:Int):Int;

	/**
	 * 
	 */
	@:native("GET_PACKED_INT_STAT_KEY")
	static function getPackedIntStatKey(index:Int, spStat:Bool, charStat:Bool, character:Int):Int;

	/**
	 * 
	 */
	@:native("_LEADERBOARDS2_READ_BY_PLATFORM")
	static function Leaderboards2ReadByPlatform(p0:Dynamic, gamerHandleCsv:String, platformName:String):Bool;

	/**
	 * 
	 */
	@:native("GET_PACKED_TU_INT_STAT_KEY")
	static function getPackedTuIntStatKey(index:Int, spStat:Bool, charStat:Bool, character:Int):Int;

	/**
	 * 
	 */
	@:native("_HIRED_LIMO")
	static function HiredLimo(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("LEADERBOARDS2_READ_BY_RANK")
	static function leaderboards2ReadByRank(p0:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LEADERBOARDS2_READ_BY_SCORE_INT")
	static function leaderboards2ReadByScoreInt(p0:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LEADERBOARDS2_READ_BY_ROW")
	static function leaderboards2ReadByRow(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LEADERBOARDS2_WRITE_DATA")
	static function leaderboards2WriteData(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LEADERBOARDS2_READ_BY_SCORE_FLOAT")
	static function leaderboards2ReadByScoreFloat(p0:Dynamic, p1:Float, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LEADERBOARDS_CACHE_DATA_ROW")
	static function leaderboardsCacheDataRow(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LEADERBOARDS2_READ_RANK_PREDICTION")
	static function leaderboards2ReadRankPrediction(p0:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_LEADERBOARDS_DEATHS")
	static function LeaderboardsDeaths(statName:Int, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("LEADERBOARDS_CLEAR_CACHE_DATA")
	static function leaderboardsClearCacheData():Dynamic;

	/**
	 * 
	 */
	@:native("LEADERBOARDS_GET_CACHE_TIME")
	static function leaderboardsGetCacheTime(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("LEADERBOARDS2_READ_FRIENDS_BY_ROW")
	static function leaderboards2ReadFriendsByRow(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Bool, p4:Dynamic, p5:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LEADERBOARDS_GET_CACHE_DATA_ROW")
	static function leaderboardsGetCacheDataRow(p0:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LEADERBOARDS_GET_CACHE_NUMBER_OF_ROWS")
	static function leaderboardsGetCacheNumberOfRows(p0:Dynamic):Int;

	/**
	 * 
	 */
	@:native("LEADERBOARDS_READ_CLEAR_ALL")
	static function leaderboardsReadClearAll():Dynamic;

	/**
	 * 
	 */
	@:native("LEADERBOARDS2_WRITE_DATA_FOR_EVENT_TYPE")
	static function leaderboards2WriteDataForEventType(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LEADERBOARDS_GET_COLUMN_TYPE")
	static function leaderboardsGetColumnType(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("LEADERBOARDS_READ_CLEAR")
	static function leaderboardsReadClear(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("LEADERBOARDS_READ_ANY_PENDING")
	static function leaderboardsReadAnyPending():Bool;

	/**
	 * 
	 */
	@:native("LEADERBOARDS_GET_CACHE_EXISTS")
	static function leaderboardsGetCacheExists(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LEADERBOARDS_READ_SUCCESSFUL")
	static function leaderboardsReadSuccessful(p0:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LEADERBOARDS_READ_PENDING")
	static function leaderboardsReadPending(p0:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LEADERBOARDS_WRITE_ADD_COLUMN")
	static function leaderboardsWriteAddColumn(p0:Dynamic, p1:Dynamic, p2:Float):Dynamic;

	/**
	 * 
	 */
	@:native("LEADERBOARDS_GET_COLUMN_ID")
	static function leaderboardsGetColumnId(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("LEADERBOARDS_GET_NUMBER_OF_COLUMNS")
	static function leaderboardsGetNumberOfColumns(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("LEADERBOARDS_WRITE_ADD_COLUMN_LONG")
	static function leaderboardsWriteAddColumnLong(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_ORDERED_BOSS_VEHICLE")
	static function OrderedBossVehicle(p0:Dynamic, p1:Dynamic, vehicleHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_ACQUIRED_HIDDEN_PACKAGE")
	static function playstatsAcquiredHiddenPackage(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_PLAYSTATS_ARCADEGAME")
	static function PlaystatsArcadegame(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_PLAYSTATS_ARENA_WAR_SPECTATOR")
	static function PlaystatsArenaWarSpectator(p0:Int, p1:Int, p2:Int, p3:Int, p4:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_ACTIVITY_DONE")
	static function playstatsActivityDone(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_PLAYSTATS_ARENA_WARS_ENDED")
	static function PlaystatsArenaWarsEnded(data:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_AWARD_XP")
	static function playstatsAwardXp(amount:Int, type:Int, category:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_PLAYSTATS_BAN_ALERT")
	static function PlaystatsBanAlert(p0:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_BACKGROUND_SCRIPT_ACTION")
	static function playstatsBackgroundScriptAction(action:String, value:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_PLAYSTATS_AWARD_BADSPORT")
	static function PlaystatsAwardBadsport(id:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_PLAYSTATS_CARCLUB_PRIZE")
	static function PlaystatsCarclubPrize(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_PLAYSTATS_CARCLUB_CHALLENGE")
	static function PlaystatsCarclubChallenge(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_PLAYSTATS_BUY_CONTRABAND")
	static function PlaystatsBuyContraband(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_PLAYSTATS_CASINO_CHIP")
	static function PlaystatsCasinoChip(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_PLAYSTATS_CARCLUB_POINTS")
	static function PlaystatsCarclubPoints(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_PLAYSTATS_CASINO_INSIDETRACK_LIGHT")
	static function PlaystatsCasinoInsidetrackLight(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_PLAYSTATS_CASINO_MISSION_ENDED")
	static function PlaystatsCasinoMissionEnded(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_PLAYSTATS_CASINO_BLACKJACK")
	static function PlaystatsCasinoBlackjack(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_PLAYSTATS_CASINO_ROULETTE_LIGHT")
	static function PlaystatsCasinoRouletteLight(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_PLAYSTATS_CASINO_INSIDETRACK")
	static function PlaystatsCasinoInsidetrack(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_PLAYSTATS_CASINO_SLOTMACHINE")
	static function PlaystatsCasinoSlotmachine(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_PLAYSTATS_CASINO_BLACKJACK_LIGHT")
	static function PlaystatsCasinoBlackjackLight(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_PLAYSTATS_CASINO_ROULETTE")
	static function PlaystatsCasinoRoulette(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_PLAYSTATS_CASINO_THREECARDPOKER")
	static function PlaystatsCasinoThreecardpoker(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_PLAYSTATS_CASINO_SLOTMACHINE_LIGHT")
	static function PlaystatsCasinoSlotmachineLight(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_PLAYSTATS_CASINO_LUCKYSEVEN")
	static function PlaystatsCasinoLuckyseven(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_CLOTH_CHANGE")
	static function playstatsClothChange(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_PLAYSTATS_CASINO_STORY_MISSION_ENDED")
	static function PlaystatsCasinoStoryMissionEnded(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_PLAYSTATS_CASINO_THREECARDPOKER_LIGHT")
	static function PlaystatsCasinoThreecardpokerLight(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_PLAYSTATS_CHANGE_MC_EMBLEM")
	static function PlaystatsChangeMcEmblem(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_CRATE_CREATED")
	static function playstatsCrateCreated(p0:Float, p1:Float, p2:Float):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_CHEAT_APPLIED")
	static function playstatsCheatApplied(cheat:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_PLAYSTATS_COLLECTIBLE")
	static function PlaystatsCollectible(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic, p7:Dynamic, p8:Dynamic, p9:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_PLAYSTATS_DIRECTOR_MODE")
	static function PlaystatsDirectorMode(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_PLAYSTATS_COPY_RANK_INTO_NEW_SLOT")
	static function PlaystatsCopyRankIntoNewSlot(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 7: Any p6
	 * NativeDB Added Parameter 8: Any p7
	 * ```
	 */
	@:native("PLAYSTATS_CRATE_DROP_MISSION_DONE")
	static function playstatsCrateDropMissionDone(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_PLAYSTATS_DEFEND_CONTRABAND")
	static function PlaystatsDefendContraband(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_PLAYSTATS_DAR_MISSION_END")
	static function PlaystatsDarMissionEnd(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_PLAYSTATS_DRONE_USAGE")
	static function PlaystatsDroneUsage(p0:Int, p1:Int, p2:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_PLAYSTATS_DUPE_DETECTION")
	static function PlaystatsDupeDetection(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_PLAYSTATS_ENTER_SESSION_PACK")
	static function PlaystatsEnterSessionPack(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_PLAYSTATS_EXTRA_EVENT")
	static function PlaystatsExtraEvent(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_PLAYSTATS_EARNED_MC_POINTS")
	static function PlaystatsEarnedMcPoints(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_PLAYSTATS_H2_INSTANCE_END")
	static function PlaystatsH2InstanceEnd(data:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_FRIEND_ACTIVITY")
	static function playstatsFriendActivity(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_HEIST_SAVE_CHEAT")
	static function playstatsHeistSaveCheat(hash:Int, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_PLAYSTATS_GUNRUN_MISSION_ENDED")
	static function PlaystatsGunrunMissionEnded(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_PLAYSTATS_H2_FMPREP_END")
	static function PlaystatsH2FmprepEnd(data:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_IMPORT_EXPORT_MISSION_DONE")
	static function playstatsImportExportMissionDone(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_PLAYSTATS_INVENTORY")
	static function PlaystatsInventory(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * longest time being ilde?  
	 * ```
	 */
	@:native("PLAYSTATS_IDLE_KICK")
	static function playstatsIdleKick(time:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_HOLD_UP_MISSION_DONE")
	static function playstatsHoldUpMissionDone(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_LEAVE_JOB_CHAIN")
	static function playstatsLeaveJobChain(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Removed Parameter 4: Any p3
	 * NativeDB Removed Parameter 5: Any p4
	 * NativeDB Removed Parameter 6: Any p5
	 * NativeDB Removed Parameter 7: Any p6
	 * ```
	 */
	@:native("PLAYSTATS_MATCH_STARTED")
	static function playstatsMatchStarted(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_MISSION_CHECKPOINT")
	static function playstatsMissionCheckpoint(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_MISSION_OVER")
	static function playstatsMissionOver(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Bool, p4:Bool, p5:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_MISSION_STARTED")
	static function playstatsMissionStarted(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_JOB_BEND")
	static function playstatsJobBend(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("_PLAYSTATS_PEGASAIRCRAFT")
	static function PlaystatsPegasaircraft(modelHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_NPC_INVITE")
	static function playstatsNpcInvite(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_PLAYSTATS_PASSIVE_MODE")
	static function PlaystatsPassiveMode(p0:Bool, p1:Int, p2:Int, p3:Int):Dynamic;

	/**
	 * **This native does absolutely nothing, just a nullsub**
	 */
	@:native("PLAYSTATS_ODDJOB_DONE")
	static function playstatsOddjobDone(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_RANDOM_MISSION_DONE")
	static function playstatsRandomMissionDone(name:String, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_PROP_CHANGE")
	static function playstatsPropChange(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_PLAYSTATS_PI_MENU_HIDE_SETTINGS")
	static function PlaystatsPiMenuHideSettings(data:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_QUICKFIX_TOOL")
	static function playstatsQuickfixTool(element:Int, item:String):Dynamic;

	/**
	 * 
	 */
	@:native("_PLAYSTATS_RECOVER_CONTRABAND")
	static function PlaystatsRecoverContraband(data:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_RACE_CHECKPOINT")
	static function playstatsRaceCheckpoint(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Removed Parameter 5: Any p4
	 * NativeDB Removed Parameter 6: Any p5
	 * NativeDB Removed Parameter 7: Any p6
	 * NativeDB Removed Parameter 8: Any p7
	 * NativeDB Removed Parameter 9: Any p8
	 * NativeDB Removed Parameter 10: Any p9
	 * ```
	 */
	@:native("PLAYSTATS_RACE_TO_POINT_MISSION_DONE")
	static function playstatsRaceToPointMissionDone(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic, p7:Dynamic, p8:Dynamic, p9:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_ROS_BET")
	static function playstatsRosBet(amount:Int, act:Int, player:Dynamic, cm:Float):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_RANK_UP")
	static function playstatsRankUp(rank:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_PLAYSTATS_ROBBERY_FINALE")
	static function PlaystatsRobberyFinale(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_SHOP_ITEM")
	static function playstatsShopItem(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * Sets a byte that is then used in session_host and session_join metrics when hosting or joining a session
	 */
	@:native("PLAYSTATS_SET_JOIN_TYPE")
	static function playstatsSetJoinType(joinType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_PLAYSTATS_SPENT_PI_CUSTOM_LOADOUT")
	static function PlaystatsSpentPiCustomLoadout(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_PLAYSTATS_ROBBERY_PREP")
	static function PlaystatsRobberyPrep(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_PLAYSTATS_SELL_CONTRABAND")
	static function PlaystatsSellContraband(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_PLAYSTATS_SPECTATOR_WHEEL_SPIN")
	static function PlaystatsSpectatorWheelSpin(p0:Int, p1:Int, p2:Int, p3:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("_PLAYSTATS_SMUG_MISSION_ENDED")
	static function PlaystatsSmugMissionEnded(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_PLAYSTATS_STONE_HATCHET_END")
	static function PlaystatsStoneHatchetEnd(data:Dynamic):Dynamic;

	/**
	 * ```
	 * PLAYSTATS_START_INVITE_DESPAWNING?
	 * ```
	 */
	@:native("_PLAYSTATS_START_OFFLINE_MODE")
	static function PlaystatsStartOfflineMode():Dynamic;

	/**
	 * Disallows CEventNetworkStuntPerformed to be triggered (Resets [`PLAYSTATS_START_TRACKING_STUNTS`](#\_0x928DBFB892638EF3)).
	 */
	@:native("PLAYSTATS_STOP_TRACKING_STUNTS")
	static function playstatsStopTrackingStunts():Dynamic;

	/**
	 * 
	 */
	@:native("SET_PROFILE_SETTING_PROLOGUE_COMPLETE")
	static function setProfileSettingPrologueComplete():Dynamic;

	/**
	 * Allows stunts to be triggered and sent as a `CEventNetworkStuntPerformed` event.
	 * 
	 * Event types are shown below:
	 * 
	 * ```cpp
	 * enum eTrackedStuntType
	 * {
	 *     ST_FRONTFLIP = 0,
	 *     ST_BACKFLIP = 1,
	 *     ST_SPIN = 2,
	 *     ST_WHEELIE = 3,
	 *     ST_STOPPIE = 4,
	 *     ST_BOWLING_PIN = 5,
	 *     ST_FOOTBALL = 6,
	 *     ST_ROLL = 7
	 * };
	 * ```
	 */
	@:native("PLAYSTATS_START_TRACKING_STUNTS")
	static function playstatsStartTrackingStunts():Dynamic;

	/**
	 * 
	 */
	@:native("PLAYSTATS_WEBSITE_VISITED")
	static function playstatsWebsiteVisited(scaleformHash:Int, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("STAT_GET_BOOL")
	static function statGetBool(statHash:Int, outValue:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("PRESENCE_EVENT_UPDATESTAT_INT")
	static function presenceEventUpdatestatInt(statHash:Int, value:Int, p2:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_STAT_GET_CANCEL_SAVE_MIGRATION_STATUS")
	static function StatGetCancelSaveMigrationStatus():Int;

	/**
	 * 
	 */
	@:native("PLAYSTATS_WEAPON_MODE_CHANGE")
	static function playstatsWeaponModeChange(weaponHash:Int, componentHashTo:Int, componentHashFrom:Int):Dynamic;

	/**
	 * ```
	 * Sets profile setting 866
	 * SET_*
	 * ```
	 */
	@:native("_SET_HAS_CONTENT_UNLOCKS_FLAGS")
	static function SetHasContentUnlocksFlags(value:Int):Dynamic;

	/**
	 * 
	 */
	@:native("STAT_GET_MASKED_INT")
	static function statGetMaskedInt(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Bool;

	/**
	 * ```
	 * Example:
	 * for (v_2 = 0; v_2 <= 4; v_2 += 1) {
	 *     STATS::STAT_CLEAR_SLOT_FOR_RELOAD(v_2);
	 * }
	 * ```
	 */
	@:native("STAT_CLEAR_SLOT_FOR_RELOAD")
	static function statClearSlotForReload(statSlot:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PRESENCE_EVENT_UPDATESTAT_FLOAT")
	static function presenceEventUpdatestatFloat(statHash:Int, value:Float, p2:Int):Dynamic;

	/**
	 * 
	 */
	@:native("STAT_DELETE_SLOT")
	static function statDeleteSlot(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * p2 appears to always be -1  
	 * ```
	 */
	@:native("STAT_GET_INT")
	static function statGetInt(statHash:Int, outValue:Dynamic, p2:Int):Bool;

	/**
	 * ```
	 * p2 - Default value? Seems to be -1 most of the time.  
	 * ```
	 */
	@:native("STAT_GET_BOOL_MASKED")
	static function statGetBoolMasked(statName:Int, mask:Int, p2:Int):Bool;

	/**
	 * ```
	 * Sets profile setting 501
	 * ```
	 */
	@:native("_SET_SAVE_MIGRATION_TRANSACTION_ID")
	static function SetSaveMigrationTransactionId(transactionId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("STAT_GET_FLOAT")
	static function statGetFloat(statHash:Int, outValue:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("STAT_GET_NUMBER_OF_HOURS")
	static function statGetNumberOfHours(statName:Int):Int;

	/**
	 * 
	 */
	@:native("STAT_GET_NUMBER_OF_MINUTES")
	static function statGetNumberOfMinutes(statName:Int):Int;

	/**
	 * 
	 */
	@:native("STAT_GET_DATE")
	static function statGetDate(statHash:Int, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * ```
	 * Needs more research. Possibly used to calculate the "mask" when calling "STAT_SET_BOOL_MASKED"?  
	 * ```
	 */
	@:native("_STAT_GET_PACKED_BOOL_MASK")
	static function StatGetPackedBoolMask(p0:Int):Int;

	/**
	 * 
	 */
	@:native("STAT_GET_NUMBER_OF_DAYS")
	static function statGetNumberOfDays(statName:Int):Int;

	/**
	 * 
	 */
	@:native("STAT_GET_POS")
	static function statGetPos(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("STAT_GET_LICENSE_PLATE")
	static function statGetLicensePlate(statName:Int):String;

	/**
	 * ```
	 * Needs more research. Possibly used to calculate the "mask" when calling "STAT_SET_MASKED_INT"?  
	 * ```
	 */
	@:native("_STAT_GET_PACKED_INT_MASK")
	static function StatGetPackedIntMask(p0:Int):Int;

	/**
	 * 
	 */
	@:native("STAT_GET_NUMBER_OF_SECONDS")
	static function statGetNumberOfSeconds(statName:Int):Int;

	/**
	 * ```
	 * p1 is always -1 in the script files  
	 * ```
	 */
	@:native("STAT_GET_STRING")
	static function statGetString(statHash:Int, p1:Int):String;

	/**
	 * 
	 */
	@:native("STAT_GET_SAVE_MIGRATION_STATUS")
	static function statGetSaveMigrationStatus(data:Dynamic):Int;

	/**
	 * 
	 */
	@:native("STAT_LOAD")
	static function statLoad(p0:Int):Bool;

	/**
	 * 
	 */
	@:native("_STAT_GET_SAVE_MIGRATION_CONSUME_CONTENT_UNLOCK_STATUS")
	static function StatGetSaveMigrationConsumeContentUnlockStatus(p0:Dynamic):Int;

	/**
	 * ```
	 * Needs more research. Seems to return "STAT_UNKNOWN" if no such user id exists.  
	 * ```
	 */
	@:native("STAT_GET_USER_ID")
	static function statGetUserId(p0:Dynamic):String;

	/**
	 * ```
	 * platformName must be one of the following: ps3, xbox360, ps4, xboxone
	 * ```
	 */
	@:native("_STAT_MIGRATE_SAVE")
	static function StatMigrateSave(platformName:String):Bool;

	/**
	 * 
	 */
	@:native("STAT_INCREMENT")
	static function statIncrement(statName:Int, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_STAT_SAVE_MIGRATION_CANCEL")
	static function StatSaveMigrationCancel():Bool;

	/**
	 * 
	 */
	@:native("STAT_LOAD_PENDING")
	static function statLoadPending(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("STAT_SAVE_PENDING")
	static function statSavePending():Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 4: Any p3
	 * ```
	 */
	@:native("STAT_SAVE")
	static function statSave(p0:Int, p1:Bool, p2:Int):Bool;

	/**
	 * 
	 */
	@:native("STAT_SAVE_MIGRATION_STATUS_START")
	static function statSaveMigrationStatusStart():Bool;

	/**
	 * 
	 */
	@:native("_STAT_SAVE_MIGRATION_CONSUME_CONTENT_UNLOCK")
	static function StatSaveMigrationConsumeContentUnlock(contentId:Int, srcPlatform:String, srcGamerHandle:String):Bool;

	/**
	 * 
	 */
	@:native("STAT_SAVE_PENDING_OR_REQUESTED")
	static function statSavePendingOrRequested():Bool;

	/**
	 * 
	 */
	@:native("STAT_SET_BLOCK_SAVES")
	static function statSetBlockSaves(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("STAT_SET_CHEAT_IS_ACTIVE")
	static function statSetCheatIsActive():Dynamic;

	/**
	 * ```
	 * 'value' is a structure to a structure, 'numFields' is how many fields there are in said structure (usually 7).  
	 * The structure looks like this:  
	 * int year  
	 * int month  
	 * int day  
	 * int hour  
	 * int minute  
	 * int second  
	 * int millisecond  
	 * The decompiled scripts use TIME::GET_POSIX_TIME to fill this structure.  
	 * ```
	 */
	@:native("STAT_SET_DATE")
	static function statSetDate(statName:Int, value:Dynamic, numFields:Int, save:Bool):Bool;

	/**
	 * 
	 */
	@:native("STAT_SET_BOOL_MASKED")
	static function statSetBoolMasked(statName:Int, value:Bool, mask:Int, save:Bool):Bool;

	/**
	 * ```
	 * Example:
	 *  STATS::STAT_SET_BOOL(MISC::GET_HASH_KEY("MPPLY_MELEECHLENGECOMPLETED"), trur, true);
	 * ```
	 */
	@:native("STAT_SET_BOOL")
	static function statSetBool(statName:Int, value:Bool, save:Bool):Bool;

	/**
	 * 
	 */
	@:native("STAT_SET_INT")
	static function statSetInt(statName:Int, value:Int, save:Bool):Bool;

	/**
	 * ```
	 * The following values have been found in the decompiled scripts:  
	 * "RC_ABI1"  
	 * "RC_ABI2"  
	 * "RC_BA1"  
	 * "RC_BA2"  
	 * "RC_BA3"  
	 * "RC_BA3A"  
	 * "RC_BA3C"  
	 * "RC_BA4"  
	 * "RC_DRE1"  
	 * "RC_EPS1"  
	 * "RC_EPS2"  
	 * "RC_EPS3"  
	 * "RC_EPS4"  
	 * "RC_EPS5"  
	 * "RC_EPS6"  
	 * "RC_EPS7"  
	 * "RC_EPS8"  
	 * "RC_EXT1"  
	 * "RC_EXT2"  
	 * "RC_EXT3"  
	 * "RC_EXT4"  
	 * "RC_FAN1"  
	 * "RC_FAN2"  
	 * "RC_FAN3"  
	 * "RC_HAO1"  
	 * "RC_HUN1"  
	 * "RC_HUN2"  
	 * "RC_JOS1"  
	 * "RC_JOS2"  
	 * "RC_JOS3"  
	 * "RC_JOS4"  
	 * "RC_MAU1"  
	 * "RC_MIN1"  
	 * "RC_MIN2"  
	 * "RC_MIN3"  
	 * "RC_MRS1"  
	 * "RC_MRS2"  
	 * "RC_NI1"  
	 * "RC_NI1A"  
	 * "RC_NI1B"  
	 * "RC_NI1C"  
	 * "RC_NI1D"  
	 * "RC_NI2"  
	 * "RC_NI3"  
	 * "RC_OME1"  
	 * "RC_OME2"  
	 * "RC_PA1"  
	 * "RC_PA2"  
	 * "RC_PA3"  
	 * "RC_PA3A"  
	 * "RC_PA3B"  
	 * "RC_PA4"  
	 * "RC_RAM1"  
	 * "RC_RAM2"  
	 * "RC_RAM3"  
	 * "RC_RAM4"  
	 * "RC_RAM5"  
	 * "RC_SAS1"  
	 * "RC_TON1"  
	 * "RC_TON2"  
	 * "RC_TON3"  
	 * "RC_TON4"  
	 * "RC_TON5"  
	 * ```
	 */
	@:native("STAT_SET_GXT_LABEL")
	static function statSetGxtLabel(statName:Int, value:String, save:Bool):Bool;

	/**
	 * 
	 */
	@:native("STAT_SET_MASKED_INT")
	static function statSetMaskedInt(statName:Int, p1:Dynamic, p2:Dynamic, p3:Int, save:Bool):Bool;

	/**
	 * ```
	 * Does not take effect immediately, unfortunately.
	 * profileSetting seems to only be 936, 937 and 938 in scripts
	 * ```
	 */
	@:native("STAT_SET_PROFILE_SETTING_VALUE")
	static function statSetProfileSettingValue(profileSetting:Int, value:Int):Dynamic;

	/**
	 * ```
	 * p1 always true.  
	 * ```
	 */
	@:native("STAT_SET_CURRENT_POSIX_TIME")
	static function statSetCurrentPosixTime(statName:Int, p1:Bool):Bool;

	/**
	 * 
	 */
	@:native("STAT_SET_POS")
	static function statSetPos(statName:Int, x:Float, y:Float, z:Float, save:Bool):Bool;

	/**
	 * ```
	 * Example:
	 *  STATS::STAT_SET_FLOAT(MISC::GET_HASH_KEY("MP0_WEAPON_ACCURACY"), 66.6f, true);
	 * ```
	 */
	@:native("STAT_SET_FLOAT")
	static function statSetFloat(statName:Int, value:Float, save:Bool):Bool;

	/**
	 * 
	 */
	@:native("STAT_SET_LICENSE_PLATE")
	static function statSetLicensePlate(statName:Int, str:String):Bool;

	/**
	 * 
	 */
	@:native("STAT_SET_USER_ID")
	static function statSetUserId(statName:Int, value:String, save:Bool):Bool;

	/**
	 * 
	 */
	@:native("STAT_SET_STRING")
	static function statSetString(statName:Int, value:String, save:Bool):Bool;

	/**
	 * 
	 */
	@:native("STAT_SLOT_IS_LOADED")
	static function statSlotIsLoaded(p0:Dynamic):Bool;

}
