package fivem.client.natives;

@:native("_G")
extern class Task {
	/**
	 * 
	 */
	@:native("AddCoverBlockingArea")
	static function addCoverBlockingArea(playerX:Float, playerY:Float, playerZ:Float, radiusX:Float, radiusY:Float, radiusZ:Float, p6:Bool, p7:Bool, p8:Bool, p9:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("AddCoverPoint")
	static function addCoverPoint(p0:Float, p1:Float, p2:Float, p3:Float, p4:Dynamic, p5:Dynamic, p6:Dynamic, p7:Bool):Dynamic;

	/**
	 * connects/links 2 [route nodes](#\_0x8EDF950167586B7C)\
	 * image representing the cyclic example below:\
	 * ![image](https://user-images.githubusercontent.com/55803068/188470866-c32c6a9f-a25d-4772-9b18-5be46e2c14a1.png)
	 */
	@:native("AddPatrolRouteLink")
	static function addPatrolRouteLink(id1:Int, id2:Int):Dynamic;

	/**
	 * 
	 */
	@:native("AssistedMovementOverrideLoadDistanceThisFrame")
	static function assistedMovementOverrideLoadDistanceThisFrame(dist:Float):Dynamic;

	/**
	 * x2,y2 and z2 are the coordinates to which the ped should look at
	 */
	@:native("AddPatrolRouteNode")
	static function addPatrolRouteNode(id:Int, guardScenario:String, x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, waitTime:Int):Dynamic;

	/**
	 * 
	 */
	@:native("AssistedMovementIsRouteLoaded")
	static function assistedMovementIsRouteLoaded(route:String):Bool;

	/**
	 * 
	 */
	@:native("AssistedMovementRemoveRoute")
	static function assistedMovementRemoveRoute(route:String):Dynamic;

	/**
	 * ```
	 * x, y, z: offset in world coords from some entity.  
	 * ```
	 */
	@:native("AddVehicleSubtaskAttackCoord")
	static function addVehicleSubtaskAttackCoord(ped:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("AssistedMovementSetRouteProperties")
	static function assistedMovementSetRouteProperties(route:String, props:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ClearDrivebyTaskUnderneathDrivingTask")
	static function clearDrivebyTaskUnderneathDrivingTask(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("AddVehicleSubtaskAttackPed")
	static function addVehicleSubtaskAttackPed(ped:Dynamic, ped2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("ClearPedSecondaryTask")
	static function clearPedSecondaryTask(ped:Dynamic):Dynamic;

	/**
	 * Immediately stops the pedestrian from whatever it's doing. The difference between this and [CLEAR_PED_TASKS](#\_0xE1EF3C1216AFF2CD) is that this one teleports the ped but does not change the position of the ped.
	 */
	@:native("ClearPedTasksImmediately")
	static function clearPedTasksImmediately(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * Routes: "1_FIBStairs", "2_FIBStairs", "3_FIBStairs", "4_FIBStairs", "5_FIBStairs", "5_TowardsFire", "6a_FIBStairs", "7_FIBStairs", "8_FIBStairs", "Aprtmnt_1", "AssAfterLift", "ATM_1", "coroner2", "coroner_stairs", "f5_jimmy1", "fame1", "family5b", "family5c", "Family5d", "family5d", "FIB_Glass1", "FIB_Glass2", "FIB_Glass3", "finaBroute1A", "finalb1st", "finalB1sta", "finalbround", "finalbroute2", "Hairdresser1", "jan_foyet_ft_door", "Jo_3", "Lemar1", "Lemar2", "mansion_1", "Mansion_1", "pols_1", "pols_2", "pols_3", "pols_4", "pols_5", "pols_6", "pols_7", "pols_8", "Pro_S1", "Pro_S1a", "Pro_S2", "Towards_case", "trev_steps", "tunrs1", "tunrs2", "tunrs3", "Wave01457s"  
	 * ```
	 */
	@:native("AssistedMovementRequestRoute")
	static function assistedMovementRequestRoute(route:String):Dynamic;

	/**
	 * For an example on how to use this please refer to [OPEN_SEQUENCE_TASK](#\_0xE8854A4326B9E12B)
	 * 
	 * #### NOTE
	 * 
	 * If you fail to call [`CLOSE_SEQUENCE_TASK`](#\_0x39E72BC99E6360CB) and `CLEAR_SEQUENCE_TASK` the sequence system can get stuck in a broken state until you restart your client.
	 */
	@:native("ClearSequenceTask")
	static function clearSequenceTask(taskSequenceId:Dynamic):Dynamic;

	/**
	 * Clear a ped's tasks. Stop animations and other tasks created by scripts.
	 */
	@:native("ClearPedTasks")
	static function clearPedTasks(ped:Dynamic):Dynamic;

	/**
	 * For an example on how to use this please refer to [OPEN_SEQUENCE_TASK](#\_0xE8854A4326B9E12B)
	 * 
	 * #### NOTE
	 * 
	 * If you fail to call `CLOSE_SEQUENCE_TASK` and [`CLEAR_SEQUENCE_TASK`](#\_0x3841422E9C488D8C) this can get stuck in a broken state until you restart your client.
	 */
	@:native("CloseSequenceTask")
	static function closeSequenceTask(taskSequenceId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ClosePatrolRoute")
	static function closePatrolRoute():Dynamic;

	/**
	 * ```
	 * Forces the ped to use the mounted weapon.  
	 * Returns false if task is not possible.  
	 * ```
	 */
	@:native("ControlMountedWeapon")
	static function controlMountedWeapon(ped:Dynamic):Bool;

	/**
	 * ```
	 * From the b617d scripts:
	 * TASK::DELETE_PATROL_ROUTE("miss_merc0");
	 * TASK::DELETE_PATROL_ROUTE("miss_merc1");
	 * TASK::DELETE_PATROL_ROUTE("miss_merc2");
	 * TASK::DELETE_PATROL_ROUTE("miss_dock");
	 * ```
	 */
	@:native("DeletePatrolRoute")
	static function deletePatrolRoute(patrolRoute:String):Dynamic;

	/**
	 * 
	 */
	@:native("DoesScenarioExistInArea")
	static function doesScenarioExistInArea(x:Float, y:Float, z:Float, radius:Float, b:Bool):Bool;

	/**
	 * ```
	 * CLEAR_*
	 * 
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("ClearVehicleTasks")
	static function ClearVehicleTasks(vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * Occurrences in the b617d scripts:
	 * "ARMY_GUARD",
	 * "ARMY_HELI",
	 * "Cinema_Downtown",
	 * "Cinema_Morningwood",
	 * "Cinema_Textile",
	 * "City_Banks",
	 * "Countryside_Banks",
	 * "DEALERSHIP",
	 * "GRAPESEED_PLANES",
	 * "KORTZ_SECURITY",
	 * "LOST_BIKERS",
	 * "LSA_Planes",
	 * "LSA_Planes",
	 * "MP_POLICE",
	 * "Observatory_Bikers",
	 * "POLICE_POUND1",
	 * "POLICE_POUND2",
	 * "POLICE_POUND3",
	 * "POLICE_POUND4",
	 * "POLICE_POUND5"
	 * "QUARRY",
	 * "SANDY_PLANES",
	 * "SCRAP_SECURITY",
	 * "SEW_MACHINE",
	 * "SOLOMON_GATE",
	 * "Triathlon_1_Start",
	 * "Triathlon_2_Start",
	 * "Triathlon_3_Start"
	 * Sometimes used with IS_SCENARIO_GROUP_ENABLED:
	 * if (TASK::DOES_SCENARIO_GROUP_EXIST("Observatory_Bikers") && (!TASK::IS_SCENARIO_GROUP_ENABLED("Observatory_Bikers"))) {
	 * else if (TASK::IS_SCENARIO_GROUP_ENABLED("BLIMP")) {
	 * ```
	 */
	@:native("DoesScenarioGroupExist")
	static function doesScenarioGroupExist(scenarioGroup:String):Bool;

	/**
	 * 
	 */
	@:native("CreatePatrolRoute")
	static function createPatrolRoute():Dynamic;

	/**
	 * ```
	 * Task index enum: https://alloc8or.re/gta5/doc/enums/eTaskTypeIndex.txt
	 * ```
	 */
	@:native("GetIsTaskActive")
	static function getIsTaskActive(ped:Dynamic, taskIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("DoesScenarioOfTypeExistInArea")
	static function doesScenarioOfTypeExistInArea(p0:Float, p1:Float, p2:Float, p3:String, p4:Float, p5:Bool):Bool;

	/**
	 * 
	 */
	@:native("GetPedWaypointDistance")
	static function getPedWaypointDistance(p0:Dynamic):Float;

	/**
	 * ```
	 * Checks if there is a cover point at position  
	 * ```
	 */
	@:native("DoesScriptedCoverPointExistAtCoords")
	static function doesScriptedCoverPointExistAtCoords(x:Float, y:Float, z:Float):Bool;

	/**
	 * 
	 */
	@:native("GetClipSetForScriptedGunTask")
	static function getClipSetForScriptedGunTask(p0:Int):String;

	/**
	 * 
	 */
	@:native("GetPhoneGestureAnimCurrentTime")
	static function getPhoneGestureAnimCurrentTime(ped:Dynamic):Float;

	/**
	 * ```
	 * https://alloc8or.re/gta5/doc/enums/eVehicleMissionType.txt
	 * ```
	 */
	@:native("GetActiveVehicleMissionType")
	static function getActiveVehicleMissionType(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetPhoneGestureAnimTotalTime")
	static function getPhoneGestureAnimTotalTime(ped:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetIsWaypointRecordingLoaded")
	static function getIsWaypointRecordingLoaded(name:String):Bool;

	/**
	 * ```
	 * Looks like the last parameter returns true if the path has been calculated, while the first returns the remaining distance to the end of the path.
	 * Return value of native is the same as GET_NAVMESH_ROUTE_RESULT
	 * Looks like the native returns an int for the path's state:
	 * 1 - ???
	 * 2 - ???
	 * 3 - Finished Generating
	 * ```
	 */
	@:native("GetNavmeshRouteDistanceRemaining")
	static function getNavmeshRouteDistanceRemaining(ped:Dynamic, distanceRemaining:Dynamic, isPathReady:Dynamic):Int;

	/**
	 * See [`GET_NAVMESH_ROUTE_DISTANCE_REMAINING`](#\_0xC6F5C0BCDC74D62D) for more details.
	 */
	@:native("GetNavmeshRouteResult")
	static function getNavmeshRouteResult(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetPedWaypointProgress")
	static function getPedWaypointProgress(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetPedDesiredMoveBlendRatio")
	static function getPedDesiredMoveBlendRatio(ped:Dynamic):Float;

	/**
	 * ```
	 * returned values:
	 * 0 to 7 = task that's currently in progress, 0 meaning the first one.
	 * -1 no task sequence in progress.
	 * ```
	 */
	@:native("GetSequenceProgress")
	static function getSequenceProgress(ped:Dynamic):Int;

	/**
	 * Gets the status of a spesifed script-assigned task on the given ped. The return value is always an int between 0-7.
	 * 
	 * You can set taskHash to `SCRIPT_TASK_ANY` to check if any task is active, it will return 1 for active, 3 for no active.
	 * `SCRIPT_TASK_INVALID` can be similarly used, it returns 7 if there are any active task, and 3 if there are no active tasks.
	 * 
	 * taskHash list: https://alloc8or.re/gta5/doc/enums/eScriptTaskHash.txt
	 * 
	 * Returns:
	 * 
	 * ```
	 * 0 = WAITING_TO_START_TASK
	 * 1 = PERFORMING_TASK
	 * 2 = DORMANT_TASK
	 * 3 = VACANT_STAGE
	 * 7 = TASK_FINISHED_OR_NOT_FOUND
	 * ```
	 */
	@:native("GetScriptTaskStatus")
	static function getScriptTaskStatus(ped:Dynamic, taskHash:Int):Int;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("GetTaskMoveNetworkSignalFloat")
	static function GetTaskMoveNetworkSignalFloat(ped:Dynamic, signalName:String):Float;

	/**
	 * 
	 */
	@:native("GetScriptedCoverPointCoords")
	static function getScriptedCoverPointCoords(coverpoint:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetTaskMoveNetworkEvent")
	static function getTaskMoveNetworkEvent(ped:Dynamic, eventName:String):Bool;

	/**
	 * 
	 */
	@:native("GetVehicleWaypointProgress")
	static function getVehicleWaypointProgress(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleWaypointTargetPoint")
	static function getVehicleWaypointTargetPoint(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetTaskMoveNetworkSignalBool")
	static function getTaskMoveNetworkSignalBool(ped:Dynamic, signalName:String):Bool;

	/**
	 * 
	 */
	@:native("IsMoveBlendRatioStill")
	static function isMoveBlendRatioStill(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetTaskMoveNetworkState")
	static function getTaskMoveNetworkState(ped:Dynamic):String;

	/**
	 * 
	 */
	@:native("IsMountedWeaponTaskUnderneathDrivingTask")
	static function isMountedWeaponTaskUnderneathDrivingTask(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsMoveBlendRatioRunning")
	static function isMoveBlendRatioRunning(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetWaypointDistanceAlongRoute")
	static function getWaypointDistanceAlongRoute(p0:String, p1:Int):Float;

	/**
	 * ```
	 * This function is hard-coded to always return 0.  
	 * ```
	 */
	@:native("IsPedBeingArrested")
	static function isPedBeingArrested(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsMoveBlendRatioWalking")
	static function isMoveBlendRatioWalking(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsPedGettingUp")
	static function isPedGettingUp(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsMoveBlendRatioSprinting")
	static function isMoveBlendRatioSprinting(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsPedCuffed")
	static function isPedCuffed(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsDrivebyTaskUnderneathDrivingTask")
	static function isDrivebyTaskUnderneathDrivingTask(ped:Dynamic):Bool;

	/**
	 * This is a stricter version of [`IS_PED_USING_ANY_SCENARIO`](#\_0x57AB4A3080F85143). It only returns true if the ped is playing the ambient animations associated with the scenario.
	 */
	@:native("IsPedActiveInScenario")
	static function isPedActiveInScenario(ped:Dynamic):Bool;

	/**
	 * This native checks if a ped is on the ground, in pain from a (gunshot) wound.
	 */
	@:native("IsPedInWrithe")
	static function isPedInWrithe(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsPedPlayingBaseClipInScenario")
	static function isPedPlayingBaseClipInScenario(ped:Dynamic):Bool;

	/**
	 * ```
	 * What's strafing?  
	 * ```
	 */
	@:native("IsPedStrafing")
	static function isPedStrafing(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsPedRunning")
	static function isPedRunning(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsPedRunningArrestTask")
	static function isPedRunningArrestTask(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsPedSprinting")
	static function isPedSprinting(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsPedStill")
	static function isPedStill(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsPedWalking")
	static function isPedWalking(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsScenarioOccupied")
	static function isScenarioOccupied(p0:Float, p1:Float, p2:Float, p3:Float, p4:Bool):Bool;

	/**
	 * ```
	 * Occurrences in the b617d scripts:
	 * "PROP_HUMAN_SEAT_CHAIR",
	 * "WORLD_HUMAN_DRINKING",
	 * "WORLD_HUMAN_HANG_OUT_STREET",
	 * "WORLD_HUMAN_SMOKING",
	 * "WORLD_MOUNTAIN_LION_WANDER",
	 * "WORLD_HUMAN_DRINKING"
	 * Sometimes used together with MISC::IS_STRING_NULL_OR_EMPTY in the scripts.
	 * scenarioType could be the same as scenarioName, used in for example TASK::TASK_START_SCENARIO_AT_POSITION.
	 * ```
	 */
	@:native("IsScenarioTypeEnabled")
	static function isScenarioTypeEnabled(scenarioType:String):Bool;

	/**
	 * ```
	 *  Occurrences in the b617d scripts:
	 *  "ARMY_GUARD",
	 *  "ARMY_HELI",
	 *  "BLIMP",
	 *  "Cinema_Downtown",
	 *  "Cinema_Morningwood",
	 *  "Cinema_Textile",
	 *  "City_Banks",
	 *  "Countryside_Banks",
	 *  "DEALERSHIP",
	 *  "KORTZ_SECURITY",
	 *  "LSA_Planes",
	 *  "MP_POLICE",
	 *  "Observatory_Bikers",
	 *  "POLICE_POUND1",
	 *  "POLICE_POUND2",
	 *  "POLICE_POUND3",
	 *  "POLICE_POUND4",
	 *  "POLICE_POUND5",
	 *  "Rampage1",
	 *  "SANDY_PLANES",
	 *  "SCRAP_SECURITY",
	 *  "SEW_MACHINE",
	 *  "SOLOMON_GATE"
	 * Sometimes used with DOES_SCENARIO_GROUP_EXIST:
	 * if (TASK::DOES_SCENARIO_GROUP_EXIST("Observatory_Bikers") &&   (!TASK::IS_SCENARIO_GROUP_ENABLED("Observatory_Bikers"))) {
	 * else if (TASK::IS_SCENARIO_GROUP_ENABLED("BLIMP")) {
	 * ```
	 */
	@:native("IsScenarioGroupEnabled")
	static function isScenarioGroupEnabled(scenarioGroup:String):Bool;

	/**
	 * 
	 */
	@:native("IsTaskMoveNetworkReadyForTransition")
	static function isTaskMoveNetworkReadyForTransition(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsPlayingPhoneGestureAnim")
	static function isPlayingPhoneGestureAnim(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsTaskMoveNetworkActive")
	static function isTaskMoveNetworkActive(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsWaypointPlaybackGoingOnForVehicle")
	static function isWaypointPlaybackGoingOnForVehicle(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsWaypointPlaybackGoingOnForPed")
	static function isWaypointPlaybackGoingOnForPed(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("PedHasUseScenarioTask")
	static function pedHasUseScenarioTask(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("PlayEntityScriptedAnim")
	static function playEntityScriptedAnim(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Float, p5:Float):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveAllCoverBlockingAreas")
	static function removeAllCoverBlockingAreas():Dynamic;

	/**
	 * 
	 */
	@:native("RemoveWaypointRecording")
	static function removeWaypointRecording(name:String):Dynamic;

	/**
	 * ### NOTE
	 * 
	 * If this returns 0 that means it failed to get a sequence id.
	 * 
	 * If you fail to call [`CLOSE_SEQUENCE_TASK`](#\_0x39E72BC99E6360CB) and [`CLEAR_SEQUENCE_TASK`](#\_0x3841422E9C488D8C) the sequence system can get stuck in a broken state until you restart your client.
	 */
	@:native("OpenSequenceTask")
	static function openSequenceTask(taskSequenceId:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("ResetExclusiveScenarioGroup")
	static function resetExclusiveScenarioGroup():Dynamic;

	/**
	 * 
	 */
	@:native("RemoveCoverPoint")
	static function removeCoverPoint(coverpoint:Dynamic):Dynamic;

	/**
	 * ```
	 * The patrol route name must starts with "miss_" to be properly created. 
	 * 
	 *  patrolRoutes found in the b617d scripts:
	 *  "miss_Ass0",
	 *  "miss_Ass1",
	 *  "miss_Ass2",
	 *  "miss_Ass3",
	 *  "miss_Ass4",
	 *  "miss_Ass5",
	 *  "miss_Ass6",
	 *  "MISS_PATROL_6",
	 *  "MISS_PATROL_7",
	 *  "MISS_PATROL_8",
	 *  "MISS_PATROL_9",
	 *  "miss_Tower_01",
	 *  "miss_Tower_02",
	 *  "miss_Tower_03",
	 *  "miss_Tower_04",
	 *  "miss_Tower_05",
	 *  "miss_Tower_06",
	 *  "miss_Tower_07",
	 *  "miss_Tower_08",
	 *  "miss_Tower_10"
	 * ```
	 */
	@:native("OpenPatrolRoute")
	static function openPatrolRoute(patrolRoute:String):Dynamic;

	/**
	 * 
	 */
	@:native("RequestTaskMoveNetworkStateTransition")
	static function requestTaskMoveNetworkStateTransition(ped:Dynamic, name:String):Bool;

	/**
	 * 
	 */
	@:native("SetAnimWeight")
	static function setAnimWeight(p0:Dynamic, p1:Float, p2:Dynamic, p3:Dynamic, p4:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ResetScenarioTypesEnabled")
	static function resetScenarioTypesEnabled():Dynamic;

	/**
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("PlayAnimOnRunningScenario")
	static function playAnimOnRunningScenario(ped:Dynamic, animDict:String, animName:String):Dynamic;

	/**
	 * ```
	 * For a full list of the points, see here: goo.gl/wIH0vn
	 * Max number of loaded recordings is 32.
	 * ```
	 */
	@:native("RequestWaypointRecording")
	static function requestWaypointRecording(name:String):Dynamic;

	/**
	 * 
	 */
	@:native("ResetScenarioGroupsEnabled")
	static function resetScenarioGroupsEnabled():Dynamic;

	/**
	 * 
	 */
	@:native("SetDriveTaskCruiseSpeed")
	static function setDriveTaskCruiseSpeed(driver:Dynamic, cruiseSpeed:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetAnimRate")
	static function setAnimRate(p0:Dynamic, p1:Float, p2:Dynamic, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetAnimLooped")
	static function setAnimLooped(p0:Dynamic, p1:Bool, p2:Dynamic, p3:Bool):Dynamic;

	/**
	 * Sets the driving style for a ped currently performing a driving task.
	 * 
	 * Each flag in the `eVehicleDrivingFlags` enum can be combined to create a driving style, with each enabling or disabling a specific driving behavior. The driving style can be set to one of the predefined driving styles, or a custom driving style can be created by combining the flags. This can be done by using the bitwise OR operator (`|`) to combine the flags or by adding the decimal values of the flags together.
	 * 
	 * ```cpp
	 * enum eVehicleDrivingFlags
	 * {
	 *   None = 0,
	 *   StopForVehicles = 1,
	 *   StopForPeds = 2,
	 *   SwerveAroundAllVehicles = 4,
	 *   SteerAroundStationaryVehicles = 8,
	 *   SteerAroundPeds = 16,
	 *   SteerAroundObjects = 32,
	 *   DontSteerAroundPlayerPed = 64,
	 *   StopAtTrafficLights = 128,
	 *   GoOffRoadWhenAvoiding = 256,
	 *   AllowGoingWrongWay = 512,
	 *   Reverse = 1024,
	 *   UseWanderFallbackInsteadOfStraightLine = 2048,
	 *   AvoidRestrictedAreas = 4096,
	 *   PreventBackgroundPathfinding = 8192,
	 *   AdjustCruiseSpeedBasedOnRoadSpeed = 16384,
	 *   UseShortCutLinks = 262144,
	 *   ChangeLanesAroundObstructions = 524288,
	 *   UseSwitchedOffNodes = 2097152,
	 *   PreferNavmeshRoute = 4194304,
	 *   PlaneTaxiMode = 8388608,
	 *   ForceStraightLine = 16777216,
	 *   UseStringPullingAtJunctions = 33554432,
	 *   TryToAvoidHighways = 536870912,
	 *   ForceJoinInRoadDirection = 1073741824,
	 *   StopAtDestination = 2147483648,
	 *   // StopForVehicles | StopForPeds | SteerAroundObjects | SteerAroundStationaryVehicles | StopAtTrafficLights | UseShortCutLinks | ChangeLanesAroundObstructions
	 *   DrivingModeStopForVehicles = 786603,
	 *   // StopForVehicles | StopForPeds | StopAtTrafficLights | UseShortCutLinks
	 *   DrivingModeStopForVehiclesStrict = 262275,
	 *   // SwerveAroundAllVehicles | SteerAroundObjects | UseShortCutLinks | ChangeLanesAroundObstructions | StopForVehicles
	 *   DrivingModeAvoidVehicles = 786469,
	 *   // SwerveAroundAllVehicles | SteerAroundObjects | UseShortCutLinks | ChangeLanesAroundObstructions
	 *   DrivingModeAvoidVehiclesReckless = 786468,
	 *   // StopForVehicles | SteerAroundStationaryVehicles | StopForPeds | SteerAroundObjects | UseShortCutLinks | ChangeLanesAroundObstructions
	 *   DrivingModeStopForVehiclesIgnoreLights = 786475,
	 *   // SwerveAroundAllVehicles | StopAtTrafficLights | SteerAroundObjects | UseShortCutLinks | ChangeLanesAroundObstructions | StopForVehicles
	 *   DrivingModeAvoidVehiclesObeyLights = 786597,
	 *   // SwerveAroundAllVehicles | StopAtTrafficLights | StopForPeds | SteerAroundObjects | UseShortCutLinks | ChangeLanesAroundObstructions | StopForVehicles
	 *   DrivingModeAvoidVehiclesStopForPedsObeyLights = 786599,
	 * }
	 * ```
	 */
	@:native("SetDriveTaskDrivingStyle")
	static function setDriveTaskDrivingStyle(ped:Dynamic, drivingStyle:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("SetAnimPhase")
	static function setAnimPhase(entity:Dynamic, p1:Float, p2:Dynamic, p3:Bool):Dynamic;

	/**
	 * ```
	 * For p1 & p2 (Ped, Vehicle). I could be wrong, as the only time this native is called in scripts is once and both are 0, but I assume this native will work like SET_MOUNTED_WEAPON_TARGET in which has the same exact amount of parameters and the 1st and last 3 parameters are right and the same for both natives.  
	 * ```
	 */
	@:native("SetDrivebyTaskTarget")
	static function setDrivebyTaskTarget(shootingPed:Dynamic, targetPed:Dynamic, targetVehicle:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * ```
	 * Note: Look in decompiled scripts and the times that p1 and p2 aren't 0. They are filled with vars. If you look through out that script what other natives those vars are used in, you can tell p1 is a ped and p2 is a vehicle. Which most likely means if you want the mounted weapon to target a ped set targetVehicle to 0 or vice-versa.  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 7: Any p6
	 * NativeDB Added Parameter 8: Any p7
	 * ```
	 */
	@:native("SetMountedWeaponTarget")
	static function setMountedWeaponTarget(shootingPed:Dynamic, targetPed:Dynamic, targetVehicle:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetDriveTaskMaxCruiseSpeed")
	static function setDriveTaskMaxCruiseSpeed(p0:Dynamic, p1:Float):Dynamic;

	/**
	 * ```
	 * Birds will try to reach the given height.  
	 * ```
	 */
	@:native("SetGlobalMinBirdFlightHeight")
	static function setGlobalMinBirdFlightHeight(height:Float):Dynamic;

	/**
	 * ```
	 * Groups found in the scripts used with this native:  
	 * "AMMUNATION",  
	 * "QUARRY",  
	 * "Triathlon_1",  
	 * "Triathlon_2",  
	 * "Triathlon_3"  
	 * ```
	 */
	@:native("SetExclusiveScenarioGroup")
	static function setExclusiveScenarioGroup(scenarioGroup:String):Dynamic;

	/**
	 * 
	 */
	@:native("SetHighFallTask")
	static function setHighFallTask(ped:Dynamic, duration:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * Prevents a ped from playing ambient idle animations.
	 * 
	 * **Note:** This native must be called every frame.
	 */
	@:native("SetPedCanPlayAmbientIdles")
	static function setPedCanPlayAmbientIdles(ped:Dynamic, bBlockIdleClips:Bool, bRemoveIdleClipIfPlaying:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetParachuteTaskThrust")
	static function setParachuteTaskThrust(ped:Dynamic, thrust:Float):Dynamic;

	/**
	 * **This native does absolutely nothing, just a nullsub**
	 */
	@:native("SetNextDesiredMoveState")
	static function setNextDesiredMoveState(p0:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetParachuteTaskTarget")
	static function setParachuteTaskTarget(ped:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedPathAvoidFire")
	static function setPedPathAvoidFire(ped:Dynamic, avoidFire:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedPathMayEnterWater")
	static function setPedPathMayEnterWater(ped:Dynamic, mayEnterWater:Bool):Dynamic;

	/**
	 * ```
	 * Default modifier is 1.0, minimum is 0.0 and maximum is 10.0.
	 * ```
	 */
	@:native("SetPedPathClimbCostModifier")
	static function setPedPathClimbCostModifier(ped:Dynamic, modifier:Float):Dynamic;

	/**
	 * ```
	 * Occurrences in the b617d scripts: pastebin.com/Tvg2PRHU  
	 * ```
	 */
	@:native("SetScenarioGroupEnabled")
	static function setScenarioGroupEnabled(scenarioGroup:String, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedPathCanDropFromHeight")
	static function setPedPathCanDropFromHeight(ped:Dynamic, Toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedDesiredMoveBlendRatio")
	static function setPedDesiredMoveBlendRatio(ped:Dynamic, p1:Float):Dynamic;

	/**
	 * ```
	 * * Flag 1: Aggressive ramming of suspect
	 * * Flag 2: Ram attempts
	 * * Flag 8: Medium-aggressive boxing tactic with a bit of PIT
	 * * Flag 16: Ramming, seems to be slightly less aggressive than 1-2.
	 * * Flag 32: Stay back from suspect, no tactical contact. Convoy-like.
	 * ```
	 */
	@:native("SetTaskVehicleChaseBehaviorFlag")
	static function setTaskVehicleChaseBehaviorFlag(ped:Dynamic, flag:Int, set:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedWaypointRouteOffset")
	static function setPedWaypointRouteOffset(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedPathCanUseClimbovers")
	static function setPedPathCanUseClimbovers(ped:Dynamic, Toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedPathPreferToAvoidWater")
	static function setPedPathPreferToAvoidWater(ped:Dynamic, avoidWater:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetSequenceToRepeat")
	static function setSequenceToRepeat(taskSequenceId:Int, repeat:Bool):Dynamic;

	/**
	 * ```
	 * Looks like p1 may be a flag, still need to do some research, though.
	 * ```
	 */
	@:native("StopAnimPlayback")
	static function stopAnimPlayback(ped:Dynamic, p1:Int, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedPathCanUseLadders")
	static function setPedPathCanUseLadders(ped:Dynamic, Toggle:Bool):Dynamic;

	/**
	 * ```
	 * Makes the specified ped achieve the specified heading.  
	 * pedHandle: The handle of the ped to assign the task to.  
	 * heading: The desired heading.  
	 * timeout: The time, in milliseconds, to allow the task to complete. If the task times out, it is cancelled, and the ped will stay at the heading it managed to reach in the time.  
	 * ```
	 */
	@:native("TaskAchieveHeading")
	static function taskAchieveHeading(ped:Dynamic, heading:Float, timeout:Int):Dynamic;

	/**
	 * ```
	 * seems to enable/disable specific scenario-types from happening in the game world.
	 * Here are some scenario types from the scripts:
	 * "WORLD_MOUNTAIN_LION_REST"
	 * "WORLD_MOUNTAIN_LION_WANDER"
	 * "DRIVE"
	 * "WORLD_VEHICLE_POLICE_BIKE"
	 * "WORLD_VEHICLE_POLICE_CAR"
	 * "WORLD_VEHICLE_POLICE_NEXT_TO_CAR"
	 * "WORLD_VEHICLE_DRIVE_SOLO"
	 * "WORLD_VEHICLE_BIKER"
	 * "WORLD_VEHICLE_DRIVE_PASSENGERS"
	 * "WORLD_VEHICLE_SALTON_DIRT_BIKE"
	 * "WORLD_VEHICLE_BICYCLE_MOUNTAIN"
	 * "PROP_HUMAN_SEAT_CHAIR"
	 * "WORLD_VEHICLE_ATTRACTOR"
	 * "WORLD_HUMAN_LEANING"
	 * "WORLD_HUMAN_HANG_OUT_STREET"
	 * "WORLD_HUMAN_DRINKING"
	 * "WORLD_HUMAN_SMOKING"
	 * "WORLD_HUMAN_GUARD_STAND"
	 * "WORLD_HUMAN_CLIPBOARD"
	 * "WORLD_HUMAN_HIKER"
	 * "WORLD_VEHICLE_EMPTY"
	 * "WORLD_VEHICLE_BIKE_OFF_ROAD_RACE"
	 * "WORLD_HUMAN_PAPARAZZI"
	 * "WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN"
	 * "WORLD_VEHICLE_PARK_PARALLEL"
	 * "WORLD_VEHICLE_CONSTRUCTION_SOLO"
	 * "WORLD_VEHICLE_CONSTRUCTION_PASSENGERS"
	 * "WORLD_VEHICLE_TRUCK_LOGS"
	 * scenarioType could be the same as scenarioName, used in for example TASK::TASK_START_SCENARIO_AT_POSITION.
	 * ```
	 */
	@:native("SetScenarioTypeEnabled")
	static function setScenarioTypeEnabled(scenarioType:String, toggle:Bool):Dynamic;

	/**
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("StopAnimTask")
	static function stopAnimTask(ped:Dynamic, animDictionary:String, animationName:String, animExitSpeed:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetTaskMoveNetworkSignalBool")
	static function setTaskMoveNetworkSignalBool(ped:Dynamic, signalName:String, value:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("TaskAimGunScriptedWithTarget")
	static function taskAimGunScriptedWithTarget(ped:Dynamic, targetPed:Dynamic, x:Float, y:Float, z:Float, iGunTaskType:Int, bDisableBlockingClip:Bool, bForceAim:Bool):Dynamic;

	/**
	 * ```
	 * p0 - PLAYER::PLAYER_PED_ID();
	 * p1 - "Phase", "Wobble", "x_axis","y_axis","introphase","speed".
	 * p2 - From what i can see it goes up to 1f (maybe).
	 * -LcGamingHD
	 * Example: TASK::_D5BB4025AE449A4E(PLAYER::PLAYER_PED_ID(), "Phase", 0.5);
	 * ```
	 */
	@:native("SetTaskMoveNetworkSignalFloat")
	static function setTaskMoveNetworkSignalFloat(ped:Dynamic, signalName:String, value:Float):Dynamic;

	/**
	 * ```
	 * duration: the amount of time in milliseconds to do the task.  -1 will keep the task going until either another task is applied, or CLEAR_ALL_TASKS() is called with the ped  
	 * ```
	 */
	@:native("TaskAimGunAtEntity")
	static function taskAimGunAtEntity(ped:Dynamic, entity:Dynamic, duration:Int, bInstantBlendToAim:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("SetTaskMoveNetworkSignalFloat_2")
	static function SetTaskMoveNetworkSignalFloat2(ped:Dynamic, signalName:String, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("TaskAimGunAtCoord")
	static function taskAimGunAtCoord(ped:Dynamic, x:Float, y:Float, z:Float, time:Int, bInstantBlendToAim:Bool, bPlayAimIntro:Bool):Dynamic;

	/**
	 * All parameters except ped and boat are optional, with `pedTarget`, `vehicleTarget`, `x`, `y`, `z` being dependent on `missionType` (ie. Attack/Flee mission types require a target ped/vehicle, whereas GoTo mission types require either `x`, `y`, `z` or a target ped/vehicle).
	 * 
	 * If you don't want to use a parameter; pass `0.0f` for `x`, `y` and `z`, `0` for `pedTarget`, `vehicleTarget` and other int parameters, and `-1.0f` for the remaining float parameters.
	 * 
	 * ```cpp
	 * enum eBoatMissionFlags
	 * {
	 *   None = 0,
	 *   StopAtEnd = 1,
	 *   StopAtShore = 2,
	 *   AvoidShore = 4,
	 *   PreferForward = 8,
	 *   NeverStop = 16,
	 *   NeverNavMesh = 32,
	 *   NeverRoute = 64,
	 *   ForceBeached = 128,
	 *   UseWanderRoute = 256,
	 *   UseFleeRoute = 512,
	 *   NeverPause = 1024,
	 *   // StopAtEnd | StopAtShore | AvoidShore
	 *   DefaultSettings = 7,
	 *   // StopAtEnd | StopAtShore | AvoidShore | PreferForward | NeverNavMesh | NeverRoute
	 *   OpenOceanSettings = 111,
	 *   // StopAtEnd | StopAtShore | AvoidShore | PreferForward | NeverNavMesh | NeverPause
	 *   BoatTaxiSettings = 1071,
	 * }
	 * ```
	 */
	@:native("TaskBoatMission")
	static function taskBoatMission(ped:Dynamic, boat:Dynamic, vehicleTarget:Dynamic, pedTarget:Dynamic, x:Float, y:Float, z:Float, missionType:Int, speed:Float, drivingStyle:Int, radius:Float, missionFlags:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TaskAimGunScripted")
	static function taskAimGunScripted(ped:Dynamic, scriptTask:Int, bDisableBlockingClip:Bool, bInstantBlendToAim:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetTaskVehicleChaseIdealPursuitDistance")
	static function setTaskVehicleChaseIdealPursuitDistance(ped:Dynamic, distance:Float):Dynamic;

	/**
	 * ```
	 * Example from "me_amanda1.ysc.c4":
	 * TASK::TASK_ARREST_PED(l_19F / * This is a Ped * / , PLAYER::PLAYER_PED_ID());
	 * Example from "armenian1.ysc.c4":
	 * if (!PED::IS_PED_INJURED(l_B18[0/ *1* /])) {
	 *     TASK::TASK_ARREST_PED(l_B18[0/ *1* /], PLAYER::PLAYER_PED_ID());
	 * }
	 * I would love to have time to experiment to see if a player Ped can arrest another Ped. Might make for a good cop mod.
	 * Looks like only the player can be arrested this way. Peds react and try to arrest you if you task them, but the player charater doesn't do anything if tasked to arrest another ped.
	 * ```
	 */
	@:native("TaskArrestPed")
	static function taskArrestPed(ped:Dynamic, target:Dynamic):Dynamic;

	/**
	 * ```
	 * p2 tend to be 16, 17 or 1  
	 * p3 to p7 tend to be 0.0  
	 * ```
	 */
	@:native("TaskChatToPed")
	static function taskChatToPed(ped:Dynamic, target:Dynamic, p2:Dynamic, p3:Float, p4:Float, p5:Float, p6:Float, p7:Float):Dynamic;

	/**
	 * 
	 */
	@:native("TaskAgitatedAction")
	static function TaskAgitatedAction(ped:Dynamic, ped2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("TaskClearDefensiveArea")
	static function taskClearDefensiveArea(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * Not clear what it actually does, but here's how script uses it -
	 * if (OBJECT::HAS_PICKUP_BEEN_COLLECTED(...)
	 * {
	 *  if(ENTITY::DOES_ENTITY_EXIST(PLAYER::PLAYER_PED_ID()))
	 *     {
	 *      TASK::TASK_CLEAR_LOOK_AT(PLAYER::PLAYER_PED_ID());
	 *   }
	 *  ...
	 * }
	 * Another one where it doesn't "look" at current player -
	 * TASK::TASK_PLAY_ANIM(l_3ED, "missheist_agency2aig_2", "look_at_phone_a", 1000.0, -2.0, -1, 48, v_2, 0, 0, 0);
	 * PED::_2208438012482A1A(l_3ED, 0, 0);
	 * TASK::TASK_CLEAR_LOOK_AT(l_3ED);
	 * ```
	 */
	@:native("TaskClearLookAt")
	static function taskClearLookAt(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("TaskCombatHatedTargetsAroundPedTimed")
	static function taskCombatHatedTargetsAroundPedTimed(p0:Dynamic, p1:Float, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * Despite its name, it only attacks ONE hated target. The one closest hated target.  
	 * p2 seems to be always 0  
	 * ```
	 */
	@:native("TaskCombatHatedTargetsAroundPed")
	static function taskCombatHatedTargetsAroundPed(ped:Dynamic, radius:Float, p2:Int):Dynamic;

	/**
	 * ```
	 * Despite its name, it only attacks ONE hated target. The one closest to the specified position.  
	 * ```
	 */
	@:native("TaskCombatHatedTargetsInArea")
	static function taskCombatHatedTargetsInArea(ped:Dynamic, x:Float, y:Float, z:Float, radius:Float, p5:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("TaskCombatPedTimed")
	static function taskCombatPedTimed(p0:Dynamic, ped:Dynamic, p2:Int, p3:Dynamic):Dynamic;

	/**
	 * The ped will act like NPC's involved in a gunfight. The ped will squat down with their heads held in place and look around.
	 */
	@:native("TaskCower")
	static function taskCower(ped:Dynamic, duration:Int):Dynamic;

	/**
	 * ```
	 * Example:
	 * TASK::TASK_DRIVE_BY(l_467[1/ *22* /], PLAYER::PLAYER_PED_ID(), 0, 0.0, 0.0, 2.0, 300.0, 100, 0, ${firing_pattern_burst_fire_driveby});
	 * Needs working example. Doesn't seem to do anything.
	 * I marked p2 as targetVehicle as all these shooting related tasks seem to have that in common.
	 * I marked p6 as distanceToShoot as if you think of GTA's Logic with the native SET_VEHICLE_SHOOT natives, it won't shoot till it gets within a certain distance of the target.
	 * I marked p7 as pedAccuracy as it seems it's mostly 100 (Completely Accurate), 75, 90, etc. Although this could be the ammo count within the gun, but I highly doubt it. I will change this comment once I find out if it's ammo count or not.
	 * ```
	 */
	@:native("TaskDriveBy")
	static function taskDriveBy(driverPed:Dynamic, targetPed:Dynamic, targetVehicle:Dynamic, targetX:Float, targetY:Float, targetZ:Float, distanceToShoot:Float, pedAccuracy:Int, p8:Bool, firingPattern:Int):Dynamic;

	/**
	 * ```
	 * Climbs or vaults the nearest thing.  
	 * ```
	 */
	@:native("TaskClimb")
	static function taskClimb(ped:Dynamic, unused:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("TaskEveryoneLeaveVehicle")
	static function taskEveryoneLeaveVehicle(vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * speed 1.0 = walk, 2.0 = run  
	 * p5 1 = normal, 3 = teleport to vehicle, 8 = normal/carjack ped from seat, 16 = teleport directly into vehicle  
	 * p6 is always 0  
	 * ```
	 */
	@:native("TaskEnterVehicle")
	static function taskEnterVehicle(ped:Dynamic, vehicle:Dynamic, timeout:Int, seatIndex:Int, speed:Float, flag:Int, p6:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("TaskClimbLadder")
	static function taskClimbLadder(ped:Dynamic, p1:Int):Dynamic;

	/**
	 * Makes the ped go on a point route.
	 * 
	 * ```cpp
	 * enum eFollowPointRouteMode {
	 * 	TICKET_SINGLE = 0,
	 * 	TICKET_RETURN = 1,
	 * 	TICKET_SEASON = 2,
	 * 	TICKET_LOOP = 3
	 * }
	 * ```
	 * 
	 * This native is often times used with [`TASK_FLUSH_ROUTE`](#\_0x841142A1376E9006) and [`TASK_EXTEND_ROUTE`](#\_0x1E7889778264843A)
	 */
	@:native("TaskFollowPointRoute")
	static function taskFollowPointRoute(ped:Dynamic, speed:Float, routeMode:Int):Dynamic;

	/**
	 * Adds a new point to the current point route; a maximum of 8 points can be added.
	 * 
	 * Call [TASK_FLUSH_ROUTE](#\_0x841142A1376E9006) before the first call to this. Call [TASK_FOLLOW_POINT_ROUTE](#\_0x595583281858626E) to make the Ped go the route.
	 */
	@:native("TaskExtendRoute")
	static function taskExtendRoute(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * ```
	 * Makes the specified ped attack the target ped.  
	 * p2 should be 0  
	 * p3 should be 16  
	 * ```
	 */
	@:native("TaskCombatPed")
	static function taskCombatPed(ped:Dynamic, targetPed:Dynamic, p2:Int, p3:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TaskExitCover")
	static function taskExitCover(p0:Dynamic, p1:Dynamic, p2:Float, p3:Float, p4:Float):Dynamic;

	/**
	 * ```
	 * p6 always -1  
	 * p7 always 10.0  
	 * p8 always 1  
	 * ```
	 */
	@:native("TaskFollowToOffsetOfEntity")
	static function taskFollowToOffsetOfEntity(ped:Dynamic, entity:Dynamic, offsetX:Float, offsetY:Float, offsetZ:Float, movementSpeed:Float, timeout:Int, stoppingRange:Float, persistFollowing:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("TaskFollowWaypointRecording")
	static function taskFollowWaypointRecording(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * Clears the current point route. Call this before [TASK_EXTEND_ROUTE](#\_0x1E7889778264843A) and [TASK_FOLLOW_POINT_ROUTE](#\_0x595583281858626E).
	 */
	@:native("TaskFlushRoute")
	static function taskFlushRoute():Dynamic;

	/**
	 * Sometimes a path may not be able to be found. This could happen because there simply isn't any way to get there, or maybe a bunch of dynamic objects have blocked the way,
	 * or maybe the destination is too far away. In this case the ped will simply stand still.
	 * To identify when this has happened, you can use GET_NAVMESH_ROUTE_RESULT. This will help you find situations where peds cannot get to their target.
	 * 
	 * ```cpp
	 * enum eNavScriptFlags {
	 *     // Default flag
	 *     ENAV_DEFAULT = 0,
	 *     // Will ensure the ped continues to move whilst waiting for the path
	 *     // to be found, and will not slow down at the end of their route.
	 *     ENAV_NO_STOPPING = 1,
	 *     // Performs a slide-to-coord at the end of the task. This requires that the
	 *     // accompanying NAVDATA structure has the 'SlideToCoordHeading' member set correctly.
	 *     ENAV_ADV_SLIDE_TO_COORD_AND_ACHIEVE_HEADING_AT_END = 2,
	 *     // If the navmesh is not loaded in under the target position, then this will
	 *     // cause the ped to get as close as is possible on whatever navmesh is loaded.
	 *     // The navmesh must still be loaded at the path start.
	 *     ENAV_GO_FAR_AS_POSSIBLE_IF_TARGET_NAVMESH_NOT_LOADED = 4,
	 *     // Will allow navigation underwater - by default this is not allowed.
	 *     ENAV_ALLOW_SWIMMING_UNDERWATER = 8,
	 *     // Will only allow navigation on pavements. If the path starts or ends off
	 *     // the pavement, the command will fail. Likewise if no pavement-only route
	 *     // can be found even although the start and end are on pavement.
	 *     ENAV_KEEP_TO_PAVEMENTS = 16,
	 *     // Prevents the path from entering water at all.
	 *     ENAV_NEVER_ENTER_WATER = 32,
	 *     // Disables object-avoidance for this path. The ped may still make minor
	 *     // steering adjustments to avoid objects, but will not pathfind around them.
	 *     ENAV_DONT_AVOID_OBJECTS = 64,
	 *     // Specifies that the navmesh route will only be able to traverse up slopes
	 *     // which are under the angle specified, in the MaxSlopeNavigable member of the accompanying NAVDATA structure.
	 *     ENAV_ADVANCED_USE_MAX_SLOPE_NAVIGABLE = 128,
	 *     // Unused.
	 *     ENAV_STOP_EXACTLY = 512,
	 *     // The entity will look ahead in its path for a longer distance to make the
	 *     // walk/run start go more in the right direction.
	 *     ENAV_ACCURATE_WALKRUN_START = 1024,
	 *     // Disables ped-avoidance for this path while we move.
	 *     ENAV_DONT_AVOID_PEDS = 2048,
	 *     // If target pos is inside the boundingbox of an object it will otherwise be pushed out.
	 *     ENAV_DONT_ADJUST_TARGET_POSITION = 4096,
	 *     // Turns off the default behaviour, which is to stop exactly at the target position.
	 *     // Occasionally this can cause footsliding/skating problems.
	 *     ENAV_SUPPRESS_EXACT_STOP = 8192,
	 *     // Prevents the path-search from finding paths outside of this search distance.
	 *     // This can be used to prevent peds from finding long undesired routes.
	 *     ENAV_ADVANCED_USE_CLAMP_MAX_SEARCH_DISTANCE = 16384,
	 *     // Pulls out the paths from edges at corners for a longer distance, to prevent peds walking into stuff.
	 *     ENAV_PULL_FROM_EDGE_EXTRA = 32768
	 * };
	 * ```
	 */
	@:native("TaskFollowNavMeshToCoord")
	static function taskFollowNavMeshToCoord(ped:Dynamic, x:Float, y:Float, z:Float, moveBlendRatio:Float, time:Int, radius:Float, flags:Int, finalHeading:Float):Dynamic;

	/**
	 * See [`FORCE_PED_MOTION_STATE`](#\_0xF28965D04F570DCA)
	 */
	@:native("TaskForceMotionState")
	static function taskForceMotionState(ped:Dynamic, state:Int, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("TaskGetOffBoat")
	static function taskGetOffBoat(ped:Dynamic, boat:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("TaskFollowNavMeshToCoordAdvanced")
	static function taskFollowNavMeshToCoordAdvanced(ped:Dynamic, x:Float, y:Float, z:Float, speed:Float, timeout:Int, unkFloat:Float, unkInt:Int, unkX:Float, unkY:Float, unkZ:Float, unk_40000f:Float):Dynamic;

	/**
	 * 
	 */
	@:native("TaskGoStraightToCoordRelativeToEntity")
	static function taskGoStraightToCoordRelativeToEntity(entity1:Dynamic, entity2:Dynamic, p2:Float, p3:Float, p4:Float, p5:Float, p6:Dynamic):Dynamic;

	/**
	 * Tells a ped to go to a coord by any means.
	 * 
	 * ```cpp
	 * enum eDrivingMode {
	 *   DF_StopForCars = 1,
	 *   DF_StopForPeds = 2,
	 *   DF_SwerveAroundAllCars = 4,
	 *   DF_SteerAroundStationaryCars = 8,
	 *   DF_SteerAroundPeds = 16,
	 *   DF_SteerAroundObjects = 32,
	 *   DF_DontSteerAroundPlayerPed = 64,
	 *   DF_StopAtLights = 128,
	 *   DF_GoOffRoadWhenAvoiding = 256,
	 *   DF_DriveIntoOncomingTraffic = 512,
	 *   DF_DriveInReverse = 1024,
	 * 
	 *   // If pathfinding fails, cruise randomly instead of going on a straight line
	 *   DF_UseWanderFallbackInsteadOfStraightLine = 2048,
	 * 
	 *   DF_AvoidRestrictedAreas = 4096,
	 * 
	 *   // These only work on MISSION_CRUISE
	 *   DF_PreventBackgroundPathfinding = 8192,
	 *   DF_AdjustCruiseSpeedBasedOnRoadSpeed = 16384,
	 * 
	 *   DF_UseShortCutLinks =  262144,
	 *   DF_ChangeLanesAroundObstructions = 524288,
	 *   // cruise tasks ignore this anyway--only used for goto's
	 *   DF_UseSwitchedOffNodes =  2097152,
	 *   // if you're going to be primarily driving off road
	 *   DF_PreferNavmeshRoute =  4194304,
	 * 
	 *   // Only works for planes using MISSION_GOTO, will cause them to drive along the ground instead of fly
	 *   DF_PlaneTaxiMode =  8388608,
	 * 
	 *   DF_ForceStraightLine = 16777216,
	 *   DF_UseStringPullingAtJunctions = 33554432,
	 * 
	 *   DF_AvoidHighways = 536870912,
	 *   DF_ForceJoinInRoadDirection = 1073741824,
	 * 
	 *   // Standard driving mode. stops for cars, peds, and lights, goes around stationary obstructions
	 *   DRIVINGMODE_STOPFORCARS = 786603, // DF_StopForCars|DF_StopForPeds|DF_SteerAroundObjects|DF_SteerAroundStationaryCars|DF_StopAtLights|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions,		// Obey lights too
	 * 
	 *   // Like the above, but doesn't steer around anything in its way - will only wait instead.
	 *   DRIVINGMODE_STOPFORCARS_STRICT = 262275, // DF_StopForCars|DF_StopForPeds|DF_StopAtLights|DF_UseShortCutLinks, // Doesn't deviate an inch.
	 * 
	 *   // Default "alerted" driving mode. drives around everything, doesn't obey lights
	 *   DRIVINGMODE_AVOIDCARS = 786469, // DF_SwerveAroundAllCars|DF_SteerAroundObjects|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions|DF_StopForCars,
	 * 
	 *   // Very erratic driving. difference between this and AvoidCars is that it doesn't use the brakes at ALL to help with steering
	 *   DRIVINGMODE_AVOIDCARS_RECKLESS = 786468, // DF_SwerveAroundAllCars|DF_SteerAroundObjects|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions,
	 * 
	 *   // Smashes through everything
	 *   DRIVINGMODE_PLOUGHTHROUGH = 262144, // DF_UseShortCutLinks
	 * 
	 *   // Drives normally except for the fact that it ignores lights
	 *   DRIVINGMODE_STOPFORCARS_IGNORELIGHTS = 786475, // DF_StopForCars|DF_SteerAroundStationaryCars|DF_StopForPeds|DF_SteerAroundObjects|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions
	 * 
	 *   // Try to swerve around everything, but stop for lights if necessary
	 *   DRIVINGMODE_AVOIDCARS_OBEYLIGHTS = 786597, // DF_SwerveAroundAllCars|DF_StopAtLights|DF_SteerAroundObjects|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions|DF_StopForCars
	 * 
	 *   // Swerve around cars, be careful around peds, and stop for lights
	 *   DRIVINGMODE_AVOIDCARS_STOPFORPEDS_OBEYLIGHTS = 786599 // DF_SwerveAroundAllCars|DF_StopAtLights|DF_StopForPeds|DF_SteerAroundObjects|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions|DF_StopForCars
	 * };
	 * ```
	 */
	@:native("TaskGoToCoordAnyMeans")
	static function taskGoToCoordAnyMeans(ped:Dynamic, x:Float, y:Float, z:Float, fMoveBlendRatio:Float, vehicle:Dynamic, bUseLongRangeVehiclePathing:Bool, drivingFlags:Int, fMaxRangeToShootTargets:Float):Dynamic;

	/**
	 * 
	 */
	@:native("TaskGoStraightToCoord")
	static function taskGoStraightToCoord(ped:Dynamic, x:Float, y:Float, z:Float, speed:Float, timeout:Int, targetHeading:Float, distanceToSlide:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 14: Any p13
	 * ```
	 */
	@:native("TaskGoToCoordAnyMeansExtraParamsWithCruiseSpeed")
	static function taskGoToCoordAnyMeansExtraParamsWithCruiseSpeed(ped:Dynamic, x:Float, y:Float, z:Float, speed:Float, p5:Dynamic, p6:Bool, walkingStyle:Int, p8:Float, p9:Dynamic, p10:Dynamic, p11:Dynamic, p12:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 13: Any p12
	 * ```
	 */
	@:native("TaskGoToCoordAnyMeansExtraParams")
	static function taskGoToCoordAnyMeansExtraParams(ped:Dynamic, x:Float, y:Float, z:Float, speed:Float, p5:Dynamic, p6:Bool, walkingStyle:Int, p8:Float, p9:Dynamic, p10:Dynamic, p11:Dynamic):Dynamic;

	/**
	 * ```
	 * The ped will walk or run towards goToLocation, aiming towards goToLocation or focusLocation (depending on the aimingFlag) and shooting if shootAtEnemies = true to any enemy in his path.
	 * If the ped is closer than noRoadsDistance, the ped will ignore pathing/navmesh and go towards goToLocation directly. This could cause the ped to get stuck behind tall walls if the goToLocation is on the other side. To avoid this, use 0.0f and the ped will always use pathing/navmesh to reach his destination.
	 * If the speed is set to 0.0f, the ped will just stand there while aiming, if set to 1.0f he will walk while aiming, 2.0f will run while aiming.
	 * The ped will stop aiming when he is closer than distanceToStopAt to goToLocation.
	 * I still can't figure out what unkTrue is used for. I don't notice any difference if I set it to false but in the decompiled scripts is always true.
	 * I think that unkFlag, like the driving styles, could be a flag that "work as a list of 32 bits converted to a decimal integer. Each bit acts as a flag, and enables or disables a function". What leads me to this conclusion is the fact that in the decompiled scripts, unkFlag takes values like: 0, 1, 5 (101 in binary) and 4097 (4096 + 1 or 1000000000001 in binary). For now, I don't know what behavior enable or disable this possible flag so I leave it at 0.
	 * Note: After some testing, using unkFlag = 16 (0x10) enables the use of sidewalks while moving towards goToLocation.
	 * The aimingFlag takes 2 values: 0 to aim at the focusLocation, 1 to aim at where the ped is heading (goToLocation).
	 * Example:
	 * enum AimFlag
	 * {
	 *    AimAtFocusLocation,
	 *    AimAtGoToLocation
	 * };
	 * Vector3 goToLocation1 = { 996.2867f, 0, -2143.044f, 0, 28.4763f, 0 }; // remember the padding.
	 * Vector3 goToLocation2 = { 990.2867f, 0, -2140.044f, 0, 28.4763f, 0 }; // remember the padding.
	 * Vector3 focusLocation = { 994.3478f, 0, -2136.118f, 0, 29.2463f, 0 }; // the coord z should be a little higher, around +1.0f to avoid aiming at the ground
	 * // 1st example
	 * TASK::TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(pedHandle, goToLocation1.x, goToLocation1.y, goToLocation1.z, focusLocation.x, focusLocation.y, focusLocation.z, 2.0f / *run* /, true / *shoot* /, 3.0f / *stop at* /, 0.0f / *noRoadsDistance* /, true / *always true* /, 0 / *possible flag* /, AimFlag::AimAtGoToLocation, -957453492 / *FullAuto pattern* /);
	 * // 2nd example
	 * TASK::TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(pedHandle, goToLocation2.x, goToLocation2.y, goToLocation2.z, focusLocation.x, focusLocation.y, focusLocation.z, 1.0f / *walk* /, false / *don't shoot* /, 3.0f / *stop at* /, 0.0f / *noRoadsDistance* /, true / *always true* /, 0 / *possible flag* /, AimFlag::AimAtFocusLocation, -957453492 / *FullAuto pattern* /);
	 * 1st example: The ped (pedhandle) will run towards goToLocation1. While running and aiming towards goToLocation1, the ped will shoot on sight to any enemy in his path, using "FullAuto" firing pattern. The ped will stop once he is closer than distanceToStopAt to goToLocation1.
	 * 2nd example: The ped will walk towards goToLocation2. This time, while walking towards goToLocation2 and aiming at focusLocation, the ped will point his weapon on sight to any enemy in his path without shooting. The ped will stop once he is closer than distanceToStopAt to goToLocation2.
	 * ```
	 */
	@:native("TaskGoToCoordAndAimAtHatedEntitiesNearCoord")
	static function taskGoToCoordAndAimAtHatedEntitiesNearCoord(pedHandle:Dynamic, goToLocationX:Float, goToLocationY:Float, goToLocationZ:Float, focusLocationX:Float, focusLocationY:Float, focusLocationZ:Float, speed:Float, shootAtEnemies:Bool, distanceToStopAt:Float, noRoadsDistance:Float, unkTrue:Bool, unkFlag:Int, aimingFlag:Int, firingPattern:Int):Dynamic;

	/**
	 * Will make the ped move to a coordinate while aiming (and optionally shooting) at the given entity.
	 * 
	 * ```cpp
	 * enum eFiringPatternHashes {
	 *     FIRING_PATTERN_DEFAULT = 0,
	 *     FIRING_PATTERN_BURST_FIRE = -687903391,
	 *     FIRING_PATTERN_BURST_FIRE_DRIVEBY = -753768974,
	 *     FIRING_PATTERN_FULL_AUTO = -957453492,
	 *     FIRING_PATTERN_SINGLE_SHOT = 1566631136,
	 *     FIRING_PATTERN_DELAY_FIRE_BY_ONE_SEC = 2055493265,
	 *     FIRING_PATTERN_BURST_FIRE_HELI = -1857128337,
	 *     FIRING_PATTERN_SHORT_BURSTS = 445831135,
	 *     FIRING_PATTERN_BURST_FIRE_MICRO = 1122960381,
	 *     FIRING_PATTERN_SLOW_FIRE_TANK = -490063247,
	 *     FIRING_PATTERN_TAMPA_MORTAR = -1842093953
	 * }
	 * ```
	 */
	@:native("TaskGoToCoordWhileAimingAtEntity")
	static function taskGoToCoordWhileAimingAtEntity(ped:Dynamic, x:Float, y:Float, z:Float, entityToAimAt:Dynamic, moveSpeed:Float, shoot:Bool, targetRadius:Float, slowDistance:Float, useNavMesh:Bool, navFlags:Int, instantBlendAtAim:Bool, firingPattern:Int, time:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TaskGoToEntityWhileAimingAtCoord")
	static function taskGoToEntityWhileAimingAtCoord(p0:Dynamic, p1:Dynamic, p2:Float, p3:Float, p4:Float, p5:Float, p6:Bool, p7:Float, p8:Float, p9:Bool, p10:Bool, p11:Dynamic):Dynamic;

	/**
	 * ```
	 * The entity will move towards the target until time is over (duration) or get in target's range (distance). p5 and p6 are unknown, but you could leave p5 = 1073741824 or 100 or even 0 (didn't see any difference but on the decompiled scripts, they use 1073741824 mostly) and p6 = 0
	 * Note: I've only tested it on entity -> ped and target -> vehicle. It could work differently on other entities, didn't try it yet.
	 * Example: TASK::TASK_GO_TO_ENTITY(pedHandle, vehicleHandle, 5000, 4.0, 100, 1073741824, 0)
	 * Ped will run towards the vehicle for 5 seconds and stop when time is over or when he gets 4 meters(?) around the vehicle (with duration = -1, the task duration will be ignored).
	 * ```
	 */
	@:native("TaskGoToEntity")
	static function taskGoToEntity(entity:Dynamic, target:Dynamic, duration:Int, distance:Float, speed:Float, p5:Float, p6:Int):Dynamic;

	/**
	 * ```
	 * shootatEntity:  
	 * If true, peds will shoot at Entity till it is dead.  
	 * If false, peds will just walk till they reach the entity and will cease shooting.  
	 * ```
	 */
	@:native("TaskGoToEntityWhileAimingAtEntity")
	static function taskGoToEntityWhileAimingAtEntity(ped:Dynamic, entityToWalkTo:Dynamic, entityToAimAt:Dynamic, speed:Float, shootatEntity:Bool, p5:Float, p6:Float, p7:Bool, p8:Bool, firingPattern:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TaskGotoEntityOffset")
	static function taskGotoEntityOffset(ped:Dynamic, p1:Dynamic, p2:Dynamic, x:Float, y:Float, z:Float, duration:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TaskGotoEntityOffsetXy")
	static function taskGotoEntityOffsetXy(ped:Dynamic, entity:Dynamic, duration:Int, xOffset:Float, yOffset:Float, zOffset:Float, moveBlendRatio:Float, useNavmesh:Bool):Dynamic;

	/**
	 * Will make the ped move to a coordinate while aiming (and optionally shooting) at given coordinates.
	 */
	@:native("TaskGoToCoordWhileAimingAtCoord")
	static function taskGoToCoordWhileAimingAtCoord(ped:Dynamic, x:Float, y:Float, z:Float, aimAtX:Float, aimAtY:Float, aimAtZ:Float, moveSpeed:Float, shoot:Bool, p9:Float, p10:Float, p11:Bool, flags:Dynamic, p13:Bool, firingPattern:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TaskGuardAssignedDefensiveArea")
	static function taskGuardAssignedDefensiveArea(p0:Dynamic, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Dynamic):Dynamic;

	/**
	 * ```
	 * p0 - Guessing PedID  
	 * p1, p2, p3 - XYZ?  
	 * p4 - ???  
	 * p5 - Maybe the size of sphere from XYZ?  
	 * p6 - ???  
	 * p7, p8, p9 - XYZ again?  
	 * p10 - Maybe the size of sphere from second XYZ?  
	 * ```
	 */
	@:native("TaskGuardSphereDefensiveArea")
	static function taskGuardSphereDefensiveArea(p0:Dynamic, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Dynamic, p7:Float, p8:Float, p9:Float, p10:Float):Dynamic;

	/**
	 * ```
	 * From re_prisonvanbreak:
	 * TASK::TASK_GUARD_CURRENT_POSITION(l_DD, 35.0, 35.0, 1);
	 * ```
	 */
	@:native("TaskGuardCurrentPosition")
	static function taskGuardCurrentPosition(p0:Dynamic, p1:Float, p2:Float, p3:Bool):Dynamic;

	/**
	 * ```
	 * eg
	 *  TASK::TASK_GOTO_ENTITY_AIMING(v_2, PLAYER::PLAYER_PED_ID(), 5.0, 25.0);
	 * ped = Ped you want to perform this task.
	 * target = the Entity they should aim at.
	 * distanceToStopAt = distance from the target, where the ped should stop to aim.
	 * StartAimingDist = distance where the ped should start to aim.
	 * ```
	 */
	@:native("TaskGotoEntityAiming")
	static function taskGotoEntityAiming(ped:Dynamic, target:Dynamic, distanceToStopAt:Float, StartAimingDist:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("TaskHeliEscortHeli")
	static function TaskHeliEscortHeli(pilot:Dynamic, heli1:Dynamic, heli2:Dynamic, p3:Float, p4:Float, p5:Float):Dynamic;

	/**
	 * ```
	 * In the scripts, p3 was always -1.  
	 * p3 seems to be duration or timeout of turn animation.  
	 * Also facingPed can be 0 or -1 so ped will just raise hands up.  
	 * ```
	 */
	@:native("TaskHandsUp")
	static function taskHandsUp(ped:Dynamic, duration:Int, facingPed:Dynamic, p3:Int, p4:Bool):Dynamic;

	/**
	 * ```
	 * param3: duration in ms, use -1 to look forever  
	 * param4: using 2048 is fine  
	 * param5: using 3 is fine  
	 * ```
	 */
	@:native("TaskLookAtEntity")
	static function taskLookAtEntity(ped:Dynamic, lookAt:Dynamic, duration:Int, unknown1:Int, unknown2:Int):Dynamic;

	/**
	 * ```
	 * Definition is wrong. This has 4 parameters (Not sure when they were added. v350 has 2, v678 has 4).  
	 * v350: Ped ped, bool unused  
	 * v678: Ped ped, bool unused, bool flag1, bool flag2  
	 * flag1 = super jump, flag2 = do nothing if flag1 is false and doubles super jump height if flag1 is true.  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 3: Any p2
	 * NativeDB Added Parameter 4: Any p3
	 * ```
	 */
	@:native("TaskJump")
	static function taskJump(ped:Dynamic, unused:Bool):Dynamic;

	/**
	 * All parameters except ped, heli and speed are optional, with `pedTarget`, `vehicleTarget`, `x`, `y`, `z` being dependent on `missionType` (ie. Attack/Flee mission types require a target ped/vehicle, whereas GoTo mission types require either `x`, `y`, `z` or a target ped/vehicle).
	 * 
	 * If you don't want to use a parameter; pass `0.0f` for `x`, `y` and `z`, `0` for `pedTarget`, `vehicleTarget`, `0` for other int parameters, and `-1.0f` for the remaining float parameters.
	 * 
	 * ```cpp
	 * enum eHeliMissionFlags
	 * {
	 *   None = 0,
	 *   AttainRequestedOrientation = 1,
	 *   DontModifyOrientation = 2,
	 *   DontModifyPitch = 4,
	 *   DontModifyThrottle = 8,
	 *   DontModifyRoll = 16,
	 *   LandOnArrival = 32,
	 *   DontDoAvoidance = 64,
	 *   StartEngineImmediately = 128,
	 *   ForceHeightMapAvoidance = 256,
	 *   DontClampProbesToDestination = 512,
	 *   EnableTimeslicingWhenPossible = 1024,
	 *   CircleOppositeDirection = 2048,
	 *   MaintainHeightAboveTerrain = 4096,
	 *   IgnoreHiddenEntitiesDuringLand = 8192,
	 *   DisableAllHeightMapAvoidance = 16384,
	 *   // ForceHeightMapAvoidance | DontDoAvoidance
	 *   HeightMapOnlyAvoidance = 320,
	 * }
	 * ```
	 */
	@:native("TaskHeliMission")
	static function taskHeliMission(ped:Dynamic, heli:Dynamic, vehicleTarget:Dynamic, pedTarget:Dynamic, x:Float, y:Float, z:Float, missionType:Int, speed:Float, radius:Float, heading:Float, height:Float, minHeight:Float, slowDist:Float, missionFlags:Int):Dynamic;

	/**
	 * ```
	 * Used only once in the scripts (am_mp_nightclub)
	 * ```
	 * 
	 * ```
	 * Used only once in the scripts (am_mp_nightclub)
	 * 
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("TaskMoveNetworkByNameWithInitParams")
	static function TaskMoveNetworkByNameWithInitParams(ped:Dynamic, p1:String, data:Dynamic, p3:Float, p4:Bool, animDict:String, flags:Int):Dynamic;

	/**
	 * ```
	 * Ped pilot should be in a heli.  
	 * EntityToFollow can be a vehicle or Ped.  
	 * x,y,z appear to be how close to the EntityToFollow the heli should be. Scripts use 0.0, 0.0, 80.0. Then the heli tries to position itself 80 units above the EntityToFollow. If you reduce it to -5.0, it tries to go below (if the EntityToFollow is a heli or plane)  
	 * NOTE: If the pilot finds enemies, it will engage them, then remain there idle, not continuing to chase the Entity given.  
	 * ```
	 */
	@:native("TaskHeliChase")
	static function taskHeliChase(pilot:Dynamic, entityToFollow:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * ```
	 * makes ped parachute to coords x y z. Works well with PATHFIND::GET_SAFE_COORD_FOR_PED  
	 * ```
	 */
	@:native("TaskParachuteToTarget")
	static function taskParachuteToTarget(ped:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("TaskLookAtCoord")
	static function taskLookAtCoord(entity:Dynamic, x:Float, y:Float, z:Float, duration:Int, p5:Dynamic, p6:Dynamic):Dynamic;

	/**
	 * ```
	 * Flags from decompiled scripts:  
	 * 0 = normal exit and closes door.  
	 * 1 = normal exit and closes door.  
	 * 16 = teleports outside, door kept closed.  (This flag does not seem to work for the front seats in buses, NPCs continue to exit normally)
	 * 64 = normal exit and closes door, maybe a bit slower animation than 0.  
	 * 256 = normal exit but does not close the door.  
	 * 4160 = ped is throwing himself out, even when the vehicle is still.  
	 * 262144 = ped moves to passenger seat first, then exits normally  
	 * Others to be tried out: 320, 512, 131072.  
	 * ```
	 */
	@:native("TaskLeaveVehicle")
	static function taskLeaveVehicle(ped:Dynamic, vehicle:Dynamic, flags:Int):Dynamic;

	/**
	 * ```
	 * Example:
	 * TASK::TASK_MOVE_NETWORK_ADVANCED_BY_NAME(PLAYER::PLAYER_PED_ID(), "minigame_tattoo_michael_parts", 324.13f, 181.29f, 102.6f, 0.0f, 0.0f, 22.32f, 2, 0, false, 0, 0);
	 * ```
	 */
	@:native("TaskMoveNetworkAdvancedByName")
	static function taskMoveNetworkAdvancedByName(ped:Dynamic, p1:String, p2:Float, p3:Float, p4:Float, p5:Float, p6:Float, p7:Float, p8:Dynamic, p9:Float, p10:Bool, animDict:String, flags:Int):Dynamic;

	/**
	 * For an example on how to use this please refer to [OPEN_SEQUENCE_TASK](#\_0xE8854A4326B9E12B)
	 */
	@:native("TaskPerformSequence")
	static function taskPerformSequence(ped:Dynamic, taskSequenceId:Int):Dynamic;

	/**
	 * The given ped will try to open the nearest door to 'seat'.
	 * 
	 * Example: telling the ped to open the door for the driver seat does not necessarily mean it will open the driver door, it may choose to open the passenger door instead if that one is closer.
	 */
	@:native("TaskOpenVehicleDoor")
	static function taskOpenVehicleDoor(ped:Dynamic, vehicle:Dynamic, timeOut:Int, seat:Int, speed:Float):Dynamic;

	/**
	 * Flags are the same flags used in [`TASK_LEAVE_VEHICLE`](#\_0xD3DBCE61A490BE02)
	 */
	@:native("TaskLeaveAnyVehicle")
	static function taskLeaveAnyVehicle(ped:Dynamic, p1:Int, flags:Int):Dynamic;

	/**
	 * ```
	 * Example:
	 * TASK::TASK_MOVE_NETWORK_BY_NAME(PLAYER::PLAYER_PED_ID(), "arm_wrestling_sweep_paired_a_rev3", 0.0f, true, "mini@arm_wrestling", 0);
	 * ```
	 */
	@:native("TaskMoveNetworkByName")
	static function taskMoveNetworkByName(ped:Dynamic, task:String, multiplier:Float, p3:Bool, animDict:String, flags:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TaskPerformSequenceFromProgress")
	static function taskPerformSequenceFromProgress(ped:Dynamic, taskIndex:Int, progress1:Int, progress2:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TaskPedSlideToCoord")
	static function taskPedSlideToCoord(ped:Dynamic, x:Float, y:Float, z:Float, heading:Float, duration:Float):Dynamic;

	/**
	 * ```
	 * This function has a third parameter as well (bool).  
	 * Second parameter is unused.  
	 * seconds parameter was for jetpack in the early stages of gta and the hard coded code is now removed  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 3: BOOL p2
	 * ```
	 */
	@:native("TaskParachute")
	static function taskParachute(ped:Dynamic, p1:Bool):Dynamic;

	/**
	 * ```
	 * After looking at some scripts the second parameter seems to be an id of some kind. Here are some I found from some R* scripts:
	 * "miss_Tower_01" (this went from 01 - 10)
	 * "miss_Ass0" (0, 4, 6, 3)
	 * "MISS_PATROL_8"
	 * I think they're patrol routes, but I'm not sure. And I believe the 3rd parameter is a BOOL, but I can't confirm other than only seeing 0 and 1 being passed.
	 * As far as I can see the patrol routes names such as "miss_Ass0" have been defined earlier in the scripts. This leads me to believe we can defined our own new patrol routes by following the same approach.
	 * From the scripts
	 *     TASK::OPEN_PATROL_ROUTE("miss_Ass0");
	 *     TASK::ADD_PATROL_ROUTE_NODE(0, "WORLD_HUMAN_GUARD_STAND", l_738[0/ *3* /], -139.4076690673828, -993.4732055664062, 26.2754, MISC::GET_RANDOM_INT_IN_RANGE(5000, 10000));
	 *     TASK::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_738[1/ *3* /], -116.1391830444336, -987.4984130859375, 26.38541030883789, MISC::GET_RANDOM_INT_IN_RANGE(5000, 10000));
	 *     TASK::ADD_PATROL_ROUTE_NODE(2, "WORLD_HUMAN_GUARD_STAND", l_738[2/ *3* /], -128.46847534179688, -979.0340576171875, 26.2754, MISC::GET_RANDOM_INT_IN_RANGE(5000, 10000));
	 *     TASK::ADD_PATROL_ROUTE_LINK(0, 1);
	 *     TASK::ADD_PATROL_ROUTE_LINK(1, 2);
	 *     TASK::ADD_PATROL_ROUTE_LINK(2, 0);
	 *     TASK::CLOSE_PATROL_ROUTE();
	 *     TASK::CREATE_PATROL_ROUTE();
	 * ```
	 */
	@:native("TaskPatrol")
	static function taskPatrol(ped:Dynamic, p1:String, p2:Dynamic, p3:Bool, p4:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("TaskPlaneLand")
	static function taskPlaneLand(pilot:Dynamic, plane:Dynamic, runwayStartX:Float, runwayStartY:Float, runwayStartZ:Float, runwayEndX:Float, runwayEndY:Float, runwayEndZ:Float):Dynamic;

	/**
	 * For an example on how to use this please refer to \[OPEN_SEQUENCE_TASK]\(#\_0xE8854A4326B9E12B
	 */
	@:native("TaskPerformSequenceLocally")
	static function taskPerformSequenceLocally(ped:Dynamic, taskSequenceId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TaskPedSlideToCoordHdgRate")
	static function taskPedSlideToCoordHdgRate(ped:Dynamic, x:Float, y:Float, z:Float, heading:Float, p5:Float, p6:Float):Dynamic;

	/**
	 * This tasks the ped to do nothing for the specified amount of miliseconds.
	 * This is useful if you want to add a delay between tasks when using a sequence task.
	 */
	@:native("TaskPause")
	static function taskPause(ped:Dynamic, ms:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TaskPlaneChase")
	static function taskPlaneChase(pilot:Dynamic, entityToFollow:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("TaskPlaneGotoPreciseVtol")
	static function TaskPlaneGotoPreciseVtol(ped:Dynamic, vehicle:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic, p7:Dynamic, p8:Dynamic, p9:Dynamic):Dynamic;

	/**
	 * ```
	 * EDITED (7/13/2017)  
	 * NOTE: If you want air combat, AI::TASK_COMBAT_PED (while your pilot is in an aircraft) also does the same thing as this native.  
	 * DESCRIPTION:  
	 * Ever wish your buddy could shoot down one of your enemies for you? Ever wanted an auto-pilot? Well look no further! This is the native for you! (Ped intelligence may vary)  
	 * USAGE:  
	 * -- REQUIRED --  
	 * • pilot = The ped flying the aircraft.  
	 * • aircraft = The aircraft the pilot is flying  
	 * -- OPTIONAL -- [atleast 1 must be assigned]  
	 * • targetVehicle = The vehicle the pilot will target.  
	 * • targetPed = The ped the pilot will target.  
	 * • destinationX, destinationY, destinationZ = The location the pilot will target.  
	 * -- LOGIC --  
	 * • missionFlag = The type of mission. pastebin.com/R8x73dbv  
	 * • angularDrag = The higher the value, the slower the plane will rotate. Value ranges from 0 - Infinity.  
	 * • unk = Set to 0, and you'll be fine.  
	 * • targetHeading = The target angle (from world space north) that the pilot will try to acheive before executing an attack/landing.  
	 * • maxZ = Maximum Z coordinate height for flying.  
	 * • minZ = Minimum Z coordinate height for flying.  
	 * Z: 2,700 is the default max height a pilot will be able to fly. Anything greater and he will fly downward until reaching 2,700 again.  
	 * Mission Types (incase you don't like links..):  
	 * 0 = None  
	 * 1 = Unk  
	 * 2 = CTaskVehicleRam  
	 * 3 = CTaskVehicleBlock  
	 * 4 = CTaskVehicleGoToPlane  
	 * 5 = CTaskVehicleStop  
	 * 6 = CTaskVehicleAttack  
	 * 7 = CTaskVehicleFollow  
	 * 8 = CTaskVehicleFleeAirborne  
	 * 9 = CTaskVehicleCircle  
	 * 10 = CTaskVehicleEscort  
	 * 15 = CTaskVehicleFollowRecording  
	 * 16 = CTaskVehiclePoliceBehaviour  
	 * 17 = CTaskVehicleCrash  
	 * Example C#:  
	 * Function.Call(Hash.TASK_PLANE_MISSION, pilot, vehicle, 0, Game.Player.Character, 0, 0, 0, 6, 0f, 0f, 0f, 2500.0f, -1500f);  
	 * Example C++  
	 * AI::TASK_PLANE_MISSION(pilot, vehicle, 0, PLAYER::GET_PLAYER_PED(PLAYER::GET_PLAYER_INDEX()), 0, 0, 0, 6, 0.0, 0.0, 0.0, 2500.0, -1500.0);  
	 * [DEPRECATED] EXAMPLE USAGE:  
	 * pastebin.com/gx7Finsk  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 14: Any p13
	 * ```
	 */
	@:native("TaskPlaneMission")
	static function taskPlaneMission(pilot:Dynamic, aircraft:Dynamic, targetVehicle:Dynamic, targetPed:Dynamic, destinationX:Float, destinationY:Float, destinationZ:Float, missionFlag:Int, angularDrag:Float, unk:Float, targetHeading:Float, maxZ:Float, minZ:Float):Dynamic;

	/**
	 * The given ped will try to drive the plane to the given coordinates and will then drive around the given coords (the plane will form 8s on the ground)
	 */
	@:native("TaskPlaneTaxi")
	static function taskPlaneTaxi(pilot:Dynamic, aircraft:Dynamic, xPos:Float, yPos:Float, zPos:Float, fCruiseSpeed:Float, fTargetReachedDist:Float):Dynamic;

	/**
	 * 
	 */
	@:native("TaskPlantBomb")
	static function taskPlantBomb(ped:Dynamic, x:Float, y:Float, z:Float, heading:Float):Dynamic;

	/**
	 * Similar in functionality to [`TASK_PLAY_ANIM`](#\_0xEA47FE3719165B94), except the position and rotation parameters let you specify the initial position and rotation of the task. The ped is teleported to the position specified.
	 * 
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("TaskPlayAnimAdvanced")
	static function taskPlayAnimAdvanced(ped:Dynamic, animDictionary:String, animationName:String, posX:Float, posY:Float, posZ:Float, rotX:Float, rotY:Float, rotZ:Float, blendInSpeed:Float, blendOutSpeed:Float, duration:Int, flag:Dynamic, animTime:Float, p14:Dynamic, p15:Dynamic):Dynamic;

	/**
	 * ```
	 * Example from the scripts:
	 * TASK::TASK_PLAY_PHONE_GESTURE_ANIMATION(PLAYER::PLAYER_PED_ID(), v_3, v_2, v_4, 0.25, 0.25, 0, 0);
	 * =========================================================
	 * ^^ No offense, but Idk how that would really help anyone.
	 * As for the animDict & animation, they're both store in a global in all 5 scripts. So if anyone would be so kind as to read that global and comment what strings they use. Thanks.
	 * Known boneMaskTypes'
	 * "BONEMASK_HEADONLY"
	 * "BONEMASK_HEAD_NECK_AND_ARMS"
	 * "BONEMASK_HEAD_NECK_AND_L_ARM"
	 * "BONEMASK_HEAD_NECK_AND_R_ARM"
	 * p4 known args - 0.0f, 0.5f, 0.25f
	 * p5 known args - 0.0f, 0.25f
	 * p6 known args - 1 if a global if check is passed.
	 * p7 known args - 1 if a global if check is passed.
	 * The values found above, I found within the 5 scripts this is ever called in. (fmmc_launcher, fm_deathmatch_controller, fm_impromptu_dm_controller, fm_mission_controller, and freemode).
	 * =========================================================
	 * ```
	 */
	@:native("TaskPlayPhoneGestureAnimation")
	static function taskPlayPhoneGestureAnimation(ped:Dynamic, animDict:String, animation:String, boneMaskType:String, p4:Float, p5:Float, p6:Bool, p7:Bool):Dynamic;

	/**
	 * ```
	 * from armenian3.c4
	 * TASK::TASK_PUT_PED_DIRECTLY_INTO_MELEE(PlayerPed, armenianPed, 0.0, -1.0, 0.0, 0);
	 * ```
	 */
	@:native("TaskPutPedDirectlyIntoMelee")
	static function taskPutPedDirectlyIntoMelee(ped:Dynamic, meleeTarget:Dynamic, p2:Float, p3:Float, p4:Float, p5:Bool):Dynamic;

	/**
	 * ```
	 * Only appears twice in the scripts.
	 * TASK::TASK_RAPPEL_FROM_HELI(PLAYER::PLAYER_PED_ID(), 0x41200000);
	 * TASK::TASK_RAPPEL_FROM_HELI(a_0, 0x41200000);
	 * ```
	 */
	@:native("TaskRappelFromHeli")
	static function taskRappelFromHeli(ped:Dynamic, unused:Float):Dynamic;

	/**
	 * 
	 */
	@:native("TaskPutPedDirectlyIntoCover")
	static function taskPutPedDirectlyIntoCover(ped:Dynamic, x:Float, y:Float, z:Float, timeout:Dynamic, p5:Bool, p6:Float, p7:Bool, p8:Bool, p9:Dynamic, p10:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("TaskSeekCoverFromPed")
	static function taskSeekCoverFromPed(ped:Dynamic, target:Dynamic, duration:Int, p3:Bool):Dynamic;

	/**
	 * Attaches a ped to a rope and allows player control to rappel down a wall.
	 * Disables all collisions while on the rope.
	 * 
	 * NativeDB Introduced: v1868
	 */
	@:native("TaskRappelDownWall")
	static function TaskRappelDownWall(ped:Dynamic, x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, minZ:Float, ropeId:Int, clipset:String, p10:Dynamic):Dynamic;

	/**
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 * 
	 * ```cpp
	 * enum eScriptedAnimFlags
	 * {
	 *     AF_LOOPING = 1,
	 *     AF_HOLD_LAST_FRAME = 2,
	 *     AF_REPOSITION_WHEN_FINISHED = 4,
	 *     AF_NOT_INTERRUPTABLE = 8,
	 *     AF_UPPERBODY = 16,
	 *     AF_SECONDARY = 32,
	 *     AF_REORIENT_WHEN_FINISHED = 64,
	 *     AF_ABORT_ON_PED_MOVEMENT = 128,
	 *     AF_ADDITIVE = 256,
	 *     AF_TURN_OFF_COLLISION = 512,
	 *     AF_OVERRIDE_PHYSICS = 1024,
	 *     AF_IGNORE_GRAVITY = 2048,
	 *     AF_EXTRACT_INITIAL_OFFSET = 4096,
	 *     AF_EXIT_AFTER_INTERRUPTED = 8192,
	 *     AF_TAG_SYNC_IN = 16384,
	 *     AF_TAG_SYNC_OUT = 32768,
	 *     AF_TAG_SYNC_CONTINUOUS = 65536,
	 *     AF_FORCE_START = 131072,
	 *     AF_USE_KINEMATIC_PHYSICS = 262144,
	 *     AF_USE_MOVER_EXTRACTION = 524288,
	 *     AF_HIDE_WEAPON = 1048576,
	 *     AF_ENDS_IN_DEAD_POSE = 2097152,
	 *     AF_ACTIVATE_RAGDOLL_ON_COLLISION = 4194304,
	 *     AF_DONT_EXIT_ON_DEATH = 8388608,
	 *     AF_ABORT_ON_WEAPON_DAMAGE = 16777216,
	 *     AF_DISABLE_FORCED_PHYSICS_UPDATE = 33554432,
	 *     AF_PROCESS_ATTACHMENTS_ON_START = 67108864,
	 *     AF_EXPAND_PED_CAPSULE_FROM_SKELETON = 134217728,
	 *     AF_USE_ALTERNATIVE_FP_ANIM = 268435456,
	 *     AF_BLENDOUT_WRT_LAST_FRAME = 536870912,
	 *     AF_USE_FULL_BLENDING = 1073741824
	 * }
	 * ```
	 */
	@:native("TaskPlayAnim")
	static function taskPlayAnim(ped:Dynamic, animDictionary:String, animationName:String, blendInSpeed:Float, blendOutSpeed:Float, duration:Int, flag:Int, playbackRate:Float, lockX:Bool, lockY:Bool, lockZ:Bool):Dynamic;

	/**
	 * ```
	 * From fm_mission_controller.c:  
	 * reserve_network_mission_objects(get_num_reserved_mission_objects(0) + 1);  
	 * 	vVar28 = {0.094f, 0.02f, -0.005f};  
	 * 	vVar29 = {-92.24f, 63.64f, 150.24f};  
	 * 	func_253(&uVar30, joaat("prop_ld_case_01"), Global_1592429.imm_34757[iParam1 <268>], 1, 1, 0, 1);  
	 * 	set_entity_lod_dist(net_to_ent(uVar30), 500);  
	 * 	attach_entity_to_entity(net_to_ent(uVar30), iParam0, get_ped_bone_index(iParam0, 28422), vVar28, vVar29, 1, 0, 0, 0, 2, 1);  
	 * 	Var31.imm_4 = 1065353216;  
	 * 	Var31.imm_5 = 1065353216;  
	 * 	Var31.imm_9 = 1065353216;  
	 * 	Var31.imm_10 = 1065353216;  
	 * 	Var31.imm_14 = 1065353216;  
	 * 	Var31.imm_15 = 1065353216;  
	 * 	Var31.imm_17 = 1040187392;  
	 * 	Var31.imm_18 = 1040187392;  
	 * 	Var31.imm_19 = -1;  
	 * 	Var32.imm_4 = 1065353216;  
	 * 	Var32.imm_5 = 1065353216;  
	 * 	Var32.imm_9 = 1065353216;  
	 * 	Var32.imm_10 = 1065353216;  
	 * 	Var32.imm_14 = 1065353216;  
	 * 	Var32.imm_15 = 1065353216;  
	 * 	Var32.imm_17 = 1040187392;  
	 * 	Var32.imm_18 = 1040187392;  
	 * 	Var32.imm_19 = -1;  
	 * 	Var31 = 1;  
	 * 	Var31.imm_1 = "weapons@misc@jerrycan@mp_male";  
	 * 	Var31.imm_2 = "idle";  
	 * 	Var31.imm_20 = 1048633;  
	 * 	Var31.imm_4 = 0.5f;  
	 * 	Var31.imm_16 = get_hash_key("BONEMASK_ARMONLY_R");  
	 * 	task_scripted_animation(iParam0, &Var31, &Var32, &Var32, 0f, 0.25f);  
	 * 	set_model_as_no_longer_needed(joaat("prop_ld_case_01"));  
	 * 	remove_anim_dict("anim@heists@biolab@");  
	 * ```
	 */
	@:native("TaskScriptedAnimation")
	static function taskScriptedAnimation(ped:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Float, p5:Float):Dynamic;

	/**
	 * ```
	 * The 2nd param (unused) is not implemented.
	 * -----------------------------------------------------------------------
	 * The only occurrence I found in a R* script ("assassin_construction.ysc.c4"):
	 *             if (((v_3 < v_4) && (TASK::GET_SCRIPT_TASK_STATUS(PLAYER::PLAYER_PED_ID(), 0x6a67a5cc) != 1)) && (v_5 > v_3)) {
	 *                 TASK::TASK_RELOAD_WEAPON(PLAYER::PLAYER_PED_ID(), 1);
	 *             }
	 * ```
	 */
	@:native("TaskReloadWeapon")
	static function taskReloadWeapon(ped:Dynamic, unused:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("TaskReactAndFleePed")
	static function taskReactAndFleePed(ped:Dynamic, fleeTarget:Dynamic):Dynamic;

	/**
	 * ```
	 * from michael2:
	 * TASK::TASK_SEEK_COVER_TO_COORDS(ped, 967.5164794921875, -2121.603515625, 30.479299545288086, 978.94677734375, -2125.84130859375, 29.4752, -1, 1);
	 * appears to be shorter variation
	 * from michael3:
	 * TASK::TASK_SEEK_COVER_TO_COORDS(ped, -2231.011474609375, 263.6326599121094, 173.60195922851562, -1, 0);
	 * ```
	 */
	@:native("TaskSeekCoverToCoords")
	static function taskSeekCoverToCoords(ped:Dynamic, x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, p7:Dynamic, p8:Bool):Dynamic;

	/**
	 * ```
	 * I cant believe I have to define this, this is one of the best natives.  
	 * It makes the ped ignore basically all shocking events around it. Occasionally the ped may comment or gesture, but other than that they just continue their daily activities. This includes shooting and wounding the ped. And - most importantly - they do not flee.  
	 * Since it is a task, every time the native is called the ped will stop for a moment.  
	 * ```
	 */
	@:native("TaskSetBlockingOfNonTemporaryEvents")
	static function taskSetBlockingOfNonTemporaryEvents(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("TaskSeekCoverToCoverPoint")
	static function taskSeekCoverToCoverPoint(p0:Dynamic, p1:Dynamic, p2:Float, p3:Float, p4:Float, p5:Dynamic, p6:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("TaskSeekCoverFromPos")
	static function taskSeekCoverFromPos(ped:Dynamic, x:Float, y:Float, z:Float, duration:Int, p5:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("TaskShockingEventReact")
	static function taskShockingEventReact(ped:Dynamic, eventHandle:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TaskSetSphereDefensiveArea")
	static function taskSetSphereDefensiveArea(p0:Dynamic, p1:Float, p2:Float, p3:Float, p4:Float):Dynamic;

	/**
	 * ```
	 * //this part of the code is to determine at which entity the player is aiming, for example if you want to create a mod where you give orders to peds
	 * Entity aimedentity;
	 * Player player = PLAYER::PLAYER_ID();
	 * PLAYER::_GET_AIMED_ENTITY(player, &aimedentity);
	 * //bg is an array of peds
	 * TASK::TASK_SHOOT_AT_ENTITY(bg[i], aimedentity, 5000, MISC::GET_HASH_KEY("FIRING_PATTERN_FULL_AUTO"));
	 * in practical usage, getting the entity the player is aiming at and then task the peds to shoot at the entity, at a button press event would be better.
	 * Firing Pattern Hash Information: https://pastebin.com/Px036isB
	 * ```
	 */
	@:native("TaskShootAtEntity")
	static function taskShootAtEntity(entity:Dynamic, target:Dynamic, duration:Int, firingPattern:Int):Dynamic;

	/**
	 * ```
	 * p1 is always GET_HASH_KEY("empty") in scripts, for the rare times this is used  
	 * ```
	 */
	@:native("TaskSetDecisionMaker")
	static function taskSetDecisionMaker(ped:Dynamic, p1:Int):Dynamic;

	/**
	 * ```
	 * Makes the specified ped flee the specified distance from the specified position.  
	 * ```
	 */
	@:native("TaskSmartFleeCoord")
	static function taskSmartFleeCoord(ped:Dynamic, x:Float, y:Float, z:Float, distance:Float, time:Int, p6:Bool, p7:Bool):Dynamic;

	/**
	 * Puts the ped into the given scenario immediately at their current location. [List of scenario names](https://pastebin.com/6mrYTdQv) or in `update/update.rpf/common/data/ai/scenarios.meta`.
	 */
	@:native("TaskStartScenarioInPlace")
	static function taskStartScenarioInPlace(ped:Dynamic, scenarioName:String, timeToLeave:Int, playIntroClip:Bool):Dynamic;

	/**
	 * ```
	 * Makes the specified ped shuffle to the next vehicle seat.  
	 * The ped MUST be in a vehicle and the vehicle parameter MUST be the ped's current vehicle.  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 3: Any p2
	 * ```
	 */
	@:native("TaskShuffleToNextVehicleSeat")
	static function taskShuffleToNextVehicleSeat(ped:Dynamic, vehicle:Dynamic):Dynamic;

	/**
	 * The ped will move or warp to the position and heading given, then start the scenario passed. See [`TASK_START_SCENARIO_IN_PLACE`](#\_0x142A02425FF02BD9) for a list of scenarios.
	 */
	@:native("TaskStartScenarioAtPosition")
	static function taskStartScenarioAtPosition(ped:Dynamic, scenarioName:String, x:Float, y:Float, z:Float, heading:Float, timeToLeave:Int, playIntro:Bool, warp:Bool):Dynamic;

	/**
	 * ```
	 * Makes a ped run away from another ped (fleeTarget).  
	 * distance = ped will flee this distance.  
	 * fleeTime = ped will flee for this amount of time, set to "-1" to flee forever  
	 * ```
	 */
	@:native("TaskSmartFleePed")
	static function taskSmartFleePed(ped:Dynamic, fleeTarget:Dynamic, distance:Float, fleeTime:Dynamic, p4:Bool, p5:Bool):Dynamic;

	/**
	 * ```
	 * Stealth kill action name hashes:  
	 * stealth kills can be found here: Grand Theft Auto V\common.rpf\data\action\stealth_kills.meta  
	 * ...  
	 * {  
	 *     "ACT_stealth_kill_a",  
	 *     "ACT_stealth_kill_weapon",  
	 *     "ACT_stealth_kill_b",  
	 *     "ACT_stealth_kill_c",  
	 *     "ACT_stealth_kill_d",  
	 *     "ACT_stealth_kill_a_gardener"  
	 * }  
	 * Only known script using this native: fbi4_prep2  
	 * EXAMPLE:  
	 * ai::task_stealth_kill(iParam1, Local_252, gameplay::get_hash_key("AR_stealth_kill_a"), 1f, 0);ai::task_stealth_kill(iParam1, Local_252, gameplay::get_hash_key("AR_stealth_kill_knife"), 1f, 0);  
	 * Also it may be important to note, that each time this task is called, it's followed by AI::CLEAR_PED_TASKS on the target  
	 * ```
	 */
	@:native("TaskStealthKill")
	static function taskStealthKill(killer:Dynamic, target:Dynamic, actionType:Int, p3:Float, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * Firing Pattern Hash Information: https://pastebin.com/Px036isB
	 * ```
	 */
	@:native("TaskShootAtCoord")
	static function taskShootAtCoord(ped:Dynamic, x:Float, y:Float, z:Float, duration:Int, firingPattern:Int):Dynamic;

	/**
	 * Used in am_vehicle_spawn.ysc and am_mp_submarine.ysc.
	 * p0 is always 0, p5 is always 1
	 * p1 is the vehicle handle of the submarine. Submarine must have a driver, but the ped handle is not passed to the native.
	 * Speed can be set by calling SET_DRIVE_TASK_CRUISE_SPEED after
	 * 
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("TaskSubmarineGotoAndStop")
	static function TaskSubmarineGotoAndStop(p0:Dynamic, submarine:Dynamic, x:Float, y:Float, z:Float, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * scenarioName example: "WORLD_HUMAN_GUARD_STAND"  
	 * ```
	 */
	@:native("TaskStandGuard")
	static function taskStandGuard(ped:Dynamic, x:Float, y:Float, z:Float, heading:Float, scenarioName:String):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 2: BOOL p1
	 * ```
	 */
	@:native("TaskSkyDive")
	static function taskSkyDive(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("TaskSweepAimPosition")
	static function taskSweepAimPosition(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Float, p7:Float, p8:Float, p9:Float, p10:Float):Dynamic;

	/**
	 * ```
	 * Makes the ped run to take cover  
	 * ```
	 */
	@:native("TaskStayInCover")
	static function taskStayInCover(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * Makes the specified ped stand still for (time) milliseconds.  
	 * ```
	 */
	@:native("TaskStandStill")
	static function taskStandStill(ped:Dynamic, time:Int):Dynamic;

	/**
	 * ```
	 * In every case of this native, I've only seen the first parameter passed as 0, although I believe it's a Ped after seeing tasks around it using 0. That's because it's used in a Sequence Task.  
	 * The last 3 parameters are definitely coordinates after seeing them passed in other scripts, and even being used straight from the player's coordinates.  
	 * ---  
	 * It seems that - in the decompiled scripts - this native was used on a ped who was in a vehicle to throw a projectile out the window at the player. This is something any ped will naturally do if they have a throwable and they are doing driveby-combat (although not very accurately).  
	 * It is possible, however, that this is how SWAT throws smoke grenades at the player when in cover.  
	 * ----------------------------------------------------  
	 * The first comment is right it definately is the ped as if you look in script finale_heist2b.c line 59628 in Xbox Scripts atleast you will see task_throw_projectile and the first param is Local_559[2 <14>] if you look above it a little bit line 59622 give_weapon_to_ped uses the same exact param Local_559[2 <14>] and we all know the first param of that native is ped. So it guaranteed has to be ped. 0 just may mean to use your ped by default for some reason.  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 5: Any p4
	 * NativeDB Added Parameter 6: Any p5
	 * ```
	 */
	@:native("TaskThrowProjectile")
	static function taskThrowProjectile(ped:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("TaskSwapWeapon")
	static function taskSwapWeapon(ped:Dynamic, p1:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("TaskStopPhoneGestureAnimation")
	static function taskStopPhoneGestureAnimation(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("TaskUseMobilePhoneTimed")
	static function taskUseMobilePhoneTimed(ped:Dynamic, duration:Int):Dynamic;

	/**
	 * ```
	 * used in sequence task  
	 * both parameters seems to be always 0  
	 * ```
	 */
	@:native("TaskToggleDuck")
	static function taskToggleDuck(p0:Bool, p1:Bool):Dynamic;

	/**
	 * ```
	 * Updated variables
	 * An alternative to TASK::TASK_USE_NEAREST_SCENARIO_TO_COORD_WARP. Makes the ped walk to the scenario instead.
	 * ```
	 */
	@:native("TaskUseNearestScenarioToCoord")
	static function taskUseNearestScenarioToCoord(ped:Dynamic, x:Float, y:Float, z:Float, distance:Float, duration:Int):Dynamic;

	/**
	 * ```
	 * duration: the amount of time in milliseconds to do the task. -1 will keep the task going until either another task is applied, or CLEAR_ALL_TASKS() is called with the ped  
	 * ```
	 */
	@:native("TaskTurnPedToFaceEntity")
	static function taskTurnPedToFaceEntity(ped:Dynamic, entity:Dynamic, duration:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TaskUseNearestScenarioToCoordWarp")
	static function taskUseNearestScenarioToCoordWarp(ped:Dynamic, x:Float, y:Float, z:Float, radius:Float, p5:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("TaskUseNearestScenarioChainToCoord")
	static function taskUseNearestScenarioChainToCoord(p0:Dynamic, p1:Float, p2:Float, p3:Float, p4:Float, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * Actually has 3 params, not 2.  
	 * p0: Ped  
	 * p1: int (or bool?)  
	 * p2: int  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 3: Any p2
	 * ```
	 */
	@:native("TaskUseMobilePhone")
	static function taskUseMobilePhone(ped:Dynamic, p1:Int):Dynamic;

	/**
	 * ```
	 * This function is called on peds in vehicles.  
	 * anim: animation name  
	 * p2, p3, p4: "sweep_low", "sweep_med" or "sweep_high"  
	 * p5: no idea what it does but is usually -1  
	 * ```
	 */
	@:native("TaskSweepAimEntity")
	static function taskSweepAimEntity(ped:Dynamic, anim:String, p2:String, p3:String, p4:String, p5:Int, vehicle:Dynamic, p7:Float, p8:Float):Dynamic;

	/**
	 * 
	 */
	@:native("TaskUseNearestScenarioChainToCoordWarp")
	static function taskUseNearestScenarioChainToCoordWarp(p0:Dynamic, p1:Float, p2:Float, p3:Float, p4:Float, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * chases targetEnt fast and aggressively  
	 * --  
	 * Makes ped (needs to be in vehicle) chase targetEnt.  
	 * ```
	 */
	@:native("TaskVehicleChase")
	static function taskVehicleChase(driver:Dynamic, targetEnt:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("TaskVehicleAimAtCoord")
	static function taskVehicleAimAtCoord(ped:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * ```
	 * Makes a ped follow the targetVehicle with <minDistance> in between.  
	 * note: minDistance is ignored if drivingstyle is avoiding traffic, but Rushed is fine.  
	 * Mode: The mode defines the relative position to the targetVehicle. The ped will try to position its vehicle there.  
	 * -1 = behind  
	 * 0 = ahead  
	 * 1 = left  
	 * 2 = right  
	 * 3 = back left  
	 * 4 = back right  
	 * if the target is closer than noRoadsDistance, the driver will ignore pathing/roads and follow you directly.  
	 * Driving Styles guide: gtaforums.com/topic/822314-guide-driving-styles/  
	 * ```
	 */
	@:native("TaskVehicleEscort")
	static function taskVehicleEscort(ped:Dynamic, vehicle:Dynamic, targetVehicle:Dynamic, mode:Int, speed:Float, drivingStyle:Int, minDistance:Float, p7:Int, noRoadsDistance:Float):Dynamic;

	/**
	 * ```
	 *  TASK::TASK_SYNCHRONIZED_SCENE(ped, scene, "creatures@rottweiler@in_vehicle@std_car", "get_in", 1000.0, -8.0, 4, 0, 0x447a0000, 0);
	 * ```
	 */
	@:native("TaskSynchronizedScene")
	static function taskSynchronizedScene(ped:Dynamic, scene:Int, animDictionary:String, animationName:String, speed:Float, speedMultiplier:Float, duration:Int, flag:Int, playbackRate:Float, p9:Dynamic):Dynamic;

	/**
	 * ```
	 * info about driving modes: HTTP://gtaforums.com/topic/822314-guide-driving-styles/  
	 * ---------------------------------------------------------------  
	 * Passing P6 value as floating value didn't throw any errors, though unsure what is it exactly, looks like radius or something.  
	 * P10 though, it is mentioned as float, however, I used bool and set it to true, that too worked.  
	 * Here the e.g. code I used  
	 * Function.Call(Hash.TASK_VEHICLE_DRIVE_TO_COORD, Ped, Vehicle, Cor X, Cor Y, Cor Z, 30f, 1f, Vehicle.GetHashCode(), 16777216, 1f, true);  
	 * ```
	 */
	@:native("TaskVehicleDriveToCoord")
	static function taskVehicleDriveToCoord(ped:Dynamic, vehicle:Dynamic, x:Float, y:Float, z:Float, speed:Float, p6:Dynamic, vehicleModel:Int, drivingMode:Int, stopRange:Float, p10:Float):Dynamic;

	/**
	 * ```
	 * duration in milliseconds  
	 * ```
	 */
	@:native("TaskTurnPedToFaceCoord")
	static function taskTurnPedToFaceCoord(ped:Dynamic, x:Float, y:Float, z:Float, duration:Int):Dynamic;

	/**
	 * ```
	 * Differs from TASK_VEHICLE_DRIVE_TO_COORDS in that it will pick the shortest possible road route without taking one-way streets and other "road laws" into consideration.  
	 * WARNING:  
	 * A behaviorFlag value of 0 will result in a clunky, stupid driver!  
	 * Recommended settings:  
	 * speed = 30.0f,  
	 * behaviorFlag = 156,   
	 * stoppingRange = 5.0f;  
	 * If you simply want to have your driver move to a fixed location, call it only once, or, when necessary in the event of interruption.   
	 * If using this to continually follow a Ped who is on foot:  You will need to run this in a tick loop.  Call it in with the Ped's updated coordinates every 20 ticks or so and you will have one hell of a smart, fast-reacting NPC driver -- provided he doesn't get stuck.  If your update frequency is too fast, the Ped may not have enough time to figure his way out of being stuck, and thus, remain stuck.  One way around this would be to implement an "anti-stuck" mechanism, which allows the driver to realize he's stuck, temporarily pause the tick, unstuck, then resume the tick.  
	 * EDIT:  This is being discussed in more detail at http://gtaforums.com/topic/818504-any-idea-on-how-to-make-peds-clever-and-insanely-fast-c/  
	 * ```
	 */
	@:native("TaskVehicleGotoNavmesh")
	static function taskVehicleGotoNavmesh(ped:Dynamic, vehicle:Dynamic, x:Float, y:Float, z:Float, speed:Float, behaviorFlag:Int, stoppingRange:Float):Dynamic;

	/**
	 * You can let your character drive to the destination at the speed and driving style you set. You can use map marks to set the destination.
	 * 
	 * ```cpp
	 * enum eDriveBehaviorFlags {
	 *   DF_StopForCars = 1,
	 *   DF_StopForPeds = 2,
	 *   DF_SwerveAroundAllCars = 4,
	 *   DF_SteerAroundStationaryCars = 8,
	 *   DF_SteerAroundPeds = 16,
	 *   DF_SteerAroundObjects = 32,
	 *   DF_DontSteerAroundPlayerPed = 64,
	 *   DF_StopAtLights = 128,
	 *   DF_GoOffRoadWhenAvoiding = 256,
	 *   DF_DriveIntoOncomingTraffic = 512,
	 *   DF_DriveInReverse = 1024,
	 *   DF_UseWanderFallbackInsteadOfStraightLine = 2048,
	 *   DF_AvoidRestrictedAreas = 4096,
	 *   DF_PreventBackgroundPathfinding = 8192, // **These only work on MISSION_CRUISE**
	 *   DF_AdjustCruiseSpeedBasedOnRoadSpeed = 16384,
	 *   DF_UseShortCutLinks = 262144,
	 *   DF_ChangeLanesAroundObstructions = 524288,
	 *   DF_UseSwitchedOffNodes = 2097152,	//cruise tasks ignore this anyway--only used for goto's
	 *   DF_PreferNavmeshRoute = 4194304,	//if you're going to be primarily driving off road
	 *   DF_PlaneTaxiMode = 8388608, // Only works for planes using MISSION_GOTO, will cause them to drive along the ground instead of fly
	 *   DF_ForceStraightLine = 16777216,
	 *   DF_UseStringPullingAtJunctions = 33554432,
	 *   DF_AvoidHighways = 536870912,
	 *   DF_ForceJoinInRoadDirection = 1073741824
	 * }
	 * ```
	 */
	@:native("TaskVehicleDriveToCoordLongrange")
	static function taskVehicleDriveToCoordLongrange(ped:Dynamic, vehicle:Dynamic, x:Float, y:Float, z:Float, speed:Float, drivingStyle:Int, stopRange:Float):Dynamic;

	/**
	 * 
	 */
	@:native("TaskVehicleAimAtPed")
	static function taskVehicleAimAtPed(ped:Dynamic, target:Dynamic):Dynamic;

	/**
	 * All parameters except ped, vehicle, vehicleTarget and speed are optional; with `missionType` being only those that require a target entity.
	 * 
	 * If you don't want to use a parameter; pass `0` for int parameters, and `-1.0f` for the remaining float parameters.
	 * 
	 * ```cpp
	 * enum eVehicleMissionType
	 * {
	 *   None = 0,
	 *   Cruise = 1,
	 *   Ram = 2,
	 *   Block = 3,
	 *   GoTo = 4,
	 *   Stop = 5,
	 *   Attack = 6,
	 *   Follow = 7,
	 *   Flee = 8,
	 *   Circle = 9,
	 *   Escort = 12,
	 *   GoToRacing = 14,
	 *   FollowRecording = 15,
	 *   PoliceBehaviour = 16,
	 *   Land = 19,
	 *   LandAndWait = 20,
	 *   Crash = 21,
	 *   PullOver = 22,
	 *   HeliProtect = 23
	 * }
	 * ```
	 */
	@:native("TaskVehicleMission")
	static function taskVehicleMission(ped:Dynamic, vehicle:Dynamic, vehicleTarget:Dynamic, missionType:Int, speed:Float, drivingStyle:Int, radius:Float, straightLineDist:Float, DriveAgainstTraffic:Bool):Dynamic;

	/**
	 * ```
	 * pilot, vehicle and altitude are rather self-explanatory.  
	 * p4: is unused variable in the function.  
	 * entityToFollow: you can provide a Vehicle entity or a Ped entity, the heli will protect them.  
	 * 'targetSpeed':  The pilot will dip the nose AS MUCH AS POSSIBLE so as to reach this value AS FAST AS POSSIBLE.  As such, you'll want to modulate it as opposed to calling it via a hard-wired, constant #.  
	 * 'radius' isn't just "stop within radius of X of target" like with ground vehicles.  In this case, the pilot will fly an entire circle around 'radius' and continue to do so.  
	 * NOT CONFIRMED:  p7 appears to be a FlyingStyle enum.  Still investigating it as of this writing, but playing around with values here appears to result in different -behavior- as opposed to offsetting coordinates, altitude, target speed, etc.  
	 * NOTE: If the pilot finds enemies, it will engage them until it kills them, but will return to protect the ped/vehicle given shortly thereafter.  
	 * ```
	 */
	@:native("TaskVehicleHeliProtect")
	static function taskVehicleHeliProtect(pilot:Dynamic, vehicle:Dynamic, entityToFollow:Dynamic, targetSpeed:Float, p4:Int, radius:Float, altitude:Int, p7:Int):Dynamic;

	/**
	 * ```
	 * Makes a ped in a vehicle follow an entity (ped, vehicle, etc.)
	 * drivingStyle: http://gtaforums.com/topic/822314-guide-driving-styles/
	 * ```
	 */
	@:native("TaskVehicleFollow")
	static function taskVehicleFollow(driver:Dynamic, vehicle:Dynamic, targetEntity:Dynamic, speed:Float, drivingStyle:Int, minDistance:Int):Dynamic;

	/**
	 * Drive randomly with no destination set.
	 */
	@:native("TaskVehicleDriveWander")
	static function taskVehicleDriveWander(ped:Dynamic, vehicle:Dynamic, speed:Float, drivingStyle:Int):Dynamic;

	/**
	 * All parameters except ped, vehicle, x, y, z and speed are optional; with `missionType` being only those that don't require a target entity.
	 * 
	 * If you don't want to use a parameter; pass `0` for int parameters, and `-1.0f` for the remaining float parameters.
	 */
	@:native("TaskVehicleMissionCoorsTarget")
	static function taskVehicleMissionCoorsTarget(ped:Dynamic, vehicle:Dynamic, x:Float, y:Float, z:Float, missionType:Int, speed:Float, drivingStyle:Int, radius:Float, straightLineDist:Float, DriveAgainstTraffic:Bool):Dynamic;

	/**
	 * All parameters except ped, vehicle, pedTarget and speed are optional; with `missionType` being only those that require a target entity.
	 * 
	 * If you don't want to use a parameter; pass `0` for int parameters, and `-1.0f` for the remaining float parameters.
	 */
	@:native("TaskVehicleMissionPedTarget")
	static function taskVehicleMissionPedTarget(ped:Dynamic, vehicle:Dynamic, pedTarget:Dynamic, missionType:Int, speed:Float, drivingStyle:Int, radius:Float, straightLineDist:Float, DriveAgainstTraffic:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("TaskVehicleShootAtCoord")
	static function taskVehicleShootAtCoord(ped:Dynamic, x:Float, y:Float, z:Float, p4:Float):Dynamic;

	/**
	 * ```
	 * Most probably plays a specific animation on vehicle. For example getting chop out of van etc...
	 * Here's how its used -
	 * TASK::TASK_VEHICLE_PLAY_ANIM(l_325, "rcmnigel1b", "idle_speedo");
	 * TASK::TASK_VEHICLE_PLAY_ANIM(l_556[0/ *1* /], "missfra0_chop_drhome", "InCar_GetOutofBack_Speedo");
	 * FYI : Speedo is the name of van in which chop was put in the mission.
	 * ```
	 */
	@:native("TaskVehiclePlayAnim")
	static function taskVehiclePlayAnim(vehicle:Dynamic, animationSet:String, animationName:String):Dynamic;

	/**
	 * Gives the vehicle a temporary action.
	 * 
	 * **Note**: For migrating objects, a `CScriptEntityStateChangeEvent` will be sent over the network to let other clients know that this object is being given a temporary action. At the same time, temporary actions cannot be applied to clones/remote objects.
	 * 
	 * ```cpp
	 * enum eTempAction {
	 *     TA_NONE = 0,
	 *     TA_WAIT = 1,
	 *     TA_UNUSED = 2,
	 *     TA_BRAKE_REVERSE = 3,
	 *     TA_HANDBRAKE_TURN_LEFT = 4,
	 *     TA_HANDBRAKE_TURN_RIGHT = 5,
	 *     TA_HANDBRAKE_UNTIL_TIME_ENDS = 6,
	 *     TA_TURN_LEFT = 7,
	 *     TA_TURN_RIGHT = 8,
	 *     TA_ACCELERATE = 9,
	 *     TA_TURN_LEFT = 10,
	 *     TA_TURN_RIGHT = 11,
	 *     TA_UNUSED_12 = 12,
	 *     TA_TURN_LEFT_GO_REVERSE = 13,
	 *     TA_TURN_RIGHT_GO_REVERSE = 14,
	 *     TA_PLANE_FLY_UP = 15, // (crashes game if not in plane)
	 *     TA_PLANE_FLY_STRAIGHT = 16, // (crashes game if not in plane)
	 *     TA_PLANE_SHARP_LEFT = 17, // (crashes game if not in plane)
	 *     TA_PLANE_SHARP_RIGHT = 18, // (crashes game if not in plane)
	 *     TA_STRONG_BRAKE = 19,
	 *     TA_TURN_LEFT_AND_STOP = 20,
	 *     TA_TURN_RIGHT_AND_STOP = 21,
	 *     TA_GO_IN_REVERSE = 22,
	 *     TA_ACCELERATE_FAST = 23,
	 *     TA_BRAKE_ACTION = 24,
	 *     TA_HANDBRAKE_TURN_LEFT_MORE = 25,
	 *     TA_HANDBRAKE_TURN_RIGHT_MORE = 26,
	 *     TA_HANDBRAKE_BRAKE_STRAIGHT = 27,
	 *     TA_BRAKE_STRONG_REVERSE_ACCELERATION = 28,
	 *     TA_UNUSED_29 = 29,
	 *     TA_PERFORMS_BURNOUT = 30,
	 *     TA_REV_ENGINE = 31,
	 *     TA_ACCELERATE_VERY_STRONG = 32,
	 *     TA_SURFACE_IN_SUBMARINE = 33
	 * };
	 * ```
	 */
	@:native("TaskVehicleTempAction")
	static function taskVehicleTempAction(driver:Dynamic, vehicle:Dynamic, action:Int, time:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TaskVehicleShootAtPed")
	static function taskVehicleShootAtPed(ped:Dynamic, target:Dynamic, p2:Float):Dynamic;

	/**
	 * ```
	 * Modes:  
	 * 0 - ignore heading  
	 * 1 - park forward  
	 * 2 - park backwards  
	 * Depending on the angle of approach, the vehicle can park at the specified heading or at its exact opposite (-180) angle.  
	 * Radius seems to define how close the vehicle has to be -after parking- to the position for this task considered completed. If the value is too small, the vehicle will try to park again until it's exactly where it should be. 20.0 Works well but lower values don't, like the radius is measured in centimeters or something.  
	 * ```
	 */
	@:native("TaskVehiclePark")
	static function taskVehiclePark(ped:Dynamic, vehicle:Dynamic, x:Float, y:Float, z:Float, heading:Float, mode:Int, radius:Float, keepEngineOn:Bool):Dynamic;

	/**
	 * ```
	 * task_vehicle_follow_waypoint_recording(Ped p0, Vehicle p1, string p2, int p3, int p4, int p5, int p6, float.x p7, float.Y p8, float.Z p9, bool p10, int p11)
	 * p2 = Waypoint recording string (found in update\update.rpf\x64\levels\gta5\waypointrec.rpf
	 * p3 = 786468
	 * p4 = 0
	 * p5 = 16
	 * p6 = -1 (angle?)
	 * p7/8/9 = usually v3.zero
	 * p10 = bool (repeat?)
	 * p11 = 1073741824
	 * -khorio
	 * ```
	 */
	@:native("TaskVehicleFollowWaypointRecording")
	static function taskVehicleFollowWaypointRecording(ped:Dynamic, vehicle:Dynamic, WPRecording:String, p3:Int, p4:Int, p5:Int, p6:Int, p7:Float, p8:Bool, p9:Float):Dynamic;

	/**
	 * ```
	 * Makes ped walk around the area.  
	 * set p1 to 10.0f and p2 to 10 if you want the ped to walk anywhere without a duration.  
	 * ```
	 */
	@:native("TaskWanderStandard")
	static function taskWanderStandard(ped:Dynamic, p1:Float, p2:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("TaskWanderSpecific")
	static function TaskWanderSpecific(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * Makes a ped wander/patrol around the specified area.
	 * 
	 * The ped will continue to wander after getting distracted, but only if this additional task is temporary, ie. killing a target, after killing the target it will continue to wander around.
	 * 
	 * Use `GetIsTaskActive(ped, 222)` to check if the ped is still wandering the area.
	 */
	@:native("TaskWanderInArea")
	static function taskWanderInArea(ped:Dynamic, x:Float, y:Float, z:Float, radius:Float, minimalLength:Int, timeBetweenWalks:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 * 
	 * Warp a ped into a vehicle.
	 * 
	 * **Note**: It's better to use [`TASK_ENTER_VEHICLE`](#\_0xC20E50AA46D09CA8) with the flag "warp" flag instead of this native.
	 */
	@:native("TaskWarpPedIntoVehicle")
	static function taskWarpPedIntoVehicle(ped:Dynamic, vehicle:Dynamic, seatIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("UncuffPed")
	static function uncuffPed(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 5: Any p4
	 * NativeDB Added Parameter 6: Any p5
	 * ```
	 */
	@:native("TaskWrithe")
	static function taskWrithe(ped:Dynamic, target:Dynamic, time:Int, p3:Int):Dynamic;

	/**
	 * This task warps a ped directly into a cover position closest to the specified point. This can be used to quickly place peds in strategic positions during gameplay.
	 * 
	 * ```
	 * NativeDB Introduced: 2545
	 * ```
	 */
	@:native("TaskWarpPedDirectlyIntoCover")
	static function taskWarpPedDirectlyIntoCover(ped:Dynamic, time:Int, canPeekAndAim:Bool, forceInitialFacingDirection:Bool, forceFaceLeft:Bool, coverIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("UseWaypointRecordingAsAssistedMovementRoute")
	static function useWaypointRecordingAsAssistedMovementRoute(name:String, p1:Bool, p2:Float, p3:Float):Dynamic;

	/**
	 * 
	 */
	@:native("UpdateTaskHandsUpDuration")
	static function updateTaskHandsUpDuration(ped:Dynamic, duration:Int):Dynamic;

	/**
	 * 
	 */
	@:native("UpdateTaskAimGunScriptedTarget")
	static function updateTaskAimGunScriptedTarget(p0:Dynamic, p1:Dynamic, p2:Float, p3:Float, p4:Float, p5:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("UpdateTaskSweepAimPosition")
	static function updateTaskSweepAimPosition(p0:Dynamic, p1:Float, p2:Float, p3:Float):Dynamic;

	/**
	 * 
	 */
	@:native("VehicleWaypointPlaybackPause")
	static function vehicleWaypointPlaybackPause(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("VehicleWaypointPlaybackOverrideSpeed")
	static function vehicleWaypointPlaybackOverrideSpeed(vehicle:Dynamic, speed:Float):Dynamic;

	/**
	 * 
	 */
	@:native("VehicleWaypointPlaybackUseDefaultSpeed")
	static function vehicleWaypointPlaybackUseDefaultSpeed(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("UpdateTaskSweepAimEntity")
	static function updateTaskSweepAimEntity(ped:Dynamic, entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("VehicleWaypointPlaybackResume")
	static function vehicleWaypointPlaybackResume(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("WaypointPlaybackPause")
	static function waypointPlaybackPause(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("WaypointPlaybackOverrideSpeed")
	static function waypointPlaybackOverrideSpeed(p0:Dynamic, p1:Float, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("WaypointPlaybackResume")
	static function waypointPlaybackResume(p0:Dynamic, p1:Bool, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("WaypointPlaybackStartShootingAtCoord")
	static function waypointPlaybackStartShootingAtCoord(p0:Dynamic, p1:Float, p2:Float, p3:Float, p4:Bool, p5:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("WaypointPlaybackGetIsPaused")
	static function waypointPlaybackGetIsPaused(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("WaypointPlaybackStopAimingOrShooting")
	static function waypointPlaybackStopAimingOrShooting(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * For a full list of the points, see here: goo.gl/wIH0vn
	 * ```
	 */
	@:native("WaypointRecordingGetClosestWaypoint")
	static function waypointRecordingGetClosestWaypoint(name:String, x:Float, y:Float, z:Float, point:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("WaypointPlaybackStartAimingAtCoord")
	static function waypointPlaybackStartAimingAtCoord(p0:Dynamic, p1:Float, p2:Float, p3:Float, p4:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("WaypointPlaybackStartAimingAtPed")
	static function waypointPlaybackStartAimingAtPed(p0:Dynamic, p1:Dynamic, p2:Bool):Dynamic;

	/**
	 * ```
	 * For a full list of the points, see here: goo.gl/wIH0vn
	 * ```
	 */
	@:native("WaypointRecordingGetNumPoints")
	static function waypointRecordingGetNumPoints(name:String, points:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("WaypointRecordingGetSpeedAtPoint")
	static function waypointRecordingGetSpeedAtPoint(name:String, point:Int):Float;

	/**
	 * 
	 */
	@:native("WaypointPlaybackUseDefaultSpeed")
	static function waypointPlaybackUseDefaultSpeed(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("WaypointPlaybackStartShootingAtPed")
	static function waypointPlaybackStartShootingAtPed(p0:Dynamic, p1:Dynamic, p2:Bool, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * For a full list of the points, see here: goo.gl/wIH0vn
	 * ```
	 */
	@:native("WaypointRecordingGetCoord")
	static function waypointRecordingGetCoord(name:String, point:Int, coord:Dynamic):Bool;

}
