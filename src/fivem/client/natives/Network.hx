package fivem.client.natives;

@:native("_G")
extern class Network {
	/**
	 * 
	 */
	@:native("ActivateDamageTrackerOnNetworkId")
	static function activateDamageTrackerOnNetworkId(netID:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CanRegisterMissionObjects")
	static function canRegisterMissionObjects(amount:Int):Bool;

	/**
	 * 
	 */
	@:native("CanRegisterMissionEntities")
	static function canRegisterMissionEntities(ped_amt:Int, vehicle_amt:Int, object_amt:Int, pickup_amt:Int):Bool;

	/**
	 * 
	 */
	@:native("ActivateDamageTrackerOnPlayer")
	static function ActivateDamageTrackerOnPlayer(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Downloads prod.cloud.rockstargames.com/titles/gta5/[platform]/check.json
	 * ```
	 */
	@:native("CloudCheckAvailability")
	static function cloudCheckAvailability():Dynamic;

	/**
	 * 
	 */
	@:native("CanRegisterMissionPickups")
	static function CanRegisterMissionPickups(amount:Int):Bool;

	/**
	 * 
	 */
	@:native("CanRegisterMissionPeds")
	static function canRegisterMissionPeds(amount:Int):Bool;

	/**
	 * 
	 */
	@:native("CloudGetAvailabilityCheckResult")
	static function cloudGetAvailabilityCheckResult():Bool;

	/**
	 * 
	 */
	@:native("BadSportPlayerLeftDetected")
	static function badSportPlayerLeftDetected(networkHandle:Dynamic, event:Int, amountReceived:Int):Bool;

	/**
	 * 
	 */
	@:native("CloudDeleteMemberFile")
	static function cloudDeleteMemberFile(p0:String):Int;

	/**
	 * 
	 */
	@:native("CloudHasRequestCompleted")
	static function cloudHasRequestCompleted(handle:Int):Bool;

	/**
	 * 
	 */
	@:native("CanRegisterMissionVehicles")
	static function canRegisterMissionVehicles(amount:Int):Bool;

	/**
	 * 
	 */
	@:native("CloudDidRequestSucceed")
	static function cloudDidRequestSucceed(handle:Int):Bool;

	/**
	 * **This native does absolutely nothing, just a nullsub**
	 */
	@:native("ClearLaunchParams")
	static function ClearLaunchParams():Dynamic;

	/**
	 * 
	 */
	@:native("CloudIsCheckingAvailability")
	static function cloudIsCheckingAvailability():Bool;

	/**
	 * 
	 */
	@:native("FacebookIsSendingData")
	static function FacebookIsSendingData():Bool;

	/**
	 * 
	 */
	@:native("FacebookDoUnkCheck")
	static function FacebookDoUnkCheck():Bool;

	/**
	 * 
	 */
	@:native("FacebookIsAvailable")
	static function FacebookIsAvailable():Bool;

	/**
	 * ```
	 * Takes the specified time and writes it to the structure specified in the second argument.  
	 * struct date_time  
	 * { 
	 *     alignas(8) int year;  
	 *     alignas(8) int month;  
	 *     alignas(8) int day;  
	 *     alignas(8) int hour;  
	 *     alignas(8) int minute;  
	 *     alignas(8) int second;  
	 * };
	 * ```
	 */
	@:native("ConvertPosixTime")
	static function convertPosixTime(posixTime:Int, timeStructure:Dynamic):Dynamic;

	/**
	 * ```
	 * Hardcoded to not work in SP.  
	 * ```
	 */
	@:native("FadeOutLocalPlayer")
	static function fadeOutLocalPlayer(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("FacebookSetHeistComplete")
	static function FacebookSetHeistComplete(heistName:String, cashEarned:Int, xpEarned:Int):Bool;

	/**
	 * 
	 */
	@:native("FacebookSetCreateCharacterComplete")
	static function FacebookSetCreateCharacterComplete():Bool;

	/**
	 * Returns POSIX timestamp.
	 * 
	 * Renamed from `_GET_POSIX_TIME` to `GET_CLOUD_TIME_AS_INT` because of conflicting native names ([`0xDA488F299A5B164E`](#\_0xDA488F299A5B164E))
	 */
	@:native("GetCloudTimeAsInt")
	static function getCloudTimeAsInt():Int;

	/**
	 * ```
	 * index2 is unused
	 * ```
	 */
	@:native("GetCommerceItemCat")
	static function getCommerceItemCat(index:Int, index2:Int):String;

	/**
	 * 
	 */
	@:native("FilloutPmPlayerList")
	static function filloutPmPlayerList(networkHandle:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * ```
	 * Same as GET_CLOUD_TIME_AS_INT but returns the value as a hex string (%I64X).
	 * ```
	 */
	@:native("GetCloudTimeAsString")
	static function GetCloudTimeAsString():String;

	/**
	 * ```
	 * milestoneId:  
	 * 0 = "percentcomplete"  
	 * 1 = "storycomplete"  
	 * 2 = "vehicles"  
	 * 3 = "properties"  
	 * 4 = "psych"  
	 * 5 = "mapreveal"  
	 * 6 = "prologue"  
	 * ```
	 */
	@:native("FacebookSetMilestoneComplete")
	static function FacebookSetMilestoneComplete(milestoneId:Int):Bool;

	/**
	 * 
	 */
	@:native("GetCommerceItemNumCats")
	static function getCommerceItemNumCats(index:Int):Int;

	/**
	 * 
	 */
	@:native("GetCommerceItemId")
	static function getCommerceItemId(index:Int):String;

	/**
	 * 
	 */
	@:native("FilloutPmPlayerListWithNames")
	static function filloutPmPlayerListWithNames(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 3: int p2
	 * ```
	 */
	@:native("GetCommerceItemTexturename")
	static function getCommerceItemTexturename(index:Int):String;

	/**
	 * 
	 */
	@:native("GetCommerceProductPrice")
	static function getCommerceProductPrice(index:Int):String;

	/**
	 * 
	 */
	@:native("GetMaxNumNetworkObjects")
	static function getMaxNumNetworkObjects():Int;

	/**
	 * 
	 */
	@:native("GetCommerceItemName")
	static function getCommerceItemName(index:Int):String;

	/**
	 * 
	 */
	@:native("GetMaxNumNetworkPeds")
	static function getMaxNumNetworkPeds():Int;

	/**
	 * 
	 */
	@:native("GetMaxNumNetworkPickups")
	static function getMaxNumNetworkPickups():Int;

	/**
	 * Returns the same value as [`GetNetworkTime`](#\_0x7A5487FE9FAA6B48) in freemode, but as opposed to `GetNetworkTime` it always gets the most recent time, instead of once per tick.
	 * 
	 * Could be used for benchmarking since it can return times in ticks.
	 */
	@:native("GetNetworkTimeAccurate")
	static function getNetworkTimeAccurate():Int;

	/**
	 * 
	 */
	@:native("GetNetworkTime")
	static function getNetworkTime():Int;

	/**
	 * 
	 */
	@:native("GetMaxNumNetworkVehicles")
	static function getMaxNumNetworkVehicles():Int;

	/**
	 * 
	 */
	@:native("GetNumCreatedMissionObjects")
	static function getNumCreatedMissionObjects(p0:Bool):Int;

	/**
	 * 
	 */
	@:native("GetNumCreatedMissionPeds")
	static function getNumCreatedMissionPeds(p0:Bool):Int;

	/**
	 * 
	 */
	@:native("GetNumCommerceItems")
	static function getNumCommerceItems():Int;

	/**
	 * ```
	 * p0 appears to be for MP  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("GetNumReservedMissionVehicles")
	static function getNumReservedMissionVehicles(p0:Bool):Int;

	/**
	 * ```
	 * p0 appears to be for MP  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("GetNumReservedMissionPeds")
	static function getNumReservedMissionPeds(p0:Bool):Int;

	/**
	 * ```
	 * p0 appears to be for MP  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("GetNumReservedMissionObjects")
	static function getNumReservedMissionObjects(p0:Bool):Int;

	/**
	 * 
	 */
	@:native("GetNumCreatedMissionVehicles")
	static function getNumCreatedMissionVehicles(p0:Bool):Int;

	/**
	 * ```
	 * 0 = succeeded
	 * 1 = pending
	 * 2 = failed
	 * ```
	 */
	@:native("GetStatusOfTextureDownload")
	static function getStatusOfTextureDownload(p0:Int):Int;

	/**
	 * ```
	 * Online version is defined here: update\update.rpf\common\data\version.txt
	 * Example:
	 * [ONLINE_VERSION_NUMBER]
	 * 1.33
	 * _GET_ONLINE_VERSION() will return "1.33"
	 * ```
	 */
	@:native("GetOnlineVersion")
	static function GetOnlineVersion():String;

	/**
	 * ```
	 * Subtracts the second argument from the first.  
	 * ```
	 */
	@:native("GetTimeDifference")
	static function getTimeDifference(timeA:Int, timeB:Int):Int;

	/**
	 * ```
	 * Adds the first argument to the second.  
	 * ```
	 */
	@:native("GetTimeOffset")
	static function getTimeOffset(timeA:Int, timeB:Int):Int;

	/**
	 * 
	 */
	@:native("GetTimeAsString")
	static function getTimeAsString(time:Int):String;

	/**
	 * 
	 */
	@:native("IsNetworkIdOwnedByParticipant")
	static function isNetworkIdOwnedByParticipant(netId:Int):Bool;

	/**
	 * 
	 */
	@:native("IsCommerceDataValid")
	static function isCommerceDataValid():Bool;

	/**
	 * 
	 */
	@:native("HasNetworkTimeStarted")
	static function hasNetworkTimeStarted():Bool;

	/**
	 * 
	 */
	@:native("IsCommerceStoreOpen")
	static function isCommerceStoreOpen():Bool;

	/**
	 * 
	 */
	@:native("IsDamageTrackerActiveOnPlayer")
	static function IsDamageTrackerActiveOnPlayer(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsSphereVisibleToPlayer")
	static function isSphereVisibleToPlayer(p0:Dynamic, p1:Float, p2:Float, p3:Float, p4:Float):Bool;

	/**
	 * 
	 */
	@:native("IsDamageTrackerActiveOnNetworkId")
	static function isDamageTrackerActiveOnNetworkId(netID:Int):Bool;

	/**
	 * ```
	 * Subtracts the first argument from the second, then returns whether the result is negative.  
	 * ```
	 */
	@:native("IsTimeMoreThan")
	static function isTimeMoreThan(timeA:Int, timeB:Int):Bool;

	/**
	 * 
	 */
	@:native("IsEntityGhostedToLocalPlayer")
	static function IsEntityGhostedToLocalPlayer(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsSphereVisibleToAnotherMachine")
	static function isSphereVisibleToAnotherMachine(p0:Float, p1:Float, p2:Float, p3:Float):Bool;

	/**
	 * 
	 */
	@:native("IsPlayerInCutscene")
	static function isPlayerInCutscene(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsStoreAvailableToUser")
	static function isStoreAvailableToUser():Bool;

	/**
	 * ```
	 * Returns true if the two times are equal; otherwise returns false.  
	 * ```
	 */
	@:native("IsTimeEqualTo")
	static function isTimeEqualTo(timeA:Int, timeB:Int):Bool;

	/**
	 * ```
	 * Subtracts the second argument from the first, then returns whether the result is negative.  
	 * ```
	 */
	@:native("IsTimeLessThan")
	static function isTimeLessThan(timeA:Int, timeB:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkBlockJoinQueueInvites")
	static function networkBlockJoinQueueInvites(toggle:Bool):Dynamic;

	/**
	 * ```
	 * gets the entity id of a network id  
	 * ```
	 */
	@:native("NetToEnt")
	static function netToEnt(netHandle:Int):Dynamic;

	/**
	 * ```
	 * gets the ped id of a network id  
	 * ```
	 */
	@:native("NetToPed")
	static function netToPed(netHandle:Int):Dynamic;

	/**
	 * ```
	 * NETWORK_RE*
	 * 
	 * Triggers a CEventNetworkInviteConfirmed event
	 * ```
	 */
	@:native("NetworkAcceptInvite")
	static function NetworkAcceptInvite():Bool;

	/**
	 * 
	 */
	@:native("NetToVeh")
	static function netToVeh(netHandle:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkAccessTunableBool")
	static function networkAccessTunableBool(tunableContext:String, tunableName:String):Bool;

	/**
	 * 
	 */
	@:native("NetworkAccessTunableFloat")
	static function networkAccessTunableFloat(tunableContext:String, tunableName:String, value:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkAccessTunableInt")
	static function networkAccessTunableInt(tunableContext:String, tunableName:String, value:Dynamic):Bool;

	/**
	 * ```
	 * gets the object id of a network id  
	 * ```
	 */
	@:native("NetToObj")
	static function netToObj(netHandle:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkAcceptPresenceInvite")
	static function networkAcceptPresenceInvite(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkAddEntityArea")
	static function networkAddEntityArea(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkAccessTunableIntHash")
	static function networkAccessTunableIntHash(tunableContext:Int, tunableName:Int, value:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkAccessTunableFloatHash")
	static function networkAccessTunableFloatHash(tunableContext:Int, tunableName:Int, value:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkAccessTunableBoolHash")
	static function networkAccessTunableBoolHash(tunableContext:Int, tunableName:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkAddEntityDisplayedBoundaries")
	static function networkAddEntityDisplayedBoundaries(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkActionFollowInvite")
	static function networkActionFollowInvite():Dynamic;

	/**
	 * ```
	 * ..  
	 * ```
	 */
	@:native("NetworkAddFollowers")
	static function networkAddFollowers(p0:Dynamic, p1:Int):Dynamic;

	/**
	 * Adds an entity to a network synchronised scene.
	 */
	@:native("NetworkAddEntityToSynchronisedScene")
	static function networkAddEntityToSynchronisedScene(entity:Dynamic, netScene:Int, animDict:String, animName:String, blendIn:Float, blendOut:Float, flag:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkAddSynchronisedSceneCamera")
	static function networkAddSynchronisedSceneCamera(netScene:Int, animDict:String, animName:String):Dynamic;

	/**
	 * To remove, see: [`NETWORK_REMOVE_ENTITY_AREA`](#\_0x93CF869BAA0C4874).
	 * 
	 * See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
	 */
	@:native("NetworkAddEntityAngledArea")
	static function networkAddEntityAngledArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, width:Float):Dynamic;

	/**
	 * Adds a map entity to a network synchronized scene. This native function is utilized only once as of game build 2944 within the casino_slots script.
	 * Please note that it's only possible to add a single map entity to synchronised scenes.
	 * 
	 * It's advisable to initially locate the object and retrieve its actual coordinates using [`GET_CLOSEST_OBJECT_OF_TYPE`](#\_0xE143FA2249364369).
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkAddMapEntityToSynchronisedScene")
	static function networkAddMapEntityToSynchronisedScene(netScene:Int, modelHash:Int, x:Float, y:Float, z:Float, animDict:String, animName:String, blendInSpeed:Float, blendOutSpeed:Float, flags:Int):Dynamic;

	/**
	 * Adds a ped to a networked synchronized scene but extends [`NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE`](#\_0x742A637471BCECD9) to support IK flags.
	 * There is barely any difference between this and [`NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE`](#\_0x742A637471BCECD9).
	 * 
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkAddPedToSynchronisedSceneWithIk")
	static function networkAddPedToSynchronisedSceneWithIk(ped:Dynamic, netSceneID:Int, animDict:String, animClip:String, blendIn:Float, blendOut:Float, sceneFlags:Int, ragdollFlags:Int, moverBlendInDelta:Float, ikFlags:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkAmIMutedByGamer")
	static function networkAmIMutedByGamer(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkAddFriend")
	static function networkAddFriend(networkHandle:Dynamic, message:String):Bool;

	/**
	 * 
	 */
	@:native("NetworkAllocateTunablesRegistrationDataMap")
	static function NetworkAllocateTunablesRegistrationDataMap():Bool;

	/**
	 * Allows scripts to use attachment commands on entities (eg. [`ATTACH_ENTITY_TO_ENTITY`](#\_0x6B9BBD38AB0796DF)) that are not controlled by the client.
	 * 
	 * **Note:** This is only local and does not affect entities on other machines. This is used by the ferris wheel script to sync players on carts.
	 */
	@:native("NetworkAllowRemoteAttachmentModification")
	static function networkAllowRemoteAttachmentModification(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkAmIBlockedByPlayer")
	static function networkAmIBlockedByPlayer(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkApplyPedScarData")
	static function networkApplyPedScarData(ped:Dynamic, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkAmIMutedByPlayer")
	static function networkAmIMutedByPlayer(player:Dynamic):Bool;

	/**
	 * Adds a ped to a networked synchronised scene.
	 * 
	 * Synchronized scene playback flags (Also works in other `NETWORK_ADD_*_TO_SYNCHRONISED_SCENE` natives):
	 * | Value     |                  Name                     |                                                             Notes                                                                |
	 * | :-------: | :---------------------------------------: | :------------------------------------------------------------------------------------------------------------------------------: |
	 * | `0`       |  None                                     | No flag set.                                                                                                                     |
	 * | `1`       | USE_PHYSICS                               | Allows the ped to have physics during the scene.                                                                                 |
	 * | `2`       | TAG_SYNC_OUT                              | The task will do a tag synchronized blend out with the movement behaviour of the ped.                                            |
	 * | `4`       | DONT_INTERRUPT                            | The scene will not be interrupted by external events.                                                                            |
	 * | `8`       | ON_ABORT_STOP_SCENE                       | The scene will be stopped if the scripted task is aborted.                                                                       |
	 * | `16`      | ABORT_ON_WEAPON_DAMAGE                    | The scene will be stopped if the ped is damaged by a weapon.                                                                     |
	 * | `32`      | BLOCK_MOVER_UPDATE                        | The task will not update the mover.                                                                                              |
	 * | `64`      | LOOP_WITHIN_SCENE                         | Animations within this scene will be looped until the scene is finished.                                                         |
	 * | `128`     | PRESERVE_VELOCITY                         | The task will keep it's velocity when the scene is cleaned up/stopped. Do note that the `USE_PHYSICS` flag must also be present. |
	 * | `256`     | EXPAND_PED_CAPSULE_FROM_SKELETON          | The task will apply the `ExpandPedCapsuleFromSkeleton` reset flag to the ped (See [`SET_PED_RESET_FLAG`](#\_0xC1E8A365BF3B29F2)). |
	 * | `512`     | ACTIVATE_RAGDOLL_ON_COLLISION             | The ped will be ragdoll if it comes in contact with an object.                                                                   |
	 * | `1024`    | HIDE_WEAPON                               | The ped's current weapon will be hidden during the scene.                                                                        |
	 * | `2048`    | ABORT_ON_DEATH                            | The synchronised scene will be aborted if the ped dies.                                                                          |
	 * | `4096`    | VEHICLE_ABORT_ON_LARGE_IMPACT             | If the scene is running on a vehicle, then it will be aborted if the vehicle takes a heavy collision with another vehicle.       |
	 * | `8192`    | VEHICLE_ALLOW_PLAYER_ENTRY                | If the scene is on a vehicle, it allows players to enter it.                                                                     |
	 * | `16384`   | PROCESS_ATTACHMENTS_ON_START              | Attachments will be processed at the start of the scene.                                                                         |
	 * | `32768`   | NET_ON_EARLY_NON_PED_STOP_RETURN_TO_START | A non-ped entity will be returned to their starting position if the scene finishes early.                                        |
	 * | `65536`   | SET_PED_OUT_OF_VEHICLE_AT_START           | If the ped is in a vehicle when the scene starts, it will be set out of the vehicle.                                             |
	 * | `131072`  | NET_DISREGARD_ATTACHMENT_CHECKS           | Attachment checks will be disregarded when the scene is running.                                                                 |
	 * 
	 * These flags can be combined with the `|` operator.
	 */
	@:native("NetworkAddPedToSynchronisedScene")
	static function networkAddPedToSynchronisedScene(ped:Dynamic, netScene:Int, animDict:String, animClip:String, blendInSpeed:Float, blendOutSpeed:Float, syncedSceneFlags:Int, ragdollFlags:Int, moverBlendInDelta:Float, ikFlags:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkApplyCachedPlayerHeadBlendData")
	static function networkApplyCachedPlayerHeadBlendData(ped:Dynamic, player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkAmIBlockedByGamer")
	static function networkAmIBlockedByGamer(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkApplyTransitionParameterString")
	static function networkApplyTransitionParameterString(p0:Int, string:String, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkApplyTransitionParameter")
	static function networkApplyTransitionParameter(p0:Int, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkAreHandlesTheSame")
	static function networkAreHandlesTheSame(netHandle1:Dynamic, netHandle2:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("NetworkBailTransitionQuickmatch")
	static function NetworkBailTransitionQuickmatch():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkApplyVoiceProximityOverride")
	static function networkApplyVoiceProximityOverride(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * ```
	 * Getter for SET_NETWORK_CUTSCENE_ENTITIES.
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("NetworkAreCutsceneEntities")
	static function NetworkAreCutsceneEntities():Bool;

	/**
	 * 
	 */
	@:native("NetworkBlockKickedPlayers")
	static function NetworkBlockKickedPlayers(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkAttachSynchronisedSceneToEntity")
	static function networkAttachSynchronisedSceneToEntity(netScene:Int, entity:Dynamic, bone:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkAreSocialClubPoliciesCurrent")
	static function networkAreSocialClubPoliciesCurrent():Bool;

	/**
	 * 
	 */
	@:native("NetworkCanBail")
	static function networkCanBail():Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int p0
	 * NativeDB Added Parameter 2: int p1
	 * NativeDB Added Parameter 3: int p2
	 * ```
	 */
	@:native("NetworkBailTransition")
	static function networkBailTransition():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkAreTransitionDetailsValid")
	static function networkAreTransitionDetailsValid(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkCanEnterMultiplayer")
	static function networkCanEnterMultiplayer():Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int p0
	 * NativeDB Added Parameter 2: int p1
	 * NativeDB Added Parameter 3: int p2
	 * ```
	 */
	@:native("NetworkBail")
	static function networkBail():Dynamic;

	/**
	 * ```
	 * 11 - Need to download tunables.  
	 * 12 - Need to download background script.  
	 * Returns 1 if the multiplayer is loaded, otherwhise 0.  
	 * ```
	 */
	@:native("NetworkCanAccessMultiplayer")
	static function networkCanAccessMultiplayer(loadingState:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkCanSessionEnd")
	static function networkCanSessionEnd():Bool;

	/**
	 * 
	 */
	@:native("NetworkCanPlayMultiplayerWithGamer")
	static function NetworkCanPlayMultiplayerWithGamer(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkBlockInvites")
	static function networkBlockInvites(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkCanCommunicateWithGamer")
	static function networkCanCommunicateWithGamer(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkCancelRespawnSearch")
	static function networkCancelRespawnSearch():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkCanSetWaypoint")
	static function networkCanSetWaypoint():Bool;

	/**
	 * 
	 */
	@:native("NetworkCacheLocalPlayerHeadBlendData")
	static function networkCacheLocalPlayerHeadBlendData():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkCanGamerPlayMultiplayerWithMe")
	static function NetworkCanGamerPlayMultiplayerWithMe(networkHandle:Dynamic):Bool;

	/**
	 * Checks if the friendDataIndex in the friend data manager contains the data for the specified networkHandle
	 */
	@:native("NetworkCheckDataManagerSucceededForHandle")
	static function networkCheckDataManagerSucceededForHandle(friendDataIndex:Int, networkHandle:Dynamic):Bool;

	/**
	 * ```
	 * Same as NETWORK_CAN_COMMUNICATE_WITH_GAMER
	 * 
	 * NETWORK_CAN_*
	 * ```
	 */
	@:native("NetworkCanCommunicateWithGamer_2")
	static function NetworkCanCommunicateWithGamer2(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkCanViewGamerUserContent")
	static function NetworkCanViewGamerUserContent(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkCheckCommunicationPrivileges")
	static function networkCheckCommunicationPrivileges(p0:Int, p1:Int, p2:Bool):Bool;

	/**
	 * 
	 */
	@:native("NetworkClanDownloadMembership")
	static function networkClanDownloadMembership(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkCheckUserContentPrivileges")
	static function networkCheckUserContentPrivileges(p0:Int, p1:Int, p2:Bool):Bool;

	/**
	 * 
	 */
	@:native("NetworkClanAnyDownloadMembershipPending")
	static function networkClanAnyDownloadMembershipPending():Bool;

	/**
	 * 
	 */
	@:native("NetworkClanGetEmblemTxdName")
	static function networkClanGetEmblemTxdName(netHandle:Dynamic, txdName:String):Bool;

	/**
	 * 
	 */
	@:native("NetworkClanDownloadMembershipPending")
	static function networkClanDownloadMembershipPending(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkClanGetMembershipCount")
	static function networkClanGetMembershipCount(p0:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NetworkChangeTransitionSlots")
	static function networkChangeTransitionSlots(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * Retrieves a membership for a player, from the cache (i.e. downloaded via NETWORK_CLAN_DOWNLOAD_MEMBERSHIP).
	 * 
	 * Test C++ code:
	 * https://pastebin.com/CD8wni4C
	 */
	@:native("NetworkClanGetMembership")
	static function networkClanGetMembership(networkHandle:Dynamic, clanMembership:Dynamic, membershipIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkClanGetMembershipDesc")
	static function networkClanGetMembershipDesc(memberDesc:Dynamic, p1:Int):Bool;

	/**
	 * ```
	 * Only documented...  
	 * ```
	 */
	@:native("NetworkClanAnimation")
	static function NetworkClanAnimation(animDict:String, animName:String):Bool;

	/**
	 * Checks if a crew/membership for a player, from the cache (i.e. downloaded via NETWORK_CLAN_DOWNLOAD_MEMBERSHIP) is valid.
	 */
	@:native("NetworkClanGetMembershipValid")
	static function networkClanGetMembershipValid(networkHandle:Dynamic, membershipIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkClanGetLocalMembershipsCount")
	static function networkClanGetLocalMembershipsCount():Int;

	/**
	 * 
	 */
	@:native("NetworkClanIsEmblemReady")
	static function networkClanIsEmblemReady(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * ```
	 * bufferSize is 35 in the scripts.
	 * ```
	 */
	@:native("NetworkClanGetUiFormattedTag")
	static function networkClanGetUiFormattedTag(clanDesc:Dynamic, bufferSize:Int, formattedTag:String):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkClanRemoteMembershipsAreInCache")
	static function networkClanRemoteMembershipsAreInCache(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkClearClockTimeOverride")
	static function networkClearClockTimeOverride():Dynamic;

	/**
	 * ```
	 * bufferSize is 35 in the scripts.  
	 * bufferSize is the elementCount of p0(desc), sizeof(p0) == 280 == p1*8 == 35 * 8, p2(netHandle) is obtained from NETWORK::NETWORK_HANDLE_FROM_PLAYER.  And no, I can't explain why 35 * sizeof(int) == 280 and not 140, but I'll get back to you on that.  
	 * the answer is: because p0 an int64_t* / int64_t[35].  and FYI p2 is an int64_t[13]  
	 * pastebin.com/cSZniHak  
	 * ```
	 */
	@:native("NetworkClanPlayerGetDesc")
	static function networkClanPlayerGetDesc(clanDesc:Dynamic, bufferSize:Int, networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkClanRequestEmblem")
	static function networkClanRequestEmblem(p0:Dynamic):Bool;

	/**
	 * ```
	 * bufferSize is 35 in the scripts.  
	 * ```
	 */
	@:native("NetworkClanIsRockstarClan")
	static function networkClanIsRockstarClan(clanDesc:Dynamic, bufferSize:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkClearFoundGamers")
	static function networkClearFoundGamers():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkClearFollowInvite")
	static function networkClearFollowInvite():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkClanPlayerIsActive")
	static function networkClanPlayerIsActive(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkClearFollowers")
	static function networkClearFollowers():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkClearGetGamerStatus")
	static function networkClearGetGamerStatus():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkClanJoin")
	static function networkClanJoin(clanDesc:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkClanReleaseEmblem")
	static function networkClanReleaseEmblem(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkClearVoiceChannel")
	static function networkClearVoiceChannel():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkClearGroupActivity")
	static function networkClearGroupActivity():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkClearPropertyId")
	static function networkClearPropertyId():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkClanServiceIsValid")
	static function networkClanServiceIsValid():Bool;

	/**
	 * 
	 */
	@:native("NetworkClearVoiceProximityOverride")
	static function networkClearVoiceProximityOverride():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkCloseTransitionMatchmaking")
	static function networkCloseTransitionMatchmaking():Dynamic;

	/**
	 * This is what R\* uses to hide players in MP interiors.
	 * 
	 * To manage player visibility with NetworkConcealPlayer, here’s a solid approach:
	 * 
	 * **General Population (players not in any instance):**
	 * 
	 * *   Use NetworkConcealPlayer to hide players who are in any instance. This way, general population players won’t see or interact with instance players.
	 * 
	 * **Instance Players (players in a specific instance):**
	 * 
	 * *   Use NetworkConcealPlayer to hide players who aren’t in the same instance. Instance players can still see and interact with the general population but not with players in other instances.
	 * 
	 * This setup keeps instance players separate from each other while allowing interaction with the general population.
	 */
	@:native("NetworkConcealPlayer")
	static function networkConcealPlayer(player:Dynamic, toggle:Bool, bAllowDamagingWhileConcealed:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkClearTransitionCreatorHandle")
	static function networkClearTransitionCreatorHandle():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkDidGetGamerStatusSucceed")
	static function networkDidGetGamerStatusSucceed():Bool;

	/**
	 * 
	 */
	@:native("NetworkDidFindGamersSucceed")
	static function networkDidFindGamersSucceed():Bool;

	/**
	 * Creates a networked synchronized scene.
	 * Be sure to actually start the scene with [`NETWORK_START_SYNCHRONISED_SCENE`](#\_0x9A1B3FCDB36C8697) after you're done adding peds or entities to the scene.
	 */
	@:native("NetworkCreateSynchronisedScene")
	static function networkCreateSynchronisedScene(x:Float, y:Float, z:Float, xRot:Float, yRot:Float, zRot:Float, rotationOrder:Int, holdLastFrame:Bool, looped:Bool, phaseToStopScene:Float, phaseToStartScene:Float, animSpeed:Float):Int;

	/**
	 * 
	 */
	@:native("NetworkConcealEntity")
	static function NetworkConcealEntity(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkDisableInvincibleFlashing")
	static function networkDisableInvincibleFlashing(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkDisableProximityMigration")
	static function networkDisableProximityMigration(netID:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkDoTransitionToGame")
	static function networkDoTransitionToGame(p0:Bool, maxPlayers:Int):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 5: Any p4
	 * NativeDB Added Parameter 6: Any p5
	 * ```
	 */
	@:native("NetworkDoTransitionQuickmatch")
	static function networkDoTransitionQuickmatch(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkDoesEntityExistWithNetworkId")
	static function networkDoesEntityExistWithNetworkId(netId:Int):Bool;

	/**
	 * ```
	 * Hardcoded to return -1.
	 * ```
	 */
	@:native("NetworkDisplaynamesFromHandlesStart")
	static function NetworkDisplaynamesFromHandlesStart(p0:Dynamic, p1:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NetworkDisableLeaveRemotePedBehind")
	static function networkDisableLeaveRemotePedBehind(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkDoesTunableExist")
	static function networkDoesTunableExist(tunableContext:String, tunableName:String):Bool;

	/**
	 * 
	 */
	@:native("NetworkDoTransitionToNewGame")
	static function networkDoTransitionToNewGame(p0:Bool, maxPlayers:Int, p2:Bool):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 7: Any p6
	 * NativeDB Added Parameter 8: Any p7
	 * ```
	 */
	@:native("NetworkDoTransitionQuickmatchWithGroup")
	static function networkDoTransitionQuickmatchWithGroup(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkDoesTunableExistHash")
	static function networkDoesTunableExistHash(tunableContext:Int, tunableName:Int):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 5: Any p4
	 * NativeDB Added Parameter 6: Any p5
	 * ```
	 */
	@:native("NetworkDoTransitionQuickmatchAsync")
	static function networkDoTransitionQuickmatchAsync(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkDoTransitionToNewFreemode")
	static function networkDoTransitionToNewFreemode(p0:Dynamic, p1:Dynamic, players:Int, p3:Bool, p4:Bool, p5:Bool):Bool;

	/**
	 * ```
	 * p2 is true 3/4 of the occurrences I found.  
	 * 'players' is the number of players for a session. On PS3/360 it's always 18. On PC it's 32.  
	 * ```
	 */
	@:native("NetworkDoTransitionToFreemode")
	static function networkDoTransitionToFreemode(p0:Dynamic, p1:Dynamic, p2:Bool, players:Int, p4:Bool):Bool;

	/**
	 * 
	 */
	@:native("NetworkDoesNetworkIdExist")
	static function networkDoesNetworkIdExist(netId:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkEntityAreaDoesExist")
	static function networkEntityAreaDoesExist(areaHandle:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkEndTutorialSession")
	static function networkEndTutorialSession():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEntityAreaIsOccupied")
	static function networkEntityAreaIsOccupied(areaHandle:Int):Bool;

	/**
	 * ```
	 * In the console script dumps, this is only referenced once.   
	 * NETWORK::NETWORK_EXPLODE_VEHICLE(vehicle, 1, 0, 0);  
	 * ^^^^^ That must be PC script dumps? In X360 Script Dumps it is reference a few times with 2 differences in the parameters.  
	 * Which as you see below is 1, 0, 0 + 1, 1, 0 + 1, 0, and a *param?  
	 * am_plane_takedown.c   
	 * network_explode_vehicle(net_to_veh(Local_40.imm_2), 1, 1, 0);  
	 * armenian2.c   
	 * network_explode_vehicle(Local_80[6 <2>], 1, 0, 0);  
	 * fm_horde_controler.c  
	 * network_explode_vehicle(net_to_veh(*uParam0), 1, 0, *uParam0);  
	 * fm_mission_controller.c, has 6 hits so not going to list them.  
	 * Side note, setting the first parameter to 0 seems to mute sound or so?  
	 * Seems it's like ADD_EXPLOSION, etc. the first 2 params. The 3rd atm no need to worry since it always seems to be 0.  
	 * ```
	 */
	@:native("NetworkExplodeVehicle")
	static function networkExplodeVehicle(vehicle:Dynamic, isAudible:Bool, isInvisible:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkExplodeHeli")
	static function networkExplodeHeli(heli:Dynamic, isAudible:Bool, isInvisible:Bool, netScriptEntityId:Int):Dynamic;

	/**
	 * Fade the given entity back in, usually used after the entity has been faded out with [NETWORK_FADE_OUT_ENTITY](#\_0xDE564951F95E09ED)
	 * 
	 * When used on a entity which isn't invisible or faded out then the native will still work, it will just instanly make the ped invisible before fading in.
	 * 
	 * **Additional Parameters**:
	 * 
	 * *   **flash**: If set to true the entity will flash while fading in.
	 */
	@:native("NetworkFadeInEntity")
	static function networkFadeInEntity(entity:Dynamic, bNetwork:Bool):Dynamic;

	/**
	 * ```
	 * normal - transition like when your coming out of LSC  
	 * slow - transition like when you walk into a mission  
	 * ```
	 */
	@:native("NetworkFadeOutEntity")
	static function networkFadeOutEntity(entity:Dynamic, normal:Bool, slow:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGamerHasHeadset")
	static function networkGamerHasHeadset(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkFindGamersInCrew")
	static function networkFindGamersInCrew(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkFindMatchedGamers")
	static function networkFindMatchedGamers(p0:Dynamic, p1:Float, p2:Float, p3:Float):Bool;

	/**
	 * 
	 */
	@:native("NetworkFinishBroadcastingData")
	static function networkFinishBroadcastingData():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGamertagFromHandlePending")
	static function networkGamertagFromHandlePending():Bool;

	/**
	 * 
	 */
	@:native("NetworkForceLocalUseOfSyncedSceneCamera")
	static function networkForceLocalUseOfSyncedSceneCamera(sceneId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetActivityPlayerNum")
	static function networkGetActivityPlayerNum(p0:Bool):Int;

	/**
	 * 
	 */
	@:native("NetworkGetAgeGroup")
	static function networkGetAgeGroup():Int;

	/**
	 * 
	 */
	@:native("NetworkGamertagFromHandleSucceeded")
	static function networkGamertagFromHandleSucceeded():Bool;

	/**
	 * ```
	 * NETWORK_GET_*
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkGetAveragePacketLossForPlayer")
	static function NetworkGetAveragePacketLossForPlayer(player:Dynamic):Float;

	/**
	 * ```
	 * Same as _NETWORK_GET_AVERAGE_LATENCY_FOR_PLAYER (0xD414BE129BB81B32)
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkGetAverageLatencyForPlayer_2")
	static function NetworkGetAverageLatencyForPlayer2(player:Dynamic):Float;

	/**
	 * 
	 */
	@:native("NetworkGamertagFromHandleStart")
	static function networkGamertagFromHandleStart(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkGetCurrentlySelectedGamerHandleFromInviteMenu")
	static function networkGetCurrentlySelectedGamerHandleFromInviteMenu(p0:Dynamic):Bool;

	/**
	 * ```
	 * Return the content modifier id (the tunables context if you want) of a specific content.  
	 * It takes the content hash (which is the mission id hash), and return the content modifier id, used as the tunables context.  
	 * The mission id can be found on the Social club, for example, 'socialclub.rockstargames.com/games/gtav/jobs/job/A8M6Bz8MLEC5xngvDCzGwA'  
	 * 'A8M6Bz8MLEC5xngvDCzGwA' is the mission id, so the game hash this and use it as the parameter for this native.  
	 * ```
	 */
	@:native("NetworkGetContentModifierListId")
	static function networkGetContentModifierListId(contentHash:Int):Int;

	/**
	 * 
	 */
	@:native("NetworkGetBackgroundLoadingRecipients")
	static function networkGetBackgroundLoadingRecipients(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkGetAverageLatencyForPlayer")
	static function NetworkGetAverageLatencyForPlayer(player:Dynamic):Float;

	/**
	 * 
	 */
	@:native("NetworkGetDisplaynamesFromHandles")
	static function NetworkGetDisplaynamesFromHandles(p0:Dynamic, p1:Dynamic, p2:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NetworkGetDestroyerOfEntity")
	static function NetworkGetDestroyerOfEntity(p0:Dynamic, p1:Dynamic, weaponHash:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkGetDestroyerOfNetworkId")
	static function networkGetDestroyerOfNetworkId(netId:Int, weaponHash:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NetworkGetEntityIsNetworked")
	static function networkGetEntityIsNetworked(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkGetEntityIsLocal")
	static function networkGetEntityIsLocal(entity:Dynamic):Bool;

	/**
	 * Get the local entity handle of the given network id
	 * 
	 * Through this native you can get back the entity that you previously converted to netid with [NetworkGetNetworkIdFromEntity](#\_0x9E35DAB6) or with the `ToNet` natives
	 */
	@:native("NetworkGetEntityFromNetworkId")
	static function networkGetEntityFromNetworkId(netId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetFoundGamer")
	static function networkGetFoundGamer(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkGetEntityKillerOfPlayer")
	static function networkGetEntityKillerOfPlayer(player:Dynamic, weaponHash:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetFriendCount")
	static function networkGetFriendCount():Int;

	/**
	 * 
	 */
	@:native("NetworkGetEntityNetScriptId")
	static function NetworkGetEntityNetScriptId(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NetworkGetGamerStatusResult")
	static function networkGetGamerStatusResult(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkGetFriendName")
	static function networkGetFriendName(friendIndex:Int):String;

	/**
	 * 
	 */
	@:native("NetworkGetGamerStatusFromQueue")
	static function networkGetGamerStatusFromQueue():Bool;

	/**
	 * 
	 */
	@:native("NetworkGetGlobalMultiplayerClock")
	static function networkGetGlobalMultiplayerClock(hours:Dynamic, minutes:Dynamic, seconds:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetFriendNameFromIndex")
	static function NetworkGetFriendNameFromIndex(friendIndex:Int):String;

	/**
	 * 
	 */
	@:native("NetworkGetHostOfThisScript")
	static function networkGetHostOfThisScript():Dynamic;

	/**
	 * ```
	 * Retrieves the local player's NetworkHandle* and stores it in the given buffer.  
	 * * Currently unknown struct  
	 * ```
	 */
	@:native("NetworkGetLocalHandle")
	static function networkGetLocalHandle(networkHandle:Dynamic, bufferSize:Int):Dynamic;

	/**
	 * ```
	 * scriptName examples:  
	 * "freemode", "AM_CR_SecurityVan", ...  
	 * Most of the time, these values are used:  
	 * p1 = -1  
	 * p2 = 0  
	 * ```
	 */
	@:native("NetworkGetHostOfScript")
	static function networkGetHostOfScript(scriptName:String, p1:Int, p2:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetGamertagFromHandle")
	static function networkGetGamertagFromHandle(networkHandle:Dynamic):String;

	/**
	 * ```
	 * Used by NetBlender
	 * ```
	 */
	@:native("NetworkGetLastVelocityReceived")
	static function NetworkGetLastVelocityReceived(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetNumBodyTrackers")
	static function NetworkGetNumBodyTrackers():Int;

	/**
	 * 
	 */
	@:native("NetworkGetInstanceIdOfThisScript")
	static function networkGetInstanceIdOfThisScript():Int;

	/**
	 * ```
	 * Seems to always return 0, but it's used in quite a few loops.
	 * for (num3 = 0; num3 < NETWORK::0xCCD8C02D(); num3++)
	 *     {
	 *         if (NETWORK::NETWORK_IS_PARTICIPANT_ACTIVE(PLAYER::0x98F3B274(num3)) != 0)
	 *         {
	 *             var num5 = NETWORK::NETWORK_GET_PLAYER_INDEX(PLAYER::0x98F3B274(num3));
	 * ```
	 */
	@:native("NetworkGetMaxNumParticipants")
	static function networkGetMaxNumParticipants():Int;

	/**
	 * Returns a local synchronized scene handle of a networked synchronised scene.
	 */
	@:native("NetworkGetLocalSceneFromNetworkId")
	static function networkGetLocalSceneFromNetworkId(netSceneId:Int):Int;

	/**
	 * 
	 */
	@:native("NetworkGetNumScriptParticipants")
	static function networkGetNumScriptParticipants(p0:Dynamic, p1:Dynamic, p2:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NetworkGetNumFoundGamers")
	static function networkGetNumFoundGamers():Int;

	/**
	 * ```
	 * NETWORK_GET_*
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkGetOldestResendCountForPlayer")
	static function NetworkGetOldestResendCountForPlayer(player:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NetworkGetMaxFriends")
	static function networkGetMaxFriends():Int;

	/**
	 * ```
	 * Returns the amount of players connected in the current session. Only works when connected to a session/server.  
	 * ```
	 */
	@:native("NetworkGetNumConnectedPlayers")
	static function networkGetNumConnectedPlayers():Int;

	/**
	 * 
	 */
	@:native("NetworkGetPlatformPartyMembers")
	static function networkGetPlatformPartyMembers(data:Dynamic, dataSize:Int):Int;

	/**
	 * Get the network id of the given entity
	 * 
	 * An entity network id represents a given entity for other clients, it's a handle shared between clients, can be reconverted to a client entity handle.\
	 * These (entity network IDs) can and will be reused, the network id will not change.
	 * If you need to refer to an entity across machines (clients, or the server), you should use its network id.
	 * 
	 * Read more at [Network and local IDs](https://docs.fivem.net/docs/scripting-manual/networking/ids/)
	 */
	@:native("NetworkGetNetworkIdFromEntity")
	static function networkGetNetworkIdFromEntity(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NetworkGetPlayerFromGamerHandle")
	static function networkGetPlayerFromGamerHandle(networkHandle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetNumParticipants")
	static function networkGetNumParticipants():Int;

	/**
	 * 
	 */
	@:native("NetworkGetNumPresenceInvites")
	static function networkGetNumPresenceInvites():Int;

	/**
	 * 
	 */
	@:native("NetworkGetPlatformPartyUnk")
	static function NetworkGetPlatformPartyUnk():Int;

	/**
	 * 
	 */
	@:native("NetworkGetParticipantIndex")
	static function networkGetParticipantIndex(index:Int):Int;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkGetNumUnackedForPlayer")
	static function NetworkGetNumUnackedForPlayer(player:Dynamic):Int;

	/**
	 * ```
	 * Returns the Player associated to a given Ped when in an online session.  
	 * ```
	 */
	@:native("NetworkGetPlayerIndexFromPed")
	static function networkGetPlayerIndexFromPed(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetPresenceInviteContentId")
	static function networkGetPresenceInviteContentId(p0:Dynamic):String;

	/**
	 * 
	 */
	@:native("NetworkGetPlayerOwnsWaypoint")
	static function networkGetPlayerOwnsWaypoint(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkGetPresenceInviteId")
	static function networkGetPresenceInviteId(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetPlayerIndex")
	static function networkGetPlayerIndex(player:Dynamic):Int;

	/**
	 * Returns the coordinates of another player.
	 * 
	 * Does not work if you enter your own player id as p0 (will return `(0.0, 0.0, 0.0)` in that case).
	 */
	@:native("NetworkGetPlayerCoords")
	static function NetworkGetPlayerCoords(player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetPresenceInviteHandle")
	static function networkGetPresenceInviteHandle(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkGetPresenceInvitePlaylistLength")
	static function networkGetPresenceInvitePlaylistLength(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetPlayerLoudness")
	static function networkGetPlayerLoudness(player:Dynamic):Float;

	/**
	 * 
	 */
	@:native("NetworkGetPlayerTutorialSessionInstance")
	static function networkGetPlayerTutorialSessionInstance(player:Dynamic):Int;

	/**
	 * The Native returns a hash of the session id as string from the specific invite index!
	 */
	@:native("NetworkGetPresenceInviteSessionId")
	static function networkGetPresenceInviteSessionId(inviteIndex:Int):Int;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkGetPositionHashOfThisScript")
	static function NetworkGetPositionHashOfThisScript():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetPresenceInviteFromAdmin")
	static function networkGetPresenceInviteFromAdmin(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkGetPresenceInviteIsTournament")
	static function networkGetPresenceInviteIsTournament(p0:Dynamic):Bool;

	/**
	 * Returns the Name of the inviter of the specific selected Invite.
	 */
	@:native("NetworkGetPresenceInviteInviter")
	static function networkGetPresenceInviteInviter(inviteIndex:Int):String;

	/**
	 * 
	 */
	@:native("NetworkGetPresenceInvitePlaylistCurrent")
	static function networkGetPresenceInvitePlaylistCurrent(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetPrimaryClanDataClear")
	static function networkGetPrimaryClanDataClear():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetPrimaryClanDataPending")
	static function networkGetPrimaryClanDataPending():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetPrimaryClanDataCancel")
	static function networkGetPrimaryClanDataCancel():Dynamic;

	/**
	 * ```
	 * Same as GET_RANDOM_INT_IN_RANGE
	 * ```
	 */
	@:native("NetworkGetRandomIntRanged")
	static function networkGetRandomIntRanged(rangeStart:Int, rangeEnd:Int):Int;

	/**
	 * 
	 */
	@:native("NetworkGetPrimaryClanDataSuccess")
	static function networkGetPrimaryClanDataSuccess():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetPrimaryClanDataNew")
	static function networkGetPrimaryClanDataNew(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkGetPrimaryClanDataStart")
	static function networkGetPrimaryClanDataStart(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * ```
	 * Based on scripts such as in freemode.c how they call their vars vVar and fVar the 2nd and 3rd param it a Vector3 and Float, but the first is based on get_random_int_in_range..  
	 * ```
	 */
	@:native("NetworkGetRespawnResult")
	static function networkGetRespawnResult(randomInt:Int, coordinates:Dynamic, heading:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetRandomInt")
	static function networkGetRandomInt():Int;

	/**
	 * 
	 */
	@:native("NetworkGetRosPrivilege_25")
	static function NetworkGetRosPrivilege25():Bool;

	/**
	 * 
	 */
	@:native("NetworkGetRosPrivilege_24")
	static function NetworkGetRosPrivilege24():Bool;

	/**
	 * 
	 */
	@:native("NetworkGetRespawnResultFlags")
	static function networkGetRespawnResultFlags(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetTalkerProximity")
	static function networkGetTalkerProximity():Float;

	/**
	 * 
	 */
	@:native("NetworkGetScriptStatus")
	static function networkGetScriptStatus():Int;

	/**
	 * 
	 */
	@:native("NetworkGetRosPrivilege_9")
	static function NetworkGetRosPrivilege9():Bool;

	/**
	 * 
	 */
	@:native("NetworkGetTargetingMode")
	static function NetworkGetTargetingMode():Int;

	/**
	 * 
	 */
	@:native("NetworkGetThisScriptIsNetworkScript")
	static function networkGetThisScriptIsNetworkScript():Bool;

	/**
	 * 
	 */
	@:native("NetworkGetTimeoutTime")
	static function networkGetTimeoutTime():Int;

	/**
	 * ```
	 * Actually returns the version (TUNABLE_VERSION)
	 * ```
	 */
	@:native("NetworkGetTunableCloudCrc")
	static function networkGetTunableCloudCrc():Int;

	/**
	 * 
	 */
	@:native("NetworkGetTotalNumPlayers")
	static function networkGetTotalNumPlayers():Int;

	/**
	 * 
	 */
	@:native("NetworkGetTransitionHost")
	static function networkGetTransitionHost(networkHandle:Dynamic):Bool;

	/**
	 * ```
	 * NETWORK_*
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkGetUnreliableResendCountForPlayer")
	static function NetworkGetUnreliableResendCountForPlayer(player:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NetworkHasControlOfDoor")
	static function networkHasControlOfDoor(doorHash:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkHandleFromFriend")
	static function networkHandleFromFriend(friendIndex:Int, networkHandle:Dynamic, bufferSize:Int):Dynamic;

	/**
	 * ```
	 * Returns count.
	 * ```
	 */
	@:native("NetworkGetTransitionMembers")
	static function networkGetTransitionMembers(data:Dynamic, dataCount:Int):Int;

	/**
	 * ```
	 * Returns a NetworkHandle* from the specified member ID and stores it in a given buffer.  
	 * * Currently unknown struct  
	 * ```
	 */
	@:native("NetworkHandleFromMemberId")
	static function networkHandleFromMemberId(memberId:String, networkHandle:Dynamic, bufferSize:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkHasControlOfPickup")
	static function networkHasControlOfPickup(pickup:Dynamic):Bool;

	/**
	 * ```
	 * Returns a handle to networkHandle* from the specified player handle and stores it in a given buffer.  
	 * * Currently unknown struct  
	 * Example:  
	 * std::vector<UINT64> GetPlayerNetworkHandle(Player player) {  
	 *     const int size = 13;  
	 *     uint64_t *buffer = std::make_unique<uint64_t[]>(size).get();  
	 *     NETWORK::NETWORK_HANDLE_FROM_PLAYER(player, reinterpret_cast<int *>(buffer), 13);  
	 *     for (int i = 0; i < size; i++) {  
	 *         Log::Msg("networkhandle[%i]: %llx", i, buffer[i]);  
	 *     }  
	 *     std::vector<UINT64> result(buffer, buffer + sizeof(buffer));  
	 *     return result;  
	 * }  
	 * ```
	 */
	@:native("NetworkHandleFromPlayer")
	static function networkHandleFromPlayer(player:Dynamic, networkHandle:Dynamic, bufferSize:Int):Dynamic;

	/**
	 * ```
	 * Returns a NetworkHandle* from the specified user ID and stores it in a given buffer.  
	 * * Currently unknown struct  
	 * ```
	 */
	@:native("NetworkHandleFromUserId")
	static function networkHandleFromUserId(userId:String, networkHandle:Dynamic, bufferSize:Int):Dynamic;

	/**
	 * ```
	 * Returns true if dinput8.dll is present in the game directory.
	 * You will get following error message if that is true: "You are attempting to access GTA Online servers with an altered version of the game."
	 * ```
	 */
	@:native("NetworkHasGameBeenAltered")
	static function NetworkHasGameBeenAltered():Bool;

	/**
	 * 
	 */
	@:native("NetworkHasControlOfEntity")
	static function networkHasControlOfEntity(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkHasInvitedGamer")
	static function networkHasInvitedGamer(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkHasAgeRestrictedProfile")
	static function NetworkHasAgeRestrictedProfile():Bool;

	/**
	 * 
	 */
	@:native("NetworkHasCachedPlayerHeadBlendData")
	static function networkHasCachedPlayerHeadBlendData(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkHasControlOfNetworkId")
	static function networkHasControlOfNetworkId(netId:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkHasInvitedGamerToTransition")
	static function networkHasInvitedGamerToTransition(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkHasEntityBeenRegisteredWithThisThread")
	static function networkHasEntityBeenRegisteredWithThisThread(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkHasReceivedHostBroadcastData")
	static function networkHasReceivedHostBroadcastData():Bool;

	/**
	 * 
	 */
	@:native("NetworkHasFollowInvite")
	static function networkHasFollowInvite():Bool;

	/**
	 * 
	 */
	@:native("NetworkHasSocialNetworkingSharingPriv")
	static function networkHasSocialNetworkingSharingPriv():Bool;

	/**
	 * 
	 */
	@:native("NetworkHasHeadset")
	static function networkHasHeadset():Bool;

	/**
	 * 
	 */
	@:native("NetworkHasInviteBeenAcked")
	static function networkHasInviteBeenAcked(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkHasPlayerStartedTransition")
	static function networkHasPlayerStartedTransition(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkHasSocialClubAccount")
	static function networkHasSocialClubAccount():Bool;

	/**
	 * 
	 */
	@:native("NetworkHasTransitionInviteBeenAcked")
	static function networkHasTransitionInviteBeenAcked(networkHandle:Dynamic):Bool;

	/**
	 * ```
	 * Returns whether the signed-in user has valid Rockstar Online Services (ROS) credentials.
	 * ```
	 */
	@:native("NetworkHasValidRosCredentials")
	static function networkHasValidRosCredentials():Bool;

	/**
	 * 
	 */
	@:native("NetworkHasPendingInvite")
	static function networkHasPendingInvite():Bool;

	/**
	 * 
	 */
	@:native("NetworkHashFromGamerHandle")
	static function networkHashFromGamerHandle(networkHandle:Dynamic):Int;

	/**
	 * ```
	 * index is always 18 in scripts
	 * ```
	 */
	@:native("NetworkHasRosPrivilege")
	static function networkHasRosPrivilege(index:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkHashFromPlayerHandle")
	static function networkHashFromPlayerHandle(player:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NetworkHasViewGamerUserContentResult")
	static function NetworkHasViewGamerUserContentResult(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkHaveRosBannedPriv")
	static function networkHaveRosBannedPriv():Bool;

	/**
	 * 
	 */
	@:native("NetworkHaveOnlinePrivileges")
	static function networkHaveOnlinePrivileges():Bool;

	/**
	 * 
	 */
	@:native("NetworkHaveOnlinePrivilege_2")
	static function NetworkHaveOnlinePrivilege2():Bool;

	/**
	 * 
	 */
	@:native("NetworkHaveRosLeaderboardWritePriv")
	static function networkHaveRosLeaderboardWritePriv():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsActivitySession")
	static function networkIsActivitySession():Bool;

	/**
	 * 
	 */
	@:native("NetworkHaveRosSocialClubPriv")
	static function networkHaveRosSocialClubPriv():Bool;

	/**
	 * 
	 */
	@:native("NetworkHasRosPrivilegeEndDate")
	static function networkHasRosPrivilegeEndDate(privilege:Int, banType:Dynamic, timeData:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkHaveRosMultiplayerPriv")
	static function networkHaveRosMultiplayerPriv():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsActivitySpectator")
	static function networkIsActivitySpectator():Bool;

	/**
	 * 
	 */
	@:native("NetworkHaveCommunicationPrivileges")
	static function networkHaveCommunicationPrivileges(p0:Int, player:Dynamic):Bool;

	/**
	 * From what I can tell it looks like it does the following:
	 * 
	 * Creates/hosts a new transition to another online session, using this in FiveM will result in other players being disconencted from the server/preventing them from joining. This is most likely because I entered the wrong session parameters since they're pretty much all unknown right now.
	 * 
	 * You also need to use `NetworkJoinTransition(Player player)` and `NetworkLaunchTransition()`.
	 */
	@:native("NetworkHostTransition")
	static function networkHostTransition(p0:Int, p1:Int, p2:Int, p3:Int, p4:Dynamic, p5:Bool, p6:Bool, p7:Int, p8:Dynamic, p9:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkHaveRosCreateTicketPriv")
	static function networkHaveRosCreateTicketPriv():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsCableConnected")
	static function networkIsCableConnected():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsAddingFriend")
	static function networkIsAddingFriend():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkHaveUserContentPrivileges")
	static function networkHaveUserContentPrivileges(p0:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsClockTimeOverridden")
	static function networkIsClockTimeOverridden():Bool;

	/**
	 * 
	 */
	@:native("NetworkInviteGamers")
	static function networkInviteGamers(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsCloudBackgroundScriptRequestPending")
	static function networkIsCloudBackgroundScriptRequestPending():Bool;

	/**
	 * 
	 */
	@:native("NetworkInviteGamersToTransition")
	static function networkInviteGamersToTransition(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsDoorNetworked")
	static function networkIsDoorNetworked(doorHash:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsActivitySpectatorFromHandle")
	static function networkIsActivitySpectatorFromHandle(networkHandle:Dynamic):Bool;

	/**
	 * ```
	 * NETWORK_IS_*
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkIsConnectionEndpointRelayServer")
	static function NetworkIsConnectionEndpointRelayServer(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsFriendHandleOnline")
	static function NetworkIsFriendHandleOnline(networkHandle:Dynamic):Bool;

	/**
	 * Note: This only works for vehicles, which appears to be a bug (since the setter *does* work for every entity type and the name is 99% correct).
	 */
	@:native("NetworkIsEntityConcealed")
	static function NetworkIsEntityConcealed(entity:Dynamic):Bool;

	/**
	 * ```
	 * This would be nice to see if someone is in party chat, but 2 sad notes.  
	 * 1) It only becomes true if said person is speaking in that party at the time.  
	 * 2) It will never, become true unless you are in that party with said person.  
	 * ```
	 */
	@:native("NetworkIsChattingInPlatformParty")
	static function networkIsChattingInPlatformParty(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsEntityFading")
	static function networkIsEntityFading(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsFindingGamers")
	static function networkIsFindingGamers():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsCloudAvailable")
	static function networkIsCloudAvailable():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsFriendInMultiplayer")
	static function networkIsFriendInMultiplayer(friendName:String):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsFriend")
	static function networkIsFriend(networkHandle:Dynamic):Bool;

	/**
	 * ```
	 * In scripts R* calls 'NETWORK_GET_FRIEND_NAME' in this param.  
	 * ```
	 */
	@:native("NetworkIsFriendInSameTitle")
	static function networkIsFriendInSameTitle(friendName:String):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsFriendIndexOnline")
	static function networkIsFriendIndexOnline(friendIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsGameInProgress")
	static function networkIsGameInProgress():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsGamerInMySession")
	static function networkIsGamerInMySession(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsGettingGamerStatus")
	static function networkIsGettingGamerStatus():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsGamerMutedByMe")
	static function networkIsGamerMutedByMe(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsFriendOnline")
	static function networkIsFriendOnline(name:String):Bool;

	/**
	 * ```
	 * If you are host, returns true else returns false.
	 * ```
	 */
	@:native("NetworkIsHost")
	static function networkIsHost():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsGamerBlockedByMe")
	static function networkIsGamerBlockedByMe(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsHandleValid")
	static function networkIsHandleValid(networkHandle:Dynamic, bufferSize:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsGamerTalking")
	static function networkIsGamerTalking(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsInSession")
	static function networkIsInSession():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsInMpCutscene")
	static function networkIsInMpCutscene():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsHostOfThisScript")
	static function networkIsHostOfThisScript():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsInTutorialSession")
	static function networkIsInTutorialSession():Bool;

	/**
	 * ```
	 * Note according to IDA TU27 X360(Console),  
	 * This native & 'NETWORK_IS_PARTY_MEMBER' both jump to the same location.  
	 * Side note: This location just stops where it's at once jumped to.  
	 * Screenshot for side note,   
	 * h t t p ://i.imgur.com/m2ci1mF.png  
	 * h t t p://i.imgur.com/Z0Wx2B6.png  
	 * ```
	 */
	@:native("NetworkIsInParty")
	static function networkIsInParty():Bool;

	/**
	 * ```
	 * Hardcoded to return false.
	 * ```
	 */
	@:native("NetworkIsInPlatformPartyChat")
	static function networkIsInPlatformPartyChat():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsLocalPlayerInvincible")
	static function networkIsLocalPlayerInvincible():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsInSpectatorMode")
	static function networkIsInSpectatorMode():Bool;

	/**
	 * ```
	 * Hardcoded to return false.
	 * ```
	 */
	@:native("NetworkIsInPlatformParty")
	static function networkIsInPlatformParty():Bool;

	/**
	 * Returns true if the specified network id is controlled by someone else.
	 */
	@:native("NetworkIsNetworkIdAClone")
	static function NetworkIsNetworkIdAClone(netId:Int):Bool;

	/**
	 * Checks if the networkHandle is the same as any other user that is signed in on the local machine.
	 * For example, if your console has two or more users signed in (on different controllers), the profile that is not controlling the game would be "inactive".
	 */
	@:native("NetworkIsInactiveProfile")
	static function networkIsInactiveProfile(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsInTransition")
	static function networkIsInTransition():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsParticipantActive")
	static function networkIsParticipantActive(p0:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsMultiplayerDisabled")
	static function networkIsMultiplayerDisabled():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsOfflineInvitePending")
	static function networkIsOfflineInvitePending():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsPlayerAParticipantOnScript")
	static function networkIsPlayerAParticipantOnScript(player1:Dynamic, script:String, player2:Dynamic):Bool;

	/**
	 * ```
	 * This function is hard-coded to always return 0.
	 * ```
	 */
	@:native("NetworkIsPendingFriend")
	static function networkIsPendingFriend(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkIsPlayerConnected")
	static function networkIsPlayerConnected(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsLocalTalking")
	static function networkIsLocalTalking():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsPlayerConcealed")
	static function networkIsPlayerConcealed(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsPlayerFading")
	static function networkIsPlayerFading(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsPlayerBlockedByMe")
	static function networkIsPlayerBlockedByMe(player:Dynamic):Bool;

	/**
	 * ```
	 * Note according to IDA TU27 X360(Console),  
	 * This native & 'NETWORK_IS_PARTY_MEMBER' both jump to the same location.  
	 * Side note: This location just stops where it's at once jumped to.  
	 * Screenshot for side note,   
	 * h t t p ://i.imgur.com/m2ci1mF.png  
	 * h t t p://i.imgur.com/Z0Wx2B6.png  
	 * ```
	 */
	@:native("NetworkIsPartyMember")
	static function networkIsPartyMember(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsPlayerInMpCutscene")
	static function networkIsPlayerInMpCutscene(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsPlayerMutedByMe")
	static function networkIsPlayerMutedByMe(player:Dynamic):Bool;

	/**
	 * ```
	 * NETWORK_ARE_*  
	 * ```
	 */
	@:native("NetworkIsPlayerEqualToIndex")
	static function NetworkIsPlayerEqualToIndex(player:Dynamic, index:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsPlayerAParticipant")
	static function networkIsPlayerAParticipant(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsPlayerActive")
	static function networkIsPlayerActive(player:Dynamic):Bool;

	/**
	 * ```
	 * returns true if someone is screaming or talking in a microphone  
	 * ```
	 */
	@:native("NetworkIsPlayerTalking")
	static function networkIsPlayerTalking(player:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v2245
	 * ```
	 */
	@:native("NetworkIsScriptActiveByHash")
	static function NetworkIsScriptActiveByHash(scriptHash:Int, p1:Int, p2:Bool, p3:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsPsnAvailable")
	static function NetworkIsPsnAvailable():Bool;

	/**
	 * ```
	 * This checks if player is playing on gta online or not.  
	 * Please add an if and block your mod if this is "true".  
	 * ```
	 */
	@:native("NetworkIsSessionStarted")
	static function networkIsSessionStarted():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsScriptActive")
	static function networkIsScriptActive(scriptName:String, player:Dynamic, p2:Bool, p3:Dynamic):Bool;

	/**
	 * ```
	 * Returns whether the player is signed into Social Club.  
	 * ```
	 */
	@:native("NetworkIsSignedIn")
	static function networkIsSignedIn():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsSessionBusy")
	static function networkIsSessionBusy():Bool;

	/**
	 * ```
	 * Returns whether the game is not in offline mode.  
	 * seemed not to work for some ppl  
	 * ```
	 */
	@:native("NetworkIsSignedOnline")
	static function networkIsSignedOnline():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsSessionActive")
	static function networkIsSessionActive():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsThisScriptMarked")
	static function NetworkIsThisScriptMarked(p0:Dynamic, p1:Bool, p2:Dynamic):Bool;

	/**
	 * ```
	 * Same as _IS_TEXT_CHAT_ACTIVE, except it does not check if the text chat HUD component is initialized, and therefore may crash.  
	 * ```
	 */
	@:native("NetworkIsTextChatActive")
	static function NetworkIsTextChatActive():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsTransitionMatchmaking")
	static function networkIsTransitionMatchmaking():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsTransitionBusy")
	static function networkIsTransitionBusy():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsTransitionClosedFriends")
	static function networkIsTransitionClosedFriends():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsTransitionHost")
	static function networkIsTransitionHost():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsTunableCloudRequestPending")
	static function networkIsTunableCloudRequestPending():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsTransitionOpenToMatchmaking")
	static function networkIsTransitionOpenToMatchmaking():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsTransitionClosedCrew")
	static function networkIsTransitionClosedCrew():Bool;

	/**
	 * 
	 */
	@:native("NetworkJoinGroupActivity")
	static function networkJoinGroupActivity():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkIsTransitionStarted")
	static function networkIsTransitionStarted():Bool;

	/**
	 * 
	 */
	@:native("NetworkJoinPreviouslyFailedSession")
	static function networkJoinPreviouslyFailedSession():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsTransitionHostFromHandle")
	static function networkIsTransitionHostFromHandle(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkIsTransitionPrivate")
	static function networkIsTransitionPrivate():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsTransitionSolo")
	static function networkIsTransitionSolo():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsTransitionToGame")
	static function networkIsTransitionToGame():Bool;

	/**
	 * 
	 */
	@:native("NetworkIsTransitionVisibilityLocked")
	static function networkIsTransitionVisibilityLocked():Bool;

	/**
	 * 
	 */
	@:native("NetworkMarkTransitionGamerAsFullyJoined")
	static function networkMarkTransitionGamerAsFullyJoined(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkLeaveTransition")
	static function networkLeaveTransition():Bool;

	/**
	 * ```
	 * int handle[76];  
	 * NETWORK_HANDLE_FROM_FRIEND(iSelectedPlayer, &handle[0], 13);  
	 * Player uVar2 = NETWORK_GET_PLAYER_FROM_GAMER_HANDLE(&handle[0]);  
	 * NETWORK_JOIN_TRANSITION(uVar2);  
	 * 		nothing doin.  
	 * ```
	 */
	@:native("NetworkJoinTransition")
	static function networkJoinTransition(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkOpenTransitionMatchmaking")
	static function networkOpenTransitionMatchmaking():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkIsTutorialSessionChangePending")
	static function networkIsTutorialSessionChangePending():Bool;

	/**
	 * ```
	 * Could possibly bypass being muted or automatically muted  
	 * ```
	 */
	@:native("NetworkOverrideChatRestrictions")
	static function networkOverrideChatRestrictions(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkMemberIdFromGamerHandle")
	static function networkMemberIdFromGamerHandle(networkHandle:Dynamic):String;

	/**
	 * 
	 */
	@:native("NetworkJoinPreviouslyFailedTransition")
	static function networkJoinPreviouslyFailedTransition():Bool;

	/**
	 * ```
	 * R* uses this to hear all player when spectating.   
	 * It allows you to hear other online players when their chat is on none, crew and or friends  
	 * ```
	 */
	@:native("NetworkOverrideReceiveRestrictions")
	static function networkOverrideReceiveRestrictions(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Overrides the game clock time for the local player, allowing for manipulation of the in-game time. This native is effective in both multiplayer and singleplayer modes.
	 * 
	 * **Note:** Passing wrong data (e.g. hours above 23) will cause the game to crash.
	 */
	@:native("NetworkOverrideClockTime")
	static function networkOverrideClockTime(hours:Int, minutes:Int, seconds:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkOverrideCoordsAndHeading")
	static function networkOverrideCoordsAndHeading(entity:Dynamic, x:Float, y:Float, z:Float, heading:Float):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkLaunchTransition")
	static function networkLaunchTransition():Bool;

	/**
	 * ```
	 * p0 is always false in scripts.
	 * ```
	 */
	@:native("NetworkOverrideReceiveRestrictionsAll")
	static function networkOverrideReceiveRestrictionsAll(toggle:Bool):Dynamic;

	/**
	 * ```
	 * This is used alongside the native,
	 * 'NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS'. Read its description for more info.
	 * ```
	 */
	@:native("NetworkOverrideSendRestrictions")
	static function networkOverrideSendRestrictions(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkOverrideSendRestrictionsAll")
	static function networkOverrideSendRestrictionsAll(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkOverrideTransitionChat")
	static function networkOverrideTransitionChat(p0:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("NetworkOverrideClockMillisecondsPerGameMinute")
	static function NetworkOverrideClockMillisecondsPerGameMinute(ms:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkOverrideTeamRestrictions")
	static function networkOverrideTeamRestrictions(team:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkPlayerGetCheaterReason")
	static function networkPlayerGetCheaterReason():Int;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkPedForceGameStateUpdate")
	static function NetworkPedForceGameStateUpdate(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkPlayerHasHeadset")
	static function networkPlayerHasHeadset(player:Dynamic):Bool;

	/**
	 * ```
	 * Returns the name of a given player. Returns "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.
	 * ```
	 */
	@:native("NetworkPlayerGetName")
	static function networkPlayerGetName(player:Dynamic):String;

	/**
	 * ```
	 * Takes a 24 char buffer. Returns the buffer or "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.
	 * ```
	 */
	@:native("NetworkPlayerGetUserid")
	static function networkPlayerGetUserid(player:Dynamic, userID:Dynamic):String;

	/**
	 * 
	 */
	@:native("NetworkPlayerIsBadsport")
	static function networkPlayerIsBadsport():Bool;

	/**
	 * 
	 */
	@:native("NetworkPlayerIndexIsCheater")
	static function networkPlayerIndexIsCheater(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkPlayerIsCheater")
	static function networkPlayerIsCheater():Bool;

	/**
	 * 
	 */
	@:native("NetworkRegisterHostBroadcastVariables")
	static function networkRegisterHostBroadcastVariables(vars:Dynamic, numVars:Int):Dynamic;

	/**
	 * ```
	 * Checks if a specific value (BYTE) in CPlayerInfo is nonzero.  
	 * Returns always false in Singleplayer.  
	 * No longer used for dev checks since first mods were released on PS3 & 360.  
	 * R* now checks with the is_dlc_present native for the dlc hash 2532323046,  
	 * if that is present it will unlock dev stuff.  
	 * ```
	 */
	@:native("NetworkPlayerIsRockstarDev")
	static function networkPlayerIsRockstarDev(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkQueryRespawnResults")
	static function networkQueryRespawnResults(p0:Dynamic):Dynamic;

	/**
	 * Forces the "Are you sure you want to quit Grand Theft Auto V?" warning message (Same as when you Alt+F4) to show.
	 * Doesn't work in singleplayer.
	 */
	@:native("NetworkQuitMpToDesktop")
	static function networkQuitMpToDesktop():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkRegisterTunableIntHash")
	static function NetworkRegisterTunableIntHash(contextHash:Int, nameHash:Int, value:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkQueueGamerForStatus")
	static function networkQueueGamerForStatus(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkRegisterEntityAsNetworked")
	static function networkRegisterEntityAsNetworked(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkRegisterPlayerBroadcastVariables")
	static function networkRegisterPlayerBroadcastVariables(vars:Dynamic, numVars:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkRemoveAllTransitionInvite")
	static function networkRemoveAllTransitionInvite():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkRemoveEntityArea")
	static function networkRemoveEntityArea(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkRegisterTunableBoolHash")
	static function NetworkRegisterTunableBoolHash(contextHash:Int, nameHash:Int, value:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkRemovePresenceInvite")
	static function networkRemovePresenceInvite(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkRegisterTunableFloatHash")
	static function NetworkRegisterTunableFloatHash(contextHash:Int, nameHash:Int, value:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkRemoveTransitionInvite")
	static function networkRemoveTransitionInvite(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkRequestControlOfNetworkId")
	static function networkRequestControlOfNetworkId(netId:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkReportMyself")
	static function NetworkReportMyself():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkRequestControlOfDoor")
	static function networkRequestControlOfDoor(doorID:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkRequestCloudBackgroundScripts")
	static function networkRequestCloudBackgroundScripts():Bool;

	/**
	 * ```
	 * p4 and p5 are always 0 in scripts  
	 * ```
	 */
	@:native("NetworkRespawnCoords")
	static function NetworkRespawnCoords(player:Dynamic, x:Float, y:Float, z:Float, p4:Bool, p5:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkRequestCloudTunables")
	static function networkRequestCloudTunables():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkResetBodyTracker")
	static function networkResetBodyTracker():Dynamic;

	/**
	 * ```
	 * String "NETWORK_SEND_PRESENCE_TRANSITION_INVITE" is contained in the function in ida so this one is correct.  
	 * ```
	 */
	@:native("NetworkSendPresenceTransitionInvite")
	static function NetworkSendPresenceTransitionInvite(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkSeedRandomNumberGenerator")
	static function networkSeedRandomNumberGenerator(seed:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkRequestControlOfEntity")
	static function networkRequestControlOfEntity(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkSendInviteViaPresence")
	static function networkSendInviteViaPresence(networkHandle:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * Revives our local player who was previously dead.
	 * 
	 * **Note:** Call this once you resurrect the player (this does not need to be called every frame).
	 * 
	 * ```cpp
	 * enum ePlayerSpawnLocation {
	 *   // system will decide
	 *   SPAWN_LOCATION_AUTOMATIC = 0,
	 *   SPAWN_LOCATION_NEAR_DEATH = 1,
	 *   SPAWN_LOCATION_NEAR_TEAM_MATES = 2,
	 *   // script defined area
	 *   SPAWN_LOCATION_MISSION_AREA = 3,
	 *   SPAWN_LOCATION_NEAR_OTHER_PLAYERS = 4,
	 *   SPAWN_LOCATION_NEAR_CURRENT_POSITION = 5,
	 *   SPAWN_LOCATION_AT_CURRENT_POSITION = 6,
	 *   SPAWN_LOCATION_NET_TEST_BED = 7,
	 *   SPAWN_LOCATION_CUSTOM_SPAWN_POINTS = 8,
	 *   SPAWN_LOCATION_OUTSIDE_SIMEON_GARAGE = 9,
	 *   SPAWN_LOCATION_NEAR_SPECIFIC_COORDS = 10,
	 *   SPAWN_LOCATION_AT_SPECIFIC_COORDS = 11,
	 *   SPAWN_LOCATION_AT_AIRPORT_ARRIVALS = 12,
	 *   SPAWN_LOCATION_AT_SPECIFIC_COORDS_IF_POSSIBLE = 13,
	 *   SPAWN_LOCATION_IN_SPECIFIC_ANGLED_AREA = 14,
	 *   SPAWN_LOCATION_NEAREST_RESPAWN_POINT = 15,
	 *   SPAWN_LOCATION_AT_SPECIFIC_COORDS_RACE_CORONA = 16,
	 *   SPAWN_LOCATION_INSIDE_GARAGE = 17,
	 *   SPAWN_LOCATION_INSIDE_PROPERTY = 18,
	 *   SPAWN_LOCATION_INSIDE_PROPERTY_OR_GARAGE = 19,
	 *   SPAWN_LOCATION_NEAR_DEATH_IMPROMPTU = 20,
	 *   SPAWN_LOCATION_NEAR_CURRENT_POSITION_SPREAD_OUT = 21,
	 *   SPAWN_LOCATION_NEAREST_RESPAWN_POINT_TO_SPECIFIC_COORDS = 22,
	 *   SPAWN_LOCATION_NEAREST_HOSPITAL = 23,
	 *   SPAWN_LOCATION_NEAREST_POLICE_STATION = 24,
	 *   SPAWN_LOCATION_NEAREST_HOTEL_TO_SPECIFIC_COORDS = 25,
	 *   SPAWN_LOCATION_MISSION_AREA_NEAR_CURRENT_POSITION = 26,
	 *   SPAWN_LOCATION_PRIVATE_YACHT = 27,
	 *   SPAWN_LOCATION_PRIVATE_YACHT_APARTMENT = 28,
	 *   SPAWN_LOCATION_PRIVATE_FRIEND_YACHT = 29,
	 *   SPAWN_LOCATION_PRIVATE_YACHT_NEAR_SHORE = 30,
	 *   SPAWN_LOCATION_NEAR_GANG_BOSS = 31,
	 *   SPAWN_LOCATION_NEAR_SPECIFIC_COORDS_WITH_GANG = 32,
	 *   SPAWN_LOCATION_GANG_DM = 33,
	 *   SPAWN_LOCATION_GANG_BOSS_PRIVATE_YACHT = 34,
	 *   SPAWN_LOCATION_OFFICE = 35,
	 *   SPAWN_LOCATION_CLUBHOUSE = 36,
	 *   SPAWN_LOCATION_NEAR_CURRENT_POSITION_AS_POSSIBLE = 37,
	 *   SPAWN_LOCATION_NEAR_CURRENT_PERCEIVED_POSITION = 38,
	 *   SPAWN_LOCATION_IE_WAREHOUSE = 39,
	 *   SPAWN_LOCATION_BUNKER = 40,
	 *   SPAWN_LOCATION_HANGAR = 41,
	 *   SPAWN_LOCATION_DEFUNCT_BASE = 42,
	 *   SPAWN_LOCATION_NIGHTCLUB = 43,
	 *   SPAWN_LOCATION_ARENA_GARAGE = 44,
	 *   SPAWN_LOCATION_CASINO = 45,
	 *   SPAWN_LOCATION_CASINO_APARTMENT = 46,
	 *   SPAWN_LOCATION_CASINO_OUTSIDE = 47,
	 *   SPAWN_LOCATION_ARCADE = 48,
	 *   SPAWN_LOCATION_CASINO_NIGHTCLUB = 49,
	 *   SPAWN_LOCATION_SUBMARINE = 50,
	 *   SPAWN_LOCATION_HEIST_ISLAND_NEAR_DEATH = 51,
	 *   SPAWN_LOCATION_HEIST_ISLAND_BEACH_PARTY = 52,
	 *   SPAWN_LOCATION_LAND_NEAR_SUBMARINE = 53,
	 *   SPAWN_LOCATION_CAR_MEET = 54,
	 *   SPAWN_LOCATION_AUTO_SHOP = 55,
	 *   SPAWN_LOCATION_FIXER_HQ = 56,
	 *   SPAWN_LOCATION_SITTING_SMOKING = 57,
	 *   SPAWN_LOCATION_DRUNK_WAKE_UP_MUSIC_STUDIO = 58,
	 *   SPAWN_LOCATION_MUSIC_STUDIO = 59,
	 *   TOTAL_SPAWN_LOCATIONS = 60
	 * };
	 * ```
	 * 
	 * ```cpp
	 * enum eSpawnReason {
	 *   SPAWN_REASON_DEATH = 0,
	 *   SPAWN_REASON_TRANSITION,
	 *   SPAWN_REASON_MANUAL,
	 *   SPAWN_REASON_RESTORE_CHARACTER,
	 *   SPAWN_REASON_IN_VEHICLE
	 * };
	 * ```
	 * 
	 * ### Added parameters
	 * 
	 * *   **bUnpauseRenderPhases**: This boolean parameter will unpause the render phases when set to `true`.
	 * *   **iSpawnLocation**: This integer parameter sets the player's spawn location metric for telemetry. See `ePlayerSpawnLocation` enum.
	 * *   **iSpawnReason**: This integer parameter sets the player's spawn reason metric for telemetry. See `eSpawnReason` enum.
	 */
	@:native("NetworkResurrectLocalPlayer")
	static function networkResurrectLocalPlayer(x:Float, y:Float, z:Float, heading:Float, nInvincibilityTime:Int, bLeaveDeadPed:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionBlockJoinRequests")
	static function networkSessionBlockJoinRequests(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionActivityQuickmatch")
	static function networkSessionActivityQuickmatch(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * ```
	 * Message is limited to 64 characters.
	 * ```
	 */
	@:native("NetworkSendTextMessage")
	static function networkSendTextMessage(message:String, networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkSessionCancelInvite")
	static function networkSessionCancelInvite():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionAddActiveMatchmakingGroup")
	static function networkSessionAddActiveMatchmakingGroup(groupId:Int):Dynamic;

	/**
	 * ```
	 * the first arg seems to be the network player handle (&handle) and the second var is pretty much always "" and the third seems to be a number between 0 and ~10 and the 4th is is something like 0 to 5 and I guess the 5th is a bool cuz it is always 0 or 1  
	 * does this send an invite to a player?  
	 * ```
	 */
	@:native("NetworkSendTransitionGamerInstruction")
	static function networkSendTransitionGamerInstruction(networkHandle:Dynamic, p1:String, p2:Int, p3:Int, p4:Bool):Bool;

	/**
	 * ```
	 * p0 is always false and p1 varies.  
	 * NETWORK_SESSION_END(0, 1)  
	 * NETWORK_SESSION_END(0, 0)  
	 * Results in: "Connection to session lost due to an unknown network error. Please return to Grand Theft Auto V and try again later."  
	 * ```
	 */
	@:native("NetworkSessionEnd")
	static function networkSessionEnd(p0:Bool, p1:Bool):Bool;

	/**
	 * 
	 */
	@:native("NetworkSessionChangeSlots")
	static function networkSessionChangeSlots(p0:Int, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionCrewMatchmaking")
	static function networkSessionCrewMatchmaking(p0:Int, p1:Int, p2:Int, maxPlayers:Int, p4:Bool):Bool;

	/**
	 * 
	 */
	@:native("NetworkSessionForceCancelInvite")
	static function networkSessionForceCancelInvite():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionFriendMatchmaking")
	static function networkSessionFriendMatchmaking(p0:Int, p1:Int, maxPlayers:Int, p3:Bool):Bool;

	/**
	 * ```
	 * unknown params  
	 * p0 = 0, 2, or 999 (The global is 999 by default.)  
	 * p1 = 0 (Always in every script it's found in atleast.)  
	 * p2 = 0, 3, or 4 (Based on a var that is determined by a function.)  
	 * p3 = maxPlayers (It's obvious in x360 scripts it's always 18)  
	 * p4 = 0 (Always in every script it's found in atleast.)  
	 * p5 = 0 or 1. (1 if network_can_enter_multiplayer, but set to 0 if other checks after that are passed.)  
	 * p5 is reset to 0 if,  
	 * Global_1315318 = 0 or Global_1315323 = 9 or 12 or (Global_1312629 = 0 && Global_1312631 = true/1) those are passed.  
	 * ```
	 */
	@:native("NetworkSessionEnter")
	static function networkSessionEnter(p0:Dynamic, p1:Dynamic, p2:Dynamic, maxPlayers:Int, p4:Dynamic, p5:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionGetPrivateSlots")
	static function networkSessionGetPrivateSlots():Int;

	/**
	 * 
	 */
	@:native("NetworkSessionGetInviter")
	static function networkSessionGetInviter(networkHandle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionGetKickVote")
	static function networkSessionGetKickVote(player:Dynamic):Bool;

	/**
	 * ```
	 * Loads up the map that is loaded when beeing in mission creator  
	 * Player gets placed in a mix between online/offline mode  
	 * p0 is always 2 in R* scripts.  
	 * Appears to be patched in gtav b757 (game gets terminated) alonside with most other network natives to prevent online modding ~ghost30812  
	 * ```
	 */
	@:native("NetworkSessionHostSinglePlayer")
	static function networkSessionHostSinglePlayer(p0:Int):Dynamic;

	/**
	 * ```
	 * Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.  
	 * ```
	 */
	@:native("NetworkSessionHost")
	static function networkSessionHost(p0:Int, maxPlayers:Int, p2:Bool):Bool;

	/**
	 * 
	 */
	@:native("NetworkSessionGetMatchmakingGroupFree")
	static function networkSessionGetMatchmakingGroupFree(p0:Int):Int;

	/**
	 * 
	 */
	@:native("NetworkSessionHostClosed")
	static function networkSessionHostClosed(p0:Int, maxPlayers:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkSessionIsClosedCrew")
	static function networkSessionIsClosedCrew():Bool;

	/**
	 * 
	 */
	@:native("NetworkSessionIsClosedFriends")
	static function networkSessionIsClosedFriends():Bool;

	/**
	 * ```
	 * Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.  
	 * ```
	 */
	@:native("NetworkSessionHostFriendsOnly")
	static function networkSessionHostFriendsOnly(p0:Int, maxPlayers:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkSessionJoinInvite")
	static function networkSessionJoinInvite():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionIsSolo")
	static function networkSessionIsSolo():Bool;

	/**
	 * 
	 */
	@:native("NetworkSessionIsPrivate")
	static function networkSessionIsPrivate():Bool;

	/**
	 * 
	 */
	@:native("NetworkSessionIsVoiceSessionBusy")
	static function networkSessionIsVoiceSessionBusy():Bool;

	/**
	 * 
	 */
	@:native("NetworkSessionIsInVoiceSession")
	static function networkSessionIsInVoiceSession():Bool;

	/**
	 * 
	 */
	@:native("NetworkSessionIsVisible")
	static function networkSessionIsVisible():Bool;

	/**
	 * 
	 */
	@:native("NetworkSessionSetMatchmakingMentalState")
	static function networkSessionSetMatchmakingMentalState(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * Only works as host.
	 * ```
	 */
	@:native("NetworkSessionKickPlayer")
	static function networkSessionKickPlayer(player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionVoiceHost")
	static function networkSessionVoiceHost():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionSetMatchmakingGroup")
	static function networkSessionSetMatchmakingGroup(matchmakingGroup:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionLeaveSinglePlayer")
	static function networkSessionLeaveSinglePlayer():Dynamic;

	/**
	 * ```
	 * playerTypes:
	 * 0 = regular joiner
	 * 4 = spectator
	 * 8 = unknown
	 * ```
	 */
	@:native("NetworkSessionSetMatchmakingGroupMax")
	static function networkSessionSetMatchmakingGroupMax(playerType:Int, playerCount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionVoiceRespondToRequest")
	static function networkSessionVoiceRespondToRequest(p0:Bool, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionMarkVisible")
	static function networkSessionMarkVisible(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionSetMatchmakingPropertyId")
	static function networkSessionSetMatchmakingPropertyId(p0:Bool):Dynamic;

	/**
	 * ```
	 * Only one occurence in the scripts:
	 * auto sub_cb43(auto a_0, auto a_1) {
	 *     if (g_2594CB._f1) {
	 *         if (NETWORK::_855BC38818F6F684()) {
	 *             NETWORK::_ABD5E88B8A2D3DB2(&a_0._fB93);
	 *             g_2594CB._f14/ *{13}* / = a_0._fB93;
	 *             g_2594CB._f4/ *"64"* / = a_1;
	 *             return 1;
	 *         }
	 *     }
	 *     return 0;
	 * }
	 * other:
	 * looks like it passes a player in the paramater
	 * Contains string "NETWORK_VOICE_CONNECT_TO_PLAYER" in ida
	 * ```
	 */
	@:native("NetworkSessionVoiceConnectToPlayer")
	static function networkSessionVoiceConnectToPlayer(globalPtr:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetChoiceMigrateOptions")
	static function networkSetChoiceMigrateOptions(toggle:Bool, player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionVoiceLeave")
	static function networkSessionVoiceLeave():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionValidateJoin")
	static function networkSessionValidateJoin(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionVoiceSetTimeout")
	static function networkSessionVoiceSetTimeout(timeout:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSessionWasInvited")
	static function networkSessionWasInvited():Bool;

	/**
	 * 
	 */
	@:native("NetworkSetActivityPlayerMax")
	static function networkSetActivityPlayerMax(playerCount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetActivitySpectator")
	static function networkSetActivitySpectator(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetActivitySpectatorMax")
	static function networkSetActivitySpectatorMax(maxSpectators:Int):Dynamic;

	/**
	 * ```cpp
	 * enum eMpSettingSpawn
	 * {
	 * 	MP_SETTING_SPAWN_NULL = 0,
	 * 	MP_SETTING_SPAWN_PROPERTY = 1,
	 * 	MP_SETTING_SPAWN_LAST_POSITION = 2,
	 * 	MP_SETTING_SPAWN_GARAGE = 3,
	 * 	MP_SETTING_SPAWN_RANDOM = 4,
	 * 	MP_SETTING_SPAWN_PRIVATE_YACHT = 5,
	 * 	MP_SETTING_SPAWN_OFFICE = 6,
	 * 	MP_SETTING_SPAWN_CLUBHOUSE = 7,
	 * 	MP_SETTING_SPAWN_IE_WAREHOUSE = 8,
	 * 	MP_SETTING_SPAWN_BUNKER = 9,
	 * 	MP_SETTING_SPAWN_HANGAR = 10,
	 * 	MP_SETTING_SPAWN_DEFUNCT_BASE = 11,
	 * 	MP_SETTING_SPAWN_NIGHTCLUB = 12,
	 * 	MP_SETTING_SPAWN_ARENA_GARAGE = 13,
	 * 	MP_SETTING_SPAWN_CASINO_APARTMENT = 14,
	 * 	MP_SETTING_SPAWN_ARCADE = 15,
	 * 	MP_SETTING_SPAWN_SUBMARINE = 16,
	 * 	MP_SETTING_SPAWN_CAR_MEET = 17,
	 * 	MP_SETTING_SPAWN_AUTO_SHOP = 18,
	 * 	MP_SETTING_SPAWN_FIXER_HQ = 19,
	 * 	MP_SETTING_SPAWN_MAX = 20,
	 * };
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("NetworkSetCurrentSpawnSetting")
	static function NetworkSetCurrentSpawnSetting(mpSettingSpawn:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetCurrentlySelectedGamerHandleFromInviteMenu")
	static function networkSetCurrentlySelectedGamerHandleFromInviteMenu(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkSetEntityGhostedWithOwner")
	static function NetworkSetEntityGhostedWithOwner(entity:Dynamic, p1:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("NetworkSetCurrentMissionId")
	static function NetworkSetCurrentMissionId(missionId:String):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetFriendlyFireOption")
	static function networkSetFriendlyFireOption(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetCurrentDataManagerHandle")
	static function NetworkSetCurrentDataManagerHandle(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkSetEntityCanBlend")
	static function networkSetEntityCanBlend(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetInSpectatorMode")
	static function networkSetInSpectatorMode(toggle:Bool, playerPed:Dynamic):Dynamic;

	/**
	 * ```
	 * if set to true other network players can't see it  
	 * if set to false other network player can see it  
	 * =========================================  
	 * ^^ I attempted this by grabbing an object with GET_ENTITY_PLAYER_IS_FREE_AIMING_AT and setting this naive no matter the toggle he could still see it.  
	 * pc or last gen?  
	 * ^^ last-gen  
	 * ```
	 */
	@:native("NetworkSetEntityInvisibleToNetwork")
	static function NetworkSetEntityInvisibleToNetwork(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetInviteOnCallForInviteMenu")
	static function networkSetInviteOnCallForInviteMenu(networkHandle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetInFreeCamMode")
	static function networkSetInFreeCamMode(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetGamerInvitedToTransition")
	static function networkSetGamerInvitedToTransition(networkHandle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetNoSpectatorChat")
	static function networkSetNoSpectatorChat(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetInMpCutscene")
	static function networkSetInMpCutscene(p0:Bool, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetMissionFinished")
	static function networkSetMissionFinished():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetOverrideSpectatorMode")
	static function networkSetOverrideSpectatorMode(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetLocalPlayerSyncLookAt")
	static function networkSetLocalPlayerSyncLookAt(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetInSpectatorModeExtended")
	static function networkSetInSpectatorModeExtended(toggle:Bool, playerPed:Dynamic, p2:Bool):Dynamic;

	/**
	 * This native does absolutely nothing, just a nullsub
	 */
	@:native("NetworkSetRichPresenceString")
	static function networkSetRichPresenceString(p0:Int, textLabel:String):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetPlayerIsPassive")
	static function networkSetPlayerIsPassive(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetLocalPlayerInvincibleTime")
	static function networkSetLocalPlayerInvincibleTime(time:Int):Dynamic;

	/**
	 * ```
	 * value must be < 255
	 * ```
	 */
	@:native("NetworkSetPropertyId")
	static function networkSetPropertyId(id:Int):Dynamic;

	/**
	 * ```
	 * On PC it's a nullsub which means it does absolutely nothing.  
	 * Now that Discord supports Rich Presence, R* might finally implement this for PC. Or maybe in future games like RDR2, GTA VI...  
	 * ```
	 */
	@:native("NetworkSetRichPresence")
	static function networkSetRichPresence(p0:Int, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetThisScriptIsNetworkScript")
	static function networkSetThisScriptIsNetworkScript(maxNumMissionParticipants:Int, p1:Bool, instanceId:Int):Dynamic;

	/**
	 * Sets whether or not an object (created using `CREATE_OBJECT`, or similar) should have its position/rotation synchronized,
	 * even if it is a 'static' object (for example, having flag 32 - Static - set in its archetype definition).
	 * 
	 * This has to be called during the same frame the object is created/registered for network, as otherwise it may already
	 * have a remote clone created.
	 * 
	 * Once a remote clone is created, changing this value will not have any effect on said clone.
	 */
	@:native("NetworkSetObjectForceStaticBlend")
	static function NetworkSetObjectForceStaticBlend(object:Dynamic, enabled:Bool):Dynamic;

	/**
	 * ```
	 * Used by Metric VEHICLE_DIST_DRIVEN
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("NetworkSetVehicleTestDrive")
	static function NetworkSetVehicleTestDrive(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetScriptReadyForEvents")
	static function networkSetScriptReadyForEvents(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetTeamOnlyChat")
	static function networkSetTeamOnlyChat(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetTransitionActivityId")
	static function networkSetTransitionActivityId(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * Returns true if the NAT type is Strict (3) and a certain number of connections have failed.
	 * ```
	 */
	@:native("NetworkShouldShowConnectivityTroubleshooting")
	static function NetworkShouldShowConnectivityTroubleshooting():Bool;

	/**
	 * ```
	 * Allow vehicle wheels to be destructible even when the Vehicle entity is invincible.
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v1365
	 * ```
	 */
	@:native("NetworkSetVehicleWheelsDestructible")
	static function NetworkSetVehicleWheelsDestructible(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetTransitionCreatorHandle")
	static function networkSetTransitionCreatorHandle(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetTalkerProximity")
	static function networkSetTalkerProximity(value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetVoiceChannel")
	static function networkSetVoiceChannel(channel:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkStartSynchronisedScene")
	static function networkStartSynchronisedScene(netScene:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetTransitionVisibilityLock")
	static function networkSetTransitionVisibilityLock(p0:Bool, p1:Bool):Dynamic;

	/**
	 * ```
	 * Always returns -1. Seems to be XB1 specific.
	 * ```
	 */
	@:native("NetworkStartUserContentPermissionsCheck")
	static function NetworkStartUserContentPermissionsCheck(netHandle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NetworkStopSynchronisedScene")
	static function networkStopSynchronisedScene(netScene:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkUgcNav")
	static function NetworkUgcNav(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkTransitionTrack")
	static function NetworkTransitionTrack(hash:Int, p1:Int, p2:Int, state:Int, p4:Int):Dynamic;

	/**
	 * ```
	 * One of the first things it does is get the players ped.  
	 * Then it calls a function that is used in some tasks and ped based functions.  
	 * ```
	 * 
	 * p5, p6, p7 is another coordinate (or zero), often related to `GET_BLIP_COORDS`, in the decompiled scripts.
	 */
	@:native("NetworkStartRespawnSearchForPlayer")
	static function networkStartRespawnSearchForPlayer(player:Dynamic, x:Float, y:Float, z:Float, radius:Float, p5:Float, p6:Float, p7:Float, flags:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkSetVoiceActive")
	static function networkSetVoiceActive(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkStartSoloTutorialSession")
	static function networkStartSoloTutorialSession():Dynamic;

	/**
	 * 
	 */
	@:native("NetworkUpdatePlayerScars")
	static function NetworkUpdatePlayerScars():Dynamic;

	/**
	 * ```
	 * Example:  
	 * int playerHandle;	  
	 * NETWORK_HANDLE_FROM_PLAYER(selectedPlayer, &playerHandle, 13);  
	 * NETWORK_SHOW_PROFILE_UI(&playerHandle);  
	 * ```
	 */
	@:native("NetworkShowProfileUi")
	static function networkShowProfileUi(networkHandle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkUnregisterNetworkedEntity")
	static function networkUnregisterNetworkedEntity(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkUseLogarithmicBlendingThisFrame")
	static function networkUseLogarithmicBlendingThisFrame(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSuppressInvite")
	static function networkSuppressInvite(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Old name: _NETWORK_SET_NETWORK_ID_DYNAMIC
	 * ```
	 */
	@:native("NetworkUseHighPrecisionBlending")
	static function networkUseHighPrecisionBlending(netID:Int, toggle:Bool):Dynamic;

	/**
	 * p8, p9, p10 is another coordinate, or zero, often related to `GET_BLIP_COORDS` in the decompiled scripts.
	 */
	@:native("NetworkStartRespawnSearchInAngledAreaForPlayer")
	static function networkStartRespawnSearchInAngledAreaForPlayer(player:Dynamic, x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, width:Float, p8:Float, p9:Float, p10:Float, flags:Int):Bool;

	/**
	 * ```
	 * Returns defaultValue if the tunable doesn't exist.
	 * ```
	 */
	@:native("NetworkTryAccessTunableBoolHash")
	static function networkTryAccessTunableBoolHash(tunableContext:Int, tunableName:Int, defaultValue:Bool):Bool;

	/**
	 * ```
	 * Return the local Participant ID.  
	 * This native is exactly the same as 'PARTICIPANT_ID' native.  
	 * ```
	 */
	@:native("ParticipantIdToInt")
	static function participantIdToInt():Int;

	/**
	 * ```
	 * Return the local Participant ID  
	 * ```
	 */
	@:native("ParticipantId")
	static function participantId():Dynamic;

	/**
	 * ```
	 * Lets objects spawn online simply do it like this:  
	 * int createdObject = OBJ_TO_NET(CREATE_OBJECT_NO_OFFSET(oball, pCoords.x, pCoords.y, pCoords.z, 1, 0, 0));  
	 * ```
	 */
	@:native("ObjToNet")
	static function objToNet(object:Dynamic):Int;

	/**
	 * ```
	 * gets the network id of a ped  
	 * ```
	 */
	@:native("PedToNet")
	static function pedToNet(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("ReleaseAllCommerceItemImages")
	static function releaseAllCommerceItemImages():Dynamic;

	/**
	 * ```
	 * Has a 3rd param (int) since patch [???].  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 3: int p2
	 * ```
	 */
	@:native("OpenCommerceStore")
	static function openCommerceStore(p0:String, p1:String):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 1: Player player
	 * NativeDB Added Parameter 2: int a
	 * NativeDB Added Parameter 3: int b
	 * ```
	 */
	@:native("RemoteCheatDetected")
	static function RemoteCheatDetected():Bool;

	/**
	 * 
	 */
	@:native("RequestCommerceItemImage")
	static function requestCommerceItemImage(index:Int):Bool;

	/**
	 * 
	 */
	@:native("ReserveNetworkMissionObjects")
	static function reserveNetworkMissionObjects(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ReserveNetworkLocalVehicles")
	static function ReserveNetworkLocalVehicles(amount:Int):Dynamic;

	/**
	 * ```
	 * Internal logging string: SCRIPT_RESERVING_LOCAL_OBJECTS
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("ReserveNetworkLocalObjects")
	static function ReserveNetworkLocalObjects(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RefreshPlayerListStats")
	static function refreshPlayerListStats(p0:Int):Bool;

	/**
	 * ```
	 * Used in am_mp_property_ext and am_mp_property_int  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 2: Ped ped
	 * ```
	 */
	@:native("RemoveAllStickyBombsFromEntity")
	static function removeAllStickyBombsFromEntity(entity:Dynamic):Dynamic;

	/**
	 * Sets the alpha value used by [`_SET_LOCAL_PLAYER_AS_GHOST`](#\_0x5FFE9B4144F9712F), [`SET_NETWORK_VEHICLE_AS_GHOST`](#\_0x6274C4712850841E), and [`_NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER`](#\_0x4BA166079D658ED4).
	 */
	@:native("ResetGhostedEntityAlpha")
	static function ResetGhostedEntityAlpha():Dynamic;

	/**
	 * 
	 */
	@:native("ReserveNetworkMissionPeds")
	static function reserveNetworkMissionPeds(amount:Int):Dynamic;

	/**
	 * ```
	 * Internal logging string: SCRIPT_RESERVING_LOCAL_PEDS
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("ReserveNetworkLocalPeds")
	static function ReserveNetworkLocalPeds(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ReserveNetworkMissionVehicles")
	static function reserveNetworkMissionVehicles(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetBalanceAddMachine")
	static function setBalanceAddMachine(contentId:String, contentTypeName:String):Bool;

	/**
	 * 
	 */
	@:native("SetBalanceAddMachines")
	static function setBalanceAddMachines(data:Dynamic, dataCount:Int, contentTypeName:String):Bool;

	/**
	 * Sets the provided entity not visible for yourself for the current frame.
	 */
	@:native("SetEntityLocallyInvisible")
	static function setEntityLocallyInvisible(entity:Dynamic):Dynamic;

	/**
	 * Sets the provided entity visible for yourself for the current frame.
	 */
	@:native("SetEntityLocallyVisible")
	static function setEntityLocallyVisible(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SetEntityVisibleInCutscene")
	static function setEntityVisibleInCutscene(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetLocalPlayerInvisibleLocally")
	static function setLocalPlayerInvisibleLocally(p0:Bool):Dynamic;

	/**
	 * Sets the alpha value used by [`_SET_LOCAL_PLAYER_AS_GHOST`](#\_0x5FFE9B4144F9712F), [`SET_NETWORK_VEHICLE_AS_GHOST`](#\_0x6274C4712850841E), and [`_NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER`](#\_0x4BA166079D658ED4).
	 * 
	 * 'Solidness' cannot be achieved using 255 - this will have the opposite effect of it defaulting to 128 it seems (or just having no effect at all).
	 */
	@:native("SetGhostedEntityAlpha")
	static function SetGhostedEntityAlpha(alpha:Int):Dynamic;

	/**
	 * ```
	 * Whether or not another player is allowed to take control of the entity  
	 * ```
	 */
	@:native("SetNetworkIdCanMigrate")
	static function setNetworkIdCanMigrate(netId:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetLocalPlayerVisibleInCutscene")
	static function setLocalPlayerVisibleInCutscene(p0:Bool, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetNetworkIdAlwaysExistsForPlayer")
	static function setNetworkIdAlwaysExistsForPlayer(netId:Int, player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetNetworkIdVisibleInCutscene")
	static function setNetworkIdVisibleInCutscene(netId:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetNetworkIdExistsOnAllMachines")
	static function setNetworkIdExistsOnAllMachines(netId:Int, toggle:Bool):Dynamic;

	/**
	 * Formerly incorrectly named `USE_PLAYER_COLOUR_INSTEAD_OF_TEAM_COLOUR` due to incorrect treatment of console vs. PC native registration.
	 * 
	 * Native name guessed through ordering.
	 * 
	 * ```
	 * NativeDB Added Parameter 2: BOOL p1
	 * ```
	 */
	@:native("SetLocalPlayerAsGhost")
	static function SetLocalPlayerAsGhost(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetNetworkCutsceneEntities")
	static function setNetworkCutsceneEntities(toggle:Bool):Dynamic;

	/**
	 * Enables ghosting between specific players. Name is between `_SET_RELATIONSHIP_GROUP_DONT_AFFECT_WANTED_LEVEL` and `SET_ROADS_BACK_TO_ORIGINAL`.
	 */
	@:native("SetRelationshipToPlayer")
	static function SetRelationshipToPlayer(player:Dynamic, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetLocalPlayerVisibleLocally")
	static function setLocalPlayerVisibleLocally(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetPlayerInvisibleLocally")
	static function setPlayerInvisibleLocally(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetNetworkVehicleAsGhost")
	static function setNetworkVehicleAsGhost(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Starts a new singleplayer game (at the prologue).  
	 * ```
	 */
	@:native("ShutdownAndLaunchSinglePlayerGame")
	static function shutdownAndLaunchSinglePlayerGame():Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 3: Any p2
	 * NativeDB Added Parameter 4: Any p3
	 * ```
	 */
	@:native("SetNetworkVehicleRespotTimer")
	static function setNetworkVehicleRespotTimer(netId:Int, time:Int):Dynamic;

	/**
	 * ```
	 * Enables a periodic ShapeTest within the NetBlender and invokes rage::netBlenderLinInterp::GoStraightToTarget (or some functional wrapper).
	 * ```
	 */
	@:native("SetNetworkEnableVehiclePositionCorrection")
	static function SetNetworkEnableVehiclePositionCorrection(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Access to the store for shark cards etc...  
	 * ```
	 */
	@:native("SetStoreEnabled")
	static function setStoreEnabled(toggle:Bool):Dynamic;

	/**
	 * ```
	 * rage::netBlenderLinInterp::GetPositionMaxForUpdateLevel
	 * ```
	 */
	@:native("SetNetworkVehiclePositionUpdateMultiplier")
	static function SetNetworkVehiclePositionUpdateMultiplier(vehicle:Dynamic, multiplier:Float):Dynamic;

	/**
	 * 
	 */
	@:native("TextureDownloadHasFailed")
	static function textureDownloadHasFailed(p0:Int):Bool;

	/**
	 * 
	 */
	@:native("TextureDownloadGetName")
	static function textureDownloadGetName(p0:Int):String;

	/**
	 * 
	 */
	@:native("TextureDownloadRelease")
	static function textureDownloadRelease(p0:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetPlayerVisibleLocally")
	static function setPlayerVisibleLocally(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("TextureDownloadRequest")
	static function textureDownloadRequest(PlayerHandle:Dynamic, FilePath:String, Name:String, p3:Bool):Int;

	/**
	 * 
	 */
	@:native("TitleTextureDownloadRequest")
	static function titleTextureDownloadRequest(FilePath:String, Name:String, p2:Bool):Int;

	/**
	 * 
	 */
	@:native("UgcClearOfflineQuery")
	static function ugcClearOfflineQuery():Dynamic;

	/**
	 * Disconnects you from the session, and starts loading single player, however you still remain connected to the server (only if you're the host, if you're not then you also (most likely) get disconnected from the server) and other players will not be able to join until you exit the game.
	 * 
	 * If you're already in SP then it'll re-load singleplayer.
	 * 
	 * You might need to DoScreenFadeIn and ShutdownLoadingScreen otherwise you probably won't end up loading into SP at all.
	 * 
	 * Somewhat related note: opening the pause menu after loading into this 'singleplayer' mode crashes the game.
	 */
	@:native("ShutdownAndLoadMostRecentSave")
	static function ShutdownAndLoadMostRecentSave():Bool;

	/**
	 * 
	 */
	@:native("UgcClearQueryResults")
	static function ugcClearQueryResults():Dynamic;

	/**
	 * ```
	 * p1 = 6
	 * ```
	 */
	@:native("TriggerScriptCrcCheckOnPlayer")
	static function TriggerScriptCrcCheckOnPlayer(player:Dynamic, p1:Int, scriptHash:Int):Bool;

	/**
	 * 
	 */
	@:native("UgcClearCreateResult")
	static function ugcClearCreateResult():Dynamic;

	/**
	 * 
	 */
	@:native("UgcCancelQuery")
	static function ugcCancelQuery():Dynamic;

	/**
	 * 
	 */
	@:native("UgcGetBookmarkedContent")
	static function ugcGetBookmarkedContent(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UgcDidGetSucceed")
	static function ugcDidGetSucceed():Dynamic;

	/**
	 * 
	 */
	@:native("UgcGetCachedDescription")
	static function ugcGetCachedDescription(p0:Dynamic, p1:Dynamic):String;

	/**
	 * 
	 */
	@:native("UgcGetContentCategory")
	static function ugcGetContentCategory(p0:Int):Int;

	/**
	 * 
	 */
	@:native("UgcClearModifyResult")
	static function ugcClearModifyResult():Dynamic;

	/**
	 * 
	 */
	@:native("UgcGetContentHasPlayerBookmarked")
	static function ugcGetContentHasPlayerBookmarked(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UgcGetContentHash")
	static function ugcGetContentHash():Int;

	/**
	 * ```
	 * Return the mission id of a job.
	 * ```
	 */
	@:native("UgcGetContentId")
	static function ugcGetContentId(p0:Int):String;

	/**
	 * 
	 */
	@:native("UgcGetContentHasPlayerRecord")
	static function ugcGetContentHasPlayerRecord(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UgcCopyContent")
	static function ugcCopyContent(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UgcGetContentLanguage")
	static function ugcGetContentLanguage(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("UgcGetContentDescriptionHash")
	static function ugcGetContentDescriptionHash(p0:Dynamic):Int;

	/**
	 * 
	 */
	@:native("UgcGetContentIsVerified")
	static function ugcGetContentIsVerified(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UgcGetContentIsPublished")
	static function ugcGetContentIsPublished(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UgcGetContentNum")
	static function ugcGetContentNum():Dynamic;

	/**
	 * 
	 */
	@:native("UgcGetContentFileVersion")
	static function ugcGetContentFileVersion(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("UgcGetContentRating")
	static function ugcGetContentRating(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("UgcGetContentName")
	static function ugcGetContentName(p0:Dynamic):String;

	/**
	 * 
	 */
	@:native("UgcGetContentRatingPositiveCount")
	static function ugcGetContentRatingPositiveCount(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("UgcGetContentPath")
	static function ugcGetContentPath(p0:Int, p1:Int):String;

	/**
	 * 
	 */
	@:native("UgcGetContentTotal")
	static function ugcGetContentTotal():Dynamic;

	/**
	 * 
	 */
	@:native("UgcGetContentRatingCount")
	static function ugcGetContentRatingCount(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("UgcGetContentRatingNegativeCount")
	static function ugcGetContentRatingNegativeCount(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("UgcGetContentUserId")
	static function ugcGetContentUserId(p0:Int):String;

	/**
	 * 
	 */
	@:native("UgcGetContentUserName")
	static function ugcGetContentUserName(p0:Dynamic):String;

	/**
	 * 
	 */
	@:native("UgcGetContentUpdatedDate")
	static function ugcGetContentUpdatedDate(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("UgcGetCreatorNum")
	static function ugcGetCreatorNum():Dynamic;

	/**
	 * 
	 */
	@:native("UgcGetCreateResult")
	static function ugcGetCreateResult():Dynamic;

	/**
	 * 
	 */
	@:native("UgcGetModifyResult")
	static function ugcGetModifyResult():Dynamic;

	/**
	 * 
	 */
	@:native("UgcGetGetByCategory")
	static function ugcGetGetByCategory(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UgcGetCreateContentId")
	static function ugcGetCreateContentId():String;

	/**
	 * 
	 */
	@:native("UgcHasGetFinished")
	static function ugcHasGetFinished():Bool;

	/**
	 * 
	 */
	@:native("UgcGetCrewContent")
	static function ugcGetCrewContent(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Bool;

	/**
	 * ```
	 * Return the root content id of a job.
	 * ```
	 */
	@:native("UgcGetRootContentId")
	static function ugcGetRootContentId(p0:Int):String;

	/**
	 * 
	 */
	@:native("UgcHasModifyFinished")
	static function ugcHasModifyFinished():Bool;

	/**
	 * 
	 */
	@:native("UgcGetFriendContent")
	static function ugcGetFriendContent(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UgcGetMyContent")
	static function ugcGetMyContent(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UgcGetQueryResult")
	static function ugcGetQueryResult():Dynamic;

	/**
	 * 
	 */
	@:native("UgcIsGetting")
	static function ugcIsGetting():Bool;

	/**
	 * 
	 */
	@:native("UgcQueryByContentIds")
	static function ugcQueryByContentIds(data:Dynamic, count:Int, latestVersion:Bool, contentTypeName:String):Bool;

	/**
	 * 
	 */
	@:native("UgcPublish")
	static function ugcPublish(contentId:String, baseContentId:String, contentTypeName:String):Bool;

	/**
	 * 
	 */
	@:native("UgcHasCreateFinished")
	static function ugcHasCreateFinished():Bool;

	/**
	 * 
	 */
	@:native("UgcPoliciesMakePrivate")
	static function ugcPoliciesMakePrivate(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UgcRequestContentDataFromParams")
	static function ugcRequestContentDataFromParams(contentTypeName:String, contentId:String, p2:Int, p3:Int, p4:Int):Int;

	/**
	 * 
	 */
	@:native("UgcIsLanguageSupported")
	static function ugcIsLanguageSupported(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UgcQueryMyContent")
	static function ugcQueryMyContent(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UgcSetDeleted")
	static function ugcSetDeleted(p0:Dynamic, p1:Bool, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UgcQueryByContentId")
	static function ugcQueryByContentId(contentId:String, latestVersion:Bool, contentTypeName:String):Bool;

	/**
	 * 
	 */
	@:native("UgcRequestCachedDescription")
	static function ugcRequestCachedDescription(p0:Int):Int;

	/**
	 * 
	 */
	@:native("UgcQueryRecentlyCreatedContent")
	static function UgcQueryRecentlyCreatedContent(offset:Int, count:Int, contentTypeName:String, p3:Int):Bool;

	/**
	 * 
	 */
	@:native("UgcRequestContentDataFromIndex")
	static function ugcRequestContentDataFromIndex(p0:Int, p1:Int):Int;

	/**
	 * 
	 */
	@:native("UgcSetBookmarked")
	static function ugcSetBookmarked(contentId:String, bookmarked:Bool, contentTypeName:String):Bool;

	/**
	 * ```
	 * calls from vehicle to net.  
	 * ```
	 */
	@:native("VehToNet")
	static function vehToNet(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("UgcTextureDownloadRequest")
	static function ugcTextureDownloadRequest(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("UgcSetQueryDataFromOffline")
	static function ugcSetQueryDataFromOffline(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("UsePlayerColourInsteadOfTeamColour")
	static function usePlayerColourInsteadOfTeamColour(toggle:Bool):Dynamic;

}
