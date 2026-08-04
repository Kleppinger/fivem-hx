package fivem.client.natives;

@:native("_G")
extern class Network {
	/**
	 * 
	 */
	@:native("ACTIVATE_DAMAGE_TRACKER_ON_NETWORK_ID")
	static function activateDamageTrackerOnNetworkId(netID:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CAN_REGISTER_MISSION_OBJECTS")
	static function canRegisterMissionObjects(amount:Int):Bool;

	/**
	 * 
	 */
	@:native("CAN_REGISTER_MISSION_ENTITIES")
	static function canRegisterMissionEntities(ped_amt:Int, vehicle_amt:Int, object_amt:Int, pickup_amt:Int):Bool;

	/**
	 * 
	 */
	@:native("_ACTIVATE_DAMAGE_TRACKER_ON_PLAYER")
	static function ActivateDamageTrackerOnPlayer(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Downloads prod.cloud.rockstargames.com/titles/gta5/[platform]/check.json
	 * ```
	 */
	@:native("CLOUD_CHECK_AVAILABILITY")
	static function cloudCheckAvailability():Dynamic;

	/**
	 * 
	 */
	@:native("_CAN_REGISTER_MISSION_PICKUPS")
	static function CanRegisterMissionPickups(amount:Int):Bool;

	/**
	 * 
	 */
	@:native("CAN_REGISTER_MISSION_PEDS")
	static function canRegisterMissionPeds(amount:Int):Bool;

	/**
	 * 
	 */
	@:native("CLOUD_GET_AVAILABILITY_CHECK_RESULT")
	static function cloudGetAvailabilityCheckResult():Bool;

	/**
	 * 
	 */
	@:native("BAD_SPORT_PLAYER_LEFT_DETECTED")
	static function badSportPlayerLeftDetected(networkHandle:Dynamic, event:Int, amountReceived:Int):Bool;

	/**
	 * 
	 */
	@:native("CLOUD_DELETE_MEMBER_FILE")
	static function cloudDeleteMemberFile(p0:String):Int;

	/**
	 * 
	 */
	@:native("CLOUD_HAS_REQUEST_COMPLETED")
	static function cloudHasRequestCompleted(handle:Int):Bool;

	/**
	 * 
	 */
	@:native("CAN_REGISTER_MISSION_VEHICLES")
	static function canRegisterMissionVehicles(amount:Int):Bool;

	/**
	 * 
	 */
	@:native("CLOUD_DID_REQUEST_SUCCEED")
	static function cloudDidRequestSucceed(handle:Int):Bool;

	/**
	 * **This native does absolutely nothing, just a nullsub**
	 */
	@:native("_CLEAR_LAUNCH_PARAMS")
	static function ClearLaunchParams():Dynamic;

	/**
	 * 
	 */
	@:native("CLOUD_IS_CHECKING_AVAILABILITY")
	static function cloudIsCheckingAvailability():Bool;

	/**
	 * 
	 */
	@:native("_FACEBOOK_IS_SENDING_DATA")
	static function FacebookIsSendingData():Bool;

	/**
	 * 
	 */
	@:native("_FACEBOOK_DO_UNK_CHECK")
	static function FacebookDoUnkCheck():Bool;

	/**
	 * 
	 */
	@:native("_FACEBOOK_IS_AVAILABLE")
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
	@:native("CONVERT_POSIX_TIME")
	static function convertPosixTime(posixTime:Int, timeStructure:Dynamic):Dynamic;

	/**
	 * ```
	 * Hardcoded to not work in SP.  
	 * ```
	 */
	@:native("FADE_OUT_LOCAL_PLAYER")
	static function fadeOutLocalPlayer(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_FACEBOOK_SET_HEIST_COMPLETE")
	static function FacebookSetHeistComplete(heistName:String, cashEarned:Int, xpEarned:Int):Bool;

	/**
	 * 
	 */
	@:native("_FACEBOOK_SET_CREATE_CHARACTER_COMPLETE")
	static function FacebookSetCreateCharacterComplete():Bool;

	/**
	 * Returns POSIX timestamp.
	 * 
	 * Renamed from `_GET_POSIX_TIME` to `GET_CLOUD_TIME_AS_INT` because of conflicting native names ([`0xDA488F299A5B164E`](#\_0xDA488F299A5B164E))
	 */
	@:native("GET_CLOUD_TIME_AS_INT")
	static function getCloudTimeAsInt():Int;

	/**
	 * ```
	 * index2 is unused
	 * ```
	 */
	@:native("GET_COMMERCE_ITEM_CAT")
	static function getCommerceItemCat(index:Int, index2:Int):String;

	/**
	 * 
	 */
	@:native("FILLOUT_PM_PLAYER_LIST")
	static function filloutPmPlayerList(networkHandle:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * ```
	 * Same as GET_CLOUD_TIME_AS_INT but returns the value as a hex string (%I64X).
	 * ```
	 */
	@:native("_GET_CLOUD_TIME_AS_STRING")
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
	@:native("_FACEBOOK_SET_MILESTONE_COMPLETE")
	static function FacebookSetMilestoneComplete(milestoneId:Int):Bool;

	/**
	 * 
	 */
	@:native("GET_COMMERCE_ITEM_NUM_CATS")
	static function getCommerceItemNumCats(index:Int):Int;

	/**
	 * 
	 */
	@:native("GET_COMMERCE_ITEM_ID")
	static function getCommerceItemId(index:Int):String;

	/**
	 * 
	 */
	@:native("FILLOUT_PM_PLAYER_LIST_WITH_NAMES")
	static function filloutPmPlayerListWithNames(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 3: int p2
	 * ```
	 */
	@:native("GET_COMMERCE_ITEM_TEXTURENAME")
	static function getCommerceItemTexturename(index:Int):String;

	/**
	 * 
	 */
	@:native("GET_COMMERCE_PRODUCT_PRICE")
	static function getCommerceProductPrice(index:Int):String;

	/**
	 * 
	 */
	@:native("GET_MAX_NUM_NETWORK_OBJECTS")
	static function getMaxNumNetworkObjects():Int;

	/**
	 * 
	 */
	@:native("GET_COMMERCE_ITEM_NAME")
	static function getCommerceItemName(index:Int):String;

	/**
	 * 
	 */
	@:native("GET_MAX_NUM_NETWORK_PEDS")
	static function getMaxNumNetworkPeds():Int;

	/**
	 * 
	 */
	@:native("GET_MAX_NUM_NETWORK_PICKUPS")
	static function getMaxNumNetworkPickups():Int;

	/**
	 * Returns the same value as [`GetNetworkTime`](#\_0x7A5487FE9FAA6B48) in freemode, but as opposed to `GetNetworkTime` it always gets the most recent time, instead of once per tick.
	 * 
	 * Could be used for benchmarking since it can return times in ticks.
	 */
	@:native("GET_NETWORK_TIME_ACCURATE")
	static function getNetworkTimeAccurate():Int;

	/**
	 * 
	 */
	@:native("GET_NETWORK_TIME")
	static function getNetworkTime():Int;

	/**
	 * 
	 */
	@:native("GET_MAX_NUM_NETWORK_VEHICLES")
	static function getMaxNumNetworkVehicles():Int;

	/**
	 * 
	 */
	@:native("GET_NUM_CREATED_MISSION_OBJECTS")
	static function getNumCreatedMissionObjects(p0:Bool):Int;

	/**
	 * 
	 */
	@:native("GET_NUM_CREATED_MISSION_PEDS")
	static function getNumCreatedMissionPeds(p0:Bool):Int;

	/**
	 * 
	 */
	@:native("GET_NUM_COMMERCE_ITEMS")
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
	@:native("GET_NUM_RESERVED_MISSION_VEHICLES")
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
	@:native("GET_NUM_RESERVED_MISSION_PEDS")
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
	@:native("GET_NUM_RESERVED_MISSION_OBJECTS")
	static function getNumReservedMissionObjects(p0:Bool):Int;

	/**
	 * 
	 */
	@:native("GET_NUM_CREATED_MISSION_VEHICLES")
	static function getNumCreatedMissionVehicles(p0:Bool):Int;

	/**
	 * ```
	 * 0 = succeeded
	 * 1 = pending
	 * 2 = failed
	 * ```
	 */
	@:native("GET_STATUS_OF_TEXTURE_DOWNLOAD")
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
	@:native("_GET_ONLINE_VERSION")
	static function GetOnlineVersion():String;

	/**
	 * ```
	 * Subtracts the second argument from the first.  
	 * ```
	 */
	@:native("GET_TIME_DIFFERENCE")
	static function getTimeDifference(timeA:Int, timeB:Int):Int;

	/**
	 * ```
	 * Adds the first argument to the second.  
	 * ```
	 */
	@:native("GET_TIME_OFFSET")
	static function getTimeOffset(timeA:Int, timeB:Int):Int;

	/**
	 * 
	 */
	@:native("GET_TIME_AS_STRING")
	static function getTimeAsString(time:Int):String;

	/**
	 * 
	 */
	@:native("IS_NETWORK_ID_OWNED_BY_PARTICIPANT")
	static function isNetworkIdOwnedByParticipant(netId:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_COMMERCE_DATA_VALID")
	static function isCommerceDataValid():Bool;

	/**
	 * 
	 */
	@:native("HAS_NETWORK_TIME_STARTED")
	static function hasNetworkTimeStarted():Bool;

	/**
	 * 
	 */
	@:native("IS_COMMERCE_STORE_OPEN")
	static function isCommerceStoreOpen():Bool;

	/**
	 * 
	 */
	@:native("_IS_DAMAGE_TRACKER_ACTIVE_ON_PLAYER")
	static function IsDamageTrackerActiveOnPlayer(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_SPHERE_VISIBLE_TO_PLAYER")
	static function isSphereVisibleToPlayer(p0:Dynamic, p1:Float, p2:Float, p3:Float, p4:Float):Bool;

	/**
	 * 
	 */
	@:native("IS_DAMAGE_TRACKER_ACTIVE_ON_NETWORK_ID")
	static function isDamageTrackerActiveOnNetworkId(netID:Int):Bool;

	/**
	 * ```
	 * Subtracts the first argument from the second, then returns whether the result is negative.  
	 * ```
	 */
	@:native("IS_TIME_MORE_THAN")
	static function isTimeMoreThan(timeA:Int, timeB:Int):Bool;

	/**
	 * 
	 */
	@:native("_IS_ENTITY_GHOSTED_TO_LOCAL_PLAYER")
	static function IsEntityGhostedToLocalPlayer(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_SPHERE_VISIBLE_TO_ANOTHER_MACHINE")
	static function isSphereVisibleToAnotherMachine(p0:Float, p1:Float, p2:Float, p3:Float):Bool;

	/**
	 * 
	 */
	@:native("IS_PLAYER_IN_CUTSCENE")
	static function isPlayerInCutscene(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_STORE_AVAILABLE_TO_USER")
	static function isStoreAvailableToUser():Bool;

	/**
	 * ```
	 * Returns true if the two times are equal; otherwise returns false.  
	 * ```
	 */
	@:native("IS_TIME_EQUAL_TO")
	static function isTimeEqualTo(timeA:Int, timeB:Int):Bool;

	/**
	 * ```
	 * Subtracts the second argument from the first, then returns whether the result is negative.  
	 * ```
	 */
	@:native("IS_TIME_LESS_THAN")
	static function isTimeLessThan(timeA:Int, timeB:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_BLOCK_JOIN_QUEUE_INVITES")
	static function networkBlockJoinQueueInvites(toggle:Bool):Dynamic;

	/**
	 * ```
	 * gets the entity id of a network id  
	 * ```
	 */
	@:native("NET_TO_ENT")
	static function netToEnt(netHandle:Int):Dynamic;

	/**
	 * ```
	 * gets the ped id of a network id  
	 * ```
	 */
	@:native("NET_TO_PED")
	static function netToPed(netHandle:Int):Dynamic;

	/**
	 * ```
	 * NETWORK_RE*
	 * 
	 * Triggers a CEventNetworkInviteConfirmed event
	 * ```
	 */
	@:native("_NETWORK_ACCEPT_INVITE")
	static function NetworkAcceptInvite():Bool;

	/**
	 * 
	 */
	@:native("NET_TO_VEH")
	static function netToVeh(netHandle:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_ACCESS_TUNABLE_BOOL")
	static function networkAccessTunableBool(tunableContext:String, tunableName:String):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_ACCESS_TUNABLE_FLOAT")
	static function networkAccessTunableFloat(tunableContext:String, tunableName:String, value:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_ACCESS_TUNABLE_INT")
	static function networkAccessTunableInt(tunableContext:String, tunableName:String, value:Dynamic):Bool;

	/**
	 * ```
	 * gets the object id of a network id  
	 * ```
	 */
	@:native("NET_TO_OBJ")
	static function netToObj(netHandle:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_ACCEPT_PRESENCE_INVITE")
	static function networkAcceptPresenceInvite(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_ADD_ENTITY_AREA")
	static function networkAddEntityArea(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_ACCESS_TUNABLE_INT_HASH")
	static function networkAccessTunableIntHash(tunableContext:Int, tunableName:Int, value:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_ACCESS_TUNABLE_FLOAT_HASH")
	static function networkAccessTunableFloatHash(tunableContext:Int, tunableName:Int, value:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_ACCESS_TUNABLE_BOOL_HASH")
	static function networkAccessTunableBoolHash(tunableContext:Int, tunableName:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_ADD_ENTITY_DISPLAYED_BOUNDARIES")
	static function networkAddEntityDisplayedBoundaries(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_ACTION_FOLLOW_INVITE")
	static function networkActionFollowInvite():Dynamic;

	/**
	 * ```
	 * ..  
	 * ```
	 */
	@:native("NETWORK_ADD_FOLLOWERS")
	static function networkAddFollowers(p0:Dynamic, p1:Int):Dynamic;

	/**
	 * Adds an entity to a network synchronised scene.
	 */
	@:native("NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE")
	static function networkAddEntityToSynchronisedScene(entity:Dynamic, netScene:Int, animDict:String, animName:String, blendIn:Float, blendOut:Float, flag:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_ADD_SYNCHRONISED_SCENE_CAMERA")
	static function networkAddSynchronisedSceneCamera(netScene:Int, animDict:String, animName:String):Dynamic;

	/**
	 * To remove, see: [`NETWORK_REMOVE_ENTITY_AREA`](#\_0x93CF869BAA0C4874).
	 * 
	 * See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
	 */
	@:native("NETWORK_ADD_ENTITY_ANGLED_AREA")
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
	@:native("NETWORK_ADD_MAP_ENTITY_TO_SYNCHRONISED_SCENE")
	static function networkAddMapEntityToSynchronisedScene(netScene:Int, modelHash:Int, x:Float, y:Float, z:Float, animDict:String, animName:String, blendInSpeed:Float, blendOutSpeed:Float, flags:Int):Dynamic;

	/**
	 * Adds a ped to a networked synchronized scene but extends [`NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE`](#\_0x742A637471BCECD9) to support IK flags.
	 * There is barely any difference between this and [`NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE`](#\_0x742A637471BCECD9).
	 * 
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE_WITH_IK")
	static function networkAddPedToSynchronisedSceneWithIk(ped:Dynamic, netSceneID:Int, animDict:String, animClip:String, blendIn:Float, blendOut:Float, sceneFlags:Int, ragdollFlags:Int, moverBlendInDelta:Float, ikFlags:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_AM_I_MUTED_BY_GAMER")
	static function networkAmIMutedByGamer(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_ADD_FRIEND")
	static function networkAddFriend(networkHandle:Dynamic, message:String):Bool;

	/**
	 * 
	 */
	@:native("_NETWORK_ALLOCATE_TUNABLES_REGISTRATION_DATA_MAP")
	static function NetworkAllocateTunablesRegistrationDataMap():Bool;

	/**
	 * Allows scripts to use attachment commands on entities (eg. [`ATTACH_ENTITY_TO_ENTITY`](#\_0x6B9BBD38AB0796DF)) that are not controlled by the client.
	 * 
	 * **Note:** This is only local and does not affect entities on other machines. This is used by the ferris wheel script to sync players on carts.
	 */
	@:native("NETWORK_ALLOW_REMOTE_ATTACHMENT_MODIFICATION")
	static function networkAllowRemoteAttachmentModification(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_AM_I_BLOCKED_BY_PLAYER")
	static function networkAmIBlockedByPlayer(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_APPLY_PED_SCAR_DATA")
	static function networkApplyPedScarData(ped:Dynamic, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_AM_I_MUTED_BY_PLAYER")
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
	@:native("NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE")
	static function networkAddPedToSynchronisedScene(ped:Dynamic, netScene:Int, animDict:String, animClip:String, blendInSpeed:Float, blendOutSpeed:Float, syncedSceneFlags:Int, ragdollFlags:Int, moverBlendInDelta:Float, ikFlags:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_APPLY_CACHED_PLAYER_HEAD_BLEND_DATA")
	static function networkApplyCachedPlayerHeadBlendData(ped:Dynamic, player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_AM_I_BLOCKED_BY_GAMER")
	static function networkAmIBlockedByGamer(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_APPLY_TRANSITION_PARAMETER_STRING")
	static function networkApplyTransitionParameterString(p0:Int, string:String, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_APPLY_TRANSITION_PARAMETER")
	static function networkApplyTransitionParameter(p0:Int, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_ARE_HANDLES_THE_SAME")
	static function networkAreHandlesTheSame(netHandle1:Dynamic, netHandle2:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_NETWORK_BAIL_TRANSITION_QUICKMATCH")
	static function NetworkBailTransitionQuickmatch():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_APPLY_VOICE_PROXIMITY_OVERRIDE")
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
	@:native("_NETWORK_ARE_CUTSCENE_ENTITIES")
	static function NetworkAreCutsceneEntities():Bool;

	/**
	 * 
	 */
	@:native("_NETWORK_BLOCK_KICKED_PLAYERS")
	static function NetworkBlockKickedPlayers(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_ATTACH_SYNCHRONISED_SCENE_TO_ENTITY")
	static function networkAttachSynchronisedSceneToEntity(netScene:Int, entity:Dynamic, bone:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_ARE_SOCIAL_CLUB_POLICIES_CURRENT")
	static function networkAreSocialClubPoliciesCurrent():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CAN_BAIL")
	static function networkCanBail():Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int p0
	 * NativeDB Added Parameter 2: int p1
	 * NativeDB Added Parameter 3: int p2
	 * ```
	 */
	@:native("NETWORK_BAIL_TRANSITION")
	static function networkBailTransition():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_ARE_TRANSITION_DETAILS_VALID")
	static function networkAreTransitionDetailsValid(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CAN_ENTER_MULTIPLAYER")
	static function networkCanEnterMultiplayer():Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int p0
	 * NativeDB Added Parameter 2: int p1
	 * NativeDB Added Parameter 3: int p2
	 * ```
	 */
	@:native("NETWORK_BAIL")
	static function networkBail():Dynamic;

	/**
	 * ```
	 * 11 - Need to download tunables.  
	 * 12 - Need to download background script.  
	 * Returns 1 if the multiplayer is loaded, otherwhise 0.  
	 * ```
	 */
	@:native("NETWORK_CAN_ACCESS_MULTIPLAYER")
	static function networkCanAccessMultiplayer(loadingState:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CAN_SESSION_END")
	static function networkCanSessionEnd():Bool;

	/**
	 * 
	 */
	@:native("_NETWORK_CAN_PLAY_MULTIPLAYER_WITH_GAMER")
	static function NetworkCanPlayMultiplayerWithGamer(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_BLOCK_INVITES")
	static function networkBlockInvites(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_CAN_COMMUNICATE_WITH_GAMER")
	static function networkCanCommunicateWithGamer(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CANCEL_RESPAWN_SEARCH")
	static function networkCancelRespawnSearch():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_CAN_SET_WAYPOINT")
	static function networkCanSetWaypoint():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CACHE_LOCAL_PLAYER_HEAD_BLEND_DATA")
	static function networkCacheLocalPlayerHeadBlendData():Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_CAN_GAMER_PLAY_MULTIPLAYER_WITH_ME")
	static function NetworkCanGamerPlayMultiplayerWithMe(networkHandle:Dynamic):Bool;

	/**
	 * Checks if the friendDataIndex in the friend data manager contains the data for the specified networkHandle
	 */
	@:native("NETWORK_CHECK_DATA_MANAGER_SUCCEEDED_FOR_HANDLE")
	static function networkCheckDataManagerSucceededForHandle(friendDataIndex:Int, networkHandle:Dynamic):Bool;

	/**
	 * ```
	 * Same as NETWORK_CAN_COMMUNICATE_WITH_GAMER
	 * 
	 * NETWORK_CAN_*
	 * ```
	 */
	@:native("_NETWORK_CAN_COMMUNICATE_WITH_GAMER_2")
	static function NetworkCanCommunicateWithGamer2(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_NETWORK_CAN_VIEW_GAMER_USER_CONTENT")
	static function NetworkCanViewGamerUserContent(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CHECK_COMMUNICATION_PRIVILEGES")
	static function networkCheckCommunicationPrivileges(p0:Int, p1:Int, p2:Bool):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CLAN_DOWNLOAD_MEMBERSHIP")
	static function networkClanDownloadMembership(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CHECK_USER_CONTENT_PRIVILEGES")
	static function networkCheckUserContentPrivileges(p0:Int, p1:Int, p2:Bool):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CLAN_ANY_DOWNLOAD_MEMBERSHIP_PENDING")
	static function networkClanAnyDownloadMembershipPending():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CLAN_GET_EMBLEM_TXD_NAME")
	static function networkClanGetEmblemTxdName(netHandle:Dynamic, txdName:String):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CLAN_DOWNLOAD_MEMBERSHIP_PENDING")
	static function networkClanDownloadMembershipPending(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CLAN_GET_MEMBERSHIP_COUNT")
	static function networkClanGetMembershipCount(p0:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NETWORK_CHANGE_TRANSITION_SLOTS")
	static function networkChangeTransitionSlots(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * Retrieves a membership for a player, from the cache (i.e. downloaded via NETWORK_CLAN_DOWNLOAD_MEMBERSHIP).
	 * 
	 * Test C++ code:
	 * https://pastebin.com/CD8wni4C
	 */
	@:native("NETWORK_CLAN_GET_MEMBERSHIP")
	static function networkClanGetMembership(networkHandle:Dynamic, clanMembership:Dynamic, membershipIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CLAN_GET_MEMBERSHIP_DESC")
	static function networkClanGetMembershipDesc(memberDesc:Dynamic, p1:Int):Bool;

	/**
	 * ```
	 * Only documented...  
	 * ```
	 */
	@:native("_NETWORK_CLAN_ANIMATION")
	static function NetworkClanAnimation(animDict:String, animName:String):Bool;

	/**
	 * Checks if a crew/membership for a player, from the cache (i.e. downloaded via NETWORK_CLAN_DOWNLOAD_MEMBERSHIP) is valid.
	 */
	@:native("NETWORK_CLAN_GET_MEMBERSHIP_VALID")
	static function networkClanGetMembershipValid(networkHandle:Dynamic, membershipIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CLAN_GET_LOCAL_MEMBERSHIPS_COUNT")
	static function networkClanGetLocalMembershipsCount():Int;

	/**
	 * 
	 */
	@:native("NETWORK_CLAN_IS_EMBLEM_READY")
	static function networkClanIsEmblemReady(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * ```
	 * bufferSize is 35 in the scripts.
	 * ```
	 */
	@:native("NETWORK_CLAN_GET_UI_FORMATTED_TAG")
	static function networkClanGetUiFormattedTag(clanDesc:Dynamic, bufferSize:Int, formattedTag:String):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_CLAN_REMOTE_MEMBERSHIPS_ARE_IN_CACHE")
	static function networkClanRemoteMembershipsAreInCache(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CLEAR_CLOCK_TIME_OVERRIDE")
	static function networkClearClockTimeOverride():Dynamic;

	/**
	 * ```
	 * bufferSize is 35 in the scripts.  
	 * bufferSize is the elementCount of p0(desc), sizeof(p0) == 280 == p1*8 == 35 * 8, p2(netHandle) is obtained from NETWORK::NETWORK_HANDLE_FROM_PLAYER.  And no, I can't explain why 35 * sizeof(int) == 280 and not 140, but I'll get back to you on that.  
	 * the answer is: because p0 an int64_t* / int64_t[35].  and FYI p2 is an int64_t[13]  
	 * pastebin.com/cSZniHak  
	 * ```
	 */
	@:native("NETWORK_CLAN_PLAYER_GET_DESC")
	static function networkClanPlayerGetDesc(clanDesc:Dynamic, bufferSize:Int, networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CLAN_REQUEST_EMBLEM")
	static function networkClanRequestEmblem(p0:Dynamic):Bool;

	/**
	 * ```
	 * bufferSize is 35 in the scripts.  
	 * ```
	 */
	@:native("NETWORK_CLAN_IS_ROCKSTAR_CLAN")
	static function networkClanIsRockstarClan(clanDesc:Dynamic, bufferSize:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CLEAR_FOUND_GAMERS")
	static function networkClearFoundGamers():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_CLEAR_FOLLOW_INVITE")
	static function networkClearFollowInvite():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_CLAN_PLAYER_IS_ACTIVE")
	static function networkClanPlayerIsActive(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CLEAR_FOLLOWERS")
	static function networkClearFollowers():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_CLEAR_GET_GAMER_STATUS")
	static function networkClearGetGamerStatus():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_CLAN_JOIN")
	static function networkClanJoin(clanDesc:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CLAN_RELEASE_EMBLEM")
	static function networkClanReleaseEmblem(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_CLEAR_VOICE_CHANNEL")
	static function networkClearVoiceChannel():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_CLEAR_GROUP_ACTIVITY")
	static function networkClearGroupActivity():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_CLEAR_PROPERTY_ID")
	static function networkClearPropertyId():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_CLAN_SERVICE_IS_VALID")
	static function networkClanServiceIsValid():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CLEAR_VOICE_PROXIMITY_OVERRIDE")
	static function networkClearVoiceProximityOverride():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_CLOSE_TRANSITION_MATCHMAKING")
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
	@:native("NETWORK_CONCEAL_PLAYER")
	static function networkConcealPlayer(player:Dynamic, toggle:Bool, bAllowDamagingWhileConcealed:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_CLEAR_TRANSITION_CREATOR_HANDLE")
	static function networkClearTransitionCreatorHandle():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_DID_GET_GAMER_STATUS_SUCCEED")
	static function networkDidGetGamerStatusSucceed():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_DID_FIND_GAMERS_SUCCEED")
	static function networkDidFindGamersSucceed():Bool;

	/**
	 * Creates a networked synchronized scene.
	 * Be sure to actually start the scene with [`NETWORK_START_SYNCHRONISED_SCENE`](#\_0x9A1B3FCDB36C8697) after you're done adding peds or entities to the scene.
	 */
	@:native("NETWORK_CREATE_SYNCHRONISED_SCENE")
	static function networkCreateSynchronisedScene(x:Float, y:Float, z:Float, xRot:Float, yRot:Float, zRot:Float, rotationOrder:Int, holdLastFrame:Bool, looped:Bool, phaseToStopScene:Float, phaseToStartScene:Float, animSpeed:Float):Int;

	/**
	 * 
	 */
	@:native("_NETWORK_CONCEAL_ENTITY")
	static function NetworkConcealEntity(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_DISABLE_INVINCIBLE_FLASHING")
	static function networkDisableInvincibleFlashing(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_DISABLE_PROXIMITY_MIGRATION")
	static function networkDisableProximityMigration(netID:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_DO_TRANSITION_TO_GAME")
	static function networkDoTransitionToGame(p0:Bool, maxPlayers:Int):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 5: Any p4
	 * NativeDB Added Parameter 6: Any p5
	 * ```
	 */
	@:native("NETWORK_DO_TRANSITION_QUICKMATCH")
	static function networkDoTransitionQuickmatch(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_DOES_ENTITY_EXIST_WITH_NETWORK_ID")
	static function networkDoesEntityExistWithNetworkId(netId:Int):Bool;

	/**
	 * ```
	 * Hardcoded to return -1.
	 * ```
	 */
	@:native("_NETWORK_DISPLAYNAMES_FROM_HANDLES_START")
	static function NetworkDisplaynamesFromHandlesStart(p0:Dynamic, p1:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NETWORK_DISABLE_LEAVE_REMOTE_PED_BEHIND")
	static function networkDisableLeaveRemotePedBehind(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_DOES_TUNABLE_EXIST")
	static function networkDoesTunableExist(tunableContext:String, tunableName:String):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_DO_TRANSITION_TO_NEW_GAME")
	static function networkDoTransitionToNewGame(p0:Bool, maxPlayers:Int, p2:Bool):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 7: Any p6
	 * NativeDB Added Parameter 8: Any p7
	 * ```
	 */
	@:native("NETWORK_DO_TRANSITION_QUICKMATCH_WITH_GROUP")
	static function networkDoTransitionQuickmatchWithGroup(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_DOES_TUNABLE_EXIST_HASH")
	static function networkDoesTunableExistHash(tunableContext:Int, tunableName:Int):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 5: Any p4
	 * NativeDB Added Parameter 6: Any p5
	 * ```
	 */
	@:native("NETWORK_DO_TRANSITION_QUICKMATCH_ASYNC")
	static function networkDoTransitionQuickmatchAsync(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_DO_TRANSITION_TO_NEW_FREEMODE")
	static function networkDoTransitionToNewFreemode(p0:Dynamic, p1:Dynamic, players:Int, p3:Bool, p4:Bool, p5:Bool):Bool;

	/**
	 * ```
	 * p2 is true 3/4 of the occurrences I found.  
	 * 'players' is the number of players for a session. On PS3/360 it's always 18. On PC it's 32.  
	 * ```
	 */
	@:native("NETWORK_DO_TRANSITION_TO_FREEMODE")
	static function networkDoTransitionToFreemode(p0:Dynamic, p1:Dynamic, p2:Bool, players:Int, p4:Bool):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_DOES_NETWORK_ID_EXIST")
	static function networkDoesNetworkIdExist(netId:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_ENTITY_AREA_DOES_EXIST")
	static function networkEntityAreaDoesExist(areaHandle:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_END_TUTORIAL_SESSION")
	static function networkEndTutorialSession():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_ENTITY_AREA_IS_OCCUPIED")
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
	@:native("NETWORK_EXPLODE_VEHICLE")
	static function networkExplodeVehicle(vehicle:Dynamic, isAudible:Bool, isInvisible:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_EXPLODE_HELI")
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
	@:native("NETWORK_FADE_IN_ENTITY")
	static function networkFadeInEntity(entity:Dynamic, bNetwork:Bool):Dynamic;

	/**
	 * ```
	 * normal - transition like when your coming out of LSC  
	 * slow - transition like when you walk into a mission  
	 * ```
	 */
	@:native("NETWORK_FADE_OUT_ENTITY")
	static function networkFadeOutEntity(entity:Dynamic, normal:Bool, slow:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GAMER_HAS_HEADSET")
	static function networkGamerHasHeadset(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_FIND_GAMERS_IN_CREW")
	static function networkFindGamersInCrew(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_FIND_MATCHED_GAMERS")
	static function networkFindMatchedGamers(p0:Dynamic, p1:Float, p2:Float, p3:Float):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_FINISH_BROADCASTING_DATA")
	static function networkFinishBroadcastingData():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GAMERTAG_FROM_HANDLE_PENDING")
	static function networkGamertagFromHandlePending():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_FORCE_LOCAL_USE_OF_SYNCED_SCENE_CAMERA")
	static function networkForceLocalUseOfSyncedSceneCamera(sceneId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GET_ACTIVITY_PLAYER_NUM")
	static function networkGetActivityPlayerNum(p0:Bool):Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_AGE_GROUP")
	static function networkGetAgeGroup():Int;

	/**
	 * 
	 */
	@:native("NETWORK_GAMERTAG_FROM_HANDLE_SUCCEEDED")
	static function networkGamertagFromHandleSucceeded():Bool;

	/**
	 * ```
	 * NETWORK_GET_*
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("_NETWORK_GET_AVERAGE_PACKET_LOSS_FOR_PLAYER")
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
	@:native("_NETWORK_GET_AVERAGE_LATENCY_FOR_PLAYER_2")
	static function NetworkGetAverageLatencyForPlayer2(player:Dynamic):Float;

	/**
	 * 
	 */
	@:native("NETWORK_GAMERTAG_FROM_HANDLE_START")
	static function networkGamertagFromHandleStart(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_GET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU")
	static function networkGetCurrentlySelectedGamerHandleFromInviteMenu(p0:Dynamic):Bool;

	/**
	 * ```
	 * Return the content modifier id (the tunables context if you want) of a specific content.  
	 * It takes the content hash (which is the mission id hash), and return the content modifier id, used as the tunables context.  
	 * The mission id can be found on the Social club, for example, 'socialclub.rockstargames.com/games/gtav/jobs/job/A8M6Bz8MLEC5xngvDCzGwA'  
	 * 'A8M6Bz8MLEC5xngvDCzGwA' is the mission id, so the game hash this and use it as the parameter for this native.  
	 * ```
	 */
	@:native("NETWORK_GET_CONTENT_MODIFIER_LIST_ID")
	static function networkGetContentModifierListId(contentHash:Int):Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_BACKGROUND_LOADING_RECIPIENTS")
	static function networkGetBackgroundLoadingRecipients(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("_NETWORK_GET_AVERAGE_LATENCY_FOR_PLAYER")
	static function NetworkGetAverageLatencyForPlayer(player:Dynamic):Float;

	/**
	 * 
	 */
	@:native("_NETWORK_GET_DISPLAYNAMES_FROM_HANDLES")
	static function NetworkGetDisplaynamesFromHandles(p0:Dynamic, p1:Dynamic, p2:Dynamic):Int;

	/**
	 * 
	 */
	@:native("_NETWORK_GET_DESTROYER_OF_ENTITY")
	static function NetworkGetDestroyerOfEntity(p0:Dynamic, p1:Dynamic, weaponHash:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_GET_DESTROYER_OF_NETWORK_ID")
	static function networkGetDestroyerOfNetworkId(netId:Int, weaponHash:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_ENTITY_IS_NETWORKED")
	static function networkGetEntityIsNetworked(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_GET_ENTITY_IS_LOCAL")
	static function networkGetEntityIsLocal(entity:Dynamic):Bool;

	/**
	 * Get the local entity handle of the given network id
	 * 
	 * Through this native you can get back the entity that you previously converted to netid with [NetworkGetNetworkIdFromEntity](#\_0x9E35DAB6) or with the `ToNet` natives
	 */
	@:native("NETWORK_GET_ENTITY_FROM_NETWORK_ID")
	static function networkGetEntityFromNetworkId(netId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GET_FOUND_GAMER")
	static function networkGetFoundGamer(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_GET_ENTITY_KILLER_OF_PLAYER")
	static function networkGetEntityKillerOfPlayer(player:Dynamic, weaponHash:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GET_FRIEND_COUNT")
	static function networkGetFriendCount():Int;

	/**
	 * 
	 */
	@:native("_NETWORK_GET_ENTITY_NET_SCRIPT_ID")
	static function NetworkGetEntityNetScriptId(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_GAMER_STATUS_RESULT")
	static function networkGetGamerStatusResult(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_GET_FRIEND_NAME")
	static function networkGetFriendName(friendIndex:Int):String;

	/**
	 * 
	 */
	@:native("NETWORK_GET_GAMER_STATUS_FROM_QUEUE")
	static function networkGetGamerStatusFromQueue():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_GET_GLOBAL_MULTIPLAYER_CLOCK")
	static function networkGetGlobalMultiplayerClock(hours:Dynamic, minutes:Dynamic, seconds:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_GET_FRIEND_NAME_FROM_INDEX")
	static function NetworkGetFriendNameFromIndex(friendIndex:Int):String;

	/**
	 * 
	 */
	@:native("NETWORK_GET_HOST_OF_THIS_SCRIPT")
	static function networkGetHostOfThisScript():Dynamic;

	/**
	 * ```
	 * Retrieves the local player's NetworkHandle* and stores it in the given buffer.  
	 * * Currently unknown struct  
	 * ```
	 */
	@:native("NETWORK_GET_LOCAL_HANDLE")
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
	@:native("NETWORK_GET_HOST_OF_SCRIPT")
	static function networkGetHostOfScript(scriptName:String, p1:Int, p2:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GET_GAMERTAG_FROM_HANDLE")
	static function networkGetGamertagFromHandle(networkHandle:Dynamic):String;

	/**
	 * ```
	 * Used by NetBlender
	 * ```
	 */
	@:native("_NETWORK_GET_LAST_VELOCITY_RECEIVED")
	static function NetworkGetLastVelocityReceived(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_GET_NUM_BODY_TRACKERS")
	static function NetworkGetNumBodyTrackers():Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_INSTANCE_ID_OF_THIS_SCRIPT")
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
	@:native("NETWORK_GET_MAX_NUM_PARTICIPANTS")
	static function networkGetMaxNumParticipants():Int;

	/**
	 * Returns a local synchronized scene handle of a networked synchronised scene.
	 */
	@:native("NETWORK_GET_LOCAL_SCENE_FROM_NETWORK_ID")
	static function networkGetLocalSceneFromNetworkId(netSceneId:Int):Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_NUM_SCRIPT_PARTICIPANTS")
	static function networkGetNumScriptParticipants(p0:Dynamic, p1:Dynamic, p2:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_NUM_FOUND_GAMERS")
	static function networkGetNumFoundGamers():Int;

	/**
	 * ```
	 * NETWORK_GET_*
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("_NETWORK_GET_OLDEST_RESEND_COUNT_FOR_PLAYER")
	static function NetworkGetOldestResendCountForPlayer(player:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_MAX_FRIENDS")
	static function networkGetMaxFriends():Int;

	/**
	 * ```
	 * Returns the amount of players connected in the current session. Only works when connected to a session/server.  
	 * ```
	 */
	@:native("NETWORK_GET_NUM_CONNECTED_PLAYERS")
	static function networkGetNumConnectedPlayers():Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PLATFORM_PARTY_MEMBERS")
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
	@:native("NETWORK_GET_NETWORK_ID_FROM_ENTITY")
	static function networkGetNetworkIdFromEntity(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PLAYER_FROM_GAMER_HANDLE")
	static function networkGetPlayerFromGamerHandle(networkHandle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GET_NUM_PARTICIPANTS")
	static function networkGetNumParticipants():Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_NUM_PRESENCE_INVITES")
	static function networkGetNumPresenceInvites():Int;

	/**
	 * 
	 */
	@:native("_NETWORK_GET_PLATFORM_PARTY_UNK")
	static function NetworkGetPlatformPartyUnk():Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PARTICIPANT_INDEX")
	static function networkGetParticipantIndex(index:Int):Int;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("_NETWORK_GET_NUM_UNACKED_FOR_PLAYER")
	static function NetworkGetNumUnackedForPlayer(player:Dynamic):Int;

	/**
	 * ```
	 * Returns the Player associated to a given Ped when in an online session.  
	 * ```
	 */
	@:native("NETWORK_GET_PLAYER_INDEX_FROM_PED")
	static function networkGetPlayerIndexFromPed(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PRESENCE_INVITE_CONTENT_ID")
	static function networkGetPresenceInviteContentId(p0:Dynamic):String;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PLAYER_OWNS_WAYPOINT")
	static function networkGetPlayerOwnsWaypoint(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PRESENCE_INVITE_ID")
	static function networkGetPresenceInviteId(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PLAYER_INDEX")
	static function networkGetPlayerIndex(player:Dynamic):Int;

	/**
	 * Returns the coordinates of another player.
	 * 
	 * Does not work if you enter your own player id as p0 (will return `(0.0, 0.0, 0.0)` in that case).
	 */
	@:native("_NETWORK_GET_PLAYER_COORDS")
	static function NetworkGetPlayerCoords(player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PRESENCE_INVITE_HANDLE")
	static function networkGetPresenceInviteHandle(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PRESENCE_INVITE_PLAYLIST_LENGTH")
	static function networkGetPresenceInvitePlaylistLength(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PLAYER_LOUDNESS")
	static function networkGetPlayerLoudness(player:Dynamic):Float;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PLAYER_TUTORIAL_SESSION_INSTANCE")
	static function networkGetPlayerTutorialSessionInstance(player:Dynamic):Int;

	/**
	 * The Native returns a hash of the session id as string from the specific invite index!
	 */
	@:native("NETWORK_GET_PRESENCE_INVITE_SESSION_ID")
	static function networkGetPresenceInviteSessionId(inviteIndex:Int):Int;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_GET_POSITION_HASH_OF_THIS_SCRIPT")
	static function NetworkGetPositionHashOfThisScript():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PRESENCE_INVITE_FROM_ADMIN")
	static function networkGetPresenceInviteFromAdmin(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PRESENCE_INVITE_IS_TOURNAMENT")
	static function networkGetPresenceInviteIsTournament(p0:Dynamic):Bool;

	/**
	 * Returns the Name of the inviter of the specific selected Invite.
	 */
	@:native("NETWORK_GET_PRESENCE_INVITE_INVITER")
	static function networkGetPresenceInviteInviter(inviteIndex:Int):String;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PRESENCE_INVITE_PLAYLIST_CURRENT")
	static function networkGetPresenceInvitePlaylistCurrent(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PRIMARY_CLAN_DATA_CLEAR")
	static function networkGetPrimaryClanDataClear():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PRIMARY_CLAN_DATA_PENDING")
	static function networkGetPrimaryClanDataPending():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PRIMARY_CLAN_DATA_CANCEL")
	static function networkGetPrimaryClanDataCancel():Dynamic;

	/**
	 * ```
	 * Same as GET_RANDOM_INT_IN_RANGE
	 * ```
	 */
	@:native("NETWORK_GET_RANDOM_INT_RANGED")
	static function networkGetRandomIntRanged(rangeStart:Int, rangeEnd:Int):Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PRIMARY_CLAN_DATA_SUCCESS")
	static function networkGetPrimaryClanDataSuccess():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PRIMARY_CLAN_DATA_NEW")
	static function networkGetPrimaryClanDataNew(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_GET_PRIMARY_CLAN_DATA_START")
	static function networkGetPrimaryClanDataStart(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * ```
	 * Based on scripts such as in freemode.c how they call their vars vVar and fVar the 2nd and 3rd param it a Vector3 and Float, but the first is based on get_random_int_in_range..  
	 * ```
	 */
	@:native("NETWORK_GET_RESPAWN_RESULT")
	static function networkGetRespawnResult(randomInt:Int, coordinates:Dynamic, heading:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GET_RANDOM_INT")
	static function networkGetRandomInt():Int;

	/**
	 * 
	 */
	@:native("_NETWORK_GET_ROS_PRIVILEGE_25")
	static function NetworkGetRosPrivilege25():Bool;

	/**
	 * 
	 */
	@:native("_NETWORK_GET_ROS_PRIVILEGE_24")
	static function NetworkGetRosPrivilege24():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_GET_RESPAWN_RESULT_FLAGS")
	static function networkGetRespawnResultFlags(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GET_TALKER_PROXIMITY")
	static function networkGetTalkerProximity():Float;

	/**
	 * 
	 */
	@:native("NETWORK_GET_SCRIPT_STATUS")
	static function networkGetScriptStatus():Int;

	/**
	 * 
	 */
	@:native("_NETWORK_GET_ROS_PRIVILEGE_9")
	static function NetworkGetRosPrivilege9():Bool;

	/**
	 * 
	 */
	@:native("_NETWORK_GET_TARGETING_MODE")
	static function NetworkGetTargetingMode():Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_THIS_SCRIPT_IS_NETWORK_SCRIPT")
	static function networkGetThisScriptIsNetworkScript():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_GET_TIMEOUT_TIME")
	static function networkGetTimeoutTime():Int;

	/**
	 * ```
	 * Actually returns the version (TUNABLE_VERSION)
	 * ```
	 */
	@:native("NETWORK_GET_TUNABLE_CLOUD_CRC")
	static function networkGetTunableCloudCrc():Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_TOTAL_NUM_PLAYERS")
	static function networkGetTotalNumPlayers():Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_TRANSITION_HOST")
	static function networkGetTransitionHost(networkHandle:Dynamic):Bool;

	/**
	 * ```
	 * NETWORK_*
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("_NETWORK_GET_UNRELIABLE_RESEND_COUNT_FOR_PLAYER")
	static function NetworkGetUnreliableResendCountForPlayer(player:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_CONTROL_OF_DOOR")
	static function networkHasControlOfDoor(doorHash:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HANDLE_FROM_FRIEND")
	static function networkHandleFromFriend(friendIndex:Int, networkHandle:Dynamic, bufferSize:Int):Dynamic;

	/**
	 * ```
	 * Returns count.
	 * ```
	 */
	@:native("NETWORK_GET_TRANSITION_MEMBERS")
	static function networkGetTransitionMembers(data:Dynamic, dataCount:Int):Int;

	/**
	 * ```
	 * Returns a NetworkHandle* from the specified member ID and stores it in a given buffer.  
	 * * Currently unknown struct  
	 * ```
	 */
	@:native("NETWORK_HANDLE_FROM_MEMBER_ID")
	static function networkHandleFromMemberId(memberId:String, networkHandle:Dynamic, bufferSize:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_CONTROL_OF_PICKUP")
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
	@:native("NETWORK_HANDLE_FROM_PLAYER")
	static function networkHandleFromPlayer(player:Dynamic, networkHandle:Dynamic, bufferSize:Int):Dynamic;

	/**
	 * ```
	 * Returns a NetworkHandle* from the specified user ID and stores it in a given buffer.  
	 * * Currently unknown struct  
	 * ```
	 */
	@:native("NETWORK_HANDLE_FROM_USER_ID")
	static function networkHandleFromUserId(userId:String, networkHandle:Dynamic, bufferSize:Int):Dynamic;

	/**
	 * ```
	 * Returns true if dinput8.dll is present in the game directory.
	 * You will get following error message if that is true: "You are attempting to access GTA Online servers with an altered version of the game."
	 * ```
	 */
	@:native("_NETWORK_HAS_GAME_BEEN_ALTERED")
	static function NetworkHasGameBeenAltered():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_CONTROL_OF_ENTITY")
	static function networkHasControlOfEntity(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_INVITED_GAMER")
	static function networkHasInvitedGamer(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_NETWORK_HAS_AGE_RESTRICTED_PROFILE")
	static function NetworkHasAgeRestrictedProfile():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_CACHED_PLAYER_HEAD_BLEND_DATA")
	static function networkHasCachedPlayerHeadBlendData(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_CONTROL_OF_NETWORK_ID")
	static function networkHasControlOfNetworkId(netId:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_INVITED_GAMER_TO_TRANSITION")
	static function networkHasInvitedGamerToTransition(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_ENTITY_BEEN_REGISTERED_WITH_THIS_THREAD")
	static function networkHasEntityBeenRegisteredWithThisThread(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_RECEIVED_HOST_BROADCAST_DATA")
	static function networkHasReceivedHostBroadcastData():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_FOLLOW_INVITE")
	static function networkHasFollowInvite():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_SOCIAL_NETWORKING_SHARING_PRIV")
	static function networkHasSocialNetworkingSharingPriv():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_HEADSET")
	static function networkHasHeadset():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_INVITE_BEEN_ACKED")
	static function networkHasInviteBeenAcked(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_PLAYER_STARTED_TRANSITION")
	static function networkHasPlayerStartedTransition(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_SOCIAL_CLUB_ACCOUNT")
	static function networkHasSocialClubAccount():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_TRANSITION_INVITE_BEEN_ACKED")
	static function networkHasTransitionInviteBeenAcked(networkHandle:Dynamic):Bool;

	/**
	 * ```
	 * Returns whether the signed-in user has valid Rockstar Online Services (ROS) credentials.
	 * ```
	 */
	@:native("NETWORK_HAS_VALID_ROS_CREDENTIALS")
	static function networkHasValidRosCredentials():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_PENDING_INVITE")
	static function networkHasPendingInvite():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HASH_FROM_GAMER_HANDLE")
	static function networkHashFromGamerHandle(networkHandle:Dynamic):Int;

	/**
	 * ```
	 * index is always 18 in scripts
	 * ```
	 */
	@:native("NETWORK_HAS_ROS_PRIVILEGE")
	static function networkHasRosPrivilege(index:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HASH_FROM_PLAYER_HANDLE")
	static function networkHashFromPlayerHandle(player:Dynamic):Int;

	/**
	 * 
	 */
	@:native("_NETWORK_HAS_VIEW_GAMER_USER_CONTENT_RESULT")
	static function NetworkHasViewGamerUserContentResult(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAVE_ROS_BANNED_PRIV")
	static function networkHaveRosBannedPriv():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAVE_ONLINE_PRIVILEGES")
	static function networkHaveOnlinePrivileges():Bool;

	/**
	 * 
	 */
	@:native("_NETWORK_HAVE_ONLINE_PRIVILEGE_2")
	static function NetworkHaveOnlinePrivilege2():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAVE_ROS_LEADERBOARD_WRITE_PRIV")
	static function networkHaveRosLeaderboardWritePriv():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_ACTIVITY_SESSION")
	static function networkIsActivitySession():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAVE_ROS_SOCIAL_CLUB_PRIV")
	static function networkHaveRosSocialClubPriv():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAS_ROS_PRIVILEGE_END_DATE")
	static function networkHasRosPrivilegeEndDate(privilege:Int, banType:Dynamic, timeData:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAVE_ROS_MULTIPLAYER_PRIV")
	static function networkHaveRosMultiplayerPriv():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_ACTIVITY_SPECTATOR")
	static function networkIsActivitySpectator():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAVE_COMMUNICATION_PRIVILEGES")
	static function networkHaveCommunicationPrivileges(p0:Int, player:Dynamic):Bool;

	/**
	 * From what I can tell it looks like it does the following:
	 * 
	 * Creates/hosts a new transition to another online session, using this in FiveM will result in other players being disconencted from the server/preventing them from joining. This is most likely because I entered the wrong session parameters since they're pretty much all unknown right now.
	 * 
	 * You also need to use `NetworkJoinTransition(Player player)` and `NetworkLaunchTransition()`.
	 */
	@:native("NETWORK_HOST_TRANSITION")
	static function networkHostTransition(p0:Int, p1:Int, p2:Int, p3:Int, p4:Dynamic, p5:Bool, p6:Bool, p7:Int, p8:Dynamic, p9:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_HAVE_ROS_CREATE_TICKET_PRIV")
	static function networkHaveRosCreateTicketPriv():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_CABLE_CONNECTED")
	static function networkIsCableConnected():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_ADDING_FRIEND")
	static function networkIsAddingFriend():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_HAVE_USER_CONTENT_PRIVILEGES")
	static function networkHaveUserContentPrivileges(p0:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_CLOCK_TIME_OVERRIDDEN")
	static function networkIsClockTimeOverridden():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_INVITE_GAMERS")
	static function networkInviteGamers(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_CLOUD_BACKGROUND_SCRIPT_REQUEST_PENDING")
	static function networkIsCloudBackgroundScriptRequestPending():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_INVITE_GAMERS_TO_TRANSITION")
	static function networkInviteGamersToTransition(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_DOOR_NETWORKED")
	static function networkIsDoorNetworked(doorHash:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_ACTIVITY_SPECTATOR_FROM_HANDLE")
	static function networkIsActivitySpectatorFromHandle(networkHandle:Dynamic):Bool;

	/**
	 * ```
	 * NETWORK_IS_*
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("_NETWORK_IS_CONNECTION_ENDPOINT_RELAY_SERVER")
	static function NetworkIsConnectionEndpointRelayServer(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_NETWORK_IS_FRIEND_HANDLE_ONLINE")
	static function NetworkIsFriendHandleOnline(networkHandle:Dynamic):Bool;

	/**
	 * Note: This only works for vehicles, which appears to be a bug (since the setter *does* work for every entity type and the name is 99% correct).
	 */
	@:native("_NETWORK_IS_ENTITY_CONCEALED")
	static function NetworkIsEntityConcealed(entity:Dynamic):Bool;

	/**
	 * ```
	 * This would be nice to see if someone is in party chat, but 2 sad notes.  
	 * 1) It only becomes true if said person is speaking in that party at the time.  
	 * 2) It will never, become true unless you are in that party with said person.  
	 * ```
	 */
	@:native("NETWORK_IS_CHATTING_IN_PLATFORM_PARTY")
	static function networkIsChattingInPlatformParty(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_ENTITY_FADING")
	static function networkIsEntityFading(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_FINDING_GAMERS")
	static function networkIsFindingGamers():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_CLOUD_AVAILABLE")
	static function networkIsCloudAvailable():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_FRIEND_IN_MULTIPLAYER")
	static function networkIsFriendInMultiplayer(friendName:String):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_FRIEND")
	static function networkIsFriend(networkHandle:Dynamic):Bool;

	/**
	 * ```
	 * In scripts R* calls 'NETWORK_GET_FRIEND_NAME' in this param.  
	 * ```
	 */
	@:native("NETWORK_IS_FRIEND_IN_SAME_TITLE")
	static function networkIsFriendInSameTitle(friendName:String):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_FRIEND_INDEX_ONLINE")
	static function networkIsFriendIndexOnline(friendIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_GAME_IN_PROGRESS")
	static function networkIsGameInProgress():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_GAMER_IN_MY_SESSION")
	static function networkIsGamerInMySession(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_GETTING_GAMER_STATUS")
	static function networkIsGettingGamerStatus():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_GAMER_MUTED_BY_ME")
	static function networkIsGamerMutedByMe(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_FRIEND_ONLINE")
	static function networkIsFriendOnline(name:String):Bool;

	/**
	 * ```
	 * If you are host, returns true else returns false.
	 * ```
	 */
	@:native("NETWORK_IS_HOST")
	static function networkIsHost():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_GAMER_BLOCKED_BY_ME")
	static function networkIsGamerBlockedByMe(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_HANDLE_VALID")
	static function networkIsHandleValid(networkHandle:Dynamic, bufferSize:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_GAMER_TALKING")
	static function networkIsGamerTalking(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_IN_SESSION")
	static function networkIsInSession():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_IN_MP_CUTSCENE")
	static function networkIsInMpCutscene():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_HOST_OF_THIS_SCRIPT")
	static function networkIsHostOfThisScript():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_IN_TUTORIAL_SESSION")
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
	@:native("NETWORK_IS_IN_PARTY")
	static function networkIsInParty():Bool;

	/**
	 * ```
	 * Hardcoded to return false.
	 * ```
	 */
	@:native("NETWORK_IS_IN_PLATFORM_PARTY_CHAT")
	static function networkIsInPlatformPartyChat():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_LOCAL_PLAYER_INVINCIBLE")
	static function networkIsLocalPlayerInvincible():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_IN_SPECTATOR_MODE")
	static function networkIsInSpectatorMode():Bool;

	/**
	 * ```
	 * Hardcoded to return false.
	 * ```
	 */
	@:native("NETWORK_IS_IN_PLATFORM_PARTY")
	static function networkIsInPlatformParty():Bool;

	/**
	 * Returns true if the specified network id is controlled by someone else.
	 */
	@:native("_NETWORK_IS_NETWORK_ID_A_CLONE")
	static function NetworkIsNetworkIdAClone(netId:Int):Bool;

	/**
	 * Checks if the networkHandle is the same as any other user that is signed in on the local machine.
	 * For example, if your console has two or more users signed in (on different controllers), the profile that is not controlling the game would be "inactive".
	 */
	@:native("NETWORK_IS_INACTIVE_PROFILE")
	static function networkIsInactiveProfile(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_IN_TRANSITION")
	static function networkIsInTransition():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_PARTICIPANT_ACTIVE")
	static function networkIsParticipantActive(p0:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_MULTIPLAYER_DISABLED")
	static function networkIsMultiplayerDisabled():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_OFFLINE_INVITE_PENDING")
	static function networkIsOfflineInvitePending():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_PLAYER_A_PARTICIPANT_ON_SCRIPT")
	static function networkIsPlayerAParticipantOnScript(player1:Dynamic, script:String, player2:Dynamic):Bool;

	/**
	 * ```
	 * This function is hard-coded to always return 0.
	 * ```
	 */
	@:native("NETWORK_IS_PENDING_FRIEND")
	static function networkIsPendingFriend(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_IS_PLAYER_CONNECTED")
	static function networkIsPlayerConnected(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_LOCAL_TALKING")
	static function networkIsLocalTalking():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_PLAYER_CONCEALED")
	static function networkIsPlayerConcealed(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_PLAYER_FADING")
	static function networkIsPlayerFading(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_PLAYER_BLOCKED_BY_ME")
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
	@:native("NETWORK_IS_PARTY_MEMBER")
	static function networkIsPartyMember(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_PLAYER_IN_MP_CUTSCENE")
	static function networkIsPlayerInMpCutscene(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_PLAYER_MUTED_BY_ME")
	static function networkIsPlayerMutedByMe(player:Dynamic):Bool;

	/**
	 * ```
	 * NETWORK_ARE_*  
	 * ```
	 */
	@:native("_NETWORK_IS_PLAYER_EQUAL_TO_INDEX")
	static function NetworkIsPlayerEqualToIndex(player:Dynamic, index:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_PLAYER_A_PARTICIPANT")
	static function networkIsPlayerAParticipant(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_PLAYER_ACTIVE")
	static function networkIsPlayerActive(player:Dynamic):Bool;

	/**
	 * ```
	 * returns true if someone is screaming or talking in a microphone  
	 * ```
	 */
	@:native("NETWORK_IS_PLAYER_TALKING")
	static function networkIsPlayerTalking(player:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v2245
	 * ```
	 */
	@:native("_NETWORK_IS_SCRIPT_ACTIVE_BY_HASH")
	static function NetworkIsScriptActiveByHash(scriptHash:Int, p1:Int, p2:Bool, p3:Int):Bool;

	/**
	 * 
	 */
	@:native("_NETWORK_IS_PSN_AVAILABLE")
	static function NetworkIsPsnAvailable():Bool;

	/**
	 * ```
	 * This checks if player is playing on gta online or not.  
	 * Please add an if and block your mod if this is "true".  
	 * ```
	 */
	@:native("NETWORK_IS_SESSION_STARTED")
	static function networkIsSessionStarted():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_SCRIPT_ACTIVE")
	static function networkIsScriptActive(scriptName:String, player:Dynamic, p2:Bool, p3:Dynamic):Bool;

	/**
	 * ```
	 * Returns whether the player is signed into Social Club.  
	 * ```
	 */
	@:native("NETWORK_IS_SIGNED_IN")
	static function networkIsSignedIn():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_SESSION_BUSY")
	static function networkIsSessionBusy():Bool;

	/**
	 * ```
	 * Returns whether the game is not in offline mode.  
	 * seemed not to work for some ppl  
	 * ```
	 */
	@:native("NETWORK_IS_SIGNED_ONLINE")
	static function networkIsSignedOnline():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_SESSION_ACTIVE")
	static function networkIsSessionActive():Bool;

	/**
	 * 
	 */
	@:native("_NETWORK_IS_THIS_SCRIPT_MARKED")
	static function NetworkIsThisScriptMarked(p0:Dynamic, p1:Bool, p2:Dynamic):Bool;

	/**
	 * ```
	 * Same as _IS_TEXT_CHAT_ACTIVE, except it does not check if the text chat HUD component is initialized, and therefore may crash.  
	 * ```
	 */
	@:native("_NETWORK_IS_TEXT_CHAT_ACTIVE")
	static function NetworkIsTextChatActive():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_TRANSITION_MATCHMAKING")
	static function networkIsTransitionMatchmaking():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_TRANSITION_BUSY")
	static function networkIsTransitionBusy():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_TRANSITION_CLOSED_FRIENDS")
	static function networkIsTransitionClosedFriends():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_TRANSITION_HOST")
	static function networkIsTransitionHost():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_TUNABLE_CLOUD_REQUEST_PENDING")
	static function networkIsTunableCloudRequestPending():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_TRANSITION_OPEN_TO_MATCHMAKING")
	static function networkIsTransitionOpenToMatchmaking():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_TRANSITION_CLOSED_CREW")
	static function networkIsTransitionClosedCrew():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_JOIN_GROUP_ACTIVITY")
	static function networkJoinGroupActivity():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_IS_TRANSITION_STARTED")
	static function networkIsTransitionStarted():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_JOIN_PREVIOUSLY_FAILED_SESSION")
	static function networkJoinPreviouslyFailedSession():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_TRANSITION_HOST_FROM_HANDLE")
	static function networkIsTransitionHostFromHandle(networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_TRANSITION_PRIVATE")
	static function networkIsTransitionPrivate():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_TRANSITION_SOLO")
	static function networkIsTransitionSolo():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_TRANSITION_TO_GAME")
	static function networkIsTransitionToGame():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_IS_TRANSITION_VISIBILITY_LOCKED")
	static function networkIsTransitionVisibilityLocked():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_MARK_TRANSITION_GAMER_AS_FULLY_JOINED")
	static function networkMarkTransitionGamerAsFullyJoined(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_LEAVE_TRANSITION")
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
	@:native("NETWORK_JOIN_TRANSITION")
	static function networkJoinTransition(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_OPEN_TRANSITION_MATCHMAKING")
	static function networkOpenTransitionMatchmaking():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_IS_TUTORIAL_SESSION_CHANGE_PENDING")
	static function networkIsTutorialSessionChangePending():Bool;

	/**
	 * ```
	 * Could possibly bypass being muted or automatically muted  
	 * ```
	 */
	@:native("NETWORK_OVERRIDE_CHAT_RESTRICTIONS")
	static function networkOverrideChatRestrictions(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_MEMBER_ID_FROM_GAMER_HANDLE")
	static function networkMemberIdFromGamerHandle(networkHandle:Dynamic):String;

	/**
	 * 
	 */
	@:native("NETWORK_JOIN_PREVIOUSLY_FAILED_TRANSITION")
	static function networkJoinPreviouslyFailedTransition():Bool;

	/**
	 * ```
	 * R* uses this to hear all player when spectating.   
	 * It allows you to hear other online players when their chat is on none, crew and or friends  
	 * ```
	 */
	@:native("NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS")
	static function networkOverrideReceiveRestrictions(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Overrides the game clock time for the local player, allowing for manipulation of the in-game time. This native is effective in both multiplayer and singleplayer modes.
	 * 
	 * **Note:** Passing wrong data (e.g. hours above 23) will cause the game to crash.
	 */
	@:native("NETWORK_OVERRIDE_CLOCK_TIME")
	static function networkOverrideClockTime(hours:Int, minutes:Int, seconds:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_OVERRIDE_COORDS_AND_HEADING")
	static function networkOverrideCoordsAndHeading(entity:Dynamic, x:Float, y:Float, z:Float, heading:Float):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_LAUNCH_TRANSITION")
	static function networkLaunchTransition():Bool;

	/**
	 * ```
	 * p0 is always false in scripts.
	 * ```
	 */
	@:native("NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS_ALL")
	static function networkOverrideReceiveRestrictionsAll(toggle:Bool):Dynamic;

	/**
	 * ```
	 * This is used alongside the native,
	 * 'NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS'. Read its description for more info.
	 * ```
	 */
	@:native("NETWORK_OVERRIDE_SEND_RESTRICTIONS")
	static function networkOverrideSendRestrictions(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_OVERRIDE_SEND_RESTRICTIONS_ALL")
	static function networkOverrideSendRestrictionsAll(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_OVERRIDE_TRANSITION_CHAT")
	static function networkOverrideTransitionChat(p0:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("_NETWORK_OVERRIDE_CLOCK_MILLISECONDS_PER_GAME_MINUTE")
	static function NetworkOverrideClockMillisecondsPerGameMinute(ms:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_OVERRIDE_TEAM_RESTRICTIONS")
	static function networkOverrideTeamRestrictions(team:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_PLAYER_GET_CHEATER_REASON")
	static function networkPlayerGetCheaterReason():Int;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_PED_FORCE_GAME_STATE_UPDATE")
	static function NetworkPedForceGameStateUpdate(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_PLAYER_HAS_HEADSET")
	static function networkPlayerHasHeadset(player:Dynamic):Bool;

	/**
	 * ```
	 * Returns the name of a given player. Returns "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.
	 * ```
	 */
	@:native("NETWORK_PLAYER_GET_NAME")
	static function networkPlayerGetName(player:Dynamic):String;

	/**
	 * ```
	 * Takes a 24 char buffer. Returns the buffer or "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.
	 * ```
	 */
	@:native("NETWORK_PLAYER_GET_USERID")
	static function networkPlayerGetUserid(player:Dynamic, userID:Dynamic):String;

	/**
	 * 
	 */
	@:native("NETWORK_PLAYER_IS_BADSPORT")
	static function networkPlayerIsBadsport():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_PLAYER_INDEX_IS_CHEATER")
	static function networkPlayerIndexIsCheater(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_PLAYER_IS_CHEATER")
	static function networkPlayerIsCheater():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_REGISTER_HOST_BROADCAST_VARIABLES")
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
	@:native("NETWORK_PLAYER_IS_ROCKSTAR_DEV")
	static function networkPlayerIsRockstarDev(player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_QUERY_RESPAWN_RESULTS")
	static function networkQueryRespawnResults(p0:Dynamic):Dynamic;

	/**
	 * Forces the "Are you sure you want to quit Grand Theft Auto V?" warning message (Same as when you Alt+F4) to show.
	 * Doesn't work in singleplayer.
	 */
	@:native("NETWORK_QUIT_MP_TO_DESKTOP")
	static function networkQuitMpToDesktop():Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_REGISTER_TUNABLE_INT_HASH")
	static function NetworkRegisterTunableIntHash(contextHash:Int, nameHash:Int, value:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_QUEUE_GAMER_FOR_STATUS")
	static function networkQueueGamerForStatus(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_REGISTER_ENTITY_AS_NETWORKED")
	static function networkRegisterEntityAsNetworked(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_REGISTER_PLAYER_BROADCAST_VARIABLES")
	static function networkRegisterPlayerBroadcastVariables(vars:Dynamic, numVars:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_REMOVE_ALL_TRANSITION_INVITE")
	static function networkRemoveAllTransitionInvite():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_REMOVE_ENTITY_AREA")
	static function networkRemoveEntityArea(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_NETWORK_REGISTER_TUNABLE_BOOL_HASH")
	static function NetworkRegisterTunableBoolHash(contextHash:Int, nameHash:Int, value:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_REMOVE_PRESENCE_INVITE")
	static function networkRemovePresenceInvite(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_NETWORK_REGISTER_TUNABLE_FLOAT_HASH")
	static function NetworkRegisterTunableFloatHash(contextHash:Int, nameHash:Int, value:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_REMOVE_TRANSITION_INVITE")
	static function networkRemoveTransitionInvite(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_REQUEST_CONTROL_OF_NETWORK_ID")
	static function networkRequestControlOfNetworkId(netId:Int):Bool;

	/**
	 * 
	 */
	@:native("_NETWORK_REPORT_MYSELF")
	static function NetworkReportMyself():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_REQUEST_CONTROL_OF_DOOR")
	static function networkRequestControlOfDoor(doorID:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_REQUEST_CLOUD_BACKGROUND_SCRIPTS")
	static function networkRequestCloudBackgroundScripts():Bool;

	/**
	 * ```
	 * p4 and p5 are always 0 in scripts  
	 * ```
	 */
	@:native("_NETWORK_RESPAWN_COORDS")
	static function NetworkRespawnCoords(player:Dynamic, x:Float, y:Float, z:Float, p4:Bool, p5:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_REQUEST_CLOUD_TUNABLES")
	static function networkRequestCloudTunables():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_RESET_BODY_TRACKER")
	static function networkResetBodyTracker():Dynamic;

	/**
	 * ```
	 * String "NETWORK_SEND_PRESENCE_TRANSITION_INVITE" is contained in the function in ida so this one is correct.  
	 * ```
	 */
	@:native("_NETWORK_SEND_PRESENCE_TRANSITION_INVITE")
	static function NetworkSendPresenceTransitionInvite(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SEED_RANDOM_NUMBER_GENERATOR")
	static function networkSeedRandomNumberGenerator(seed:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_REQUEST_CONTROL_OF_ENTITY")
	static function networkRequestControlOfEntity(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SEND_INVITE_VIA_PRESENCE")
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
	@:native("NETWORK_RESURRECT_LOCAL_PLAYER")
	static function networkResurrectLocalPlayer(x:Float, y:Float, z:Float, heading:Float, nInvincibilityTime:Int, bLeaveDeadPed:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_BLOCK_JOIN_REQUESTS")
	static function networkSessionBlockJoinRequests(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_ACTIVITY_QUICKMATCH")
	static function networkSessionActivityQuickmatch(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * ```
	 * Message is limited to 64 characters.
	 * ```
	 */
	@:native("NETWORK_SEND_TEXT_MESSAGE")
	static function networkSendTextMessage(message:String, networkHandle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_CANCEL_INVITE")
	static function networkSessionCancelInvite():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_ADD_ACTIVE_MATCHMAKING_GROUP")
	static function networkSessionAddActiveMatchmakingGroup(groupId:Int):Dynamic;

	/**
	 * ```
	 * the first arg seems to be the network player handle (&handle) and the second var is pretty much always "" and the third seems to be a number between 0 and ~10 and the 4th is is something like 0 to 5 and I guess the 5th is a bool cuz it is always 0 or 1  
	 * does this send an invite to a player?  
	 * ```
	 */
	@:native("NETWORK_SEND_TRANSITION_GAMER_INSTRUCTION")
	static function networkSendTransitionGamerInstruction(networkHandle:Dynamic, p1:String, p2:Int, p3:Int, p4:Bool):Bool;

	/**
	 * ```
	 * p0 is always false and p1 varies.  
	 * NETWORK_SESSION_END(0, 1)  
	 * NETWORK_SESSION_END(0, 0)  
	 * Results in: "Connection to session lost due to an unknown network error. Please return to Grand Theft Auto V and try again later."  
	 * ```
	 */
	@:native("NETWORK_SESSION_END")
	static function networkSessionEnd(p0:Bool, p1:Bool):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_CHANGE_SLOTS")
	static function networkSessionChangeSlots(p0:Int, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_CREW_MATCHMAKING")
	static function networkSessionCrewMatchmaking(p0:Int, p1:Int, p2:Int, maxPlayers:Int, p4:Bool):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_FORCE_CANCEL_INVITE")
	static function networkSessionForceCancelInvite():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_FRIEND_MATCHMAKING")
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
	@:native("NETWORK_SESSION_ENTER")
	static function networkSessionEnter(p0:Dynamic, p1:Dynamic, p2:Dynamic, maxPlayers:Int, p4:Dynamic, p5:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_GET_PRIVATE_SLOTS")
	static function networkSessionGetPrivateSlots():Int;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_GET_INVITER")
	static function networkSessionGetInviter(networkHandle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_GET_KICK_VOTE")
	static function networkSessionGetKickVote(player:Dynamic):Bool;

	/**
	 * ```
	 * Loads up the map that is loaded when beeing in mission creator  
	 * Player gets placed in a mix between online/offline mode  
	 * p0 is always 2 in R* scripts.  
	 * Appears to be patched in gtav b757 (game gets terminated) alonside with most other network natives to prevent online modding ~ghost30812  
	 * ```
	 */
	@:native("NETWORK_SESSION_HOST_SINGLE_PLAYER")
	static function networkSessionHostSinglePlayer(p0:Int):Dynamic;

	/**
	 * ```
	 * Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.  
	 * ```
	 */
	@:native("NETWORK_SESSION_HOST")
	static function networkSessionHost(p0:Int, maxPlayers:Int, p2:Bool):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_GET_MATCHMAKING_GROUP_FREE")
	static function networkSessionGetMatchmakingGroupFree(p0:Int):Int;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_HOST_CLOSED")
	static function networkSessionHostClosed(p0:Int, maxPlayers:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_IS_CLOSED_CREW")
	static function networkSessionIsClosedCrew():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_IS_CLOSED_FRIENDS")
	static function networkSessionIsClosedFriends():Bool;

	/**
	 * ```
	 * Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.  
	 * ```
	 */
	@:native("NETWORK_SESSION_HOST_FRIENDS_ONLY")
	static function networkSessionHostFriendsOnly(p0:Int, maxPlayers:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_JOIN_INVITE")
	static function networkSessionJoinInvite():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_IS_SOLO")
	static function networkSessionIsSolo():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_IS_PRIVATE")
	static function networkSessionIsPrivate():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_IS_VOICE_SESSION_BUSY")
	static function networkSessionIsVoiceSessionBusy():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_IS_IN_VOICE_SESSION")
	static function networkSessionIsInVoiceSession():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_IS_VISIBLE")
	static function networkSessionIsVisible():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_SET_MATCHMAKING_MENTAL_STATE")
	static function networkSessionSetMatchmakingMentalState(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * Only works as host.
	 * ```
	 */
	@:native("NETWORK_SESSION_KICK_PLAYER")
	static function networkSessionKickPlayer(player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_VOICE_HOST")
	static function networkSessionVoiceHost():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_SET_MATCHMAKING_GROUP")
	static function networkSessionSetMatchmakingGroup(matchmakingGroup:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_LEAVE_SINGLE_PLAYER")
	static function networkSessionLeaveSinglePlayer():Dynamic;

	/**
	 * ```
	 * playerTypes:
	 * 0 = regular joiner
	 * 4 = spectator
	 * 8 = unknown
	 * ```
	 */
	@:native("NETWORK_SESSION_SET_MATCHMAKING_GROUP_MAX")
	static function networkSessionSetMatchmakingGroupMax(playerType:Int, playerCount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_VOICE_RESPOND_TO_REQUEST")
	static function networkSessionVoiceRespondToRequest(p0:Bool, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_MARK_VISIBLE")
	static function networkSessionMarkVisible(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_SET_MATCHMAKING_PROPERTY_ID")
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
	@:native("NETWORK_SESSION_VOICE_CONNECT_TO_PLAYER")
	static function networkSessionVoiceConnectToPlayer(globalPtr:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_CHOICE_MIGRATE_OPTIONS")
	static function networkSetChoiceMigrateOptions(toggle:Bool, player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_VOICE_LEAVE")
	static function networkSessionVoiceLeave():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_VALIDATE_JOIN")
	static function networkSessionValidateJoin(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_VOICE_SET_TIMEOUT")
	static function networkSessionVoiceSetTimeout(timeout:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SESSION_WAS_INVITED")
	static function networkSessionWasInvited():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SET_ACTIVITY_PLAYER_MAX")
	static function networkSetActivityPlayerMax(playerCount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_ACTIVITY_SPECTATOR")
	static function networkSetActivitySpectator(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_ACTIVITY_SPECTATOR_MAX")
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
	@:native("_NETWORK_SET_CURRENT_SPAWN_SETTING")
	static function NetworkSetCurrentSpawnSetting(mpSettingSpawn:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU")
	static function networkSetCurrentlySelectedGamerHandleFromInviteMenu(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER")
	static function NetworkSetEntityGhostedWithOwner(entity:Dynamic, p1:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_NETWORK_SET_CURRENT_MISSION_ID")
	static function NetworkSetCurrentMissionId(missionId:String):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_FRIENDLY_FIRE_OPTION")
	static function networkSetFriendlyFireOption(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SET_CURRENT_DATA_MANAGER_HANDLE")
	static function NetworkSetCurrentDataManagerHandle(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SET_ENTITY_CAN_BLEND")
	static function networkSetEntityCanBlend(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_IN_SPECTATOR_MODE")
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
	@:native("_NETWORK_SET_ENTITY_INVISIBLE_TO_NETWORK")
	static function NetworkSetEntityInvisibleToNetwork(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_INVITE_ON_CALL_FOR_INVITE_MENU")
	static function networkSetInviteOnCallForInviteMenu(networkHandle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_IN_FREE_CAM_MODE")
	static function networkSetInFreeCamMode(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_GAMER_INVITED_TO_TRANSITION")
	static function networkSetGamerInvitedToTransition(networkHandle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_NO_SPECTATOR_CHAT")
	static function networkSetNoSpectatorChat(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_IN_MP_CUTSCENE")
	static function networkSetInMpCutscene(p0:Bool, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_MISSION_FINISHED")
	static function networkSetMissionFinished():Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_OVERRIDE_SPECTATOR_MODE")
	static function networkSetOverrideSpectatorMode(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_LOCAL_PLAYER_SYNC_LOOK_AT")
	static function networkSetLocalPlayerSyncLookAt(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_IN_SPECTATOR_MODE_EXTENDED")
	static function networkSetInSpectatorModeExtended(toggle:Bool, playerPed:Dynamic, p2:Bool):Dynamic;

	/**
	 * This native does absolutely nothing, just a nullsub
	 */
	@:native("NETWORK_SET_RICH_PRESENCE_STRING")
	static function networkSetRichPresenceString(p0:Int, textLabel:String):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_PLAYER_IS_PASSIVE")
	static function networkSetPlayerIsPassive(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_LOCAL_PLAYER_INVINCIBLE_TIME")
	static function networkSetLocalPlayerInvincibleTime(time:Int):Dynamic;

	/**
	 * ```
	 * value must be < 255
	 * ```
	 */
	@:native("NETWORK_SET_PROPERTY_ID")
	static function networkSetPropertyId(id:Int):Dynamic;

	/**
	 * ```
	 * On PC it's a nullsub which means it does absolutely nothing.  
	 * Now that Discord supports Rich Presence, R* might finally implement this for PC. Or maybe in future games like RDR2, GTA VI...  
	 * ```
	 */
	@:native("NETWORK_SET_RICH_PRESENCE")
	static function networkSetRichPresence(p0:Int, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_THIS_SCRIPT_IS_NETWORK_SCRIPT")
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
	@:native("_NETWORK_SET_OBJECT_FORCE_STATIC_BLEND")
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
	@:native("_NETWORK_SET_VEHICLE_TEST_DRIVE")
	static function NetworkSetVehicleTestDrive(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_SCRIPT_READY_FOR_EVENTS")
	static function networkSetScriptReadyForEvents(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_TEAM_ONLY_CHAT")
	static function networkSetTeamOnlyChat(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_TRANSITION_ACTIVITY_ID")
	static function networkSetTransitionActivityId(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * Returns true if the NAT type is Strict (3) and a certain number of connections have failed.
	 * ```
	 */
	@:native("_NETWORK_SHOULD_SHOW_CONNECTIVITY_TROUBLESHOOTING")
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
	@:native("_NETWORK_SET_VEHICLE_WHEELS_DESTRUCTIBLE")
	static function NetworkSetVehicleWheelsDestructible(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_TRANSITION_CREATOR_HANDLE")
	static function networkSetTransitionCreatorHandle(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_TALKER_PROXIMITY")
	static function networkSetTalkerProximity(value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_VOICE_CHANNEL")
	static function networkSetVoiceChannel(channel:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_START_SYNCHRONISED_SCENE")
	static function networkStartSynchronisedScene(netScene:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_TRANSITION_VISIBILITY_LOCK")
	static function networkSetTransitionVisibilityLock(p0:Bool, p1:Bool):Dynamic;

	/**
	 * ```
	 * Always returns -1. Seems to be XB1 specific.
	 * ```
	 */
	@:native("_NETWORK_START_USER_CONTENT_PERMISSIONS_CHECK")
	static function NetworkStartUserContentPermissionsCheck(netHandle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NETWORK_STOP_SYNCHRONISED_SCENE")
	static function networkStopSynchronisedScene(netScene:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_UGC_NAV")
	static function NetworkUgcNav(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_TRANSITION_TRACK")
	static function NetworkTransitionTrack(hash:Int, p1:Int, p2:Int, state:Int, p4:Int):Dynamic;

	/**
	 * ```
	 * One of the first things it does is get the players ped.  
	 * Then it calls a function that is used in some tasks and ped based functions.  
	 * ```
	 * 
	 * p5, p6, p7 is another coordinate (or zero), often related to `GET_BLIP_COORDS`, in the decompiled scripts.
	 */
	@:native("NETWORK_START_RESPAWN_SEARCH_FOR_PLAYER")
	static function networkStartRespawnSearchForPlayer(player:Dynamic, x:Float, y:Float, z:Float, radius:Float, p5:Float, p6:Float, p7:Float, flags:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SET_VOICE_ACTIVE")
	static function networkSetVoiceActive(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_START_SOLO_TUTORIAL_SESSION")
	static function networkStartSoloTutorialSession():Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_UPDATE_PLAYER_SCARS")
	static function NetworkUpdatePlayerScars():Dynamic;

	/**
	 * ```
	 * Example:  
	 * int playerHandle;	  
	 * NETWORK_HANDLE_FROM_PLAYER(selectedPlayer, &playerHandle, 13);  
	 * NETWORK_SHOW_PROFILE_UI(&playerHandle);  
	 * ```
	 */
	@:native("NETWORK_SHOW_PROFILE_UI")
	static function networkShowProfileUi(networkHandle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_UNREGISTER_NETWORKED_ENTITY")
	static function networkUnregisterNetworkedEntity(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_USE_LOGARITHMIC_BLENDING_THIS_FRAME")
	static function networkUseLogarithmicBlendingThisFrame(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SUPPRESS_INVITE")
	static function networkSuppressInvite(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Old name: _NETWORK_SET_NETWORK_ID_DYNAMIC
	 * ```
	 */
	@:native("NETWORK_USE_HIGH_PRECISION_BLENDING")
	static function networkUseHighPrecisionBlending(netID:Int, toggle:Bool):Dynamic;

	/**
	 * p8, p9, p10 is another coordinate, or zero, often related to `GET_BLIP_COORDS` in the decompiled scripts.
	 */
	@:native("NETWORK_START_RESPAWN_SEARCH_IN_ANGLED_AREA_FOR_PLAYER")
	static function networkStartRespawnSearchInAngledAreaForPlayer(player:Dynamic, x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, width:Float, p8:Float, p9:Float, p10:Float, flags:Int):Bool;

	/**
	 * ```
	 * Returns defaultValue if the tunable doesn't exist.
	 * ```
	 */
	@:native("NETWORK_TRY_ACCESS_TUNABLE_BOOL_HASH")
	static function networkTryAccessTunableBoolHash(tunableContext:Int, tunableName:Int, defaultValue:Bool):Bool;

	/**
	 * ```
	 * Return the local Participant ID.  
	 * This native is exactly the same as 'PARTICIPANT_ID' native.  
	 * ```
	 */
	@:native("PARTICIPANT_ID_TO_INT")
	static function participantIdToInt():Int;

	/**
	 * ```
	 * Return the local Participant ID  
	 * ```
	 */
	@:native("PARTICIPANT_ID")
	static function participantId():Dynamic;

	/**
	 * ```
	 * Lets objects spawn online simply do it like this:  
	 * int createdObject = OBJ_TO_NET(CREATE_OBJECT_NO_OFFSET(oball, pCoords.x, pCoords.y, pCoords.z, 1, 0, 0));  
	 * ```
	 */
	@:native("OBJ_TO_NET")
	static function objToNet(object:Dynamic):Int;

	/**
	 * ```
	 * gets the network id of a ped  
	 * ```
	 */
	@:native("PED_TO_NET")
	static function pedToNet(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("RELEASE_ALL_COMMERCE_ITEM_IMAGES")
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
	@:native("OPEN_COMMERCE_STORE")
	static function openCommerceStore(p0:String, p1:String):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 1: Player player
	 * NativeDB Added Parameter 2: int a
	 * NativeDB Added Parameter 3: int b
	 * ```
	 */
	@:native("_REMOTE_CHEAT_DETECTED")
	static function RemoteCheatDetected():Bool;

	/**
	 * 
	 */
	@:native("REQUEST_COMMERCE_ITEM_IMAGE")
	static function requestCommerceItemImage(index:Int):Bool;

	/**
	 * 
	 */
	@:native("RESERVE_NETWORK_MISSION_OBJECTS")
	static function reserveNetworkMissionObjects(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_RESERVE_NETWORK_LOCAL_VEHICLES")
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
	@:native("_RESERVE_NETWORK_LOCAL_OBJECTS")
	static function ReserveNetworkLocalObjects(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("REFRESH_PLAYER_LIST_STATS")
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
	@:native("REMOVE_ALL_STICKY_BOMBS_FROM_ENTITY")
	static function removeAllStickyBombsFromEntity(entity:Dynamic):Dynamic;

	/**
	 * Sets the alpha value used by [`_SET_LOCAL_PLAYER_AS_GHOST`](#\_0x5FFE9B4144F9712F), [`SET_NETWORK_VEHICLE_AS_GHOST`](#\_0x6274C4712850841E), and [`_NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER`](#\_0x4BA166079D658ED4).
	 */
	@:native("_RESET_GHOSTED_ENTITY_ALPHA")
	static function ResetGhostedEntityAlpha():Dynamic;

	/**
	 * 
	 */
	@:native("RESERVE_NETWORK_MISSION_PEDS")
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
	@:native("_RESERVE_NETWORK_LOCAL_PEDS")
	static function ReserveNetworkLocalPeds(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RESERVE_NETWORK_MISSION_VEHICLES")
	static function reserveNetworkMissionVehicles(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_BALANCE_ADD_MACHINE")
	static function setBalanceAddMachine(contentId:String, contentTypeName:String):Bool;

	/**
	 * 
	 */
	@:native("SET_BALANCE_ADD_MACHINES")
	static function setBalanceAddMachines(data:Dynamic, dataCount:Int, contentTypeName:String):Bool;

	/**
	 * Sets the provided entity not visible for yourself for the current frame.
	 */
	@:native("SET_ENTITY_LOCALLY_INVISIBLE")
	static function setEntityLocallyInvisible(entity:Dynamic):Dynamic;

	/**
	 * Sets the provided entity visible for yourself for the current frame.
	 */
	@:native("SET_ENTITY_LOCALLY_VISIBLE")
	static function setEntityLocallyVisible(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_VISIBLE_IN_CUTSCENE")
	static function setEntityVisibleInCutscene(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_LOCAL_PLAYER_INVISIBLE_LOCALLY")
	static function setLocalPlayerInvisibleLocally(p0:Bool):Dynamic;

	/**
	 * Sets the alpha value used by [`_SET_LOCAL_PLAYER_AS_GHOST`](#\_0x5FFE9B4144F9712F), [`SET_NETWORK_VEHICLE_AS_GHOST`](#\_0x6274C4712850841E), and [`_NETWORK_SET_ENTITY_GHOSTED_WITH_OWNER`](#\_0x4BA166079D658ED4).
	 * 
	 * 'Solidness' cannot be achieved using 255 - this will have the opposite effect of it defaulting to 128 it seems (or just having no effect at all).
	 */
	@:native("_SET_GHOSTED_ENTITY_ALPHA")
	static function SetGhostedEntityAlpha(alpha:Int):Dynamic;

	/**
	 * ```
	 * Whether or not another player is allowed to take control of the entity  
	 * ```
	 */
	@:native("SET_NETWORK_ID_CAN_MIGRATE")
	static function setNetworkIdCanMigrate(netId:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_LOCAL_PLAYER_VISIBLE_IN_CUTSCENE")
	static function setLocalPlayerVisibleInCutscene(p0:Bool, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_NETWORK_ID_ALWAYS_EXISTS_FOR_PLAYER")
	static function setNetworkIdAlwaysExistsForPlayer(netId:Int, player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_NETWORK_ID_VISIBLE_IN_CUTSCENE")
	static function setNetworkIdVisibleInCutscene(netId:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES")
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
	@:native("_SET_LOCAL_PLAYER_AS_GHOST")
	static function SetLocalPlayerAsGhost(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_NETWORK_CUTSCENE_ENTITIES")
	static function setNetworkCutsceneEntities(toggle:Bool):Dynamic;

	/**
	 * Enables ghosting between specific players. Name is between `_SET_RELATIONSHIP_GROUP_DONT_AFFECT_WANTED_LEVEL` and `SET_ROADS_BACK_TO_ORIGINAL`.
	 */
	@:native("_SET_RELATIONSHIP_TO_PLAYER")
	static function SetRelationshipToPlayer(player:Dynamic, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_LOCAL_PLAYER_VISIBLE_LOCALLY")
	static function setLocalPlayerVisibleLocally(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_INVISIBLE_LOCALLY")
	static function setPlayerInvisibleLocally(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_NETWORK_VEHICLE_AS_GHOST")
	static function setNetworkVehicleAsGhost(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Starts a new singleplayer game (at the prologue).  
	 * ```
	 */
	@:native("SHUTDOWN_AND_LAUNCH_SINGLE_PLAYER_GAME")
	static function shutdownAndLaunchSinglePlayerGame():Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 3: Any p2
	 * NativeDB Added Parameter 4: Any p3
	 * ```
	 */
	@:native("SET_NETWORK_VEHICLE_RESPOT_TIMER")
	static function setNetworkVehicleRespotTimer(netId:Int, time:Int):Dynamic;

	/**
	 * ```
	 * Enables a periodic ShapeTest within the NetBlender and invokes rage::netBlenderLinInterp::GoStraightToTarget (or some functional wrapper).
	 * ```
	 */
	@:native("_SET_NETWORK_ENABLE_VEHICLE_POSITION_CORRECTION")
	static function SetNetworkEnableVehiclePositionCorrection(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Access to the store for shark cards etc...  
	 * ```
	 */
	@:native("SET_STORE_ENABLED")
	static function setStoreEnabled(toggle:Bool):Dynamic;

	/**
	 * ```
	 * rage::netBlenderLinInterp::GetPositionMaxForUpdateLevel
	 * ```
	 */
	@:native("_SET_NETWORK_VEHICLE_POSITION_UPDATE_MULTIPLIER")
	static function SetNetworkVehiclePositionUpdateMultiplier(vehicle:Dynamic, multiplier:Float):Dynamic;

	/**
	 * 
	 */
	@:native("TEXTURE_DOWNLOAD_HAS_FAILED")
	static function textureDownloadHasFailed(p0:Int):Bool;

	/**
	 * 
	 */
	@:native("TEXTURE_DOWNLOAD_GET_NAME")
	static function textureDownloadGetName(p0:Int):String;

	/**
	 * 
	 */
	@:native("TEXTURE_DOWNLOAD_RELEASE")
	static function textureDownloadRelease(p0:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_VISIBLE_LOCALLY")
	static function setPlayerVisibleLocally(player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("TEXTURE_DOWNLOAD_REQUEST")
	static function textureDownloadRequest(PlayerHandle:Dynamic, FilePath:String, Name:String, p3:Bool):Int;

	/**
	 * 
	 */
	@:native("TITLE_TEXTURE_DOWNLOAD_REQUEST")
	static function titleTextureDownloadRequest(FilePath:String, Name:String, p2:Bool):Int;

	/**
	 * 
	 */
	@:native("UGC_CLEAR_OFFLINE_QUERY")
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
	@:native("_SHUTDOWN_AND_LOAD_MOST_RECENT_SAVE")
	static function ShutdownAndLoadMostRecentSave():Bool;

	/**
	 * 
	 */
	@:native("UGC_CLEAR_QUERY_RESULTS")
	static function ugcClearQueryResults():Dynamic;

	/**
	 * ```
	 * p1 = 6
	 * ```
	 */
	@:native("_TRIGGER_SCRIPT_CRC_CHECK_ON_PLAYER")
	static function TriggerScriptCrcCheckOnPlayer(player:Dynamic, p1:Int, scriptHash:Int):Bool;

	/**
	 * 
	 */
	@:native("UGC_CLEAR_CREATE_RESULT")
	static function ugcClearCreateResult():Dynamic;

	/**
	 * 
	 */
	@:native("UGC_CANCEL_QUERY")
	static function ugcCancelQuery():Dynamic;

	/**
	 * 
	 */
	@:native("UGC_GET_BOOKMARKED_CONTENT")
	static function ugcGetBookmarkedContent(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UGC_DID_GET_SUCCEED")
	static function ugcDidGetSucceed():Dynamic;

	/**
	 * 
	 */
	@:native("UGC_GET_CACHED_DESCRIPTION")
	static function ugcGetCachedDescription(p0:Dynamic, p1:Dynamic):String;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_CATEGORY")
	static function ugcGetContentCategory(p0:Int):Int;

	/**
	 * 
	 */
	@:native("UGC_CLEAR_MODIFY_RESULT")
	static function ugcClearModifyResult():Dynamic;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_HAS_PLAYER_BOOKMARKED")
	static function ugcGetContentHasPlayerBookmarked(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_HASH")
	static function ugcGetContentHash():Int;

	/**
	 * ```
	 * Return the mission id of a job.
	 * ```
	 */
	@:native("UGC_GET_CONTENT_ID")
	static function ugcGetContentId(p0:Int):String;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_HAS_PLAYER_RECORD")
	static function ugcGetContentHasPlayerRecord(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UGC_COPY_CONTENT")
	static function ugcCopyContent(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_LANGUAGE")
	static function ugcGetContentLanguage(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_DESCRIPTION_HASH")
	static function ugcGetContentDescriptionHash(p0:Dynamic):Int;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_IS_VERIFIED")
	static function ugcGetContentIsVerified(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_IS_PUBLISHED")
	static function ugcGetContentIsPublished(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_NUM")
	static function ugcGetContentNum():Dynamic;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_FILE_VERSION")
	static function ugcGetContentFileVersion(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_RATING")
	static function ugcGetContentRating(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_NAME")
	static function ugcGetContentName(p0:Dynamic):String;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_RATING_POSITIVE_COUNT")
	static function ugcGetContentRatingPositiveCount(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_PATH")
	static function ugcGetContentPath(p0:Int, p1:Int):String;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_TOTAL")
	static function ugcGetContentTotal():Dynamic;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_RATING_COUNT")
	static function ugcGetContentRatingCount(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_RATING_NEGATIVE_COUNT")
	static function ugcGetContentRatingNegativeCount(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_USER_ID")
	static function ugcGetContentUserId(p0:Int):String;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_USER_NAME")
	static function ugcGetContentUserName(p0:Dynamic):String;

	/**
	 * 
	 */
	@:native("UGC_GET_CONTENT_UPDATED_DATE")
	static function ugcGetContentUpdatedDate(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("UGC_GET_CREATOR_NUM")
	static function ugcGetCreatorNum():Dynamic;

	/**
	 * 
	 */
	@:native("UGC_GET_CREATE_RESULT")
	static function ugcGetCreateResult():Dynamic;

	/**
	 * 
	 */
	@:native("UGC_GET_MODIFY_RESULT")
	static function ugcGetModifyResult():Dynamic;

	/**
	 * 
	 */
	@:native("UGC_GET_GET_BY_CATEGORY")
	static function ugcGetGetByCategory(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UGC_GET_CREATE_CONTENT_ID")
	static function ugcGetCreateContentId():String;

	/**
	 * 
	 */
	@:native("UGC_HAS_GET_FINISHED")
	static function ugcHasGetFinished():Bool;

	/**
	 * 
	 */
	@:native("UGC_GET_CREW_CONTENT")
	static function ugcGetCrewContent(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Bool;

	/**
	 * ```
	 * Return the root content id of a job.
	 * ```
	 */
	@:native("UGC_GET_ROOT_CONTENT_ID")
	static function ugcGetRootContentId(p0:Int):String;

	/**
	 * 
	 */
	@:native("UGC_HAS_MODIFY_FINISHED")
	static function ugcHasModifyFinished():Bool;

	/**
	 * 
	 */
	@:native("UGC_GET_FRIEND_CONTENT")
	static function ugcGetFriendContent(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UGC_GET_MY_CONTENT")
	static function ugcGetMyContent(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UGC_GET_QUERY_RESULT")
	static function ugcGetQueryResult():Dynamic;

	/**
	 * 
	 */
	@:native("UGC_IS_GETTING")
	static function ugcIsGetting():Bool;

	/**
	 * 
	 */
	@:native("UGC_QUERY_BY_CONTENT_IDS")
	static function ugcQueryByContentIds(data:Dynamic, count:Int, latestVersion:Bool, contentTypeName:String):Bool;

	/**
	 * 
	 */
	@:native("UGC_PUBLISH")
	static function ugcPublish(contentId:String, baseContentId:String, contentTypeName:String):Bool;

	/**
	 * 
	 */
	@:native("UGC_HAS_CREATE_FINISHED")
	static function ugcHasCreateFinished():Bool;

	/**
	 * 
	 */
	@:native("UGC_POLICIES_MAKE_PRIVATE")
	static function ugcPoliciesMakePrivate(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UGC_REQUEST_CONTENT_DATA_FROM_PARAMS")
	static function ugcRequestContentDataFromParams(contentTypeName:String, contentId:String, p2:Int, p3:Int, p4:Int):Int;

	/**
	 * 
	 */
	@:native("UGC_IS_LANGUAGE_SUPPORTED")
	static function ugcIsLanguageSupported(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UGC_QUERY_MY_CONTENT")
	static function ugcQueryMyContent(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UGC_SET_DELETED")
	static function ugcSetDeleted(p0:Dynamic, p1:Bool, p2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("UGC_QUERY_BY_CONTENT_ID")
	static function ugcQueryByContentId(contentId:String, latestVersion:Bool, contentTypeName:String):Bool;

	/**
	 * 
	 */
	@:native("UGC_REQUEST_CACHED_DESCRIPTION")
	static function ugcRequestCachedDescription(p0:Int):Int;

	/**
	 * 
	 */
	@:native("_UGC_QUERY_RECENTLY_CREATED_CONTENT")
	static function UgcQueryRecentlyCreatedContent(offset:Int, count:Int, contentTypeName:String, p3:Int):Bool;

	/**
	 * 
	 */
	@:native("UGC_REQUEST_CONTENT_DATA_FROM_INDEX")
	static function ugcRequestContentDataFromIndex(p0:Int, p1:Int):Int;

	/**
	 * 
	 */
	@:native("UGC_SET_BOOKMARKED")
	static function ugcSetBookmarked(contentId:String, bookmarked:Bool, contentTypeName:String):Bool;

	/**
	 * ```
	 * calls from vehicle to net.  
	 * ```
	 */
	@:native("VEH_TO_NET")
	static function vehToNet(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("UGC_TEXTURE_DOWNLOAD_REQUEST")
	static function ugcTextureDownloadRequest(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("UGC_SET_QUERY_DATA_FROM_OFFLINE")
	static function ugcSetQueryDataFromOffline(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("USE_PLAYER_COLOUR_INSTEAD_OF_TEAM_COLOUR")
	static function usePlayerColourInsteadOfTeamColour(toggle:Bool):Dynamic;

}
