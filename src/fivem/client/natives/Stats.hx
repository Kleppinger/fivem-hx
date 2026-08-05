package fivem.client.natives;

@:native("_G")
extern class Stats {
	/**
	 * 
	 */
	@:native("GetPackedBoolStatKey")
	static function getPackedBoolStatKey(index:Int, spStat:Bool, charStat:Bool, character:Int):Int;

	/**
	 * 
	 */
	@:native("Leaderboards2ReadByHandle")
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
	@:native("GetNgstatBoolHash")
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
	@:native("GetNgstatIntHash")
	static function GetNgstatIntHash(index:Int, spStat:Bool, charStat:Bool, character:Int, section:String):Int;

	/**
	 * 
	 */
	@:native("Leaderboards2ReadByRadius")
	static function leaderboards2ReadByRadius(p0:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetPackedTuBoolStatKey")
	static function getPackedTuBoolStatKey(index:Int, spStat:Bool, charStat:Bool, character:Int):Int;

	/**
	 * 
	 */
	@:native("GetPackedIntStatKey")
	static function getPackedIntStatKey(index:Int, spStat:Bool, charStat:Bool, character:Int):Int;

	/**
	 * 
	 */
	@:native("Leaderboards2ReadByPlatform")
	static function Leaderboards2ReadByPlatform(p0:Dynamic, gamerHandleCsv:String, platformName:String):Bool;

	/**
	 * 
	 */
	@:native("GetPackedTuIntStatKey")
	static function getPackedTuIntStatKey(index:Int, spStat:Bool, charStat:Bool, character:Int):Int;

	/**
	 * 
	 */
	@:native("HiredLimo")
	static function HiredLimo(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("Leaderboards2ReadByRank")
	static function leaderboards2ReadByRank(p0:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("Leaderboards2ReadByScoreInt")
	static function leaderboards2ReadByScoreInt(p0:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("Leaderboards2ReadByRow")
	static function leaderboards2ReadByRow(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("Leaderboards2WriteData")
	static function leaderboards2WriteData(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("Leaderboards2ReadByScoreFloat")
	static function leaderboards2ReadByScoreFloat(p0:Dynamic, p1:Float, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LeaderboardsCacheDataRow")
	static function leaderboardsCacheDataRow(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("Leaderboards2ReadRankPrediction")
	static function leaderboards2ReadRankPrediction(p0:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LeaderboardsDeaths")
	static function LeaderboardsDeaths(statName:Int, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("LeaderboardsClearCacheData")
	static function leaderboardsClearCacheData():Dynamic;

	/**
	 * 
	 */
	@:native("LeaderboardsGetCacheTime")
	static function leaderboardsGetCacheTime(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("Leaderboards2ReadFriendsByRow")
	static function leaderboards2ReadFriendsByRow(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Bool, p4:Dynamic, p5:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LeaderboardsGetCacheDataRow")
	static function leaderboardsGetCacheDataRow(p0:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LeaderboardsGetCacheNumberOfRows")
	static function leaderboardsGetCacheNumberOfRows(p0:Dynamic):Int;

	/**
	 * 
	 */
	@:native("LeaderboardsReadClearAll")
	static function leaderboardsReadClearAll():Dynamic;

	/**
	 * 
	 */
	@:native("Leaderboards2WriteDataForEventType")
	static function leaderboards2WriteDataForEventType(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LeaderboardsGetColumnType")
	static function leaderboardsGetColumnType(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("LeaderboardsReadClear")
	static function leaderboardsReadClear(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("LeaderboardsReadAnyPending")
	static function leaderboardsReadAnyPending():Bool;

	/**
	 * 
	 */
	@:native("LeaderboardsGetCacheExists")
	static function leaderboardsGetCacheExists(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LeaderboardsReadSuccessful")
	static function leaderboardsReadSuccessful(p0:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LeaderboardsReadPending")
	static function leaderboardsReadPending(p0:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LeaderboardsWriteAddColumn")
	static function leaderboardsWriteAddColumn(p0:Dynamic, p1:Dynamic, p2:Float):Dynamic;

	/**
	 * 
	 */
	@:native("LeaderboardsGetColumnId")
	static function leaderboardsGetColumnId(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("LeaderboardsGetNumberOfColumns")
	static function leaderboardsGetNumberOfColumns(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("LeaderboardsWriteAddColumnLong")
	static function leaderboardsWriteAddColumnLong(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("OrderedBossVehicle")
	static function OrderedBossVehicle(p0:Dynamic, p1:Dynamic, vehicleHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsAcquiredHiddenPackage")
	static function playstatsAcquiredHiddenPackage(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("PlaystatsArcadegame")
	static function PlaystatsArcadegame(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("PlaystatsArenaWarSpectator")
	static function PlaystatsArenaWarSpectator(p0:Int, p1:Int, p2:Int, p3:Int, p4:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsActivityDone")
	static function playstatsActivityDone(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("PlaystatsArenaWarsEnded")
	static function PlaystatsArenaWarsEnded(data:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsAwardXp")
	static function playstatsAwardXp(amount:Int, type:Int, category:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsBanAlert")
	static function PlaystatsBanAlert(p0:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsBackgroundScriptAction")
	static function playstatsBackgroundScriptAction(action:String, value:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsAwardBadsport")
	static function PlaystatsAwardBadsport(id:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("PlaystatsCarclubPrize")
	static function PlaystatsCarclubPrize(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("PlaystatsCarclubChallenge")
	static function PlaystatsCarclubChallenge(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsBuyContraband")
	static function PlaystatsBuyContraband(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("PlaystatsCasinoChip")
	static function PlaystatsCasinoChip(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("PlaystatsCarclubPoints")
	static function PlaystatsCarclubPoints(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("PlaystatsCasinoInsidetrackLight")
	static function PlaystatsCasinoInsidetrackLight(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("PlaystatsCasinoMissionEnded")
	static function PlaystatsCasinoMissionEnded(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("PlaystatsCasinoBlackjack")
	static function PlaystatsCasinoBlackjack(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("PlaystatsCasinoRouletteLight")
	static function PlaystatsCasinoRouletteLight(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("PlaystatsCasinoInsidetrack")
	static function PlaystatsCasinoInsidetrack(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("PlaystatsCasinoSlotmachine")
	static function PlaystatsCasinoSlotmachine(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("PlaystatsCasinoBlackjackLight")
	static function PlaystatsCasinoBlackjackLight(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("PlaystatsCasinoRoulette")
	static function PlaystatsCasinoRoulette(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("PlaystatsCasinoThreecardpoker")
	static function PlaystatsCasinoThreecardpoker(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("PlaystatsCasinoSlotmachineLight")
	static function PlaystatsCasinoSlotmachineLight(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("PlaystatsCasinoLuckyseven")
	static function PlaystatsCasinoLuckyseven(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsClothChange")
	static function playstatsClothChange(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("PlaystatsCasinoStoryMissionEnded")
	static function PlaystatsCasinoStoryMissionEnded(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("PlaystatsCasinoThreecardpokerLight")
	static function PlaystatsCasinoThreecardpokerLight(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsChangeMcEmblem")
	static function PlaystatsChangeMcEmblem(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsCrateCreated")
	static function playstatsCrateCreated(p0:Float, p1:Float, p2:Float):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsCheatApplied")
	static function playstatsCheatApplied(cheat:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("PlaystatsCollectible")
	static function PlaystatsCollectible(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic, p7:Dynamic, p8:Dynamic, p9:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsDirectorMode")
	static function PlaystatsDirectorMode(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsCopyRankIntoNewSlot")
	static function PlaystatsCopyRankIntoNewSlot(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 7: Any p6
	 * NativeDB Added Parameter 8: Any p7
	 * ```
	 */
	@:native("PlaystatsCrateDropMissionDone")
	static function playstatsCrateDropMissionDone(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsDefendContraband")
	static function PlaystatsDefendContraband(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("PlaystatsDarMissionEnd")
	static function PlaystatsDarMissionEnd(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("PlaystatsDroneUsage")
	static function PlaystatsDroneUsage(p0:Int, p1:Int, p2:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsDupeDetection")
	static function PlaystatsDupeDetection(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("PlaystatsEnterSessionPack")
	static function PlaystatsEnterSessionPack(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("PlaystatsExtraEvent")
	static function PlaystatsExtraEvent(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsEarnedMcPoints")
	static function PlaystatsEarnedMcPoints(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("PlaystatsH2InstanceEnd")
	static function PlaystatsH2InstanceEnd(data:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsFriendActivity")
	static function playstatsFriendActivity(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsHeistSaveCheat")
	static function playstatsHeistSaveCheat(hash:Int, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsGunrunMissionEnded")
	static function PlaystatsGunrunMissionEnded(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("PlaystatsH2FmprepEnd")
	static function PlaystatsH2FmprepEnd(data:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsImportExportMissionDone")
	static function playstatsImportExportMissionDone(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("PlaystatsInventory")
	static function PlaystatsInventory(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * longest time being ilde?  
	 * ```
	 */
	@:native("PlaystatsIdleKick")
	static function playstatsIdleKick(time:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsHoldUpMissionDone")
	static function playstatsHoldUpMissionDone(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsLeaveJobChain")
	static function playstatsLeaveJobChain(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Removed Parameter 4: Any p3
	 * NativeDB Removed Parameter 5: Any p4
	 * NativeDB Removed Parameter 6: Any p5
	 * NativeDB Removed Parameter 7: Any p6
	 * ```
	 */
	@:native("PlaystatsMatchStarted")
	static function playstatsMatchStarted(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsMissionCheckpoint")
	static function playstatsMissionCheckpoint(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsMissionOver")
	static function playstatsMissionOver(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Bool, p4:Bool, p5:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsMissionStarted")
	static function playstatsMissionStarted(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsJobBend")
	static function playstatsJobBend(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("PlaystatsPegasaircraft")
	static function PlaystatsPegasaircraft(modelHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsNpcInvite")
	static function playstatsNpcInvite(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("PlaystatsPassiveMode")
	static function PlaystatsPassiveMode(p0:Bool, p1:Int, p2:Int, p3:Int):Dynamic;

	/**
	 * **This native does absolutely nothing, just a nullsub**
	 */
	@:native("PlaystatsOddjobDone")
	static function playstatsOddjobDone(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsRandomMissionDone")
	static function playstatsRandomMissionDone(name:String, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsPropChange")
	static function playstatsPropChange(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsPiMenuHideSettings")
	static function PlaystatsPiMenuHideSettings(data:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsQuickfixTool")
	static function playstatsQuickfixTool(element:Int, item:String):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsRecoverContraband")
	static function PlaystatsRecoverContraband(data:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsRaceCheckpoint")
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
	@:native("PlaystatsRaceToPointMissionDone")
	static function playstatsRaceToPointMissionDone(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic, p7:Dynamic, p8:Dynamic, p9:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsRosBet")
	static function playstatsRosBet(amount:Int, act:Int, player:Dynamic, cm:Float):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsRankUp")
	static function playstatsRankUp(rank:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("PlaystatsRobberyFinale")
	static function PlaystatsRobberyFinale(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsShopItem")
	static function playstatsShopItem(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * Sets a byte that is then used in session_host and session_join metrics when hosting or joining a session
	 */
	@:native("PlaystatsSetJoinType")
	static function playstatsSetJoinType(joinType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsSpentPiCustomLoadout")
	static function PlaystatsSpentPiCustomLoadout(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("PlaystatsRobberyPrep")
	static function PlaystatsRobberyPrep(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsSellContraband")
	static function PlaystatsSellContraband(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("PlaystatsSpectatorWheelSpin")
	static function PlaystatsSpectatorWheelSpin(p0:Int, p1:Int, p2:Int, p3:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("PlaystatsSmugMissionEnded")
	static function PlaystatsSmugMissionEnded(data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("PlaystatsStoneHatchetEnd")
	static function PlaystatsStoneHatchetEnd(data:Dynamic):Dynamic;

	/**
	 * ```
	 * PLAYSTATS_START_INVITE_DESPAWNING?
	 * ```
	 */
	@:native("PlaystatsStartOfflineMode")
	static function PlaystatsStartOfflineMode():Dynamic;

	/**
	 * Disallows CEventNetworkStuntPerformed to be triggered (Resets [`PLAYSTATS_START_TRACKING_STUNTS`](#\_0x928DBFB892638EF3)).
	 */
	@:native("PlaystatsStopTrackingStunts")
	static function playstatsStopTrackingStunts():Dynamic;

	/**
	 * 
	 */
	@:native("SetProfileSettingPrologueComplete")
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
	@:native("PlaystatsStartTrackingStunts")
	static function playstatsStartTrackingStunts():Dynamic;

	/**
	 * 
	 */
	@:native("PlaystatsWebsiteVisited")
	static function playstatsWebsiteVisited(scaleformHash:Int, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("StatGetBool")
	static function statGetBool(statHash:Int, outValue:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("PresenceEventUpdatestatInt")
	static function presenceEventUpdatestatInt(statHash:Int, value:Int, p2:Int):Dynamic;

	/**
	 * 
	 */
	@:native("StatGetCancelSaveMigrationStatus")
	static function StatGetCancelSaveMigrationStatus():Int;

	/**
	 * 
	 */
	@:native("PlaystatsWeaponModeChange")
	static function playstatsWeaponModeChange(weaponHash:Int, componentHashTo:Int, componentHashFrom:Int):Dynamic;

	/**
	 * ```
	 * Sets profile setting 866
	 * SET_*
	 * ```
	 */
	@:native("SetHasContentUnlocksFlags")
	static function SetHasContentUnlocksFlags(value:Int):Dynamic;

	/**
	 * 
	 */
	@:native("StatGetMaskedInt")
	static function statGetMaskedInt(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Bool;

	/**
	 * ```
	 * Example:
	 * for (v_2 = 0; v_2 <= 4; v_2 += 1) {
	 *     STATS::STAT_CLEAR_SLOT_FOR_RELOAD(v_2);
	 * }
	 * ```
	 */
	@:native("StatClearSlotForReload")
	static function statClearSlotForReload(statSlot:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PresenceEventUpdatestatFloat")
	static function presenceEventUpdatestatFloat(statHash:Int, value:Float, p2:Int):Dynamic;

	/**
	 * 
	 */
	@:native("StatDeleteSlot")
	static function statDeleteSlot(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * p2 appears to always be -1  
	 * ```
	 */
	@:native("StatGetInt")
	static function statGetInt(statHash:Int, outValue:Dynamic, p2:Int):Bool;

	/**
	 * ```
	 * p2 - Default value? Seems to be -1 most of the time.  
	 * ```
	 */
	@:native("StatGetBoolMasked")
	static function statGetBoolMasked(statName:Int, mask:Int, p2:Int):Bool;

	/**
	 * ```
	 * Sets profile setting 501
	 * ```
	 */
	@:native("SetSaveMigrationTransactionId")
	static function SetSaveMigrationTransactionId(transactionId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("StatGetFloat")
	static function statGetFloat(statHash:Int, outValue:Dynamic, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("StatGetNumberOfHours")
	static function statGetNumberOfHours(statName:Int):Int;

	/**
	 * 
	 */
	@:native("StatGetNumberOfMinutes")
	static function statGetNumberOfMinutes(statName:Int):Int;

	/**
	 * 
	 */
	@:native("StatGetDate")
	static function statGetDate(statHash:Int, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * ```
	 * Needs more research. Possibly used to calculate the "mask" when calling "STAT_SET_BOOL_MASKED"?  
	 * ```
	 */
	@:native("StatGetPackedBoolMask")
	static function StatGetPackedBoolMask(p0:Int):Int;

	/**
	 * 
	 */
	@:native("StatGetNumberOfDays")
	static function statGetNumberOfDays(statName:Int):Int;

	/**
	 * 
	 */
	@:native("StatGetPos")
	static function statGetPos(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("StatGetLicensePlate")
	static function statGetLicensePlate(statName:Int):String;

	/**
	 * ```
	 * Needs more research. Possibly used to calculate the "mask" when calling "STAT_SET_MASKED_INT"?  
	 * ```
	 */
	@:native("StatGetPackedIntMask")
	static function StatGetPackedIntMask(p0:Int):Int;

	/**
	 * 
	 */
	@:native("StatGetNumberOfSeconds")
	static function statGetNumberOfSeconds(statName:Int):Int;

	/**
	 * ```
	 * p1 is always -1 in the script files  
	 * ```
	 */
	@:native("StatGetString")
	static function statGetString(statHash:Int, p1:Int):String;

	/**
	 * 
	 */
	@:native("StatGetSaveMigrationStatus")
	static function statGetSaveMigrationStatus(data:Dynamic):Int;

	/**
	 * 
	 */
	@:native("StatLoad")
	static function statLoad(p0:Int):Bool;

	/**
	 * 
	 */
	@:native("StatGetSaveMigrationConsumeContentUnlockStatus")
	static function StatGetSaveMigrationConsumeContentUnlockStatus(p0:Dynamic):Int;

	/**
	 * ```
	 * Needs more research. Seems to return "STAT_UNKNOWN" if no such user id exists.  
	 * ```
	 */
	@:native("StatGetUserId")
	static function statGetUserId(p0:Dynamic):String;

	/**
	 * ```
	 * platformName must be one of the following: ps3, xbox360, ps4, xboxone
	 * ```
	 */
	@:native("StatMigrateSave")
	static function StatMigrateSave(platformName:String):Bool;

	/**
	 * 
	 */
	@:native("StatIncrement")
	static function statIncrement(statName:Int, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("StatSaveMigrationCancel")
	static function StatSaveMigrationCancel():Bool;

	/**
	 * 
	 */
	@:native("StatLoadPending")
	static function statLoadPending(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("StatSavePending")
	static function statSavePending():Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 4: Any p3
	 * ```
	 */
	@:native("StatSave")
	static function statSave(p0:Int, p1:Bool, p2:Int):Bool;

	/**
	 * 
	 */
	@:native("StatSaveMigrationStatusStart")
	static function statSaveMigrationStatusStart():Bool;

	/**
	 * 
	 */
	@:native("StatSaveMigrationConsumeContentUnlock")
	static function StatSaveMigrationConsumeContentUnlock(contentId:Int, srcPlatform:String, srcGamerHandle:String):Bool;

	/**
	 * 
	 */
	@:native("StatSavePendingOrRequested")
	static function statSavePendingOrRequested():Bool;

	/**
	 * 
	 */
	@:native("StatSetBlockSaves")
	static function statSetBlockSaves(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("StatSetCheatIsActive")
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
	@:native("StatSetDate")
	static function statSetDate(statName:Int, value:Dynamic, numFields:Int, save:Bool):Bool;

	/**
	 * 
	 */
	@:native("StatSetBoolMasked")
	static function statSetBoolMasked(statName:Int, value:Bool, mask:Int, save:Bool):Bool;

	/**
	 * ```
	 * Example:
	 *  STATS::STAT_SET_BOOL(MISC::GET_HASH_KEY("MPPLY_MELEECHLENGECOMPLETED"), trur, true);
	 * ```
	 */
	@:native("StatSetBool")
	static function statSetBool(statName:Int, value:Bool, save:Bool):Bool;

	/**
	 * 
	 */
	@:native("StatSetInt")
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
	@:native("StatSetGxtLabel")
	static function statSetGxtLabel(statName:Int, value:String, save:Bool):Bool;

	/**
	 * 
	 */
	@:native("StatSetMaskedInt")
	static function statSetMaskedInt(statName:Int, p1:Dynamic, p2:Dynamic, p3:Int, save:Bool):Bool;

	/**
	 * ```
	 * Does not take effect immediately, unfortunately.
	 * profileSetting seems to only be 936, 937 and 938 in scripts
	 * ```
	 */
	@:native("StatSetProfileSettingValue")
	static function statSetProfileSettingValue(profileSetting:Int, value:Int):Dynamic;

	/**
	 * ```
	 * p1 always true.  
	 * ```
	 */
	@:native("StatSetCurrentPosixTime")
	static function statSetCurrentPosixTime(statName:Int, p1:Bool):Bool;

	/**
	 * 
	 */
	@:native("StatSetPos")
	static function statSetPos(statName:Int, x:Float, y:Float, z:Float, save:Bool):Bool;

	/**
	 * ```
	 * Example:
	 *  STATS::STAT_SET_FLOAT(MISC::GET_HASH_KEY("MP0_WEAPON_ACCURACY"), 66.6f, true);
	 * ```
	 */
	@:native("StatSetFloat")
	static function statSetFloat(statName:Int, value:Float, save:Bool):Bool;

	/**
	 * 
	 */
	@:native("StatSetLicensePlate")
	static function statSetLicensePlate(statName:Int, str:String):Bool;

	/**
	 * 
	 */
	@:native("StatSetUserId")
	static function statSetUserId(statName:Int, value:String, save:Bool):Bool;

	/**
	 * 
	 */
	@:native("StatSetString")
	static function statSetString(statName:Int, value:String, save:Bool):Bool;

	/**
	 * 
	 */
	@:native("StatSlotIsLoaded")
	static function statSlotIsLoaded(p0:Dynamic):Bool;

}
