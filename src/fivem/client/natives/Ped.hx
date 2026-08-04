package fivem.client.natives;

@:native("_G")
extern class Ped {
	/**
	 * ```
	 * Applies an Item from a PedDecorationCollection to a ped. These include tattoos and shirt decals.
	 * collection - PedDecorationCollection filename hash
	 * overlay - Item name hash
	 * Example:
	 * Entry inside "mpbeach_overlays.xml" -
	 * <Item>
	 *   <uvPos x="0.500000" y="0.500000" />
	 *   <scale x="0.600000" y="0.500000" />
	 *   <rotation value="0.000000" />
	 *   <nameHash>FM_Hair_Fuzz</nameHash>
	 *   <txdHash>mp_hair_fuzz</txdHash>
	 *   <txtHash>mp_hair_fuzz</txtHash>
	 *   <zone>ZONE_HEAD</zone>
	 *   <type>TYPE_TATTOO</type>
	 *   <faction>FM</faction>
	 *   <garment>All</garment>
	 *   <gender>GENDER_DONTCARE</gender>
	 *   <award />
	 *   <awardLevel />
	 * </Item>
	 * Code:
	 * PED::_0x5F5D1665E352A839(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("mpbeach_overlays"), MISC::GET_HASH_KEY("fm_hair_fuzz"))
	 * ```
	 */
	@:native("ADD_PED_DECORATION_FROM_HASHES")
	static function addPedDecorationFromHashes(ped:Dynamic, collection:Int, overlay:Int):Dynamic;

	/**
	 * Sets an area where scenarios are blocked
	 */
	@:native("ADD_SCENARIO_BLOCKING_AREA")
	static function addScenarioBlockingArea(posMinX:Float, posMinY:Float, posMinZ:Float, posMaxX:Float, posMaxY:Float, posMaxZ:Float, network:Bool, cancelActive:Bool, blockPeds:Bool, blockVehicles:Bool):Int;

	/**
	 * ```
	 * Same as SET_PED_ARMOUR, but ADDS 'amount' to the armor the Ped already has.  
	 * ```
	 */
	@:native("ADD_ARMOUR_TO_PED")
	static function addArmourToPed(ped:Dynamic, amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ADD_PED_DECORATION_FROM_HASHES_IN_CORONA")
	static function addPedDecorationFromHashesInCorona(ped:Dynamic, collection:Int, overlay:Int):Dynamic;

	/**
	 * 
	 */
	@:native("APPLY_PED_BLOOD_BY_ZONE")
	static function applyPedBloodByZone(ped:Dynamic, p1:Dynamic, p2:Float, p3:Float, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * Can't select void. This function returns nothing. The hash of the created relationship group is output in the second parameter.  
	 * ```
	 */
	@:native("ADD_RELATIONSHIP_GROUP")
	static function addRelationshipGroup(name:String, groupHash:Dynamic):Dynamic;

	/**
	 * Applies blood damage to a ped with specific parameters for zone, UV offsets, rotation, scale, and initial aging.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("APPLY_PED_BLOOD_SPECIFIC")
	static function applyPedBloodSpecific(ped:Dynamic, component:Int, u:Float, v:Float, rotation:Float, scale:Float, forcedFrame:Int, preAge:Float, bloodName:String):Dynamic;

	/**
	 * ```
	 * scar
	 * blushing
	 * cs_flush_anger
	 * cs_flush_anger_face
	 * bruise
	 * bruise_large
	 * herpes
	 * ArmorBullet
	 * basic_dirt_cloth
	 * basic_dirt_skin
	 * cs_trev1_dirt
	 * ```
	 */
	@:native("APPLY_PED_DAMAGE_DECAL")
	static function applyPedDamageDecal(ped:Dynamic, damageZone:Int, xOffset:Float, yOffset:Float, heading:Float, scale:Float, alpha:Float, variation:Int, fadeIn:Bool, decalName:String):Dynamic;

	/**
	 * ```
	 * Found one occurence in re_crashrescue.c4  
	 * PED::APPLY_PED_BLOOD(l_4B, 3, 0.0, 0.0, 0.0, "wound_sheet");  
	 * ```
	 */
	@:native("APPLY_PED_BLOOD")
	static function applyPedBlood(ped:Dynamic, boneIndex:Int, xRot:Float, yRot:Float, zRot:Float, woundType:String):Dynamic;

	/**
	 * 
	 */
	@:native("_BLOCK_PED_DEAD_BODY_SHOCKING_EVENTS")
	static function BlockPedDeadBodyShockingEvents(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * damages a ped with the given amount  
	 * ----  
	 * armorFirst means it will damage/lower the armor first before damaging the player.  
	 * setting damageAmount to a negative amount will cause the player or the armor (depending on armorFirst) to be healed by damageAmount instead.  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 4: Any p3
	 * ```
	 */
	@:native("APPLY_DAMAGE_TO_PED")
	static function applyDamageToPed(ped:Dynamic, damageAmount:Int, armorFirst:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CAN_CREATE_RANDOM_BIKE_RIDER")
	static function canCreateRandomBikeRider():Bool;

	/**
	 * 
	 */
	@:native("CAN_CREATE_RANDOM_DRIVER")
	static function canCreateRandomDriver():Bool;

	/**
	 * 
	 */
	@:native("CAN_CREATE_RANDOM_PED")
	static function canCreateRandomPed(unk:Bool):Bool;

	/**
	 * 
	 */
	@:native("APPLY_PED_BLOOD_DAMAGE_BY_ZONE")
	static function applyPedBloodDamageByZone(ped:Dynamic, p1:Dynamic, p2:Float, p3:Float, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * Damage Packs:  
	 * "SCR_TrevorTreeBang"  
	 * "HOSPITAL_0"  
	 * "HOSPITAL_1"  
	 * "HOSPITAL_2"  
	 * "HOSPITAL_3"  
	 * "HOSPITAL_4"  
	 * "HOSPITAL_5"  
	 * "HOSPITAL_6"  
	 * "HOSPITAL_7"  
	 * "HOSPITAL_8"  
	 * "HOSPITAL_9"  
	 * "SCR_Dumpster"  
	 * "BigHitByVehicle"  
	 * "SCR_Finale_Michael_Face"  
	 * "SCR_Franklin_finb"  
	 * "SCR_Finale_Michael"  
	 * "SCR_Franklin_finb2"  
	 * "Explosion_Med"  
	 * "SCR_Torture"  
	 * "SCR_TracySplash"  
	 * "Skin_Melee_0"  
	 * Additional damage packs:  
	 * gist.github.com/alexguirre/f3f47f75ddcf617f416f3c8a55ae2227  
	 * ```
	 */
	@:native("APPLY_PED_DAMAGE_PACK")
	static function applyPedDamagePack(ped:Dynamic, damagePack:String, damage:Float, mult:Float):Dynamic;

	/**
	 * ```
	 * Prevents the ped from going limp.  
	 * [Example: Can prevent peds from falling when standing on moving vehicles.]  
	 * ```
	 */
	@:native("CAN_PED_RAGDOLL")
	static function canPedRagdoll(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("CAN_KNOCK_PED_OFF_VEHICLE")
	static function canKnockPedOffVehicle(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("CLEAR_ALL_PED_PROPS")
	static function clearAllPedProps(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("ATTACH_SYNCHRONIZED_SCENE_TO_ENTITY")
	static function attachSynchronizedSceneToEntity(sceneID:Int, entity:Dynamic, boneIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("CAN_CREATE_RANDOM_COPS")
	static function canCreateRandomCops():Bool;

	/**
	 * 
	 */
	@:native("CLEAR_FACIAL_IDLE_ANIM_OVERRIDE")
	static function clearFacialIdleAnimOverride(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_ALL_PED_VEHICLE_FORCED_SEAT_USAGE")
	static function clearAllPedVehicleForcedSeatUsage(ped:Dynamic):Dynamic;

	/**
	 * Clears the blood on a ped.
	 */
	@:native("CLEAR_PED_BLOOD_DAMAGE")
	static function clearPedBloodDamage(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("CAN_PED_IN_COMBAT_SEE_TARGET")
	static function canPedInCombatSeeTarget(ped:Dynamic, target:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("CLEAR_PED_ALTERNATE_MOVEMENT_ANIM")
	static function clearPedAlternateMovementAnim(ped:Dynamic, stance:Int, p2:Float):Dynamic;

	/**
	 * ```
	 * CLEAR_PED_*
	 * ```
	 */
	@:native("_CLEAR_PED_COVER_CLIPSET_OVERRIDE")
	static function ClearPedCoverClipsetOverride(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_CLEAR_FACIAL_CLIPSET_OVERRIDE")
	static function ClearFacialClipsetOverride(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("CAN_PED_SEE_HATED_PED")
	static function canPedSeeHatedPed(ped1:Dynamic, ped2:Dynamic):Bool;

	/**
	 * ```
	 * Somehow related to changing ped's clothes.  
	 * ```
	 */
	@:native("CLEAR_PED_BLOOD_DAMAGE_BY_ZONE")
	static function clearPedBloodDamageByZone(ped:Dynamic, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_PED_ALTERNATE_WALK_ANIM")
	static function clearPedAlternateWalkAnim(ped:Dynamic, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_PED_DECORATIONS_LEAVE_SCARS")
	static function clearPedDecorationsLeaveScars(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * p1: from 0 to 5 in the b617d scripts.  
	 * p2: "blushing" and "ALL" found in the b617d scripts.  
	 * ```
	 */
	@:native("CLEAR_PED_DAMAGE_DECAL_BY_ZONE")
	static function clearPedDamageDecalByZone(ped:Dynamic, p1:Int, p2:String):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_PED_ENV_DIRT")
	static function clearPedEnvDirt(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_PED_DECORATIONS")
	static function clearPedDecorations(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_PED_NON_CREATION_AREA")
	static function clearPedNonCreationArea():Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_PED_LAST_DAMAGE_BONE")
	static function clearPedLastDamageBone(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_PED_DRIVE_BY_CLIPSET_OVERRIDE")
	static function clearPedDriveByClipsetOverride(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_PED_PROP")
	static function clearPedProp(ped:Dynamic, propId:Int):Dynamic;

	/**
	 * ```
	 * It clears the wetness of the selected Ped/Player. Clothes have to be wet to notice the difference.  
	 * ```
	 */
	@:native("CLEAR_PED_WETNESS")
	static function clearPedWetness(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_PED_STORED_HAT_PROP")
	static function clearPedStoredHatProp(ped:Dynamic):Dynamic;

	/**
	 * Creates a copy of the passed ped, optionally setting it as local and/or shallow-copying the head blend data.
	 */
	@:native("CLONE_PED")
	static function clonePed(ped:Dynamic, isNetwork:Bool, bScriptHostPed:Bool, copyHeadBlendFlag:Bool):Dynamic;

	/**
	 * ```
	 * There seem to be 26 flags  
	 * ```
	 */
	@:native("CLEAR_RAGDOLL_BLOCKING_FLAGS")
	static function clearRagdollBlockingFlags(ped:Dynamic, flags:Int):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_PED_PARACHUTE_PACK_VARIATION")
	static function clearPedParachutePackVariation(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * Clears the relationship between two groups. This should be called twice (once for each group).  
	 * Relationship types:  
	 * 0 = Companion  
	 * 1 = Respect  
	 * 2 = Like  
	 * 3 = Neutral  
	 * 4 = Dislike  
	 * 5 = Hate  
	 * 255 = Pedestrians  
	 * (Credits: Inco)  
	 * Example:  
	 * PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C);  
	 * PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);  
	 * ```
	 */
	@:native("CLEAR_RELATIONSHIP_BETWEEN_GROUPS")
	static function clearRelationshipBetweenGroups(relationship:Int, group1:Int, group2:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_CLONE_PED_TO_TARGET_EX")
	static function ClonePedToTargetEx(ped:Dynamic, targetPed:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * Copies ped's components and props to targetPed.
	 * ```
	 */
	@:native("CLONE_PED_TO_TARGET")
	static function clonePedToTarget(ped:Dynamic, targetPed:Dynamic):Dynamic;

	/**
	 * Removes the scubagear (for mp male: component id: 8, drawableId: 123, textureId: any) from peds. Does not play the 'remove scuba gear' animation, but instantly removes it.
	 */
	@:native("CLEAR_PED_SCUBA_GEAR_VARIATION")
	static function clearPedScubaGearVariation(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * Creates a new ped group.  
	 * Groups can contain up to 8 peds.  
	 * The parameter is unused.  
	 * Returns a handle to the created group, or 0 if a group couldn't be created.  
	 * ```
	 */
	@:native("CREATE_GROUP")
	static function createGroup(unused:Int):Int;

	/**
	 * Used one time in fmmc_launcher.c instead of CLONE_PED because ?
	 */
	@:native("_CLONE_PED_EX")
	static function ClonePedEx(ped:Dynamic, heading:Float, isNetwork:Bool, bScriptHostPed:Bool, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * Creates a new NaturalMotion message.  
	 * startImmediately: If set to true, the character will perform the message the moment it receives it by GIVE_PED_NM_MESSAGE. If false, the Ped will get the message but won't perform it yet. While it's a boolean value, if negative, the message will not be initialized.  
	 * messageId: The ID of the NaturalMotion message.  
	 * If a message already exists, this function does nothing. A message exists until the point it has been successfully dispatched by GIVE_PED_NM_MESSAGE.  
	 * ```
	 */
	@:native("CREATE_NM_MESSAGE")
	static function createNmMessage(startImmediately:Bool, messageId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("CREATE_PARACHUTE_BAG_OBJECT")
	static function createParachuteBagObject(ped:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CREATE_PED_INSIDE_VEHICLE")
	static function createPedInsideVehicle(vehicle:Dynamic, pedType:Int, modelHash:Int, seat:Int, isNetwork:Bool, bScriptHostPed:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CREATE_RANDOM_PED_AS_DRIVER")
	static function createRandomPedAsDriver(vehicle:Dynamic, returnHandle:Bool):Dynamic;

	/**
	 * Creates a ped (biped character, pedestrian, actor) with the specified model at the specified position and heading.
	 * This ped will initially be owned by the creating script as a mission entity, and the model should be loaded already
	 * (e.g. using REQUEST_MODEL).
	 */
	@:native("CREATE_PED")
	static function createPed(pedType:Int, modelHash:Int, x:Float, y:Float, z:Float, heading:Float, isNetwork:Bool, bScriptHostPed:Bool):Dynamic;

	/**
	 * ```
	 * p6 always 2 (but it doesnt seem to matter...)  
	 * roll and pitch 0  
	 * yaw to Ped.rotation  
	 * ```
	 */
	@:native("CREATE_SYNCHRONIZED_SCENE")
	static function createSynchronizedScene(x:Float, y:Float, z:Float, roll:Float, pitch:Float, yaw:Float, p6:Int):Int;

	/**
	 * ```
	 * vb.net
	 * Dim ped_handle As Integer
	 *                     With Game.Player.Character
	 *                         Dim pos As Vector3 = .Position + .ForwardVector * 3
	 *                         ped_handle = Native.Function.Call(Of Integer)(Hash.CREATE_RANDOM_PED, pos.X, pos.Y, pos.Z)
	 *                     End With
	 * Creates a Ped at the specified location, returns the Ped Handle.
	 * Ped will not act until SET_PED_AS_NO_LONGER_NEEDED is called.
	 * ```
	 */
	@:native("CREATE_RANDOM_PED")
	static function createRandomPed(posX:Float, posY:Float, posZ:Float):Dynamic;

	/**
	 * 
	 */
	@:native("DETACH_SYNCHRONIZED_SCENE")
	static function detachSynchronizedScene(sceneID:Int):Dynamic;

	/**
	 * ```
	 * Deletes the specified ped, then sets the handle pointed to by the pointer to NULL.  
	 * ```
	 */
	@:native("DELETE_PED")
	static function deletePed(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("DISABLE_HEAD_BLEND_PALETTE_COLOR")
	static function disableHeadBlendPaletteColor(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_CREATE_SYNCHRONIZED_SCENE_2")
	static function CreateSynchronizedScene2(x:Float, y:Float, z:Float, radius:Float, object:Int):Int;

	/**
	 * 
	 */
	@:native("DISABLE_PED_HEATSCALE_OVERRIDE")
	static function disablePedHeatscaleOverride(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("DOES_GROUP_EXIST")
	static function doesGroupExist(groupId:Int):Bool;

	/**
	 * 
	 */
	@:native("_DOES_RELATIONSHIP_GROUP_EXIST")
	static function DoesRelationshipGroupExist(groupHash:Int):Bool;

	/**
	 * 
	 */
	@:native("_DOES_SCENARIO_BLOCKING_AREA_EXIST")
	static function DoesScenarioBlockingAreaExist(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float):Bool;

	/**
	 * 
	 */
	@:native("DROP_AMBIENT_PROP")
	static function dropAmbientProp(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("FORCE_PED_AI_AND_ANIMATION_UPDATE")
	static function forcePedAiAndAnimationUpdate(ped:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```cpp
	 * enum ePedMotionState
	 * {
	 *     MOTIONSTATE_NONE = -294553821, // MotionState_None
	 *     MOTIONSTATE_IDLE = -1871534317, // MotionState_Idle
	 *     MOTIONSTATE_WALK = -668482597, // MotionState_Walk
	 *     MOTIONSTATE_RUN = -530524, // MotionState_Run
	 *     MOTIONSTATE_SPRINT = -1115154469, // MotionState_Sprint
	 *     MOTIONSTATE_CROUCH_IDLE = 1140525470, // MotionState_Crouch_Idle
	 *     MOTIONSTATE_CROUCH_WALK = 147004056, // MotionState_Crouch_Walk
	 *     MOTIONSTATE_CROUCH_RUN = 898879241, // MotionState_Crouch_Run
	 *     MOTIONSTATE_DONOTHING = 247561816, // MotionState_DoNothing
	 *     MOTIONSTATE_ANIMATEDVELOCITY = 1427811395, // MotionState_AnimatedVelocity
	 *     MOTIONSTATE_INVEHICLE = -1797663347, // MotionState_InVehicle
	 *     MOTIONSTATE_AIMING = 1063765679, // MotionState_Aiming
	 *     MOTIONSTATE_DIVING_IDLE = 1212730861, // MotionState_Diving_Idle
	 *     MOTIONSTATE_DIVING_SWIM = -1855028596, // MotionState_Diving_Swim
	 *     MOTIONSTATE_SWIMMING_TREADWATER = -776007225, // MotionState_Swimming_TreadWater
	 *     MOTIONSTATE_DEAD = 230360860, // MotionState_Dead
	 *     MOTIONSTATE_STEALTH_IDLE = 1110276645, // MotionState_Stealth_Idle
	 *     MOTIONSTATE_STEALTH_WALK = 69908130, // MotionState_Stealth_Walk
	 *     MOTIONSTATE_STEALTH_RUN = -83133983, // MotionState_Stealth_Run
	 *     MOTIONSTATE_PARACHUTING = -1161760501, // MotionState_Parachuting
	 *     MOTIONSTATE_ACTIONMODE_IDLE = -633298724, // MotionState_ActionMode_Idle
	 *     MOTIONSTATE_ACTIONMODE_WALK = -762290521, // MotionState_ActionMode_Walk
	 *     MOTIONSTATE_ACTIONMODE_RUN = 834330132, // MotionState_ActionMode_Run
	 *     MOTIONSTATE_JETPACK = 1398696542 // MotionState_Jetpack
	 * }
	 * ```
	 */
	@:native("FORCE_PED_MOTION_STATE")
	static function forcePedMotionState(ped:Dynamic, motionStateHash:Int, shouldReset:Bool, updateState:Int, forceAIPreCameraUpdate:Bool):Bool;

	/**
	 * 
	 */
	@:native("FORCE_PED_TO_OPEN_PARACHUTE")
	static function forcePedToOpenParachute(ped:Dynamic):Dynamic;

	/**
	 * Applies lethal damage (FLT_MAX) to the `SKEL_Head` bone of the specified ped using the weapon passed, leading to the
	 * ped's untimely demise.
	 * 
	 * The naming of the native is a legacy leftover (formerly EXPLODE_CHAR_HEAD in GTA3) as in the early 3D GTA games, lethal
	 * damage to a ped head would 'explode' it.
	 * 
	 * Do note that this native function does not work in multiplayer/network environment.
	 */
	@:native("EXPLODE_PED_HEAD")
	static function explodePedHead(ped:Dynamic, weaponHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_FREEZE_PED_CAMERA_ROTATION")
	static function FreezePedCameraRotation(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("FINALIZE_HEAD_BLEND")
	static function finalizeHeadBlend(ped:Dynamic):Dynamic;

	/**
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("GET_ANIM_INITIAL_OFFSET_POSITION")
	static function getAnimInitialOffsetPosition(animDict:String, animName:String, x:Float, y:Float, z:Float, xRot:Float, yRot:Float, zRot:Float, p8:Float, p9:Int):Dynamic;

	/**
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("GET_ANIM_INITIAL_OFFSET_ROTATION")
	static function getAnimInitialOffsetRotation(animDict:String, animName:String, x:Float, y:Float, z:Float, xRot:Float, yRot:Float, zRot:Float, p8:Float, p9:Int):Dynamic;

	/**
	 * ```
	 * Gets the closest ped in a radius.  
	 * Ped Types:  
	 * Any ped = -1  
	 * Player = 1  
	 * Male = 4   
	 * Female = 5   
	 * Cop = 6  
	 * Human = 26  
	 * SWAT = 27   
	 * Animal = 28  
	 * Army = 29  
	 * ------------------  
	 * P4 P5 P7 P8  
	 * 1  0  x  x  = return nearest walking Ped  
	 * 1  x  0  x  = return nearest walking Ped  
	 * x  1  1  x  = return Ped you are using  
	 * 0  0  x  x  = no effect  
	 * 0  x  0  x  = no effect  
	 * x = can be 1 or 0. Does not have any obvious changes.  
	 * This function does not return ped who is:  
	 * 1. Standing still  
	 * 2. Driving  
	 * 3. Fleeing  
	 * 4. Attacking  
	 * This function only work if the ped is:  
	 * 1. walking normally.  
	 * 2. waiting to cross a road.  
	 * Note: PED::GET_PED_NEARBY_PEDS works for more peds.  
	 * ```
	 */
	@:native("GET_CLOSEST_PED")
	static function getClosestPed(x:Float, y:Float, z:Float, radius:Float, p4:Bool, p5:Bool, outPed:Dynamic, p7:Bool, p8:Bool, pedType:Int):Bool;

	/**
	 * ```
	 * p1 may be a BOOL representing whether or not the group even exists  
	 * ```
	 */
	@:native("GET_GROUP_SIZE")
	static function getGroupSize(groupID:Int, unknown:Dynamic, sizeInMembers:Dynamic):Dynamic;

	/**
	 * ```
	 * p0: Ped Handle  
	 * p1: int i | 0 <= i <= 27  
	 * p1 probably refers to the attributes configured in combatbehavior.meta. There are 13. Example:  
	 * <BlindFireChance value="0.1"/>  
	 * <WeaponShootRateModifier value="1.0"/>  
	 * <TimeBetweenBurstsInCover value="1.25"/>  
	 * <BurstDurationInCover value="2.0"/>  
	 * <TimeBetweenPeeks value="10.0"/>  
	 * <WeaponAccuracy value="0.18"/>  
	 * <FightProficiency value="0.8"/>  
	 * <StrafeWhenMovingChance value="1.0"/>  
	 * <WalkWhenStrafingChance value="0.0"/>  
	 * <AttackWindowDistanceForCover value="55.0"/>  
	 * <TimeToInvalidateInjuredTarget value="9.0"/>  
	 * <TriggerChargeTime_Near value="4.0"/>  
	 * <TriggerChargeTime_Far value="10.0"/>  
	 * -------------Confirmed by editing combatbehavior.meta:  
	 * p1:  
	 * 0=BlindFireChance  
	 * 1=BurstDurationInCover  
	 * 3=TimeBetweenBurstsInCover  
	 * 4=TimeBetweenPeeks  
	 * 5=StrafeWhenMovingChance  
	 * 8=WalkWhenStrafingChance  
	 * 11=AttackWindowDistanceForCover  
	 * 12=TimeToInvalidateInjuredTarget  
	 * 16=OptimalCoverDistance  
	 * ```
	 */
	@:native("GET_COMBAT_FLOAT")
	static function getCombatFloat(ped:Dynamic, p1:Int):Float;

	/**
	 * 
	 */
	@:native("GET_MELEE_TARGET_FOR_PED")
	static function getMeleeTargetForPed(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS")
	static function getNumberOfPedDrawableVariations(ped:Dynamic, componentId:Int):Int;

	/**
	 * 
	 */
	@:native("GET_PED_ACCURACY")
	static function getPedAccuracy(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_JACK_TARGET")
	static function getJackTarget(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * Used for freemode (online) characters.  
	 * ```
	 */
	@:native("_GET_NUM_HAIR_COLORS")
	static function GetNumHairColors():Int;

	/**
	 * 
	 */
	@:native("_GET_NUM_MAKEUP_COLORS")
	static function GetNumMakeupColors():Int;

	/**
	 * 
	 */
	@:native("GET_DEAD_PED_PICKUP_COORDS")
	static function getDeadPedPickupCoords(ped:Dynamic, p1:Float, p2:Float):Dynamic;

	/**
	 * 
	 */
	@:native("GET_NUMBER_OF_PED_TEXTURE_VARIATIONS")
	static function getNumberOfPedTextureVariations(ped:Dynamic, componentId:Int, drawableId:Int):Int;

	/**
	 * ```
	 * Need to check behavior when drawableId = -1
	 * ```
	 */
	@:native("GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS")
	static function getNumberOfPedPropTextureVariations(ped:Dynamic, propId:Int, drawableId:Int):Int;

	/**
	 * ```
	 * Function just returns 0  
	 * void __fastcall ped__get_mount(NativeContext *a1)  
	 * {  
	 *   NativeContext *v1; // rbx@1  
	 *   v1 = a1;  
	 *   GetAddressOfPedFromScriptHandle(a1->Args->Arg1);  
	 *   v1->Returns->Item1= 0;  
	 * }  
	 * ```
	 */
	@:native("GET_MOUNT")
	static function getMount(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_PED_AS_GROUP_LEADER")
	static function getPedAsGroupLeader(groupID:Int):Dynamic;

	/**
	 * ```
	 * Returns the ped's alertness (0-3).  
	 * Values :   
	 * 0 : Neutral  
	 * 1 : Heard something (gun shot, hit, etc)  
	 * 2 : Knows (the origin of the event)  
	 * 3 : Fully alerted (is facing the event?)  
	 * If the Ped does not exist, returns -1.  
	 * ```
	 */
	@:native("GET_PED_ALERTNESS")
	static function getPedAlertness(ped:Dynamic):Int;

	/**
	 * ```
	 * Returns the hash of the weapon/model/object that killed the ped.  
	 * ```
	 */
	@:native("GET_PED_CAUSE_OF_DEATH")
	static function getPedCauseOfDeath(ped:Dynamic):Int;

	/**
	 * ```
	 * Gets the position of the specified bone of the specified ped.  
	 * ped: The ped to get the position of a bone from.  
	 * boneId: The ID of the bone to get the position from. This is NOT the index.  
	 * offsetX: The X-component of the offset to add to the position relative to the bone's rotation.  
	 * offsetY: The Y-component of the offset to add to the position relative to the bone's rotation.  
	 * offsetZ: The Z-component of the offset to add to the position relative to the bone's rotation.  
	 * ```
	 */
	@:native("GET_PED_BONE_COORDS")
	static function getPedBoneCoords(ped:Dynamic, boneId:Int, offsetX:Float, offsetY:Float, offsetZ:Float):Dynamic;

	/**
	 * ```cpp
	 * enum ePedBoneId : uint16_t
	 * {
	 *     SKEL_ROOT = 0x0,
	 *     SKEL_Pelvis = 0x2E28,
	 *     SKEL_L_Thigh = 0xE39F,
	 *     SKEL_L_Calf = 0xF9BB,
	 *     SKEL_L_Foot = 0x3779,
	 *     SKEL_L_Toe0 = 0x83C,
	 *     EO_L_Foot = 0x84C5,
	 *     EO_L_Toe = 0x68BD,
	 *     IK_L_Foot = 0xFEDD,
	 *     PH_L_Foot = 0xE175,
	 *     MH_L_Knee = 0xB3FE,
	 *     SKEL_R_Thigh = 0xCA72,
	 *     SKEL_R_Calf = 0x9000,
	 *     SKEL_R_Foot = 0xCC4D,
	 *     SKEL_R_Toe0 = 0x512D,
	 *     EO_R_Foot = 0x1096,
	 *     EO_R_Toe = 0x7163,
	 *     IK_R_Foot = 0x8AAE,
	 *     PH_R_Foot = 0x60E6,
	 *     MH_R_Knee = 0x3FCF,
	 *     RB_L_ThighRoll = 0x5C57,
	 *     RB_R_ThighRoll = 0x192A,
	 *     SKEL_Spine_Root = 0xE0FD,
	 *     SKEL_Spine0 = 0x5C01,
	 *     SKEL_Spine1 = 0x60F0,
	 *     SKEL_Spine2 = 0x60F1,
	 *     SKEL_Spine3 = 0x60F2,
	 *     SKEL_L_Clavicle = 0xFCD9,
	 *     SKEL_L_UpperArm = 0xB1C5,
	 *     SKEL_L_Forearm = 0xEEEB,
	 *     SKEL_L_Hand = 0x49D9,
	 *     SKEL_L_Finger00 = 0x67F2,
	 *     SKEL_L_Finger01 = 0xFF9,
	 *     SKEL_L_Finger02 = 0xFFA,
	 *     SKEL_L_Finger10 = 0x67F3,
	 *     SKEL_L_Finger11 = 0x1049,
	 *     SKEL_L_Finger12 = 0x104A,
	 *     SKEL_L_Finger20 = 0x67F4,
	 *     SKEL_L_Finger21 = 0x1059,
	 *     SKEL_L_Finger22 = 0x105A,
	 *     SKEL_L_Finger30 = 0x67F5,
	 *     SKEL_L_Finger31 = 0x1029,
	 *     SKEL_L_Finger32 = 0x102A,
	 *     SKEL_L_Finger40 = 0x67F6,
	 *     SKEL_L_Finger41 = 0x1039,
	 *     SKEL_L_Finger42 = 0x103A,
	 *     PH_L_Hand = 0xEB95,
	 *     IK_L_Hand = 0x8CBD,
	 *     RB_L_ForeArmRoll = 0xEE4F,
	 *     RB_L_ArmRoll = 0x1470,
	 *     MH_L_Elbow = 0x58B7,
	 *     SKEL_R_Clavicle = 0x29D2,
	 *     SKEL_R_UpperArm = 0x9D4D,
	 *     SKEL_R_Forearm = 0x6E5C,
	 *     SKEL_R_Hand = 0xDEAD,
	 *     SKEL_R_Finger00 = 0xE5F2,
	 *     SKEL_R_Finger01 = 0xFA10,
	 *     SKEL_R_Finger02 = 0xFA11,
	 *     SKEL_R_Finger10 = 0xE5F3,
	 *     SKEL_R_Finger11 = 0xFA60,
	 *     SKEL_R_Finger12 = 0xFA61,
	 *     SKEL_R_Finger20 = 0xE5F4,
	 *     SKEL_R_Finger21 = 0xFA70,
	 *     SKEL_R_Finger22 = 0xFA71,
	 *     SKEL_R_Finger30 = 0xE5F5,
	 *     SKEL_R_Finger31 = 0xFA40,
	 *     SKEL_R_Finger32 = 0xFA41,
	 *     SKEL_R_Finger40 = 0xE5F6,
	 *     SKEL_R_Finger41 = 0xFA50,
	 *     SKEL_R_Finger42 = 0xFA51,
	 *     PH_R_Hand = 0x6F06,
	 *     IK_R_Hand = 0x188E,
	 *     RB_R_ForeArmRoll = 0xAB22,
	 *     RB_R_ArmRoll = 0x90FF,
	 *     MH_R_Elbow = 0xBB0,
	 *     SKEL_Neck_1 = 0x9995,
	 *     SKEL_Head = 0x796E,
	 *     IK_Head = 0x322C,
	 *     FACIAL_facialRoot = 0xFE2C,
	 *     FB_L_Brow_Out_000 = 0xE3DB,
	 *     FB_L_Lid_Upper_000 = 0xB2B6,
	 *     FB_L_Eye_000 = 0x62AC,
	 *     FB_L_CheekBone_000 = 0x542E,
	 *     FB_L_Lip_Corner_000 = 0x74AC,
	 *     FB_R_Lid_Upper_000 = 0xAA10,
	 *     FB_R_Eye_000 = 0x6B52,
	 *     FB_R_CheekBone_000 = 0x4B88,
	 *     FB_R_Brow_Out_000 = 0x54C,
	 *     FB_R_Lip_Corner_000 = 0x2BA6,
	 *     FB_Brow_Centre_000 = 0x9149,
	 *     FB_UpperLipRoot_000 = 0x4ED2,
	 *     FB_UpperLip_000 = 0xF18F,
	 *     FB_L_Lip_Top_000 = 0x4F37,
	 *     FB_R_Lip_Top_000 = 0x4537,
	 *     FB_Jaw_000 = 0xB4A0,
	 *     FB_LowerLipRoot_000 = 0x4324,
	 *     FB_LowerLip_000 = 0x508F,
	 *     FB_L_Lip_Bot_000 = 0xB93B,
	 *     FB_R_Lip_Bot_000 = 0xC33B,
	 *     FB_Tongue_000 = 0xB987,
	 *     RB_Neck_1 = 0x8B93,
	 *     SPR_L_Breast = 0xFC8E,
	 *     SPR_R_Breast = 0x885F,
	 *     IK_Root = 0xDD1C,
	 *     SKEL_Neck_2 = 0x5FD4,
	 *     SKEL_Pelvis1 = 0xD003,
	 *     SKEL_PelvisRoot = 0x45FC,
	 *     SKEL_SADDLE = 0x9524,
	 *     MH_L_CalfBack = 0x1013,
	 *     MH_L_ThighBack = 0x600D,
	 *     SM_L_Skirt = 0xC419,
	 *     MH_R_CalfBack = 0xB013,
	 *     MH_R_ThighBack = 0x51A3,
	 *     SM_R_Skirt = 0x7712,
	 *     SM_M_BackSkirtRoll = 0xDBB,
	 *     SM_L_BackSkirtRoll = 0x40B2,
	 *     SM_R_BackSkirtRoll = 0xC141,
	 *     SM_M_FrontSkirtRoll = 0xCDBB,
	 *     SM_L_FrontSkirtRoll = 0x9B69,
	 *     SM_R_FrontSkirtRoll = 0x86F1,
	 *     SM_CockNBalls_ROOT = 0xC67D,
	 *     SM_CockNBalls = 0x9D34,
	 *     MH_L_Finger00 = 0x8C63,
	 *     MH_L_FingerBulge00 = 0x5FB8,
	 *     MH_L_Finger10 = 0x8C53,
	 *     MH_L_FingerTop00 = 0xA244,
	 *     MH_L_HandSide = 0xC78A,
	 *     MH_Watch = 0x2738,
	 *     MH_L_Sleeve = 0x933C,
	 *     MH_R_Finger00 = 0x2C63,
	 *     MH_R_FingerBulge00 = 0x69B8,
	 *     MH_R_Finger10 = 0x2C53,
	 *     MH_R_FingerTop00 = 0xEF4B,
	 *     MH_R_HandSide = 0x68FB,
	 *     MH_R_Sleeve = 0x92DC,
	 *     FACIAL_jaw = 0xB21,
	 *     FACIAL_underChin = 0x8A95,
	 *     FACIAL_L_underChin = 0x234E,
	 *     FACIAL_chin = 0xB578,
	 *     FACIAL_chinSkinBottom = 0x98BC,
	 *     FACIAL_L_chinSkinBottom = 0x3E8F,
	 *     FACIAL_R_chinSkinBottom = 0x9E8F,
	 *     FACIAL_tongueA = 0x4A7C,
	 *     FACIAL_tongueB = 0x4A7D,
	 *     FACIAL_tongueC = 0x4A7E,
	 *     FACIAL_tongueD = 0x4A7F,
	 *     FACIAL_tongueE = 0x4A80,
	 *     FACIAL_L_tongueE = 0x35F2,
	 *     FACIAL_R_tongueE = 0x2FF2,
	 *     FACIAL_L_tongueD = 0x35F1,
	 *     FACIAL_R_tongueD = 0x2FF1,
	 *     FACIAL_L_tongueC = 0x35F0,
	 *     FACIAL_R_tongueC = 0x2FF0,
	 *     FACIAL_L_tongueB = 0x35EF,
	 *     FACIAL_R_tongueB = 0x2FEF,
	 *     FACIAL_L_tongueA = 0x35EE,
	 *     FACIAL_R_tongueA = 0x2FEE,
	 *     FACIAL_chinSkinTop = 0x7226,
	 *     FACIAL_L_chinSkinTop = 0x3EB3,
	 *     FACIAL_chinSkinMid = 0x899A,
	 *     FACIAL_L_chinSkinMid = 0x4427,
	 *     FACIAL_L_chinSide = 0x4A5E,
	 *     FACIAL_R_chinSkinMid = 0xF5AF,
	 *     FACIAL_R_chinSkinTop = 0xF03B,
	 *     FACIAL_R_chinSide = 0xAA5E,
	 *     FACIAL_R_underChin = 0x2BF4,
	 *     FACIAL_L_lipLowerSDK = 0xB9E1,
	 *     FACIAL_L_lipLowerAnalog = 0x244A,
	 *     FACIAL_L_lipLowerThicknessV = 0xC749,
	 *     FACIAL_L_lipLowerThicknessH = 0xC67B,
	 *     FACIAL_lipLowerSDK = 0x7285,
	 *     FACIAL_lipLowerAnalog = 0xD97B,
	 *     FACIAL_lipLowerThicknessV = 0xC5BB,
	 *     FACIAL_lipLowerThicknessH = 0xC5ED,
	 *     FACIAL_R_lipLowerSDK = 0xA034,
	 *     FACIAL_R_lipLowerAnalog = 0xC2D9,
	 *     FACIAL_R_lipLowerThicknessV = 0xC6E9,
	 *     FACIAL_R_lipLowerThicknessH = 0xC6DB,
	 *     FACIAL_nose = 0x20F1,
	 *     FACIAL_L_nostril = 0x7322,
	 *     FACIAL_L_nostrilThickness = 0xC15F,
	 *     FACIAL_noseLower = 0xE05A,
	 *     FACIAL_L_noseLowerThickness = 0x79D5,
	 *     FACIAL_R_noseLowerThickness = 0x7975,
	 *     FACIAL_noseTip = 0x6A60,
	 *     FACIAL_R_nostril = 0x7922,
	 *     FACIAL_R_nostrilThickness = 0x36FF,
	 *     FACIAL_noseUpper = 0xA04F,
	 *     FACIAL_L_noseUpper = 0x1FB8,
	 *     FACIAL_noseBridge = 0x9BA3,
	 *     FACIAL_L_nasolabialFurrow = 0x5ACA,
	 *     FACIAL_L_nasolabialBulge = 0xCD78,
	 *     FACIAL_L_cheekLower = 0x6907,
	 *     FACIAL_L_cheekLowerBulge1 = 0xE3FB,
	 *     FACIAL_L_cheekLowerBulge2 = 0xE3FC,
	 *     FACIAL_L_cheekInner = 0xE7AB,
	 *     FACIAL_L_cheekOuter = 0x8161,
	 *     FACIAL_L_eyesackLower = 0x771B,
	 *     FACIAL_L_eyeball = 0x1744,
	 *     FACIAL_L_eyelidLower = 0x998C,
	 *     FACIAL_L_eyelidLowerOuterSDK = 0xFE4C,
	 *     FACIAL_L_eyelidLowerOuterAnalog = 0xB9AA,
	 *     FACIAL_L_eyelashLowerOuter = 0xD7F6,
	 *     FACIAL_L_eyelidLowerInnerSDK = 0xF151,
	 *     FACIAL_L_eyelidLowerInnerAnalog = 0x8242,
	 *     FACIAL_L_eyelashLowerInner = 0x4CCF,
	 *     FACIAL_L_eyelidUpper = 0x97C1,
	 *     FACIAL_L_eyelidUpperOuterSDK = 0xAF15,
	 *     FACIAL_L_eyelidUpperOuterAnalog = 0x67FA,
	 *     FACIAL_L_eyelashUpperOuter = 0x27B7,
	 *     FACIAL_L_eyelidUpperInnerSDK = 0xD341,
	 *     FACIAL_L_eyelidUpperInnerAnalog = 0xF092,
	 *     FACIAL_L_eyelashUpperInner = 0x9B1F,
	 *     FACIAL_L_eyesackUpperOuterBulge = 0xA559,
	 *     FACIAL_L_eyesackUpperInnerBulge = 0x2F2A,
	 *     FACIAL_L_eyesackUpperOuterFurrow = 0xC597,
	 *     FACIAL_L_eyesackUpperInnerFurrow = 0x52A7,
	 *     FACIAL_forehead = 0x9218,
	 *     FACIAL_L_foreheadInner = 0x843,
	 *     FACIAL_L_foreheadInnerBulge = 0x767C,
	 *     FACIAL_L_foreheadOuter = 0x8DCB,
	 *     FACIAL_skull = 0x4221,
	 *     FACIAL_foreheadUpper = 0xF7D6,
	 *     FACIAL_L_foreheadUpperInner = 0xCF13,
	 *     FACIAL_L_foreheadUpperOuter = 0x509B,
	 *     FACIAL_R_foreheadUpperInner = 0xCEF3,
	 *     FACIAL_R_foreheadUpperOuter = 0x507B,
	 *     FACIAL_L_temple = 0xAF79,
	 *     FACIAL_L_ear = 0x19DD,
	 *     FACIAL_L_earLower = 0x6031,
	 *     FACIAL_L_masseter = 0x2810,
	 *     FACIAL_L_jawRecess = 0x9C7A,
	 *     FACIAL_L_cheekOuterSkin = 0x14A5,
	 *     FACIAL_R_cheekLower = 0xF367,
	 *     FACIAL_R_cheekLowerBulge1 = 0x599B,
	 *     FACIAL_R_cheekLowerBulge2 = 0x599C,
	 *     FACIAL_R_masseter = 0x810,
	 *     FACIAL_R_jawRecess = 0x93D4,
	 *     FACIAL_R_ear = 0x1137,
	 *     FACIAL_R_earLower = 0x8031,
	 *     FACIAL_R_eyesackLower = 0x777B,
	 *     FACIAL_R_nasolabialBulge = 0xD61E,
	 *     FACIAL_R_cheekOuter = 0xD32,
	 *     FACIAL_R_cheekInner = 0x737C,
	 *     FACIAL_R_noseUpper = 0x1CD6,
	 *     FACIAL_R_foreheadInner = 0xE43,
	 *     FACIAL_R_foreheadInnerBulge = 0x769C,
	 *     FACIAL_R_foreheadOuter = 0x8FCB,
	 *     FACIAL_R_cheekOuterSkin = 0xB334,
	 *     FACIAL_R_eyesackUpperInnerFurrow = 0x9FAE,
	 *     FACIAL_R_eyesackUpperOuterFurrow = 0x140F,
	 *     FACIAL_R_eyesackUpperInnerBulge = 0xA359,
	 *     FACIAL_R_eyesackUpperOuterBulge = 0x1AF9,
	 *     FACIAL_R_nasolabialFurrow = 0x2CAA,
	 *     FACIAL_R_temple = 0xAF19,
	 *     FACIAL_R_eyeball = 0x1944,
	 *     FACIAL_R_eyelidUpper = 0x7E14,
	 *     FACIAL_R_eyelidUpperOuterSDK = 0xB115,
	 *     FACIAL_R_eyelidUpperOuterAnalog = 0xF25A,
	 *     FACIAL_R_eyelashUpperOuter = 0xE0A,
	 *     FACIAL_R_eyelidUpperInnerSDK = 0xD541,
	 *     FACIAL_R_eyelidUpperInnerAnalog = 0x7C63,
	 *     FACIAL_R_eyelashUpperInner = 0x8172,
	 *     FACIAL_R_eyelidLower = 0x7FDF,
	 *     FACIAL_R_eyelidLowerOuterSDK = 0x1BD,
	 *     FACIAL_R_eyelidLowerOuterAnalog = 0x457B,
	 *     FACIAL_R_eyelashLowerOuter = 0xBE49,
	 *     FACIAL_R_eyelidLowerInnerSDK = 0xF351,
	 *     FACIAL_R_eyelidLowerInnerAnalog = 0xE13,
	 *     FACIAL_R_eyelashLowerInner = 0x3322,
	 *     FACIAL_L_lipUpperSDK = 0x8F30,
	 *     FACIAL_L_lipUpperAnalog = 0xB1CF,
	 *     FACIAL_L_lipUpperThicknessH = 0x37CE,
	 *     FACIAL_L_lipUpperThicknessV = 0x38BC,
	 *     FACIAL_lipUpperSDK = 0x1774,
	 *     FACIAL_lipUpperAnalog = 0xE064,
	 *     FACIAL_lipUpperThicknessH = 0x7993,
	 *     FACIAL_lipUpperThicknessV = 0x7981,
	 *     FACIAL_L_lipCornerSDK = 0xB1C,
	 *     FACIAL_L_lipCornerAnalog = 0xE568,
	 *     FACIAL_L_lipCornerThicknessUpper = 0x7BC,
	 *     FACIAL_L_lipCornerThicknessLower = 0xDD42,
	 *     FACIAL_R_lipUpperSDK = 0x7583,
	 *     FACIAL_R_lipUpperAnalog = 0x51CF,
	 *     FACIAL_R_lipUpperThicknessH = 0x382E,
	 *     FACIAL_R_lipUpperThicknessV = 0x385C,
	 *     FACIAL_R_lipCornerSDK = 0xB3C,
	 *     FACIAL_R_lipCornerAnalog = 0xEE0E,
	 *     FACIAL_R_lipCornerThicknessUpper = 0x54C3,
	 *     FACIAL_R_lipCornerThicknessLower = 0x2BBA,
	 *     MH_MulletRoot = 0x3E73,
	 *     MH_MulletScaler = 0xA1C2,
	 *     MH_Hair_Scale = 0xC664,
	 *     MH_Hair_Crown = 0x1675,
	 *     SM_Torch = 0x8D6,
	 *     FX_Light = 0x8959,
	 *     FX_Light_Scale = 0x5038,
	 *     FX_Light_Switch = 0xE18E,
	 *     BagRoot = 0xAD09,
	 *     BagPivotROOT = 0xB836,
	 *     BagPivot = 0x4D11,
	 *     BagBody = 0xAB6D,
	 *     BagBone_R = 0x937,
	 *     BagBone_L = 0x991,
	 *     SM_LifeSaver_Front = 0x9420,
	 *     SM_R_Pouches_ROOT = 0x2962,
	 *     SM_R_Pouches = 0x4141,
	 *     SM_L_Pouches_ROOT = 0x2A02,
	 *     SM_L_Pouches = 0x4B41,
	 *     SM_Suit_Back_Flapper = 0xDA2D,
	 *     SPR_CopRadio = 0x8245,
	 *     SM_LifeSaver_Back = 0x2127,
	 *     MH_BlushSlider = 0xA0CE,
	 *     SKEL_Tail_01 = 0x347,
	 *     SKEL_Tail_02 = 0x348,
	 *     MH_L_Concertina_B = 0xC988,
	 *     MH_L_Concertina_A = 0xC987,
	 *     MH_R_Concertina_B = 0xC8E8,
	 *     MH_R_Concertina_A = 0xC8E7,
	 *     MH_L_ShoulderBladeRoot = 0x8711,
	 *     MH_L_ShoulderBlade = 0x4EAF,
	 *     MH_R_ShoulderBladeRoot = 0x3A0A,
	 *     MH_R_ShoulderBlade = 0x54AF,
	 *     FB_R_Ear_000 = 0x6CDF,
	 *     SPR_R_Ear = 0x63B6,
	 *     FB_L_Ear_000 = 0x6439,
	 *     SPR_L_Ear = 0x5B10,
	 *     FB_TongueA_000 = 0x4206,
	 *     FB_TongueB_000 = 0x4207,
	 *     FB_TongueC_000 = 0x4208,
	 *     SKEL_L_Toe1 = 0x1D6B,
	 *     SKEL_R_Toe1 = 0xB23F,
	 *     SKEL_Tail_03 = 0x349,
	 *     SKEL_Tail_04 = 0x34A,
	 *     SKEL_Tail_05 = 0x34B,
	 *     SPR_Gonads_ROOT = 0xBFDE,
	 *     SPR_Gonads = 0x1C00,
	 *     FB_L_Brow_Out_001 = 0xE3DB,
	 *     FB_L_Lid_Upper_001 = 0xB2B6,
	 *     FB_L_Eye_001 = 0x62AC,
	 *     FB_L_CheekBone_001 = 0x542E,
	 *     FB_L_Lip_Corner_001 = 0x74AC,
	 *     FB_R_Lid_Upper_001 = 0xAA10,
	 *     FB_R_Eye_001 = 0x6B52,
	 *     FB_R_CheekBone_001 = 0x4B88,
	 *     FB_R_Brow_Out_001 = 0x54C,
	 *     FB_R_Lip_Corner_001 = 0x2BA6,
	 *     FB_Brow_Centre_001 = 0x9149,
	 *     FB_UpperLipRoot_001 = 0x4ED2,
	 *     FB_UpperLip_001 = 0xF18F,
	 *     FB_L_Lip_Top_001 = 0x4F37,
	 *     FB_R_Lip_Top_001 = 0x4537,
	 *     FB_Jaw_001 = 0xB4A0,
	 *     FB_LowerLipRoot_001 = 0x4324,
	 *     FB_LowerLip_001 = 0x508F,
	 *     FB_L_Lip_Bot_001 = 0xB93B,
	 *     FB_R_Lip_Bot_001 = 0xC33B,
	 *     FB_Tongue_001 = 0xB987
	 * }; 
	 * ```
	 */
	@:native("GET_PED_BONE_INDEX")
	static function getPedBoneIndex(ped:Dynamic, boneId:Int):Int;

	/**
	 * 
	 */
	@:native("GET_PED_COMBAT_MOVEMENT")
	static function getPedCombatMovement(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS")
	static function getNumberOfPedPropDrawableVariations(ped:Dynamic, propId:Int):Int;

	/**
	 * 
	 */
	@:native("_GET_PED_CURRENT_MOVEMENT_SPEED")
	static function GetPedCurrentMovementSpeed(ped:Dynamic, speedX:Dynamic, speedY:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GET_PED_ARMOUR")
	static function getPedArmour(ped:Dynamic):Int;

	/**
	 * See [`SET_PED_CONFIG_FLAG`](#\_0x1913FE4CBF41C463).
	 */
	@:native("GET_PED_CONFIG_FLAG")
	static function getPedConfigFlag(ped:Dynamic, flagId:Int, p2:Bool):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_GET_PED_DIES_IN_WATER")
	static function GetPedDiesInWater(ped:Dynamic):Bool;

	/**
	 * ```cpp
	 * enum ePedDecorationZone
	 * {
	 * 	ZONE_TORSO = 0,
	 * 	ZONE_HEAD = 1,
	 * 	ZONE_LEFT_ARM = 2,
	 * 	ZONE_RIGHT_ARM = 3,
	 * 	ZONE_LEFT_LEG = 4,
	 * 	ZONE_RIGHT_LEG = 5,
	 * 	ZONE_UNKNOWN = 6,
	 * 	ZONE_NONE = 7
	 * };
	 * ```
	 */
	@:native("GET_PED_DECORATION_ZONE_FROM_HASHES")
	static function getPedDecorationZoneFromHashes(collection:Int, overlay:Int):Int;

	/**
	 * Use [`SetPedIlluminatedClothingGlowIntensity`](#\_0x4E90D746056E273D) to set the illuminated clothing glow intensity for a specific ped.
	 */
	@:native("_GET_PED_EMISSIVE_INTENSITY")
	static function GetPedEmissiveIntensity(ped:Dynamic):Float;

	/**
	 * ```
	 * from fm_mission_controller.c4 (variable names changed for clarity):  
	 * int groupID = PLAYER::GET_PLAYER_GROUP(PLAYER::PLAYER_ID());  
	 * PED::GET_GROUP_SIZE(group, &unused, &groupSize);  
	 * if (groupSize >= 1) {  
	 * . . . . for (int memberNumber = 0; memberNumber < groupSize; memberNumber++) {  
	 * . . . . . . . . Ped ped1 = PED::GET_PED_AS_GROUP_MEMBER(groupID, memberNumber);  
	 * . . . . . . . . //and so on  
	 * ```
	 */
	@:native("GET_PED_AS_GROUP_MEMBER")
	static function getPedAsGroupMember(groupID:Int, memberNumber:Int):Dynamic;

	/**
	 * ```
	 * Ids
	 * 0 - Head
	 * 1 - Beard
	 * 2 - Hair
	 * 3 - Torso
	 * 4 - Legs
	 * 5 - Hands
	 * 6 - Foot
	 * 7 - Scarfs/Neck Accessories
	 * 8 - Accessories 1
	 * 9 - Accessories 2
	 * 10- Decals
	 * 11 - Auxiliary parts for torso
	 * ```
	 */
	@:native("GET_PED_DRAWABLE_VARIATION")
	static function getPedDrawableVariation(ped:Dynamic, componentId:Int):Int;

	/**
	 * 
	 */
	@:native("GET_PED_DEFENSIVE_AREA_POSITION")
	static function getPedDefensiveAreaPosition(ped:Dynamic, p1:Bool):Dynamic;

	/**
	 * ```
	 * Returns the group id of which the specified ped is a member of.  
	 * ```
	 */
	@:native("GET_PED_GROUP_INDEX")
	static function getPedGroupIndex(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_PED_COMBAT_RANGE")
	static function getPedCombatRange(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_PED_ENVEFF_SCALE")
	static function getPedEnveffScale(ped:Dynamic):Float;

	/**
	 * Input: Haircolor index, value between 0 and 63 (inclusive).
	 * Output: RGB values for the haircolor specified in the input.
	 * 
	 * This is used with the hair color swatches scaleform.
	 * 
	 * Use [`_0x013E5CFC38CD5387`](#\_0x013E5CFC38CD5387) to get the makeup colors.
	 */
	@:native("_GET_PED_HAIR_RGB_COLOR")
	static function GetPedHairRgbColor(hairColorIndex:Int, outR:Dynamic, outG:Dynamic, outB:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("_GET_PED_EVENT_DATA")
	static function GetPedEventData(ped:Dynamic, eventType:Int, outData:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GET_PED_DECORATIONS_STATE")
	static function getPedDecorationsState(ped:Dynamic):Int;

	/**
	 * A getter for [`_SET_PED_EYE_COLOR`](#\_0x50B56988B170AFDF).
	 */
	@:native("_GET_PED_EYE_COLOR")
	static function GetPedEyeColor(ped:Dynamic):Int;

	/**
	 * ```
	 * Gets the offset the specified ped has moved since the previous tick.  
	 * If worldSpace is false, the returned offset is relative to the ped. That is, if the ped has moved 1 meter right and 5 meters forward, it'll return 1,5,0.  
	 * If worldSpace is true, the returned offset is relative to the world. That is, if the ped has moved 1 meter on the X axis and 5 meters on the Y axis, it'll return 1,5,0.  
	 * ```
	 */
	@:native("GET_PED_EXTRACTED_DISPLACEMENT")
	static function getPedExtractedDisplacement(ped:Dynamic, worldSpace:Bool):Dynamic;

	/**
	 * ```
	 * Type equals 0 for male non-dlc, 1 for female non-dlc, 2 for male dlc, and 3 for female dlc.  
	 * ```
	 */
	@:native("GET_PED_HEAD_BLEND_NUM_HEADS")
	static function getPedHeadBlendNumHeads(type:Int):Int;

	/**
	 * ```
	 * The pointer is to a padded struct that matches the arguments to SET_PED_HEAD_BLEND_DATA(...). There are 4 bytes of padding after each field.  
	 * pass this struct in the second parameter   
	 * typedef struct  
	 * {  
	 *         int shapeFirst, shapeSecond, shapeThird;   
	 *         int skinFirst, skinSecond, skinThird;   
	 * 	float shapeMix, skinMix, thirdMix;  
	 * } headBlendData;  
	 * ```
	 */
	@:native("GET_PED_HEAD_BLEND_DATA")
	static function getPedHeadBlendData(ped:Dynamic, headBlendData:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GET_PED_HELMET_STORED_HAT_PROP_INDEX")
	static function getPedHelmetStoredHatPropIndex(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_PED_HELMET_STORED_HAT_TEX_INDEX")
	static function getPedHelmetStoredHatTexIndex(ped:Dynamic):Int;

	/**
	 * ```
	 * Likely a char, if that overlay is not set, e.i. "None" option, returns 255;
	 * This might be the once removed native GET_PED_HEAD_OVERLAY.
	 * ```
	 */
	@:native("_GET_PED_HEAD_OVERLAY_VALUE")
	static function GetPedHeadOverlayValue(ped:Dynamic, overlayID:Int):Int;

	/**
	 * 
	 */
	@:native("GET_PED_MONEY")
	static function getPedMoney(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_PED_MAX_HEALTH")
	static function getPedMaxHealth(ped:Dynamic):Int;

	/**
	 * ```
	 * Type equals 0 for male non-dlc, 1 for female non-dlc, 2 for male dlc, and 3 for female dlc.
	 * Used when calling SET_PED_HEAD_BLEND_DATA.
	 * ```
	 */
	@:native("GET_PED_HEAD_BLEND_FIRST_INDEX")
	static function getPedHeadBlendFirstIndex(type:Int):Int;

	/**
	 * 
	 */
	@:native("GET_PED_LAST_DAMAGE_BONE")
	static function getPedLastDamageBone(ped:Dynamic, outBone:Dynamic):Bool;

	/**
	 * ```
	 * -1: no landing  
	 * 0: landing on both feet  
	 * 1: stumbling  
	 * 2: rolling  
	 * 3: ragdoll  
	 * ```
	 */
	@:native("GET_PED_PARACHUTE_LANDING_TYPE")
	static function getPedParachuteLandingType(ped:Dynamic):Int;

	/**
	 * Input: Makeup color index, value between 0 and 63 (inclusive).
	 * Output: RGB values for the makeup color specified in the input.
	 * 
	 * This is used with the makeup color swatches scaleform.
	 * 
	 * Use [`_0x4852FC386E2E1BB5`](#\_0x4852FC386E2E1BB5) to get the hair colors.
	 */
	@:native("_GET_PED_MAKEUP_RGB_COLOR")
	static function GetPedMakeupRgbColor(makeupColorIndex:Int, outR:Dynamic, outG:Dynamic, outB:Dynamic):Dynamic;

	/**
	 * Console/PC structure definitions and example: pastebin.com/SsFej963
	 * 
	 * For FiveM/Cfx.Re use-cases refer to: [`GET_GAME_POOL`](#\_0x2B9D4F50).
	 */
	@:native("GET_PED_NEARBY_PEDS")
	static function getPedNearbyPeds(ped:Dynamic, sizeAndPeds:Dynamic, ignore:Int):Int;

	/**
	 * ```
	 * Used with freemode (online) characters.
	 * ```
	 */
	@:native("GET_PED_HEAD_OVERLAY_NUM")
	static function getPedHeadOverlayNum(overlayID:Int):Int;

	/**
	 * 
	 */
	@:native("GET_PED_PROP_TEXTURE_INDEX")
	static function getPedPropTextureIndex(ped:Dynamic, componentId:Int):Int;

	/**
	 * 
	 */
	@:native("GET_PED_PALETTE_VARIATION")
	static function getPedPaletteVariation(ped:Dynamic, componentId:Int):Int;

	/**
	 * ```
	 * Returns:  
	 * -1: Normal  
	 * 0: Wearing parachute on back  
	 * 1: Parachute opening  
	 * 2: Parachute open  
	 * 3: Falling to doom (e.g. after exiting parachute)  
	 * Normal means no parachute?  
	 * ```
	 */
	@:native("GET_PED_PARACHUTE_STATE")
	static function getPedParachuteState(ped:Dynamic):Int;

	/**
	 * ```
	 * Returns size of array, passed into the second variable.  
	 * See below for usage information.  
	 * This function actually requires a struct, where the first value is the maximum number of elements to return.  Here is a sample of how I was able to get it to work correctly, without yet knowing the struct format.  
	 * //Setup the array  
	 * 	const int numElements = 10;  
	 * 	const int arrSize = numElements * 2 + 2;  
	 * 	Any veh[arrSize];  
	 * 	//0 index is the size of the array  
	 * 	veh[0] = numElements;  
	 * 	int count = PED::GET_PED_NEARBY_VEHICLES(PLAYER::PLAYER_PED_ID(), veh);  
	 * 	if (veh != NULL)  
	 * 	{  
	 * //Simple loop to go through results  
	 * for (int i = 0; i < count; i++)  
	 * {  
	 * 	int offsettedID = i * 2 + 2;  
	 * 	//Make sure it exists  
	 * 	if (veh[offsettedID] != NULL && ENTITY::DOES_ENTITY_EXIST(veh[offsettedID]))  
	 * 	{  
	 * //Do something  
	 * 	}  
	 * }  
	 * 	}    
	 * Here's the right way to do it (console and pc):  
	 * pastebin.com/SsFej963  
	 * ```
	 */
	@:native("GET_PED_NEARBY_VEHICLES")
	static function getPedNearbyVehicles(ped:Dynamic, sizeAndVehs:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_PED_PROP_INDEX")
	static function getPedPropIndex(ped:Dynamic, componentId:Int):Int;

	/**
	 * 
	 */
	@:native("GET_PED_RAGDOLL_BONE_INDEX")
	static function getPedRagdollBoneIndex(ped:Dynamic, bone:Int):Int;

	/**
	 * 
	 */
	@:native("GET_PED_PARACHUTE_TINT_INDEX")
	static function getPedParachuteTintIndex(ped:Dynamic, outTintIndex:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_GET_PED_TASK_COMBAT_TARGET")
	static function GetPedTaskCombatTarget(ped:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_PED_RELATIONSHIP_GROUP_DEFAULT_HASH")
	static function getPedRelationshipGroupDefaultHash(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_PED_RESET_FLAG")
	static function getPedResetFlag(ped:Dynamic, flagId:Int):Bool;

	/**
	 * 
	 */
	@:native("GET_PED_RELATIONSHIP_GROUP_HASH")
	static function getPedRelationshipGroupHash(ped:Dynamic):Int;

	/**
	 * Ped types:
	 * 
	 * ```cpp
	 * enum ePedType
	 * {
	 * 	PED_TYPE_PLAYER_0 = 0,
	 * 	PED_TYPE_PLAYER_1 = 1,
	 * 	PED_TYPE_NETWORK_PLAYER = 2,
	 * 	PED_TYPE_PLAYER_2 = 3,
	 * 	PED_TYPE_CIVMALE = 4,
	 * 	PED_TYPE_CIVFEMALE = 5,
	 * 	PED_TYPE_COP = 6,
	 * 	PED_TYPE_GANG_ALBANIAN = 7,
	 * 	PED_TYPE_GANG_BIKER_1 = 8,
	 * 	PED_TYPE_GANG_BIKER_2 = 9,
	 * 	PED_TYPE_GANG_ITALIAN = 10,
	 * 	PED_TYPE_GANG_RUSSIAN = 11,
	 * 	PED_TYPE_GANG_RUSSIAN_2 = 12,
	 * 	PED_TYPE_GANG_IRISH = 13,
	 * 	PED_TYPE_GANG_JAMAICAN = 14,
	 * 	PED_TYPE_GANG_AFRICAN_AMERICAN = 15,
	 * 	PED_TYPE_GANG_KOREAN = 16,
	 * 	PED_TYPE_GANG_CHINESE_JAPANESE = 17,
	 * 	PED_TYPE_GANG_PUERTO_RICAN = 18,
	 * 	PED_TYPE_DEALER = 19,
	 * 	PED_TYPE_MEDIC = 20,
	 * 	PED_TYPE_FIREMAN = 21,
	 * 	PED_TYPE_CRIMINAL = 22,
	 * 	PED_TYPE_BUM = 23,
	 * 	PED_TYPE_PROSTITUTE = 24,
	 * 	PED_TYPE_SPECIAL = 25,
	 * 	PED_TYPE_MISSION = 26,
	 * 	PED_TYPE_SWAT = 27,
	 * 	PED_TYPE_ANIMAL = 28,
	 * 	PED_TYPE_ARMY = 29
	 * };
	 * ```
	 */
	@:native("GET_PED_TYPE")
	static function getPedType(ped:Dynamic):Int;

	/**
	 * ```
	 * Returns the Entity (Ped, Vehicle, or ?Object?) that killed the 'ped'  
	 * Is best to check if the Ped is dead before asking for its killer.  
	 * ```
	 */
	@:native("GET_PED_SOURCE_OF_DEATH")
	static function getPedSourceOfDeath(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * Returns whether the entity is in stealth mode  
	 * ```
	 */
	@:native("GET_PED_STEALTH_MOVEMENT")
	static function getPedStealthMovement(ped:Dynamic):Bool;

	/**
	 * ```
	 * gtaforums.com/topic/885580-ped-headshotmugshot-txd/  
	 * ```
	 */
	@:native("GET_PEDHEADSHOT_TXD_STRING")
	static function getPedheadshotTxdString(id:Int):String;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_GET_PED_VISUAL_FIELD_CENTER_ANGLE")
	static function GetPedVisualFieldCenterAngle(ped:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_PED_TEXTURE_VARIATION")
	static function getPedTextureVariation(ped:Dynamic, componentId:Int):Int;

	/**
	 * ```
	 * Gets a random ped in the x/y/zRadius near the x/y/z coordinates passed.   
	 * Ped Types:  
	 * Any = -1  
	 * Player = 1  
	 * Male = 4   
	 * Female = 5   
	 * Cop = 6  
	 * Human = 26  
	 * SWAT = 27   
	 * Animal = 28  
	 * Army = 29  
	 * ```
	 */
	@:native("GET_RANDOM_PED_AT_COORD")
	static function getRandomPedAtCoord(x:Float, y:Float, z:Float, xRadius:Float, yRadius:Float, zRadius:Float, pedType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GET_PEDS_JACKER")
	static function getPedsJacker(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * Gets the relationship between two groups. This should be called twice (once for each group).  
	 * Relationship types:  
	 * 0 = Companion  
	 * 1 = Respect  
	 * 2 = Like  
	 * 3 = Neutral  
	 * 4 = Dislike  
	 * 5 = Hate  
	 * 255 = Pedestrians  
	 * Example:  
	 * PED::GET_RELATIONSHIP_BETWEEN_GROUPS(l_1017, 0xA49E591C);  
	 * PED::GET_RELATIONSHIP_BETWEEN_GROUPS(0xA49E591C, l_1017);  
	 * ```
	 */
	@:native("GET_RELATIONSHIP_BETWEEN_GROUPS")
	static function getRelationshipBetweenGroups(group1:Int, group2:Int):Int;

	/**
	 * 
	 */
	@:native("GET_PED_TIME_OF_DEATH")
	static function getPedTimeOfDeath(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_SEAT_PED_IS_TRYING_TO_ENTER")
	static function getSeatPedIsTryingToEnter(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_SYNCHRONIZED_SCENE_RATE")
	static function getSynchronizedSceneRate(sceneID:Int):Float;

	/**
	 * 
	 */
	@:native("GET_SYNCHRONIZED_SCENE_PHASE")
	static function getSynchronizedScenePhase(sceneID:Int):Float;

	/**
	 * ```
	 * GET_TIME_*
	 * ```
	 */
	@:native("_GET_TIME_OF_LAST_PED_WEAPON_DAMAGE")
	static function GetTimeOfLastPedWeaponDamage(ped:Dynamic, weaponHash:Int):Int;

	/**
	 * 
	 */
	@:native("GET_PLAYER_PED_IS_FOLLOWING")
	static function getPlayerPedIsFollowing(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_PED_IS_ENTERING")
	static function getVehiclePedIsEntering(ped:Dynamic):Dynamic;

	/**
	 * Gives the ped a helmet. Can be removed by invoking [`REMOVE_PED_HELMET`](#\_0xA7B2458D0AD6DED8).
	 * 
	 * ```cpp
	 * enum ePedCompFlags {
	 *   PV_FLAG_NONE                  = 0, // 0
	 *   PV_FLAG_BULKY                 = 1, // 1<<0
	 *   PV_FLAG_JOB                   = 2, // 1<<1
	 *   PV_FLAG_SUNNY                 = 4, // 1<<2
	 *   PV_FLAG_WET                   = 8, // 1<<3
	 *   PV_FLAG_COLD                  = 16, // 1<<4
	 *   PV_FLAG_NOT_IN_CAR            = 32, // 1<<5
	 *   PV_FLAG_BIKE_ONLY             = 64, // 1<<6
	 *   PV_FLAG_NOT_INDOORS           = 128, // 1<<7
	 *   PV_FLAG_FIRE_RETARDENT        = 256, // 1<<8
	 *   PV_FLAG_ARMOURED              = 512, // 1<<9
	 *   PV_FLAG_LIGHTLY_ARMOURED      = 1024, // 1<<10
	 *   PV_FLAG_HIGH_DETAIL           = 2048, // 1<<11
	 *   PV_FLAG_DEFAULT_HELMET        = 4096, // 1<<12
	 *   PV_FLAG_RANDOM_HELMET         = 8192, // 1<<13
	 *   PV_FLAG_SCRIPT_HELMET         = 16384, // 1<<14
	 *   PV_FLAG_FLIGHT_HELMET         = 32768, // 1<<15
	 *   PV_FLAG_HIDE_IN_FIRST_PERSON  = 65536, // 1<<16
	 *   PV_FLAG_USE_PHYSICS_HAT_2     = 131072, // 1<<17
	 *   PV_FLAG_PILOT_HELMET          = 262144 // 1<<18
	 * };
	 * ```
	 */
	@:native("GIVE_PED_HELMET")
	static function givePedHelmet(ped:Dynamic, cannotRemove:Bool, helmetFlag:Int, textureIndex:Int):Dynamic;

	/**
	 * ```
	 * Gets the relationship between two peds. This should be called twice (once for each ped).  
	 * Relationship types:  
	 * 0 = Companion  
	 * 1 = Respect  
	 * 2 = Like  
	 * 3 = Neutral  
	 * 4 = Dislike  
	 * 5 = Hate  
	 * 255 = Pedestrians  
	 * (Credits: Inco)  
	 * Example:  
	 * PED::GET_RELATIONSHIP_BETWEEN_PEDS(2, l_1017, 0xA49E591C);  
	 * PED::GET_RELATIONSHIP_BETWEEN_PEDS(2, 0xA49E591C, l_1017);  
	 * ```
	 */
	@:native("GET_RELATIONSHIP_BETWEEN_PEDS")
	static function getRelationshipBetweenPeds(ped1:Dynamic, ped2:Dynamic):Int;

	/**
	 * Retrieves the vehicle the specified ped is currently in, or the last vehicle they were in.
	 */
	@:native("GET_VEHICLE_PED_IS_IN")
	static function getVehiclePedIsIn(ped:Dynamic, lastVehicle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("HAS_PED_PRELOAD_PROP_DATA_FINISHED")
	static function hasPedPreloadPropDataFinished(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("HAS_PED_HEAD_BLEND_FINISHED")
	static function hasPedHeadBlendFinished(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("HAS_PED_RECEIVED_EVENT")
	static function hasPedReceivedEvent(ped:Dynamic, eventId:Int):Bool;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_PED_IS_TRYING_TO_ENTER")
	static function getVehiclePedIsTryingToEnter(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("HAS_PEDHEADSHOT_IMG_UPLOAD_SUCCEEDED")
	static function hasPedheadshotImgUploadSucceeded():Bool;

	/**
	 * ```
	 * Sends the message that was created by a call to CREATE_NM_MESSAGE to the specified Ped.  
	 * If a message hasn't been created already, this function does nothing.  
	 * If the Ped is not ragdolled with Euphoria enabled, this function does nothing.  
	 * The following call can be used to ragdoll the Ped with Euphoria enabled: SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0);  
	 * Call order:  
	 * SET_PED_TO_RAGDOLL  
	 * CREATE_NM_MESSAGE  
	 * GIVE_PED_NM_MESSAGE  
	 * Multiple messages can be chained. Eg. to make the ped stagger and swing his arms around, the following calls can be made:  
	 * SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0);  
	 * CREATE_NM_MESSAGE(true, 0); // stopAllBehaviours - Stop all other behaviours, in case the Ped is already doing some Euphoria stuff.  
	 * GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.  
	 * CREATE_NM_MESSAGE(true, 1151); // staggerFall - Attempt to walk while falling.  
	 * GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.  
	 * CREATE_NM_MESSAGE(true, 372); // armsWindmill - Swing arms around.  
	 * GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.  
	 * ```
	 */
	@:native("GIVE_PED_NM_MESSAGE")
	static function givePedNmMessage(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("INSTANTLY_FILL_PED_POPULATION")
	static function instantlyFillPedPopulation():Dynamic;

	/**
	 * ```
	 * Gets ID of vehicle player using. It means it can get ID at any interaction with vehicle. Enter\exit for example. And that means it is faster than GET_VEHICLE_PED_IS_IN but less safe.  
	 * ```
	 */
	@:native("GET_VEHICLE_PED_IS_USING")
	static function getVehiclePedIsUsing(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("HAS_ACTION_MODE_ASSET_LOADED")
	static function hasActionModeAssetLoaded(asset:String):Bool;

	/**
	 * 
	 */
	@:native("HIDE_PED_BLOOD_DAMAGE_BY_ZONE")
	static function hidePedBloodDamageByZone(ped:Dynamic, p1:Dynamic, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("HAS_PEDHEADSHOT_IMG_UPLOAD_FAILED")
	static function hasPedheadshotImgUploadFailed():Bool;

	/**
	 * 
	 */
	@:native("HAS_PED_PRELOAD_VARIATION_DATA_FINISHED")
	static function hasPedPreloadVariationDataFinished(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("HAVE_ALL_STREAMING_REQUESTS_COMPLETED")
	static function haveAllStreamingRequestsCompleted(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("HAS_STEALTH_MODE_ASSET_LOADED")
	static function hasStealthModeAssetLoaded(asset:String):Bool;

	/**
	 * Verifies whether a ped is firing within a specific area.
	 */
	@:native("IS_ANY_PED_SHOOTING_IN_AREA")
	static function isAnyPedShootingInArea(minX:Float, minY:Float, minZ:Float, maxX:Float, maxY:Float, maxZ:Float, bHighlightArea:Bool, bDo3DCheck:Bool):Bool;

	/**
	 * 
	 */
	@:native("IS_ANY_HOSTILE_PED_NEAR_POINT")
	static function isAnyHostilePedNearPoint(ped:Dynamic, x:Float, y:Float, z:Float, radius:Float):Bool;

	/**
	 * 
	 */
	@:native("IS_ANY_PED_NEAR_POINT")
	static function isAnyPedNearPoint(x:Float, y:Float, z:Float, radius:Float):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_AIMING_FROM_COVER")
	static function isPedAimingFromCover(ped:Dynamic):Bool;

	/**
	 * ```
	 * Returns true if the given ped has a valid pointer to CPlayerInfo in its CPed class. That's all.
	 * ```
	 */
	@:native("IS_PED_A_PLAYER")
	static function isPedAPlayer(ped:Dynamic):Bool;

	/**
	 * ```
	 * p1 is always 0  
	 * ```
	 */
	@:native("IS_PED_BEING_STUNNED")
	static function isPedBeingStunned(ped:Dynamic, p1:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_CONVERSATION_PED_DEAD")
	static function isConversationPedDead(ped:Dynamic):Bool;

	/**
	 * ```
	 * xyz - relative to the world origin.  
	 * ```
	 */
	@:native("IS_COP_PED_IN_AREA_3D")
	static function isCopPedInArea3D(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_BEING_STEALTH_KILLED")
	static function isPedBeingStealthKilled(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_BEING_JACKED")
	static function isPedBeingJacked(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_IS_PED_BLUSH_COLOR_VALID_2")
	static function IsPedBlushColorValid2(colorId:Int):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_IS_PED_BODY_BLEMISH_VALID")
	static function IsPedBodyBlemishValid(colorID:Int):Bool;

	/**
	 * 
	 */
	@:native("_IS_PED_BLUSH_COLOR_VALID")
	static function IsPedBlushColorValid(colorID:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_DIVING")
	static function isPedDiving(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_CLIMBING")
	static function isPedClimbing(ped:Dynamic):Bool;

	/**
	 * Determines if a ped is dead. Contrary to what the name might suggest, it does not always detect when a ped is in the 'dying' phase (transitioning to death). The exception is when `checkMeleeDeathFlags` is set to `true`, which then includes peds in the midst of melee takedown moves as being in a dying state, even if the death task has not yet started.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("IS_PED_DEAD_OR_DYING")
	static function isPedDeadOrDying(ped:Dynamic, checkMeleeDeathFlags:Bool):Bool;

	/**
	 * ```
	 * Presumably returns the Entity that the Ped is currently diving out of the way of.
	 * var num3;
	 *     if (PED::IS_PED_EVASIVE_DIVING(A_0, &num3) != 0)
	 *         if (ENTITY::IS_ENTITY_A_VEHICLE(num3) != 0)
	 * ```
	 */
	@:native("IS_PED_EVASIVE_DIVING")
	static function isPedEvasiveDiving(ped:Dynamic, evadingEntity:Dynamic):Bool;

	/**
	 * Checks if the component variation is valid, this works great for randomizing components using loops.
	 */
	@:native("IS_PED_COMPONENT_VARIATION_VALID")
	static function isPedComponentVariationValid(ped:Dynamic, componentId:Int, drawableId:Int, textureId:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_DOING_DRIVEBY")
	static function isPedDoingDriveby(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_DEFENSIVE_AREA_ACTIVE")
	static function isPedDefensiveAreaActive(ped:Dynamic, p1:Bool):Bool;

	/**
	 * ```
	 * Gets a value indicating whether this ped's health is below its fatally injured threshold. The default threshold is 100.  
	 * If the handle is invalid, the function returns true.  
	 * ```
	 */
	@:native("IS_PED_FATALLY_INJURED")
	static function isPedFatallyInjured(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_DUCKING")
	static function isPedDucking(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_IS_PED_DOING_BEAST_JUMP")
	static function IsPedDoingBeastJump(ped:Dynamic):Bool;

	/**
	 * ```
	 * angle is ped's view cone  
	 * ```
	 */
	@:native("IS_PED_FACING_PED")
	static function isPedFacingPed(ped:Dynamic, otherPed:Dynamic, angle:Float):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_FLEEING")
	static function isPedFleeing(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_FALLING")
	static function isPedFalling(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_IS_PED_HAIR_COLOR_VALID")
	static function IsPedHairColorValid(colorID:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_HEADTRACKING_ENTITY")
	static function isPedHeadtrackingEntity(ped:Dynamic, entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_GOING_INTO_COVER")
	static function isPedGoingIntoCover(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_GETTING_INTO_A_VEHICLE")
	static function isPedGettingIntoAVehicle(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_HANGING_ON_TO_VEHICLE")
	static function isPedHangingOnToVehicle(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_IS_PED_HAIR_COLOR_VALID_2")
	static function IsPedHairColorValid2(colorId:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_HEADTRACKING_PED")
	static function isPedHeadtrackingPed(ped1:Dynamic, ped2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_GROUP_MEMBER")
	static function isPedGroupMember(ped:Dynamic, groupId:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_HEADING_TOWARDS_POSITION")
	static function isPedHeadingTowardsPosition(ped:Dynamic, x:Float, y:Float, z:Float, p4:Float):Bool;

	/**
	 * ```
	 * Returns whether the specified ped is hurt.  
	 * ```
	 */
	@:native("IS_PED_HURT")
	static function isPedHurt(ped:Dynamic):Bool;

	/**
	 * ```
	 * Returns true/false if the ped is/isn't humanoid.  
	 * ```
	 */
	@:native("IS_PED_HUMAN")
	static function isPedHuman(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_IN_ANY_BOAT")
	static function isPedInAnyBoat(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_IS_PED_HELMET_UNK")
	static function IsPedHelmetUnk(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_IN_ANY_HELI")
	static function isPedInAnyHeli(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_IN_ANY_PLANE")
	static function isPedInAnyPlane(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_IN_ANY_SUB")
	static function isPedInAnySub(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_IN_ANY_TRAIN")
	static function isPedInAnyTrain(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_IN_ANY_POLICE_VEHICLE")
	static function isPedInAnyPoliceVehicle(ped:Dynamic):Bool;

	/**
	 * ```
	 * p1 is nearly always 0 in the scripts.  
	 * ```
	 */
	@:native("IS_PED_IN_COVER")
	static function isPedInCover(ped:Dynamic, exceptUseWeapon:Bool):Bool;

	/**
	 * Examines whether the ped is engaged in combat; when given a target ped index, it confirms if the ped is actively fighting the specified target, returning true if engaged and false if not.
	 */
	@:native("IS_PED_IN_COMBAT")
	static function isPedInCombat(ped:Dynamic, target:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_IN_ANY_TAXI")
	static function isPedInAnyTaxi(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_IN_COVER_FACING_LEFT")
	static function isPedInCoverFacingLeft(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_IN_GROUP")
	static function isPedInGroup(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_IN_FLYING_VEHICLE")
	static function isPedInFlyingVehicle(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_IN_PARACHUTE_FREE_FALL")
	static function isPedInParachuteFreeFall(ped:Dynamic):Bool;

	/**
	 * Returns whether the specified ped is in any vehicle. If `atGetIn` is set to true, also returns true if the ped is
	 * currently in the process of entering a vehicle (a specific stage check for `CTaskEnterVehicle`).
	 */
	@:native("IS_PED_IN_ANY_VEHICLE")
	static function isPedInAnyVehicle(ped:Dynamic, atGetIn:Bool):Bool;

	/**
	 * ```
	 * Notes: The function only returns true while the ped is:   
	 * A.) Swinging a random melee attack (including pistol-whipping)  
	 * B.) Reacting to being hit by a melee attack (including pistol-whipping)  
	 * C.) Is locked-on to an enemy (arms up, strafing/skipping in the default fighting-stance, ready to dodge+counter).   
	 * You don't have to be holding the melee-targetting button to be in this stance; you stay in it by default for a few seconds after swinging at someone. If you do a sprinting punch, it returns true for the duration of the punch animation and then returns false again, even if you've punched and made-angry many peds  
	 * ```
	 */
	@:native("IS_PED_IN_MELEE_COMBAT")
	static function isPedInMeleeCombat(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_JACKING")
	static function isPedJacking(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_IN_HIGH_COVER")
	static function isPedInHighCover(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_JUMPING_OUT_OF_VEHICLE")
	static function isPedJumpingOutOfVehicle(ped:Dynamic):Bool;

	/**
	 * ```
	 * Gets a value indicating whether the specified ped is in the specified vehicle.  
	 * If 'atGetIn' is false, the function will not return true until the ped is sitting in the vehicle and is about to close the door. If it's true, the function returns true the moment the ped starts to get onto the seat (after opening the door). Eg. if false, and the ped is getting into a submersible, the function will not return true until the ped has descended down into the submersible and gotten into the seat, while if it's true, it'll return true the moment the hatch has been opened and the ped is about to descend into the submersible.  
	 * ```
	 */
	@:native("IS_PED_IN_VEHICLE")
	static function isPedInVehicle(ped:Dynamic, vehicle:Dynamic, atGetIn:Bool):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_JUMPING")
	static function isPedJumping(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_IN_MODEL")
	static function isPedInModel(ped:Dynamic, modelHash:Int):Bool;

	/**
	 * 
	 */
	@:native("_IS_PED_LIPSTICK_COLOR_VALID_2")
	static function IsPedLipstickColorValid2(colorId:Int):Bool;

	/**
	 * Indicates whether this ped's health is below its injured threshold.
	 * The default threshold is 100, these are stored in the `pedhealth.meta` file located in `common:\data\`
	 * 
	 * ### Below are some of the values
	 * 
	 * | InjuredHealthThreshold | Name      |
	 * |------------------------|-----------|
	 * | 100.000000             | Strong    |
	 * | 100.000000             | Average   |
	 * | 100.000000             | Weak      |
	 */
	@:native("IS_PED_INJURED")
	static function isPedInjured(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_MODEL")
	static function isPedModel(ped:Dynamic, modelHash:Int):Bool;

	/**
	 * 
	 */
	@:native("_IS_PED_LIPSTICK_COLOR_VALID")
	static function IsPedLipstickColorValid(colorID:Int):Bool;

	/**
	 * ```
	 * Returns true/false if the ped is/isn't male.  
	 * ```
	 */
	@:native("IS_PED_MALE")
	static function isPedMale(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_ON_ANY_BIKE")
	static function isPedOnAnyBike(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_ON_FOOT")
	static function isPedOnFoot(ped:Dynamic):Bool;

	/**
	 * ```
	 * Gets a value indicating whether the specified ped is on top of any vehicle.  
	 * Return 1 when ped is on vehicle.  
	 * Return 0 when ped is not on a vehicle.  
	 * ```
	 */
	@:native("IS_PED_ON_VEHICLE")
	static function isPedOnVehicle(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_PERFORMING_DEPENDENT_COMBO_LIMIT")
	static function isPedPerformingDependentComboLimit(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_PERFORMING_MELEE_ACTION")
	static function isPedPerformingMeleeAction(ped:Dynamic):Bool;

	/**
	 * ```
	 * Same function call as PED::GET_MOUNT, aka just returns 0  
	 * ```
	 */
	@:native("IS_PED_ON_MOUNT")
	static function isPedOnMount(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_PLANTING_BOMB")
	static function isPedPlantingBomb(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_PRONE")
	static function isPedProne(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_ON_SPECIFIC_VEHICLE")
	static function isPedOnSpecificVehicle(ped:Dynamic, vehicle:Dynamic):Bool;

	/**
	 * ```
	 * IS_PED_*
	 * 
	 * Returns true if the ped is currently opening a door (CTaskOpenDoor).
	 * ```
	 */
	@:native("_IS_PED_OPENING_A_DOOR")
	static function IsPedOpeningADoor(ped:Dynamic):Bool;

	/**
	 * ```
	 * Returns whether the specified ped is reloading.  
	 * ```
	 */
	@:native("IS_PED_RELOADING")
	static function isPedReloading(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_PERFORMING_STEALTH_KILL")
	static function isPedPerformingStealthKill(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_RUNNING_MELEE_TASK")
	static function isPedRunningMeleeTask(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_RUNNING_RAGDOLL_TASK")
	static function isPedRunningRagdollTask(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_RESPONDING_TO_EVENT")
	static function isPedRespondingToEvent(ped:Dynamic, event:Dynamic):Bool;

	/**
	 * ```
	 * Returns whether the specified ped is shooting.  
	 * ```
	 */
	@:native("IS_PED_SHOOTING")
	static function isPedShooting(ped:Dynamic):Bool;

	/**
	 * ```
	 * If the ped handle passed through the parenthesis is in a ragdoll state this will return true.  
	 * ```
	 */
	@:native("IS_PED_RAGDOLL")
	static function isPedRagdoll(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_IS_PED_SHADER_EFFECT_VALID")
	static function IsPedShaderEffectValid(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_RUNNING_MOBILE_PHONE_TASK")
	static function isPedRunningMobilePhoneTask(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_SHOOTING_IN_AREA")
	static function isPedShootingInArea(ped:Dynamic, x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, p7:Bool, p8:Bool):Bool;

	/**
	 * 
	 */
	@:native("_IS_PED_SWAPPING_WEAPON")
	static function IsPedSwappingWeapon(Ped:Dynamic):Bool;

	/**
	 * ```
	 * Detect if ped is in any vehicle  
	 * [True/False]  
	 * ```
	 */
	@:native("IS_PED_SITTING_IN_ANY_VEHICLE")
	static function isPedSittingInAnyVehicle(ped:Dynamic):Bool;

	/**
	 * ```
	 * Returns true if the ped doesn't do any movement. If the ped is being pushed forwards by using APPLY_FORCE_TO_ENTITY for example, the function returns false.  
	 * ```
	 */
	@:native("IS_PED_STOPPED")
	static function isPedStopped(ped:Dynamic):Bool;

	/**
	 * ```
	 * Detect if ped is sitting in the specified vehicle  
	 * [True/False]  
	 * ```
	 */
	@:native("IS_PED_SITTING_IN_VEHICLE")
	static function isPedSittingInVehicle(ped:Dynamic, vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_SWIMMING")
	static function isPedSwimming(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_TRACKED")
	static function isPedTracked(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_SWIMMING_UNDER_WATER")
	static function isPedSwimmingUnderWater(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_TAKING_OFF_HELMET")
	static function isPedTakingOffHelmet(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_USING_ACTION_MODE")
	static function isPedUsingActionMode(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PEDHEADSHOT_IMG_UPLOAD_AVAILABLE")
	static function isPedheadshotImgUploadAvailable():Bool;

	/**
	 * If the ped is attempting to enter a locked vehicle.
	 */
	@:native("IS_PED_TRYING_TO_ENTER_A_LOCKED_VEHICLE")
	static function isPedTryingToEnterALockedVehicle(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_USING_ANY_SCENARIO")
	static function isPedUsingAnyScenario(ped:Dynamic):Bool;

	/**
	 * See [`TASK_START_SCENARIO_IN_PLACE`](#\_0x142A02425FF02BD9) for a list of scenarios.
	 */
	@:native("IS_PED_USING_SCENARIO")
	static function isPedUsingScenario(ped:Dynamic, scenario:String):Bool;

	/**
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM")
	static function isScriptedScenarioPedUsingConditionalAnim(ped:Dynamic, animDict:String, anim:String):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_VAULTING")
	static function isPedVaulting(ped:Dynamic):Bool;

	/**
	 * ```
	 * Returns true if the ped passed through the parenthesis is wearing a helmet.  
	 * ```
	 */
	@:native("IS_PED_WEARING_HELMET")
	static function isPedWearingHelmet(ped:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_IS_SCUBA_GEAR_LIGHT_ENABLED")
	static function IsScubaGearLightEnabled(ped:Dynamic):Bool;

	/**
	 * ```
	 * gtaforums.com/topic/885580-ped-headshotmugshot-txd/  
	 * ```
	 */
	@:native("IS_PEDHEADSHOT_READY")
	static function isPedheadshotReady(id:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_SYNCHRONIZED_SCENE_LOOPED")
	static function isSynchronizedSceneLooped(sceneID:Int):Bool;

	/**
	 * ```
	 * gtaforums.com/topic/885580-ped-headshotmugshot-txd/  
	 * ```
	 */
	@:native("IS_PEDHEADSHOT_VALID")
	static function isPedheadshotValid(id:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_SYNCHRONIZED_SCENE_HOLD_LAST_FRAME")
	static function isSynchronizedSceneHoldLastFrame(sceneID:Int):Bool;

	/**
	 * ```
	 * returns whether or not a ped is visible within your FOV, not this check auto's to false after a certain distance.  
	 * Target needs to be tracked.. won't work otherwise.  
	 * ```
	 */
	@:native("IS_TRACKED_PED_VISIBLE")
	static function isTrackedPedVisible(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("KNOCK_PED_OFF_VEHICLE")
	static function knockPedOffVehicle(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * Returns true if a synchronized scene is running  
	 * ```
	 */
	@:native("IS_SYNCHRONIZED_SCENE_RUNNING")
	static function isSynchronizedSceneRunning(sceneId:Int):Bool;

	/**
	 * 
	 */
	@:native("KNOCK_OFF_PED_PROP")
	static function knockOffPedProp(ped:Dynamic, p1:Bool, p2:Bool, p3:Bool, p4:Bool):Dynamic;

	/**
	 * ```
	 * gtaforums.com/topic/885580-ped-headshotmugshot-txd/  
	 * ```
	 */
	@:native("REGISTER_PEDHEADSHOT")
	static function registerPedheadshot(ped:Dynamic):Int;

	/**
	 * ```
	 * Based on TASK_COMBAT_HATED_TARGETS_AROUND_PED, the parameters are likely similar (PedHandle, and area to attack in).  
	 * ```
	 */
	@:native("REGISTER_HATED_TARGETS_AROUND_PED")
	static function registerHatedTargetsAroundPed(ped:Dynamic, radius:Float):Dynamic;

	/**
	 * 
	 */
	@:native("PLAY_FACIAL_ANIM")
	static function playFacialAnim(ped:Dynamic, animName:String, animDict:String):Dynamic;

	/**
	 * ```
	 * PED::REGISTER_TARGET(l_216, PLAYER::PLAYER_PED_ID()); from re_prisonbreak.txt.  
	 * l_216 = RECSBRobber1  
	 * ```
	 */
	@:native("REGISTER_TARGET")
	static function registerTarget(ped:Dynamic, target:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_REGISTER_PEDHEADSHOT_3")
	static function RegisterPedheadshot3(ped:Dynamic):Int;

	/**
	 * Similar to REGISTER_PEDHEADSHOT but creates a transparent background instead of black.
	 * 
	 * **Result of the example code:**
	 * <https://i.imgur.com/iHz8ztn.png>
	 */
	@:native("REGISTER_PEDHEADSHOT_TRANSPARENT")
	static function registerPedheadshotTransparent(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("RELEASE_PED_PRELOAD_VARIATION_DATA")
	static function releasePedPreloadVariationData(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * Ped will no longer get angry when you stay near him.  
	 * ```
	 */
	@:native("REMOVE_PED_DEFENSIVE_AREA")
	static function removePedDefensiveArea(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("RELEASE_PED_PRELOAD_PROP_DATA")
	static function releasePedPreloadPropData(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_ACTION_MODE_ASSET")
	static function removeActionModeAsset(asset:String):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_GROUP")
	static function removeGroup(groupId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RELEASE_PEDHEADSHOT_IMG_UPLOAD")
	static function releasePedheadshotImgUpload(id:Int):Dynamic;

	/**
	 * ```
	 * Judging purely from a quick disassembly, if the ped is in a vehicle, the ped will be deleted immediately. If not, it'll be marked as no longer needed. 
	 * ```
	 */
	@:native("REMOVE_PED_ELEGANTLY")
	static function removePedElegantly(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_RELATIONSHIP_GROUP")
	static function removeRelationshipGroup(groupHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_SCENARIO_BLOCKING_AREAS")
	static function removeScenarioBlockingAreas():Dynamic;

	/**
	 * Remove a helmet from a ped
	 */
	@:native("REMOVE_PED_HELMET")
	static function removePedHelmet(ped:Dynamic, instantly:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_PED_FROM_GROUP")
	static function removePedFromGroup(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("REQUEST_PED_VISIBILITY_TRACKING")
	static function requestPedVisibilityTracking(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_SCENARIO_BLOCKING_AREA")
	static function removeScenarioBlockingArea(scenarioBlockingIndex:Int, bNetwork:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("REQUEST_STEALTH_MODE_ASSET")
	static function requestStealthModeAsset(asset:String):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_PED_PREFERRED_COVER_SET")
	static function removePedPreferredCoverSet(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("RESET_AI_WEAPON_DAMAGE_MODIFIER")
	static function resetAiWeaponDamageModifier():Dynamic;

	/**
	 * 
	 */
	@:native("REQUEST_PED_VEHICLE_VISIBILITY_TRACKING")
	static function requestPedVehicleVisibilityTracking(ped:Dynamic, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("REQUEST_ACTION_MODE_ASSET")
	static function requestActionModeAsset(asset:String):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_STEALTH_MODE_ASSET")
	static function removeStealthModeAsset(asset:String):Dynamic;

	/**
	 * 
	 */
	@:native("REQUEST_PEDHEADSHOT_IMG_UPLOAD")
	static function requestPedheadshotImgUpload(id:Int):Bool;

	/**
	 * 
	 */
	@:native("RESET_AI_MELEE_WEAPON_DAMAGE_MODIFIER")
	static function resetAiMeleeWeaponDamageModifier():Dynamic;

	/**
	 * 
	 */
	@:native("RESET_GROUP_FORMATION_DEFAULT_SPACING")
	static function resetGroupFormationDefaultSpacing(groupHandle:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RESET_PED_IN_VEHICLE_CONTEXT")
	static function resetPedInVehicleContext(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * Resets the value for the last vehicle driven by the Ped.  
	 * ```
	 */
	@:native("RESET_PED_LAST_VEHICLE")
	static function resetPedLastVehicle(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("RESET_PED_STRAFE_CLIPSET")
	static function resetPedStrafeClipset(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("RESET_PED_MOVEMENT_CLIPSET")
	static function resetPedMovementClipset(ped:Dynamic, transitionSpeed:Float):Dynamic;

	/**
	 * 
	 */
	@:native("RESET_PED_RAGDOLL_TIMER")
	static function resetPedRagdollTimer(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("RESET_PED_VISIBLE_DAMAGE")
	static function resetPedVisibleDamage(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("RESET_PED_WEAPON_MOVEMENT_CLIPSET")
	static function resetPedWeaponMovementClipset(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * This function will simply bring the dead person back to life.
	 * Try not to use it alone, since using this function alone, will make peds fall through ground in hell(well for the most of the times).
	 * Instead, before calling this function, you may want to declare the position, where your Resurrected ped to be spawn at.(For instance, Around 2 floats of Player's current position.)
	 * Also, disabling any assigned task immediately helped in the number of scenarios, where If you want peds to perform certain decided tasks.
	 * ```
	 */
	@:native("RESURRECT_PED")
	static function resurrectPed(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * It will revive/cure the injured ped. The condition is ped must not be dead.  
	 * Upon setting and converting the health int, found, if health falls below 5, the ped will lay on the ground in pain(Maximum default health is 100).  
	 * This function is well suited there.  
	 * ```
	 */
	@:native("REVIVE_INJURED_PED")
	static function reviveInjuredPed(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SET_AMBIENT_PEDS_DROP_MONEY")
	static function setAmbientPedsDropMoney(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_AI_MELEE_WEAPON_DAMAGE_MODIFIER")
	static function setAiMeleeWeaponDamageModifier(modifier:Float):Dynamic;

	/**
	 * ```
	 * works with TASK::TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS to make a ped completely oblivious to all events going on around him
	 * ```
	 */
	@:native("SET_BLOCKING_OF_NON_TEMPORARY_EVENTS")
	static function setBlockingOfNonTemporaryEvents(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_AI_WEAPON_DAMAGE_MODIFIER")
	static function setAiWeaponDamageModifier(value:Float):Dynamic;

	/**
	 * Prevents ambient peds from dropping their weapons for the current frame.
	 * 
	 * ```
	 * NativeDB Introduced: v3258
	 * ```
	 */
	@:native("_SET_BLOCK_AMBIENT_PEDS_FROM_DROPPING_WEAPONS_THIS_FRAME")
	static function SetBlockAmbientPedsFromDroppingWeaponsThisFrame():Dynamic;

	/**
	 * 
	 */
	@:native("SET_CREATE_RANDOM_COPS")
	static function setCreateRandomCops(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_COMBAT_FLOAT")
	static function setCombatFloat(ped:Dynamic, combatType:Int, p2:Float):Dynamic;

	/**
	 * ```
	 * Setting ped to true allows the ped to shoot "friendlies".  
	 * p2 set to true when toggle is also true seams to make peds permanently unable to aim at, even if you set p2 back to false.  
	 * p1 = false & p2 = false for unable to aim at.  
	 * p1 = true & p2 = false for able to aim at.  
	 * ```
	 */
	@:native("SET_CAN_ATTACK_FRIENDLY")
	static function setCanAttackFriendly(ped:Dynamic, toggle:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CREATE_RANDOM_COPS_NOT_ON_SCENARIOS")
	static function setCreateRandomCopsNotOnScenarios(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CREATE_RANDOM_COPS_ON_SCENARIOS")
	static function setCreateRandomCopsOnScenarios(toggle:Bool):Dynamic;

	/**
	 * ```
	 * The function specifically verifies the value is equal to, or less than 1.0f. If it is greater than 1.0f, the function does nothing at all.  
	 * ```
	 */
	@:native("SET_DRIVER_ABILITY")
	static function setDriverAbility(driver:Dynamic, ability:Float):Dynamic;

	/**
	 * ```
	 * range 0.0f - 1.0f  
	 * ```
	 */
	@:native("SET_DRIVER_AGGRESSIVENESS")
	static function setDriverAggressiveness(driver:Dynamic, aggressiveness:Float):Dynamic;

	/**
	 * ```
	 * Scripts use 0.2, 0.5 and 1.0. Value must be >= 0.0 && <= 1.0
	 * ```
	 */
	@:native("SET_DRIVER_RACING_MODIFIER")
	static function setDriverRacingModifier(driver:Dynamic, modifier:Float):Dynamic;

	/**
	 * Used with [SET_ENABLE_HANDCUFFS](#\_0xDF1AF8B5D56542FA) in decompiled scripts. From my observations, I have noticed that while being ragdolled you are not able to get up but you can still run. Your legs can also bend.
	 */
	@:native("SET_ENABLE_BOUND_ANKLES")
	static function setEnableBoundAnkles(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENABLE_PED_ENVEFF_SCALE")
	static function setEnablePedEnveffScale(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_FACIAL_IDLE_ANIM_OVERRIDE")
	static function setFacialIdleAnimOverride(ped:Dynamic, animName:String, animDict:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_SET_ENABLE_SCUBA_GEAR_LIGHT")
	static function SetEnableScubaGearLight(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_GROUP_FORMATION_SPACING")
	static function setGroupFormationSpacing(groupId:Int, p1:Float, p2:Float, p3:Float):Dynamic;

	/**
	 * ```
	 * Enables diving motion when underwater.  
	 * ```
	 */
	@:native("SET_ENABLE_SCUBA")
	static function setEnableScuba(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * ped can not pull out a weapon when true  
	 * ```
	 */
	@:native("SET_ENABLE_HANDCUFFS")
	static function setEnableHandcuffs(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Clipsets:
	 * "facials@gen_female@base"
	 * "facials@gen_male@base"
	 * "facials@p_m_zero@base"
	 * 
	 * Typically followed with [SET_FACIAL_IDLE_ANIM_OVERRIDE](#\_0xFFC24B988B938B38):
	 * "mood_drunk\_1"
	 * "mood_stressed\_1"
	 * "mood_happy\_1"
	 * "mood_talking\_1"
	 * 
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_SET_FACIAL_CLIPSET_OVERRIDE")
	static function SetFacialClipsetOverride(ped:Dynamic, animDict:String):Dynamic;

	/**
	 * 
	 */
	@:native("SET_FORCE_FOOTSTEP_UPDATE")
	static function setForceFootstepUpdate(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Sets the IK target for a given IK part belonging to the ped.
	 * 
	 * **Please note:** The IK target will only be valid for one update, so it needs to be set for as long as it is needed (to avoid IK targets not being cleared and getting stuck enabled).
	 * 
	 * ```cpp
	 * enum eIkPart {
	 *   IK_PART_INVALID = 0,
	 *   // head
	 *   IK_PART_HEAD = 1,
	 *   // spine
	 *   IK_PART_SPINE = 2,
	 *   // Left Arm
	 *   IK_PART_ARM_LEFT = 3,
	 *   // Right Arm
	 *   IK_PART_ARM_RIGHT = 4,
	 *   // Left Leg
	 *   IK_PART_LEG_LEFT = 5,
	 *   // Right Leg
	 *   IK_PART_LEG_RIGHT = 6
	 * };
	 * 
	 * ```
	 * 
	 * ```cpp
	 * enum eIkTargetFlags {
	 *   ITF_DEFAULT = 0,
	 *   // arm target relative to the handbone
	 *   ITF_ARM_TARGET_WRT_HANDBON = 1,
	 *   // arm target relative to the pointhelper
	 *   ITF_ARM_TARGET_WRT_POINTHELPER = 2,
	 *   // arm target relative to the ikhelper
	 *   ITF_ARM_TARGET_WRT_IKHELPE = 4,
	 *   // use animation tags directly
	 *   ITF_IK_TAG_MODE_NORMAL = 8,
	 *   // use animation tags in ALLOW mode
	 *   ITF_IK_TAG_MODE_ALLOW = 16,
	 *   // use animation tags in BLOCK mode
	 *   ITF_IK_TAG_MODE_BLOCK = 32,
	 *   // solve for orientation in addition to position
	 *   ITF_ARM_USE_ORIENTATION = 64
	 * };
	 * 
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SET_IK_TARGET")
	static function setIkTarget(ped:Dynamic, ikIndex:Int, entityLookAt:Dynamic, boneLookAt:Int, offsetX:Float, offsetY:Float, offsetZ:Float, ikTargetFlags:Int, blendInDuration:Int, blendOutDuration:Int):Dynamic;

	/**
	 * ```
	 * 0: Freedom to move
	 * 1: Circle Around Leader
	 * 2: Alternative Circle Around Leader  
	 * 3: Line, with Leader at center  
	 * 4: Arrow Formation
	 * 5: "V" Formation
	 * 6: Line Follow Formation
	 * 7: Single Formation
	 * 8: Pairwise
	 * ```
	 */
	@:native("SET_GROUP_FORMATION")
	static function setGroupFormation(groupId:Int, formationType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_FORCE_STEP_TYPE")
	static function setForceStepType(ped:Dynamic, p1:Bool, type:Int, p3:Int):Dynamic;

	/**
	 * ```
	 * name: "MP_FEMALE_ACTION" found multiple times in the b617d scripts.
	 * ```
	 */
	@:native("SET_MOVEMENT_MODE_OVERRIDE")
	static function setMovementModeOverride(ped:Dynamic, name:String):Dynamic;

	/**
	 * ```
	 * Sets the range at which members will automatically leave the group.  
	 * ```
	 */
	@:native("SET_GROUP_SEPARATION_RANGE")
	static function setGroupSeparationRange(groupHandle:Int, separationRange:Float):Dynamic;

	/**
	 * ```
	 * accuracy = 0-100, 100 being perfectly accurate
	 * ```
	 */
	@:native("SET_PED_ACCURACY")
	static function setPedAccuracy(ped:Dynamic, accuracy:Int):Dynamic;

	/**
	 * Preview: https://gfycat.com/MaleRareAmazonparrot
	 */
	@:native("SET_HEAD_BLEND_PALETTE_COLOR")
	static function setHeadBlendPaletteColor(ped:Dynamic, r:Int, g:Int, b:Int, id:Int):Dynamic;

	/**
	 * ```
	 * stance:  
	 * 0 = idle  
	 * 1 = walk  
	 * 2 = running  
	 * p5 = usually set to true  
	 * ```
	 * 
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("SET_PED_ALTERNATE_MOVEMENT_ANIM")
	static function setPedAlternateMovementAnim(ped:Dynamic, stance:Int, animDictionary:String, animationName:String, p4:Float, p5:Bool):Dynamic;

	/**
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("SET_PED_ALTERNATE_WALK_ANIM")
	static function setPedAlternateWalkAnim(ped:Dynamic, animDict:String, animName:String, p3:Float, p4:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_ALLOWED_TO_DUCK")
	static function setPedAllowedToDuck(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * value ranges from 0 to 3.  
	 * ```
	 */
	@:native("SET_PED_ALERTNESS")
	static function setPedAlertness(ped:Dynamic, value:Int):Dynamic;

	/**
	 * ```
	 * Turns the desired ped into a cop. If you use this on the player ped, you will become almost invisible to cops dispatched for you. You will also report your own crimes, get a generic cop voice, get a cop-vision-cone on the radar, and you will be unable to shoot at other cops. SWAT and Army will still shoot at you. Toggling ped as "false" has no effect; you must change p0's ped model to disable the effect.  
	 * ```
	 */
	@:native("SET_PED_AS_COP")
	static function setPedAsCop(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sets the armor of the specified ped.  
	 * ped: The Ped to set the armor of.  
	 * amount: A value between 0 and 100 indicating the value to set the Ped's armor to.  
	 * ```
	 */
	@:native("SET_PED_ARMOUR")
	static function setPedArmour(ped:Dynamic, amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_ALLOW_VEHICLES_OVERRIDE")
	static function setPedAllowVehiclesOverride(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_ANGLED_DEFENSIVE_AREA")
	static function setPedAngledDefensiveArea(ped:Dynamic, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Float, p7:Float, p8:Bool, p9:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_AS_GROUP_MEMBER")
	static function setPedAsGroupMember(ped:Dynamic, groupId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_BLEND_FROM_PARENTS")
	static function setPedBlendFromParents(ped:Dynamic, father:Dynamic, mother:Dynamic, fathersSide:Float, mothersSide:Float):Dynamic;

	/**
	 * ```
	 * Enable/disable ped shadow (ambient occlusion). https://gfycat.com/thankfulesteemedgecko
	 * ```
	 */
	@:native("SET_PED_AO_BLOB_RENDERING")
	static function setPedAoBlobRendering(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_AS_GROUP_LEADER")
	static function setPedAsGroupLeader(ped:Dynamic, groupId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_BOUNDS_ORIENTATION")
	static function setPedBoundsOrientation(ped:Dynamic, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_ARM_IK")
	static function setPedCanArmIk(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_AS_ENEMY")
	static function setPedAsEnemy(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * state: https://alloc8or.re/gta5/doc/enums/eKnockOffVehicle.txt
	 * ```
	 */
	@:native("SET_PED_CAN_BE_KNOCKED_OFF_VEHICLE")
	static function setPedCanBeKnockedOffVehicle(ped:Dynamic, state:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_BE_SHOT_IN_VEHICLE")
	static function setPedCanBeShotInVehicle(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_BLOCKS_PATHING_WHEN_DEAD")
	static function setPedBlocksPathingWhenDead(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_BE_TARGETED_WITHOUT_LOS")
	static function setPedCanBeTargetedWithoutLos(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_BE_DRAGGED_OUT")
	static function setPedCanBeDraggedOut(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_BE_TARGETTED")
	static function setPedCanBeTargetted(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_BE_TARGETED_WHEN_INJURED")
	static function setPedCanBeTargetedWhenInjured(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_BE_TARGETTED_BY_TEAM")
	static function setPedCanBeTargettedByTeam(ped:Dynamic, team:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_BE_TARGETTED_BY_PLAYER")
	static function setPedCanBeTargettedByPlayer(ped:Dynamic, player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_EVASIVE_DIVE")
	static function setPedCanEvasiveDive(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * It simply makes the said ped to cower behind cover object(wall, desk, car)  
	 * Peds flee attributes must be set to not to flee, first. Else, most of the peds, will just flee from gunshot sounds or any other panic situations.  
	 * ```
	 */
	@:native("SET_PED_CAN_COWER_IN_COVER")
	static function setPedCanCowerInCover(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_PLAY_AMBIENT_BASE_ANIMS")
	static function setPedCanPlayAmbientBaseAnims(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * It makes the ped lose (or not lose) their props (like glasses or helmets/hat) when someone punches or pushes the ped.
	 * This is probably what's being used in GTA:O to keep players from knocking other player's hats/glasses off when in combat.
	 */
	@:native("SET_PED_CAN_LOSE_PROPS_ON_DAMAGE")
	static function setPedCanLosePropsOnDamage(ped:Dynamic, loseProps:Bool, p2:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_HEAD_IK")
	static function setPedCanHeadIk(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_LEG_IK")
	static function setPedCanLegIk(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_PLAY_AMBIENT_ANIMS")
	static function setPedCanPlayAmbientAnims(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_PLAY_GESTURE_ANIMS")
	static function setPedCanPlayGestureAnims(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_PED_CAN_PLAY_INJURED_ANIMS")
	static function SetPedCanPlayInjuredAnims(ped:Dynamic, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_PEEK_IN_COVER")
	static function setPedCanPeekInCover(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_RAGDOLL")
	static function setPedCanRagdoll(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * p2 usually 0  
	 * ```
	 */
	@:native("SET_PED_CAN_PLAY_VISEME_ANIMS")
	static function setPedCanPlayVisemeAnims(ped:Dynamic, toggle:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_SWITCH_WEAPON")
	static function setPedCanSwitchWeapon(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_RAGDOLL_FROM_PLAYER_IMPACT")
	static function setPedCanRagdollFromPlayerImpact(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_TORSO_VEHICLE_IK")
	static function setPedCanTorsoVehicleIk(ped:Dynamic, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_TORSO_IK")
	static function setPedCanTorsoIk(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * This only will teleport the ped to the group leader if the group leader teleports (sets coords).  
	 * Only works in singleplayer  
	 * ```
	 */
	@:native("SET_PED_CAN_TELEPORT_TO_GROUP_LEADER")
	static function setPedCanTeleportToGroupLeader(pedHandle:Dynamic, groupHandle:Int, toggle:Bool):Dynamic;

	/**
	 * ```
	 * 100 would equal attack  
	 * less then 50ish would mean run away  
	 * Only the values 0, 1 and 2 occur in the decompiled scripts. Most likely refers directly to the values also described in combatbehaviour.meta:  
	 * 0: CA_Poor  
	 * 1: CA_Average  
	 * 2: CA_Professional  
	 * Tested this and got the same results as the first explanation here. Could not find any difference between 0, 1 and 2.  
	 * ```
	 */
	@:native("SET_PED_COMBAT_ABILITY")
	static function setPedCombatAbility(ped:Dynamic, p1:Int):Dynamic;

	/**
	 * ```
	 * Overrides the ped's collision capsule radius for the current tick.  
	 * Must be called every tick to be effective.  
	 * Setting this to 0.001 will allow warping through some objects.  
	 * ```
	 */
	@:native("SET_PED_CAPSULE")
	static function setPedCapsule(ped:Dynamic, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_USE_AUTO_CONVERSATION_LOOKAT")
	static function setPedCanUseAutoConversationLookat(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_SMASH_GLASS")
	static function setPedCanSmashGlass(ped:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CLOTH_PRONE")
	static function setPedClothProne(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * These combat attributes seem to be the same as the BehaviourFlags from combatbehaviour.meta.
	 * 
	 * So far, these are the equivalents found:
	 * 
	 * ```cpp
	 * enum eCombatAttribute
	 * {
	 *   CA_INVALID = -1,	
	 *   // AI will only use cover if this is set
	 *   CA_USE_COVER = 0,
	 *   // AI will only use vehicles if this is set
	 *   CA_USE_VEHICLE = 1,
	 *   // AI will only driveby from a vehicle if this is set
	 *   CA_DO_DRIVEBYS = 2,
	 *   // Will be forced to stay in a ny vehicel if this isn't set
	 *   CA_LEAVE_VEHICLES = 3,
	 *   // This ped can make decisions on whether to strafe or not based on distance to destination, recent bullet events, etc.
	 *   CA_CAN_USE_DYNAMIC_STRAFE_DECISIONS	= 4,
	 *   // Ped will always fight upon getting threat response task
	 *   CA_ALWAYS_FIGHT = 5,
	 *   // If in combat and in a vehicle, the ped will flee rather than attacking
	 *   CA_FLEE_WHILST_IN_VEHICLE = 6,
	 *   // If in combat and chasing in a vehicle, the ped will keep a distance behind rather than ramming
	 *   CA_JUST_FOLLOW_VEHICLE = 7,
	 *   // Deprecated
	 *   CA_PLAY_REACTION_ANIMS = 8,
	 *   // Peds will scan for and react to dead peds found
	 *   CA_WILL_SCAN_FOR_DEAD_PEDS = 9,
	 *   // Deprecated
	 *   CA_IS_A_GUARD = 10,
	 *   // The ped will seek cover only 
	 *   CA_JUST_SEEK_COVER = 11,
	 *   // Ped will only blind fire when in cover
	 *   CA_BLIND_FIRE_IN_COVER = 12,
	 *   // Ped may advance
	 *   CA_AGGRESSIVE = 13,
	 *   // Ped can investigate events such as distant gunfire, footsteps, explosions etc
	 *   CA_CAN_INVESTIGATE = 14,
	 *   // Ped can use a radio to call for backup (happens after a reaction)
	 *   CA_CAN_USE_RADIO = 15,
	 *   // Deprecated
	 *   CA_CAN_CAPTURE_ENEMY_PEDS = 16,
	 *   // Ped will always flee upon getting threat response task
	 *   CA_ALWAYS_FLEE = 17,
	 *   // Ped can do unarmed taunts in vehicle
	 *   CA_CAN_TAUNT_IN_VEHICLE = 20,
	 *   // Ped will be able to chase their targets if both are on foot and the target is running away
	 *   CA_CAN_CHASE_TARGET_ON_FOOT = 21,
	 *   // Ped can drag injured peds to safety
	 *   CA_WILL_DRAG_INJURED_PEDS_TO_SAFETY = 22,
	 *   // Ped will require LOS to the target it is aiming at before shooting
	 *   CA_REQUIRES_LOS_TO_SHOOT = 23,
	 *   // Ped is allowed to use proximity based fire rate (increasing fire rate at closer distances)
	 *   CA_USE_PROXIMITY_FIRING_RATE = 24,
	 *   // Normally peds can switch briefly to a secondary target in combat, setting this will prevent that
	 *   CA_DISABLE_SECONDARY_TARGET = 25,
	 *   // This will disable the flinching combat entry reactions for peds, instead only playing the turn and aim anims
	 *   CA_DISABLE_ENTRY_REACTIONS = 26,
	 *   // Force ped to be 100% accurate in all situations (added by Jay Reinebold)
	 *   CA_PERFECT_ACCURACY = 27,
	 *   // If we don't have cover and can't see our target it's possible we will advance, even if the target is in cover
	 *   CA_CAN_USE_FRUSTRATED_ADVANCE	= 28,
	 *   // This will have the ped move to defensive areas and within attack windows before performing the cover search
	 *   CA_MOVE_TO_LOCATION_BEFORE_COVER_SEARCH = 29,
	 *   // Allow shooting of our weapon even if we don't have LOS (this isn't X-ray vision as it only affects weapon firing)
	 *   CA_CAN_SHOOT_WITHOUT_LOS = 30,
	 *   // Ped will try to maintain a min distance to the target, even if using defensive areas (currently only for cover finding + usage) 
	 *   CA_MAINTAIN_MIN_DISTANCE_TO_TARGET = 31,
	 *   // Allows ped to use steamed variations of peeking anims
	 *   CA_CAN_USE_PEEKING_VARIATIONS	= 34,
	 *   // Disables pinned down behaviors
	 *   CA_DISABLE_PINNED_DOWN = 35,
	 *   // Disables pinning down others
	 *   CA_DISABLE_PIN_DOWN_OTHERS = 36,
	 *   // When defensive area is reached the area is cleared and the ped is set to use defensive combat movement
	 *   CA_OPEN_COMBAT_WHEN_DEFENSIVE_AREA_IS_REACHED = 37,
	 *   // Disables bullet reactions
	 *   CA_DISABLE_BULLET_REACTIONS = 38,
	 *   // Allows ped to bust the player
	 *   CA_CAN_BUST = 39,
	 *   // This ped is ignored by other peds when wanted
	 *   CA_IGNORED_BY_OTHER_PEDS_WHEN_WANTED = 40,
	 *   // Ped is allowed to "jack" vehicles when needing to chase a target in combat
	 *   CA_CAN_COMMANDEER_VEHICLES = 41,
	 *   // Ped is allowed to flank
	 *   CA_CAN_FLANK = 42,
	 *   // Ped will switch to advance if they can't find cover
	 *   CA_SWITCH_TO_ADVANCE_IF_CANT_FIND_COVER = 43,
	 *   // Ped will switch to defensive if they are in cover
	 *   CA_SWITCH_TO_DEFENSIVE_IF_IN_COVER = 44,
	 *   // Ped will clear their primary defensive area when it is reached
	 *   CA_CLEAR_PRIMARY_DEFENSIVE_AREA_WHEN_REACHED = 45,
	 *   // Ped is allowed to fight armed peds when not armed
	 *   CA_CAN_FIGHT_ARMED_PEDS_WHEN_NOT_ARMED = 46,
	 *   // Ped is not allowed to use tactical points if set to use defensive movement (will only use cover)
	 *   CA_ENABLE_TACTICAL_POINTS_WHEN_DEFENSIVE = 47,
	 *   // Ped cannot adjust cover arcs when testing cover safety (atm done on corner cover points when  ped usingdefensive area + no LOS)
	 *   CA_DISABLE_COVER_ARC_ADJUSTMENTS = 48,
	 *   // Ped may use reduced accuracy with large number of enemies attacking the same local player target
	 *   CA_USE_ENEMY_ACCURACY_SCALING	= 49,
	 *   // Ped is allowed to charge the enemy position
	 *   CA_CAN_CHARGE = 50,
	 *   // When defensive area is reached the area is cleared and the ped is set to use will advance movement
	 *   CA_REMOVE_AREA_SET_WILL_ADVANCE_WHEN_DEFENSIVE_AREA_REACHED = 51,
	 *   // Use the vehicle attack mission during combat (only works on driver)
	 *   CA_USE_VEHICLE_ATTACK = 52,
	 *   // Use the vehicle attack mission during combat if the vehicle has mounted guns (only works on driver)
	 *   CA_USE_VEHICLE_ATTACK_IF_VEHICLE_HAS_MOUNTED_GUNS = 53,
	 *   // Always equip best weapon in combat
	 *   CA_ALWAYS_EQUIP_BEST_WEAPON = 54,
	 *   // Ignores in water at depth visibility check
	 *   CA_CAN_SEE_UNDERWATER_PEDS = 55,
	 *   // Will prevent this ped from aiming at any AI targets that are in helicopters
	 *   CA_DISABLE_AIM_AT_AI_TARGETS_IN_HELIS = 56,
	 *   // Disables peds seeking due to no clear line of sight
	 *   CA_DISABLE_SEEK_DUE_TO_LINE_OF_SIGHT = 57,
	 *   // To be used when releasing missions peds if we don't want them fleeing from combat (mission peds already prevent flee)
	 *   CA_DISABLE_FLEE_FROM_COMBAT = 58,
	 *   // Disables target changes during vehicle pursuit
	 *   CA_DISABLE_TARGET_CHANGES_DURING_VEHICLE_PURSUIT = 59,
	 *   // Ped may throw a smoke grenade at player loitering in combat
	 *   CA_CAN_THROW_SMOKE_GRENADE = 60,
	 *   // Will clear a set defensive area if that area cannot be reached
	 *   CA_CLEAR_AREA_SET_DEFENSIVE_IF_DEFENSIVE_CANNOT_BE_REACHED = 62,
	 *   // Disable block from pursue during vehicle chases
	 *   CA_DISABLE_BLOCK_FROM_PURSUE_DURING_VEHICLE_CHASE = 64,
	 *   // Disable spin out during vehicle chases
	 *   CA_DISABLE_SPIN_OUT_DURING_VEHICLE_CHASE = 65,
	 *   // Disable cruise in front during block during vehicle chases
	 *   CA_DISABLE_CRUISE_IN_FRONT_DURING_BLOCK_DURING_VEHICLE_CHASE = 66,
	 *   // Makes it more likely that the ped will continue targeting a target with blocked los for a few seconds
	 *   CA_CAN_IGNORE_BLOCKED_LOS_WEIGHTING = 67,
	 *   // Disables the react to buddy shot behaviour.
	 *   CA_DISABLE_REACT_TO_BUDDY_SHOT = 68,
	 *   // Prefer pathing using navmesh over road nodes
	 *   CA_PREFER_NAVMESH_DURING_VEHICLE_CHASE = 69,
	 *   // Ignore road edges when avoiding
	 *   CA_ALLOWED_TO_AVOID_OFFROAD_DURING_VEHICLE_CHASE = 70,
	 *   // Permits ped to charge a target outside the assigned defensive area.
	 *   CA_PERMIT_CHARGE_BEYOND_DEFENSIVE_AREA = 71,
	 *   // This ped will switch to an RPG if target is in a vehicle, otherwise will use alternate weapon.
	 *   CA_USE_ROCKETS_AGAINST_VEHICLES_ONLY = 72,
	 *   // Disables peds moving to a tactical point without clear los
	 *   CA_DISABLE_TACTICAL_POINTS_WITHOUT_CLEAR_LOS = 73,
	 *   // Disables pull alongside during vehicle chase
	 *   CA_DISABLE_PULL_ALONGSIDE_DURING_VEHICLE_CHASE = 74,
	 *   // If set on a ped, they will not flee when all random peds flee is set to TRUE (they are still able to flee due to other reasons)
	 *   CA_DISABLE_ALL_RANDOMS_FLEE = 78,
	 *   // This ped will send out a script DeadPedSeenEvent when they see a dead ped
	 *   CA_WILL_GENERATE_DEAD_PED_SEEN_SCRIPT_EVENTS = 79,
	 *   // This will use the receiving peds sense range rather than the range supplied to the communicate event
	 *   CA_USE_MAX_SENSE_RANGE_WHEN_RECEIVING_EVENTS = 80,
	 *   // When aiming from a vehicle the ped will only aim at targets on his side of the vehicle
	 *   CA_RESTRICT_IN_VEHICLE_AIMING_TO_CURRENT_SIDE = 81,
	 *   // LOS to the target is blocked we return to our default position and direction until we have LOS (no aiming)
	 *   CA_USE_DEFAULT_BLOCKED_LOS_POSITION_AND_DIRECTION = 82,
	 *   // LOS to the target is blocked we return to our default position and direction until we have LOS (no aiming)
	 *   CA_REQUIRES_LOS_TO_AIM = 83,
	 *   // Allow vehicles spawned infront of target facing away to enter cruise and wait to block approaching target
	 *   CA_CAN_CRUISE_AND_BLOCK_IN_VEHICLE = 84,
	 *   // Peds flying aircraft will prefer to target other aircraft over entities on the ground
	 *   CA_PREFER_AIR_COMBAT_WHEN_IN_AIRCRAFT = 85,
	 *   //Allow peds flying aircraft to use dog fighting behaviours
	 *   CA_ALLOW_DOG_FIGHTING = 86,
	 *   // This will make the weight of targets who aircraft vehicles be reduced greatly compared to targets on foot or in ground based vehicles
	 *   CA_PREFER_NON_AIRCRAFT_TARGETS = 87,
	 *   //When peds are tasked to go to combat, they keep searching for a known target for a while before forcing an unknown one
	 *   CA_PREFER_KNOWN_TARGETS_WHEN_COMBAT_CLOSEST_TARGET = 88,
	 *   // Only allow mounted weapons to fire if within the correct attack angle (default 25-degree cone). On a flag in order to keep exiting behaviour and only fix in specific cases.
	 *   CA_FORCE_CHECK_ATTACK_ANGLE_FOR_MOUNTED_GUNS = 89,
	 *   // Blocks the firing state for passenger-controlled mounted weapons. Existing flags CA_USE_VEHICLE_ATTACK and CA_USE_VEHICLE_ATTACK_IF_VEHICLE_HAS_MOUNTED_GUNS only work for drivers.
	 *   CA_BLOCK_FIRE_FOR_VEHICLE_PASSENGER_MOUNTED_GUNS = 90 
	 * };
	 * ```
	 */
	@:native("SET_PED_COMBAT_ATTRIBUTES")
	static function setPedCombatAttributes(ped:Dynamic, attributeIndex:Int, enabled:Bool):Dynamic;

	/**
	 * This native is used to set component variation on a ped. Components, drawables and textures IDs are related to the ped model.
	 * 
	 * ### MP Freemode list of components
	 * 
	 * **0**: Face
	 * **1**: Mask
	 * **2**: Hair
	 * **3**: Torso
	 * **4**: Leg
	 * **5**: Parachute / bag
	 * **6**: Shoes
	 * **7**: Accessory
	 * **8**: Undershirt
	 * **9**: Kevlar
	 * **10**: Badge
	 * **11**: Torso 2
	 * 
	 * List of Component IDs
	 * 
	 * ```cpp
	 * // Components
	 * enum ePedVarComp
	 * {
	 *     PV_COMP_INVALID = 0xFFFFFFFF,
	 *     PV_COMP_HEAD = 0, // "HEAD"
	 *     PV_COMP_BERD = 1, // "BEARD"
	 *     PV_COMP_HAIR = 2, // "HAIR"
	 *     PV_COMP_UPPR = 3, // "UPPER"
	 *     PV_COMP_LOWR = 4, // "LOWER"
	 *     PV_COMP_HAND = 5, // "HAND"
	 *     PV_COMP_FEET = 6, // "FEET"
	 *     PV_COMP_TEEF = 7, // "TEETH"
	 *     PV_COMP_ACCS = 8, // "ACCESSORIES"
	 *     PV_COMP_TASK = 9, // "TASK"
	 *     PV_COMP_DECL = 10, // "DECL"
	 *     PV_COMP_JBIB = 11, // "JBIB"
	 *     PV_COMP_MAX = 12,
	 * };
	 * ```
	 */
	@:native("SET_PED_COMPONENT_VARIATION")
	static function setPedComponentVariation(ped:Dynamic, componentId:Int, drawableId:Int, textureId:Int, paletteId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CAN_TORSO_REACT_IK")
	static function setPedCanTorsoReactIk(ped:Dynamic, p1:Bool):Dynamic;

	/**
	 * ```
	 * teleports ped to coords along with the vehicle ped is in  
	 * ```
	 */
	@:native("SET_PED_COORDS_KEEP_VEHICLE")
	static function setPedCoordsKeepVehicle(ped:Dynamic, posX:Float, posY:Float, posZ:Float):Dynamic;

	/**
	 * Define the scope within which the ped will engage in combat with the target.
	 * 
	 * ```cpp
	 * enum eCombatRange {
	 *     CR_NEAR = 0, // keeps within 5-15m
	 *     CR_MEDIUM = 1, // keeps within 7-30m
	 *     CR_FAR = 2, // keeps within 15-40m
	 *     CR_VERY_FAR = 3 // keeps within 22-45m
	 * };
	 * ```
	 */
	@:native("SET_PED_COMBAT_RANGE")
	static function setPedCombatRange(ped:Dynamic, range:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_COORDS_NO_GANG")
	static function setPedCoordsNoGang(ped:Dynamic, posX:Float, posY:Float, posZ:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_CLOTH_PACKAGE_INDEX")
	static function setPedClothPackageIndex(ped:Dynamic, p1:Int):Dynamic;

	/**
	 * ```
	 * Sets Ped Default Clothes  
	 * ```
	 */
	@:native("SET_PED_DEFAULT_COMPONENT_VARIATION")
	static function setPedDefaultComponentVariation(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * 0 - Stationary (Will just stand in place)  
	 * 1 - Defensive (Will try to find cover and very likely to blind fire)  
	 * 2 - Offensive (Will attempt to charge at enemy but take cover as well)  
	 * 3 - Suicidal Offensive (Will try to flank enemy in a suicidal attack)  
	 * ```
	 */
	@:native("SET_PED_COMBAT_MOVEMENT")
	static function setPedCombatMovement(ped:Dynamic, combatMovement:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_DEFENSIVE_AREA_DIRECTION")
	static function setPedDefensiveAreaDirection(ped:Dynamic, p1:Float, p2:Float, p3:Float, p4:Bool):Dynamic;

	/**
	 * ```
	 * p1: Only "CODE_HUMAN_STAND_COWER" found in the b617d scripts.  
	 * ```
	 */
	@:native("SET_PED_COWER_HASH")
	static function setPedCowerHash(ped:Dynamic, p1:String):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_DEFENSIVE_SPHERE_ATTACHED_TO_PED")
	static function setPedDefensiveSphereAttachedToPed(ped:Dynamic, target:Dynamic, xOffset:Float, yOffset:Float, zOffset:Float, radius:Float, p6:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_DEFENSIVE_SPHERE_ATTACHED_TO_VEHICLE")
	static function setPedDefensiveSphereAttachedToVehicle(ped:Dynamic, target:Dynamic, xOffset:Float, yOffset:Float, zOffset:Float, radius:Float, p6:Bool):Dynamic;

	/**
	 * **Usage:** Call this native every frame
	 */
	@:native("SET_PED_DENSITY_MULTIPLIER_THIS_FRAME")
	static function setPedDensityMultiplierThisFrame(multiplier:Float):Dynamic;

	/**
	 * ```cpp
	 * // Potential names and hash collisions included as comments
	 * enum ePedConfigFlags {
	 * 	CPED_CONFIG_FLAG_CreatedByFactory = 0,
	 * 	CPED_CONFIG_FLAG_CanBeShotInVehicle = 1,
	 * 	CPED_CONFIG_FLAG_NoCriticalHits = 2,
	 * 	CPED_CONFIG_FLAG_DrownsInWater = 3,
	 * 	CPED_CONFIG_FLAG_DrownsInSinkingVehicle = 4,
	 * 	CPED_CONFIG_FLAG_DiesInstantlyWhenSwimming = 5,
	 * 	CPED_CONFIG_FLAG_HasBulletProofVest = 6,
	 * 	CPED_CONFIG_FLAG_UpperBodyDamageAnimsOnly = 7,
	 * 	CPED_CONFIG_FLAG_NeverFallOffSkis = 8,
	 * 	CPED_CONFIG_FLAG_NeverEverTargetThisPed = 9,
	 * 	CPED_CONFIG_FLAG_ThisPedIsATargetPriority = 10,
	 * 	CPED_CONFIG_FLAG_TargettableWithNoLos = 11,
	 * 	CPED_CONFIG_FLAG_DoesntListenToPlayerGroupCommands = 12,
	 * 	CPED_CONFIG_FLAG_NeverLeavesGroup = 13,
	 * 	CPED_CONFIG_FLAG_DoesntDropWeaponsWhenDead = 14,
	 * 	CPED_CONFIG_FLAG_SetDelayedWeaponAsCurrent = 15,
	 * 	CPED_CONFIG_FLAG_KeepTasksAfterCleanUp = 16,
	 * 	CPED_CONFIG_FLAG_BlockNonTemporaryEvents = 17,
	 * 	CPED_CONFIG_FLAG_HasAScriptBrain = 18,
	 * 	CPED_CONFIG_FLAG_WaitingForScriptBrainToLoad = 19,
	 * 	CPED_CONFIG_FLAG_AllowMedicsToReviveMe = 20,
	 * 	CPED_CONFIG_FLAG_MoneyHasBeenGivenByScript = 21,
	 * 	CPED_CONFIG_FLAG_NotAllowedToCrouch = 22,
	 * 	CPED_CONFIG_FLAG_DeathPickupsPersist = 23,
	 * 	CPED_CONFIG_FLAG_IgnoreSeenMelee = 24,
	 * 	CPED_CONFIG_FLAG_ForceDieIfInjured = 25,
	 * 	CPED_CONFIG_FLAG_DontDragMeOutCar = 26,
	 * 	CPED_CONFIG_FLAG_StayInCarOnJack = 27,
	 * 	CPED_CONFIG_FLAG_ForceDieInCar = 28,
	 * 	CPED_CONFIG_FLAG_GetOutUndriveableVehicle = 29,
	 * 	CPED_CONFIG_FLAG_WillRemainOnBoatAfterMissionEnds = 30,
	 * 	CPED_CONFIG_FLAG_DontStoreAsPersistent = 31,
	 * 	CPED_CONFIG_FLAG_WillFlyThroughWindscreen = 32,
	 * 	CPED_CONFIG_FLAG_DieWhenRagdoll = 33,
	 * 	CPED_CONFIG_FLAG_HasHelmet = 34,
	 * 	CPED_CONFIG_FLAG_UseHelmet = 35,
	 * 	CPED_CONFIG_FLAG_DontTakeOffHelmet = 36,
	 * 	CPED_CONFIG_FLAG_HideInCutscene = 37,
	 * 	CPED_CONFIG_FLAG_PedIsEnemyToPlayer = 38,
	 * 	CPED_CONFIG_FLAG_DisableEvasiveDives = 39,
	 * 	CPED_CONFIG_FLAG_PedGeneratesDeadBodyEvents = 40,
	 * 	CPED_CONFIG_FLAG_DontAttackPlayerWithoutWantedLevel = 41,
	 * 	CPED_CONFIG_FLAG_DontInfluenceWantedLevel = 42,
	 * 	CPED_CONFIG_FLAG_DisablePlayerLockon = 43,
	 * 	CPED_CONFIG_FLAG_DisableLockonToRandomPeds = 44,
	 * 	CPED_CONFIG_FLAG_AllowLockonToFriendlyPlayers = 45,
	 * 	_0xDB115BFA = 46,
	 * 	CPED_CONFIG_FLAG_PedBeingDeleted = 47,
	 * 	CPED_CONFIG_FLAG_BlockWeaponSwitching = 48,
	 * 	CPED_CONFIG_FLAG_BlockGroupPedAimedAtResponse = 49,
	 * 	CPED_CONFIG_FLAG_WillFollowLeaderAnyMeans = 50,
	 * 	CPED_CONFIG_FLAG_BlippedByScript = 51,
	 * 	CPED_CONFIG_FLAG_DrawRadarVisualField = 52,
	 * 	CPED_CONFIG_FLAG_StopWeaponFiringOnImpact = 53,
	 * 	CPED_CONFIG_FLAG_DissableAutoFallOffTests = 54,
	 * 	CPED_CONFIG_FLAG_SteerAroundDeadBodies = 55,
	 * 	CPED_CONFIG_FLAG_ConstrainToNavMesh = 56,
	 * 	CPED_CONFIG_FLAG_SyncingAnimatedProps = 57,
	 * 	CPED_CONFIG_FLAG_IsFiring = 58,
	 * 	CPED_CONFIG_FLAG_WasFiring = 59,
	 * 	CPED_CONFIG_FLAG_IsStanding = 60,
	 * 	CPED_CONFIG_FLAG_WasStanding = 61,
	 * 	CPED_CONFIG_FLAG_InVehicle = 62,
	 * 	CPED_CONFIG_FLAG_OnMount = 63,
	 * 	CPED_CONFIG_FLAG_AttachedToVehicle = 64,
	 * 	CPED_CONFIG_FLAG_IsSwimming = 65,
	 * 	CPED_CONFIG_FLAG_WasSwimming = 66,
	 * 	CPED_CONFIG_FLAG_IsSkiing = 67,
	 * 	CPED_CONFIG_FLAG_IsSitting = 68,
	 * 	CPED_CONFIG_FLAG_KilledByStealth = 69,
	 * 	CPED_CONFIG_FLAG_KilledByTakedown = 70,
	 * 	CPED_CONFIG_FLAG_Knockedout = 71,
	 * 	CPED_CONFIG_FLAG_ClearRadarBlipOnDeath = 72,
	 * 	CPED_CONFIG_FLAG_JustGotOffTrain = 73,
	 * 	CPED_CONFIG_FLAG_JustGotOnTrain = 74,
	 * 	CPED_CONFIG_FLAG_UsingCoverPoint = 75,
	 * 	CPED_CONFIG_FLAG_IsInTheAir = 76,
	 * 	CPED_CONFIG_FLAG_KnockedUpIntoAir = 77,
	 * 	CPED_CONFIG_FLAG_IsAimingGun = 78,
	 * 	CPED_CONFIG_FLAG_HasJustLeftCar = 79,
	 * 	CPED_CONFIG_FLAG_TargetWhenInjuredAllowed = 80,
	 * 	CPED_CONFIG_FLAG_CurrLeftFootCollNM = 81,
	 * 	CPED_CONFIG_FLAG_PrevLeftFootCollNM = 82,
	 * 	CPED_CONFIG_FLAG_CurrRightFootCollNM = 83,
	 * 	CPED_CONFIG_FLAG_PrevRightFootCollNM = 84,
	 * 	CPED_CONFIG_FLAG_HasBeenBumpedInCar = 85,
	 * 	CPED_CONFIG_FLAG_InWaterTaskQuitToClimbLadder = 86,
	 * 	CPED_CONFIG_FLAG_NMTwoHandedWeaponBothHandsConstrained = 87,
	 * 	CPED_CONFIG_FLAG_CreatedBloodPoolTimer = 88,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollFromAnyPedImpact = 89,
	 * 	CPED_CONFIG_FLAG_GroupPedFailedToEnterCover = 90,
	 * 	CPED_CONFIG_FLAG_AlreadyChattedOnPhone = 91,
	 * 	CPED_CONFIG_FLAG_AlreadyReactedToPedOnRoof = 92,
	 * 	CPED_CONFIG_FLAG_ForcePedLoadCover = 93,
	 * 	CPED_CONFIG_FLAG_BlockCoweringInCover = 94,
	 * 	CPED_CONFIG_FLAG_BlockPeekingInCover = 95,
	 * 	CPED_CONFIG_FLAG_JustLeftCarNotCheckedForDoors = 96,
	 * 	CPED_CONFIG_FLAG_VaultFromCover = 97,
	 * 	CPED_CONFIG_FLAG_AutoConversationLookAts = 98,
	 * 	CPED_CONFIG_FLAG_UsingCrouchedPedCapsule = 99,
	 * 	CPED_CONFIG_FLAG_HasDeadPedBeenReported = 100,
	 * 	CPED_CONFIG_FLAG_ForcedAim = 101,
	 * 	CPED_CONFIG_FLAG_SteersAroundPeds = 102,
	 * 	CPED_CONFIG_FLAG_SteersAroundObjects = 103,
	 * 	CPED_CONFIG_FLAG_OpenDoorArmIK = 104,
	 * 	CPED_CONFIG_FLAG_ForceReload = 105,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollFromVehicleImpact = 106,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollFromBulletImpact = 107,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollFromExplosions = 108,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollFromFire = 109,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollFromElectrocution = 110,
	 * 	CPED_CONFIG_FLAG_IsBeingDraggedToSafety = 111,
	 * 	CPED_CONFIG_FLAG_HasBeenDraggedToSafety = 112,
	 * 	CPED_CONFIG_FLAG_KeepWeaponHolsteredUnlessFired = 113,
	 * 	CPED_CONFIG_FLAG_ForceScriptControlledKnockout = 114,
	 * 	CPED_CONFIG_FLAG_FallOutOfVehicleWhenKilled = 115,
	 * 	CPED_CONFIG_FLAG_GetOutBurningVehicle = 116,
	 * 	CPED_CONFIG_FLAG_BumpedByPlayer = 117,
	 * 	CPED_CONFIG_FLAG_RunFromFiresAndExplosions = 118,
	 * 	CPED_CONFIG_FLAG_TreatAsPlayerDuringTargeting = 119,
	 * 	CPED_CONFIG_FLAG_IsHandCuffed = 120,
	 * 	CPED_CONFIG_FLAG_IsAnkleCuffed = 121,
	 * 	CPED_CONFIG_FLAG_DisableMelee = 122,
	 * 	CPED_CONFIG_FLAG_DisableUnarmedDrivebys = 123,
	 * 	CPED_CONFIG_FLAG_JustGetsPulledOutWhenElectrocuted = 124,
	 * 	CPED_CONFIG_FLAG_UNUSED_REPLACE_ME = 125,
	 * 	CPED_CONFIG_FLAG_WillNotHotwireLawEnforcementVehicle = 126,
	 * 	CPED_CONFIG_FLAG_WillCommandeerRatherThanJack = 127,
	 * 	CPED_CONFIG_FLAG_CanBeAgitated = 128,
	 * 	CPED_CONFIG_FLAG_ForcePedToFaceLeftInCover = 129,
	 * 	CPED_CONFIG_FLAG_ForcePedToFaceRightInCover = 130,
	 * 	CPED_CONFIG_FLAG_BlockPedFromTurningInCover = 131,
	 * 	CPED_CONFIG_FLAG_KeepRelationshipGroupAfterCleanUp = 132,
	 * 	CPED_CONFIG_FLAG_ForcePedToBeDragged = 133,
	 * 	CPED_CONFIG_FLAG_PreventPedFromReactingToBeingJacked = 134,
	 * 	CPED_CONFIG_FLAG_IsScuba = 135,
	 * 	CPED_CONFIG_FLAG_WillArrestRatherThanJack = 136,
	 * 	CPED_CONFIG_FLAG_RemoveDeadExtraFarAway = 137,
	 * 	CPED_CONFIG_FLAG_RidingTrain = 138,
	 * 	CPED_CONFIG_FLAG_ArrestResult = 139,
	 * 	CPED_CONFIG_FLAG_CanAttackFriendly = 140,
	 * 	CPED_CONFIG_FLAG_WillJackAnyPlayer = 141,
	 * 	CPED_CONFIG_FLAG_BumpedByPlayerVehicle = 142,
	 * 	CPED_CONFIG_FLAG_DodgedPlayerVehicle = 143,
	 * 	CPED_CONFIG_FLAG_WillJackWantedPlayersRatherThanStealCar = 144,
	 * 	CPED_CONFIG_FLAG_NoCopWantedAggro = 145,
	 * 	CPED_CONFIG_FLAG_DisableLadderClimbing = 146,
	 * 	CPED_CONFIG_FLAG_StairsDetected = 147,
	 * 	CPED_CONFIG_FLAG_SlopeDetected = 148,
	 * 	CPED_CONFIG_FLAG_HelmetHasBeenShot = 149,
	 * 	CPED_CONFIG_FLAG_CowerInsteadOfFlee = 150,
	 * 	CPED_CONFIG_FLAG_CanActivateRagdollWhenVehicleUpsideDown = 151,
	 * 	CPED_CONFIG_FLAG_AlwaysRespondToCriesForHelp = 152,
	 * 	CPED_CONFIG_FLAG_DisableBloodPoolCreation = 153,
	 * 	CPED_CONFIG_FLAG_ShouldFixIfNoCollision = 154,
	 * 	CPED_CONFIG_FLAG_CanPerformArrest = 155,
	 * 	CPED_CONFIG_FLAG_CanPerformUncuff = 156,
	 * 	CPED_CONFIG_FLAG_CanBeArrested = 157,
	 * 	CPED_CONFIG_FLAG_MoverConstrictedByOpposingCollisions = 158,
	 * 	CPED_CONFIG_FLAG_PlayerPreferFrontSeatMP = 159,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollFromImpactObject = 160,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollFromMelee = 161,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollFromWaterJet = 162,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollFromDrowning = 163,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollFromFalling = 164,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollFromRubberBullet = 165,
	 * 	CPED_CONFIG_FLAG_IsInjured = 166,
	 * 	CPED_CONFIG_FLAG_DontEnterVehiclesInPlayersGroup = 167,
	 * 	CPED_CONFIG_FLAG_SwimmingTasksRunning = 168,
	 * 	CPED_CONFIG_FLAG_PreventAllMeleeTaunts = 169,
	 * 	CPED_CONFIG_FLAG_ForceDirectEntry = 170,
	 * 	CPED_CONFIG_FLAG_AlwaysSeeApproachingVehicles = 171,
	 * 	CPED_CONFIG_FLAG_CanDiveAwayFromApproachingVehicles = 172,
	 * 	CPED_CONFIG_FLAG_AllowPlayerToInterruptVehicleEntryExit = 173,
	 * 	CPED_CONFIG_FLAG_OnlyAttackLawIfPlayerIsWanted = 174,
	 * 	CPED_CONFIG_FLAG_PlayerInContactWithKinematicPed = 175,
	 * 	CPED_CONFIG_FLAG_PlayerInContactWithSomethingOtherThanKinematicPed = 176,
	 * 	CPED_CONFIG_FLAG_PedsJackingMeDontGetIn = 177,
	 * 	CPED_CONFIG_FLAG_AdditionalRappellingPed = 178,
	 * 	CPED_CONFIG_FLAG_PedIgnoresAnimInterruptEvents = 179,
	 * 	CPED_CONFIG_FLAG_IsInCustody = 180,
	 * 	CPED_CONFIG_FLAG_ForceStandardBumpReactionThresholds = 181,
	 * 	CPED_CONFIG_FLAG_LawWillOnlyAttackIfPlayerIsWanted = 182,
	 * 	CPED_CONFIG_FLAG_IsAgitated = 183,
	 * 	CPED_CONFIG_FLAG_PreventAutoShuffleToDriversSeat = 184,
	 * 	CPED_CONFIG_FLAG_UseKinematicModeWhenStationary = 185,
	 * 	CPED_CONFIG_FLAG_EnableWeaponBlocking = 186,
	 * 	CPED_CONFIG_FLAG_HasHurtStarted = 187,
	 * 	CPED_CONFIG_FLAG_DisableHurt = 188,
	 * 	CPED_CONFIG_FLAG_PlayerIsWeird = 189,
	 * 	CPED_CONFIG_FLAG_PedHadPhoneConversation = 190,
	 * 	CPED_CONFIG_FLAG_BeganCrossingRoad = 191,
	 * 	CPED_CONFIG_FLAG_WarpIntoLeadersVehicle = 192,
	 * 	CPED_CONFIG_FLAG_DoNothingWhenOnFootByDefault = 193,
	 * 	CPED_CONFIG_FLAG_UsingScenario = 194,
	 * 	CPED_CONFIG_FLAG_VisibleOnScreen = 195,
	 * 	CPED_CONFIG_FLAG_DontCollideWithKinematic = 196,
	 * 	CPED_CONFIG_FLAG_ActivateOnSwitchFromLowPhysicsLod = 197,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollOnPedCollisionWhenDead = 198,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollOnVehicleCollisionWhenDead = 199,
	 * 	CPED_CONFIG_FLAG_HasBeenInArmedCombat = 200,
	 * 	CPED_CONFIG_FLAG_UseDiminishingAmmoRate = 201,
	 * 	CPED_CONFIG_FLAG_Avoidance_Ignore_All = 202,
	 * 	CPED_CONFIG_FLAG_Avoidance_Ignored_by_All = 203,
	 * 	CPED_CONFIG_FLAG_Avoidance_Ignore_Group1 = 204,
	 * 	CPED_CONFIG_FLAG_Avoidance_Member_of_Group1 = 205,
	 * 	CPED_CONFIG_FLAG_ForcedToUseSpecificGroupSeatIndex = 206,
	 * 	CPED_CONFIG_FLAG_LowPhysicsLodMayPlaceOnNavMesh = 207,
	 * 	CPED_CONFIG_FLAG_DisableExplosionReactions = 208,
	 * 	CPED_CONFIG_FLAG_DodgedPlayer = 209,
	 * 	CPED_CONFIG_FLAG_WaitingForPlayerControlInterrupt = 210,
	 * 	CPED_CONFIG_FLAG_ForcedToStayInCover = 211,
	 * 	CPED_CONFIG_FLAG_GeneratesSoundEvents = 212,
	 * 	CPED_CONFIG_FLAG_ListensToSoundEvents = 213,
	 * 	CPED_CONFIG_FLAG_AllowToBeTargetedInAVehicle = 214,
	 * 	CPED_CONFIG_FLAG_WaitForDirectEntryPointToBeFreeWhenExiting = 215,
	 * 	CPED_CONFIG_FLAG_OnlyRequireOnePressToExitVehicle = 216,
	 * 	CPED_CONFIG_FLAG_ForceExitToSkyDive = 217,
	 * 	CPED_CONFIG_FLAG_SteersAroundVehicles = 218,
	 * 	CPED_CONFIG_FLAG_AllowPedInVehiclesOverrideTaskFlags = 219,
	 * 	CPED_CONFIG_FLAG_DontEnterLeadersVehicle = 220,
	 * 	CPED_CONFIG_FLAG_DisableExitToSkyDive = 221,
	 * 	CPED_CONFIG_FLAG_ScriptHasDisabledCollision = 222,
	 * 	CPED_CONFIG_FLAG_UseAmbientModelScaling = 223,
	 * 	CPED_CONFIG_FLAG_DontWatchFirstOnNextHurryAway = 224,
	 * 	CPED_CONFIG_FLAG_DisablePotentialToBeWalkedIntoResponse = 225,
	 * 	CPED_CONFIG_FLAG_DisablePedAvoidance = 226,
	 * 	CPED_CONFIG_FLAG_ForceRagdollUponDeath = 227,
	 * 	CPED_CONFIG_FLAG_CanLosePropsOnDamage = 228,
	 * 	CPED_CONFIG_FLAG_DisablePanicInVehicle = 229,
	 * 	CPED_CONFIG_FLAG_AllowedToDetachTrailer = 230,
	 * 	CPED_CONFIG_FLAG_HasShotBeenReactedToFromFront = 231,
	 * 	CPED_CONFIG_FLAG_HasShotBeenReactedToFromBack = 232,
	 * 	CPED_CONFIG_FLAG_HasShotBeenReactedToFromLeft = 233,
	 * 	CPED_CONFIG_FLAG_HasShotBeenReactedToFromRight = 234,
	 * 	CPED_CONFIG_FLAG_AllowBlockDeadPedRagdollActivation = 235,
	 * 	CPED_CONFIG_FLAG_IsHoldingProp = 236,
	 * 	CPED_CONFIG_FLAG_BlocksPathingWhenDead = 237,
	 * 	CPED_CONFIG_FLAG_ForcePlayNormalScenarioExitOnNextScriptCommand = 238,
	 * 	CPED_CONFIG_FLAG_ForcePlayImmediateScenarioExitOnNextScriptCommand = 239,
	 * 	CPED_CONFIG_FLAG_ForceSkinCharacterCloth = 240,
	 * 	CPED_CONFIG_FLAG_LeaveEngineOnWhenExitingVehicles = 241,
	 * 	CPED_CONFIG_FLAG_PhoneDisableTextingAnimations = 242,
	 * 	CPED_CONFIG_FLAG_PhoneDisableTalkingAnimations = 243,
	 * 	CPED_CONFIG_FLAG_PhoneDisableCameraAnimations = 244,
	 * 	CPED_CONFIG_FLAG_DisableBlindFiringInShotReactions = 245,
	 * 	CPED_CONFIG_FLAG_AllowNearbyCoverUsage = 246,
	 * 	CPED_CONFIG_FLAG_InStrafeTransition = 247,
	 * 	CPED_CONFIG_FLAG_CanPlayInCarIdles = 248,
	 * 	CPED_CONFIG_FLAG_CanAttackNonWantedPlayerAsLaw = 249,
	 * 	CPED_CONFIG_FLAG_WillTakeDamageWhenVehicleCrashes = 250,
	 * 	CPED_CONFIG_FLAG_AICanDrivePlayerAsRearPassenger = 251,
	 * 	CPED_CONFIG_FLAG_PlayerCanJackFriendlyPlayers = 252,
	 * 	CPED_CONFIG_FLAG_OnStairs = 253,
	 * 	CPED_CONFIG_FLAG_SimulatingAiming = 254,
	 * 	CPED_CONFIG_FLAG_AIDriverAllowFriendlyPassengerSeatEntry = 255,
	 * 	CPED_CONFIG_FLAG_ParentCarIsBeingRemoved = 256,
	 * 	CPED_CONFIG_FLAG_AllowMissionPedToUseInjuredMovement = 257,
	 * 	CPED_CONFIG_FLAG_CanLoseHelmetOnDamage = 258,
	 * 	CPED_CONFIG_FLAG_NeverDoScenarioExitProbeChecks = 259,
	 * 	CPED_CONFIG_FLAG_SuppressLowLODRagdollSwitchWhenCorpseSettles = 260,
	 * 	CPED_CONFIG_FLAG_PreventUsingLowerPrioritySeats = 261,
	 * 	CPED_CONFIG_FLAG_JustLeftVehicleNeedsReset = 262,
	 * 	CPED_CONFIG_FLAG_TeleportIfCantReachPlayer = 263,
	 * 	CPED_CONFIG_FLAG_PedsInVehiclePositionNeedsReset = 264,
	 * 	CPED_CONFIG_FLAG_PedsFullyInSeat = 265,
	 * 	CPED_CONFIG_FLAG_AllowPlayerLockOnIfFriendly = 266,
	 * 	CPED_CONFIG_FLAG_UseCameraHeadingForDesiredDirectionLockOnTest = 267,
	 * 	CPED_CONFIG_FLAG_TeleportToLeaderVehicle = 268,
	 * 	CPED_CONFIG_FLAG_Avoidance_Ignore_WeirdPedBuffer = 269,
	 * 	CPED_CONFIG_FLAG_OnStairSlope = 270,
	 * 	CPED_CONFIG_FLAG_HasPlayedNMGetup = 271,
	 * 	CPED_CONFIG_FLAG_DontBlipCop = 272,
	 * 	CPED_CONFIG_FLAG_SpawnedAtExtendedRangeScenario = 273,
	 * 	CPED_CONFIG_FLAG_WalkAlongsideLeaderWhenClose = 274,
	 * 	CPED_CONFIG_FLAG_KillWhenTrapped = 275,
	 * 	CPED_CONFIG_FLAG_EdgeDetected = 276,
	 * 	CPED_CONFIG_FLAG_AlwaysWakeUpPhysicsOfIntersectedPeds = 277,
	 * 	CPED_CONFIG_FLAG_EquippedAmbientLoadOutWeapon = 278,
	 * 	CPED_CONFIG_FLAG_AvoidTearGas = 279,
	 * 	CPED_CONFIG_FLAG_StoppedSpeechUponFreezing = 280,
	 * 	CPED_CONFIG_FLAG_DisableGoToWritheWhenInjured = 281,
	 * 	CPED_CONFIG_FLAG_OnlyUseForcedSeatWhenEnteringHeliInGroup = 282,
	 * 	CPED_CONFIG_FLAG_ThrownFromVehicleDueToExhaustion = 283,
	 * 	CPED_CONFIG_FLAG_UpdateEnclosedSearchRegion = 284,
	 * 	CPED_CONFIG_FLAG_DisableWeirdPedEvents = 285,
	 * 	CPED_CONFIG_FLAG_ShouldChargeNow = 286,
	 * 	CPED_CONFIG_FLAG_RagdollingOnBoat = 287,
	 * 	CPED_CONFIG_FLAG_HasBrandishedWeapon = 288,
	 * 	CPED_CONFIG_FLAG_AllowMinorReactionsAsMissionPed = 289,
	 * 	CPED_CONFIG_FLAG_BlockDeadBodyShockingEventsWhenDead = 290,
	 * 	CPED_CONFIG_FLAG_PedHasBeenSeen = 291,
	 * 	CPED_CONFIG_FLAG_PedIsInReusePool = 292,
	 * 	CPED_CONFIG_FLAG_PedWasReused = 293,
	 * 	CPED_CONFIG_FLAG_DisableShockingEvents = 294,
	 * 	CPED_CONFIG_FLAG_MovedUsingLowLodPhysicsSinceLastActive = 295,
	 * 	CPED_CONFIG_FLAG_NeverReactToPedOnRoof = 296,
	 * 	CPED_CONFIG_FLAG_ForcePlayFleeScenarioExitOnNextScriptCommand = 297,
	 * 	CPED_CONFIG_FLAG_JustBumpedIntoVehicle = 298,
	 * 	CPED_CONFIG_FLAG_DisableShockingDrivingOnPavementEvents = 299,
	 * 	CPED_CONFIG_FLAG_ShouldThrowSmokeNow = 300,
	 * 	CPED_CONFIG_FLAG_DisablePedConstraints = 301,
	 * 	CPED_CONFIG_FLAG_ForceInitialPeekInCover = 302,
	 * 	CPED_CONFIG_FLAG_CreatedByDispatch = 303,
	 * 	CPED_CONFIG_FLAG_PointGunLeftHandSupporting = 304,
	 * 	CPED_CONFIG_FLAG_DisableJumpingFromVehiclesAfterLeader = 305,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollFromPlayerPedImpact = 306,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollFromAiRagdollImpact = 307,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollFromPlayerRagdollImpact = 308,
	 * 	CPED_CONFIG_FLAG_DisableQuadrupedSpring = 309,
	 * 	CPED_CONFIG_FLAG_IsInCluster = 310,
	 * 	CPED_CONFIG_FLAG_ShoutToGroupOnPlayerMelee = 311,
	 * 	CPED_CONFIG_FLAG_IgnoredByAutoOpenDoors = 312,
	 * 	CPED_CONFIG_FLAG_PreferInjuredGetup = 313,
	 * 	CPED_CONFIG_FLAG_ForceIgnoreMeleeActiveCombatant = 314,
	 * 	CPED_CONFIG_FLAG_CheckLoSForSoundEvents = 315,
	 * 	CPED_CONFIG_FLAG_JackedAbandonedCar = 316,
	 * 	CPED_CONFIG_FLAG_CanSayFollowedByPlayerAudio = 317,
	 * 	CPED_CONFIG_FLAG_ActivateRagdollFromMinorPlayerContact = 318,
	 * 	CPED_CONFIG_FLAG_HasPortablePickupAttached = 319,
	 * 	CPED_CONFIG_FLAG_ForcePoseCharacterCloth = 320,
	 * 	CPED_CONFIG_FLAG_HasClothCollisionBounds = 321,
	 * 	CPED_CONFIG_FLAG_HasHighHeels = 322,
	 * 	CPED_CONFIG_FLAG_TreatAsAmbientPedForDriverLockOn = 323,
	 * 	CPED_CONFIG_FLAG_DontBehaveLikeLaw = 324,
	 * 	CPED_CONFIG_FLAG_SpawnedAtScenario = 325,
	 * 	CPED_CONFIG_FLAG_DisablePoliceInvestigatingBody = 326,
	 * 	CPED_CONFIG_FLAG_DisableWritheShootFromGround = 327,
	 * 	CPED_CONFIG_FLAG_LowerPriorityOfWarpSeats = 328,
	 * 	CPED_CONFIG_FLAG_DisableTalkTo = 329,
	 * 	CPED_CONFIG_FLAG_DontBlip = 330,
	 * 	CPED_CONFIG_FLAG_IsSwitchingWeapon = 331,
	 * 	CPED_CONFIG_FLAG_IgnoreLegIkRestrictions = 332,
	 * 	CPED_CONFIG_FLAG_ScriptForceNoTimesliceIntelligenceUpdate = 333,
	 * 	CPED_CONFIG_FLAG_JackedOutOfMyVehicle = 334,
	 * 	CPED_CONFIG_FLAG_WentIntoCombatAfterBeingJacked = 335,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollForVehicleGrab = 336,
	 * 	CPED_CONFIG_FLAG_ForcePackageCharacterCloth = 337,
	 * 	CPED_CONFIG_FLAG_DontRemoveWithValidOrder = 338,
	 * 	CPED_CONFIG_FLAG_AllowTaskDoNothingTimeslicing = 339,
	 * 	CPED_CONFIG_FLAG_ForcedToStayInCoverDueToPlayerSwitch = 340,
	 * 	CPED_CONFIG_FLAG_ForceProneCharacterCloth = 341,
	 * 	CPED_CONFIG_FLAG_NotAllowedToJackAnyPlayers = 342,
	 * 	CPED_CONFIG_FLAG_InToStrafeTransition = 343,
	 * 	CPED_CONFIG_FLAG_KilledByStandardMelee = 344,
	 * 	CPED_CONFIG_FLAG_AlwaysLeaveTrainUponArrival = 345,
	 * 	CPED_CONFIG_FLAG_ForcePlayDirectedNormalScenarioExitOnNextScriptCommand = 346,
	 * 	CPED_CONFIG_FLAG_OnlyWritheFromWeaponDamage = 347,
	 * 	CPED_CONFIG_FLAG_UseSloMoBloodVfx = 348,
	 * 	CPED_CONFIG_FLAG_EquipJetpack = 349,
	 * 	CPED_CONFIG_FLAG_PreventDraggedOutOfCarThreatResponse = 350,
	 * 	CPED_CONFIG_FLAG_ScriptHasCompletelyDisabledCollision = 351,
	 * 	CPED_CONFIG_FLAG_NeverDoScenarioNavChecks = 352,
	 * 	CPED_CONFIG_FLAG_ForceSynchronousScenarioExitChecking = 353,
	 * 	CPED_CONFIG_FLAG_ThrowingGrenadeWhileAiming = 354,
	 * 	CPED_CONFIG_FLAG_HeadbobToRadioEnabled = 355,
	 * 	CPED_CONFIG_FLAG_ForceDeepSurfaceCheck = 356,
	 * 	CPED_CONFIG_FLAG_DisableDeepSurfaceAnims = 357,
	 * 	CPED_CONFIG_FLAG_DontBlipNotSynced = 358,
	 * 	CPED_CONFIG_FLAG_IsDuckingInVehicle = 359,
	 * 	CPED_CONFIG_FLAG_PreventAutoShuffleToTurretSeat = 360,
	 * 	CPED_CONFIG_FLAG_DisableEventInteriorStatusCheck = 361,
	 * 	CPED_CONFIG_FLAG_HasReserveParachute = 362,
	 * 	CPED_CONFIG_FLAG_UseReserveParachute = 363,
	 * 	CPED_CONFIG_FLAG_TreatDislikeAsHateWhenInCombat = 364,
	 * 	CPED_CONFIG_FLAG_OnlyUpdateTargetWantedIfSeen = 365,
	 * 	CPED_CONFIG_FLAG_AllowAutoShuffleToDriversSeat = 366,
	 * 	CPED_CONFIG_FLAG_DontActivateRagdollFromSmokeGrenade = 367,
	 * 	CPED_CONFIG_FLAG_LinkMBRToOwnerOnChain = 368,
	 * 	CPED_CONFIG_FLAG_AmbientFriendBumpedByPlayer = 369,
	 * 	CPED_CONFIG_FLAG_AmbientFriendBumpedByPlayerVehicle = 370,
	 * 	CPED_CONFIG_FLAG_InFPSUnholsterTransition = 371,
	 * 	CPED_CONFIG_FLAG_PreventReactingToSilencedCloneBullets = 372,
	 * 	CPED_CONFIG_FLAG_DisableInjuredCryForHelpEvents = 373,
	 * 	CPED_CONFIG_FLAG_NeverLeaveTrain = 374,
	 * 	CPED_CONFIG_FLAG_DontDropJetpackOnDeath = 375,
	 * 	CPED_CONFIG_FLAG_UseFPSUnholsterTransitionDuringCombatRoll = 376,
	 * 	CPED_CONFIG_FLAG_ExitingFPSCombatRoll = 377,
	 * 	CPED_CONFIG_FLAG_ScriptHasControlOfPlayer = 378,
	 * 	CPED_CONFIG_FLAG_PlayFPSIdleFidgetsForProjectile = 379,
	 * 	CPED_CONFIG_FLAG_DisableAutoEquipHelmetsInBikes = 380,
	 * 	CPED_CONFIG_FLAG_DisableAutoEquipHelmetsInAircraft = 381,
	 * 	CPED_CONFIG_FLAG_WasPlayingFPSGetup = 382,
	 * 	CPED_CONFIG_FLAG_WasPlayingFPSMeleeActionResult = 383,
	 * 	CPED_CONFIG_FLAG_PreferNoPriorityRemoval = 384,
	 * 	CPED_CONFIG_FLAG_FPSFidgetsAbortedOnFire = 385,
	 * 	CPED_CONFIG_FLAG_ForceFPSIKWithUpperBodyAnim = 386,
	 * 	CPED_CONFIG_FLAG_SwitchingCharactersInFirstPerson = 387,
	 * 	CPED_CONFIG_FLAG_IsClimbingLadder = 388,
	 * 	CPED_CONFIG_FLAG_HasBareFeet = 389,
	 * 	CPED_CONFIG_FLAG_UNUSED_REPLACE_ME_2 = 390,
	 * 	CPED_CONFIG_FLAG_GoOnWithoutVehicleIfItIsUnableToGetBackToRoad = 391,
	 * 	CPED_CONFIG_FLAG_BlockDroppingHealthSnacksOnDeath = 392,
	 * 	CPED_CONFIG_FLAG_ResetLastVehicleOnVehicleExit = 393,
	 * 	CPED_CONFIG_FLAG_ForceThreatResponseToNonFriendToFriendMeleeActions = 394,
	 * 	CPED_CONFIG_FLAG_DontRespondToRandomPedsDamage = 395,
	 * 	CPED_CONFIG_FLAG_AllowContinuousThreatResponseWantedLevelUpdates = 396,
	 * 	CPED_CONFIG_FLAG_KeepTargetLossResponseOnCleanup = 397,
	 * 	CPED_CONFIG_FLAG_PlayersDontDragMeOutOfCar = 398,
	 * 	CPED_CONFIG_FLAG_BroadcastRepondedToThreatWhenGoingToPointShooting = 399,
	 * 	CPED_CONFIG_FLAG_IgnorePedTypeForIsFriendlyWith = 400,
	 * 	CPED_CONFIG_FLAG_TreatNonFriendlyAsHateWhenInCombat = 401,
	 * 	CPED_CONFIG_FLAG_DontLeaveVehicleIfLeaderNotInVehicle = 402,
	 * 	CPED_CONFIG_FLAG_ChangeFromPermanentToAmbientPopTypeOnMigration = 403,
	 * 	CPED_CONFIG_FLAG_AllowMeleeReactionIfMeleeProofIsOn = 404,
	 * 	CPED_CONFIG_FLAG_UsingLowriderLeans = 405,
	 * 	CPED_CONFIG_FLAG_UsingAlternateLowriderLeans = 406,
	 * 	CPED_CONFIG_FLAG_UseNormalExplosionDamageWhenBlownUpInVehicle = 407,
	 * 	CPED_CONFIG_FLAG_DisableHomingMissileLockForVehiclePedInside = 408,
	 * 	CPED_CONFIG_FLAG_DisableTakeOffScubaGear = 409,
	 * 	CPED_CONFIG_FLAG_IgnoreMeleeFistWeaponDamageMult = 410,
	 * 	CPED_CONFIG_FLAG_LawPedsCanFleeFromNonWantedPlayer = 411,
	 * 	CPED_CONFIG_FLAG_ForceBlipSecurityPedsIfPlayerIsWanted = 412,
	 * 	CPED_CONFIG_FLAG_IsHolsteringWeapon = 413,
	 * 	CPED_CONFIG_FLAG_UseGoToPointForScenarioNavigation = 414,
	 * 	CPED_CONFIG_FLAG_DontClearLocalPassengersWantedLevel = 415,
	 * 	CPED_CONFIG_FLAG_BlockAutoSwapOnWeaponPickups = 416,
	 * 	CPED_CONFIG_FLAG_ThisPedIsATargetPriorityForAI = 417,
	 * 	CPED_CONFIG_FLAG_IsSwitchingHelmetVisor = 418,
	 * 	CPED_CONFIG_FLAG_ForceHelmetVisorSwitch = 419,
	 * 	CPED_CONFIG_FLAG_IsPerformingVehicleMelee = 420,
	 * 	CPED_CONFIG_FLAG_UseOverrideFootstepPtFx = 421,
	 * 	CPED_CONFIG_FLAG_DisableVehicleCombat = 422,
	 * 	CPED_CONFIG_FLAG_TreatAsFriendlyForTargetingAndDamage = 423,
	 * 	CPED_CONFIG_FLAG_AllowBikeAlternateAnimations = 424,
	 * 	CPED_CONFIG_FLAG_TreatAsFriendlyForTargetingAndDamageNonSynced = 425,
	 * 	CPED_CONFIG_FLAG_UseLockpickVehicleEntryAnimations = 426,
	 * 	CPED_CONFIG_FLAG_IgnoreInteriorCheckForSprinting = 427,
	 * 	CPED_CONFIG_FLAG_SwatHeliSpawnWithinLastSpottedLocation = 428,
	 * 	CPED_CONFIG_FLAG_DisableStartEngine = 429,
	 * 	CPED_CONFIG_FLAG_IgnoreBeingOnFire = 430,
	 * 	CPED_CONFIG_FLAG_DisableTurretOrRearSeatPreference = 431,
	 * 	CPED_CONFIG_FLAG_DisableWantedHelicopterSpawning = 432,
	 * 	CPED_CONFIG_FLAG_UseTargetPerceptionForCreatingAimedAtEvents = 433,
	 * 	CPED_CONFIG_FLAG_DisableHomingMissileLockon = 434,
	 * 	CPED_CONFIG_FLAG_ForceIgnoreMaxMeleeActiveSupportCombatants = 435,
	 * 	CPED_CONFIG_FLAG_StayInDefensiveAreaWhenInVehicle = 436,
	 * 	CPED_CONFIG_FLAG_DontShoutTargetPosition = 437,
	 * 	CPED_CONFIG_FLAG_DisableHelmetArmor = 438,
	 * 	CPED_CONFIG_FLAG_CreatedByConcealedPlayer = 439,
	 * 	CPED_CONFIG_FLAG_PermanentlyDisablePotentialToBeWalkedIntoResponse = 440,
	 * 	CPED_CONFIG_FLAG_PreventVehExitDueToInvalidWeapon = 441,
	 * 	CPED_CONFIG_FLAG_IgnoreNetSessionFriendlyFireCheckForAllowDamage = 442,
	 * 	CPED_CONFIG_FLAG_DontLeaveCombatIfTargetPlayerIsAttackedByPolice = 443,
	 * 	CPED_CONFIG_FLAG_CheckLockedBeforeWarp = 444,
	 * 	CPED_CONFIG_FLAG_DontShuffleInVehicleToMakeRoom = 445,
	 * 	CPED_CONFIG_FLAG_GiveWeaponOnGetup = 446,
	 * 	CPED_CONFIG_FLAG_DontHitVehicleWithProjectiles = 447,
	 * 	CPED_CONFIG_FLAG_DisableForcedEntryForOpenVehiclesFromTryLockedDoor = 448,
	 * 	CPED_CONFIG_FLAG_FiresDummyRockets = 449,
	 * 	CPED_CONFIG_FLAG_PedIsArresting = 450,
	 * 	CPED_CONFIG_FLAG_IsDecoyPed = 451,
	 * 	CPED_CONFIG_FLAG_HasEstablishedDecoy = 452,
	 * 	CPED_CONFIG_FLAG_BlockDispatchedHelicoptersFromLanding = 453,
	 * 	CPED_CONFIG_FLAG_DontCryForHelpOnStun = 454,
	 * 	CPED_CONFIG_FLAG_HitByTranqWeapon = 455,
	 * 	CPED_CONFIG_FLAG_CanBeIncapacitated = 456,
	 * 	CPED_CONFIG_FLAG_ForcedAimFromArrest = 457,
	 * 	CPED_CONFIG_FLAG_DontChangeTargetFromMelee = 458,
	 * 	_0x4376ABF2 = 459,
	 * 	CPED_CONFIG_FLAG_RagdollFloatsIndefinitely = 460,
	 * 	CPED_CONFIG_FLAG_BlockElectricWeaponDamage = 461,
	 * 	_0x262A3B8E = 462,
	 * 	_0x1AA79A25 = 463,
	 * }
	 * ```
	 */
	@:native("SET_PED_CONFIG_FLAG")
	static function setPedConfigFlag(ped:Dynamic, flagId:Int, value:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_DESIRED_HEADING")
	static function setPedDesiredHeading(ped:Dynamic, heading:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_DIES_IN_WATER")
	static function setPedDiesInWater(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_DIES_IN_SINKING_VEHICLE")
	static function setPedDiesInSinkingVehicle(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Found in the b617d scripts:
	 * PED::_9DBA107B4937F809(v_7, "trevor_heist_cover_2h");
	 * SET_PED_MO*
	 * ```
	 */
	@:native("_SET_PED_COVER_CLIPSET_OVERRIDE")
	static function SetPedCoverClipsetOverride(ped:Dynamic, p1:String):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_DRIVE_BY_CLIPSET_OVERRIDE")
	static function setPedDriveByClipsetOverride(ped:Dynamic, clipset:String):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_DEFENSIVE_AREA_ATTACHED_TO_PED")
	static function setPedDefensiveAreaAttachedToPed(ped:Dynamic, attachPed:Dynamic, p2:Float, p3:Float, p4:Float, p5:Float, p6:Float, p7:Float, p8:Float, p9:Bool, p10:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_DIES_IN_VEHICLE")
	static function setPedDiesInVehicle(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Something related to the environmental effects natives.
	 * In the "agency_heist3b" script, p1 - p3 are always under 100 - usually they are {87, 81, 68}. If SET_PED_ENVEFF_SCALE is set to 0.65 (instead of the usual 1.0), they use {74, 69, 60}
	 * ```
	 */
	@:native("SET_PED_ENVEFF_COLOR_MODULATOR")
	static function setPedEnveffColorModulator(ped:Dynamic, r:Int, g:Int, b:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_DIES_WHEN_INJURED")
	static function setPedDiesWhenInjured(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_ENABLE_WEAPON_BLOCKING")
	static function setPedEnableWeaponBlocking(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * This is the SET_CHAR_DUCKING from GTA IV, that makes Peds duck. This function does nothing in GTA V. It cannot set the ped as ducking in vehicles, and IS_PED_DUCKING will always return false.  
	 * ```
	 */
	@:native("SET_PED_DUCKING")
	static function setPedDucking(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_DIES_INSTANTLY_IN_WATER")
	static function setPedDiesInstantlyInWater(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * bit 15 (0x8000) = force cower
	 * ```
	 */
	@:native("SET_PED_FLEE_ATTRIBUTES")
	static function setPedFleeAttributes(ped:Dynamic, attributeFlags:Int, enable:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_GENERATES_DEAD_BODY_EVENTS")
	static function setPedGeneratesDeadBodyEvents(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * This native sets the glow intensity of illuminated clothing items.
	 * 
	 * This native does **NOT** need to be executed every tick.
	 * This native is **NOT** synced with other connected players, you will have to set the opacity on the ped on all clients individually.
	 * 
	 * Glow intensity is a value between `0.0` and `1.0`.
	 * 
	 * In some older decompiled scripts this is known as `_SET_PED_REFLECTION_INTENSITY`.
	 * Since there's no joaat hash for this, I find `_SET_PED_ILLUMINATED_CLOTHING_GLOW_INTENSITY` more descriptive than `_SET_PED_REFLECTION_INTENSITY`.
	 * 
	 * Use [`GetPedIlluminatedClothingGlowIntensity`](#\_0x1461B28A06717D68) to get the illuminated clothing glow intensity of a specific ped.
	 * 
	 * Intensity: `1.0`:
	 * ![](https://www.vespura.com/hi/i/2018-11-13\_17-03\_c2e23\_229.png)
	 * 
	 * Intensity: `0.0`:
	 * ![](https://www.vespura.com/hi/i/2018-11-13\_17-03\_35c33\_230.png)
	 * 
	 * **Examples code result**:
	 * ![](https://www.vespura.com/hi/i/2018-11-13\_17-11\_10199\_232.gif)
	 * 
	 * (Direct link if embed doesn't work: [here](https://www.vespura.com/hi/i/2018-11-13\_17-11\_10199\_232.gif))
	 */
	@:native("_SET_PED_EMISSIVE_INTENSITY")
	static function SetPedEmissiveIntensity(ped:Dynamic, intensity:Float):Dynamic;

	/**
	 * ```
	 * Values look to be between 0.0 and 1.0  
	 * From decompiled scripts: 0.0, 0.6, 0.65, 0.8, 1.0  
	 * You are correct, just looked in IDA it breaks from the function if it's less than 0.0f or greater than 1.0f.  
	 * ```
	 */
	@:native("SET_PED_ENVEFF_SCALE")
	static function setPedEnveffScale(ped:Dynamic, value:Float):Dynamic;

	/**
	 * Sets the various freemode face features, e.g. nose length, chin shape.
	 * 
	 * **Indexes (From 0 to 19):**
	 * 
	 * Parentheses indicate morph scale/direction as in (-1.0 to 1.0)
	 * 
	 * *   **0**: Nose Width (Thin/Wide)
	 * *   **1**: Nose Peak (Up/Down)
	 * *   **2**: Nose Length (Long/Short)
	 * *   **3**: Nose Bone Curveness (Crooked/Curved)
	 * *   **4**: Nose Tip (Up/Down)
	 * *   **5**: Nose Bone Twist (Left/Right)
	 * *   **6**: Eyebrow (Up/Down)
	 * *   **7**: Eyebrow (In/Out)
	 * *   **8**: Cheek Bones (Up/Down)
	 * *   **9**: Cheek Sideways Bone Size (In/Out)
	 * *   **10**: Cheek Bones Width (Puffed/Gaunt)
	 * *   **11**: Eye Opening (Both) (Wide/Squinted)
	 * *   **12**: Lip Thickness (Both) (Fat/Thin)
	 * *   **13**: Jaw Bone Width (Narrow/Wide)
	 * *   **14**: Jaw Bone Shape (Round/Square)
	 * *   **15**: Chin Bone (Up/Down)
	 * *   **16**: Chin Bone Length (In/Out or Backward/Forward)
	 * *   **17**: Chin Bone Shape (Pointed/Square)
	 * *   **18**: Chin Hole (Chin Bum)
	 * *   **19**: Neck Thickness (Thin/Thick)
	 * 
	 * **Note:**
	 * 
	 * You may need to call [`SetPedHeadBlendData`](#\_0x9414E18B9434C2FE) prior to calling this native in order for it to work.
	 */
	@:native("_SET_PED_FACE_FEATURE")
	static function SetPedFaceFeature(ped:Dynamic, index:Int, scale:Float):Dynamic;

	/**
	 * ```
	 * enable or disable the gravity of a ped  
	 * Examples:  
	 * PED::SET_PED_GRAVITY(PLAYER::PLAYER_PED_ID(), 0x00000001);  
	 * PED::SET_PED_GRAVITY(Local_289[iVar0 / *20* /], 0x00000001);  
	 * ```
	 */
	@:native("SET_PED_GRAVITY")
	static function setPedGravity(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Used for freemode (online) characters.
	 * 
	 * Indices:
	 * 
	 * 1.  black
	 * 2.  very light blue/green
	 * 3.  dark blue
	 * 4.  brown
	 * 5.  darker brown
	 * 6.  light brown
	 * 7.  blue
	 * 8.  light blue
	 * 9.  pink
	 * 10. yellow
	 * 11. purple
	 * 12. black
	 * 13. dark green
	 * 14. light brown
	 * 15. yellow/black pattern
	 * 16. light colored spiral pattern
	 * 17. shiny red
	 * 18. shiny half blue/half red
	 * 19. half black/half light blue
	 * 20. white/red perimter
	 * 21. green snake
	 * 22. red snake
	 * 23. dark blue snake
	 * 24. dark yellow
	 * 25. bright yellow
	 * 26. all black
	 * 27. red small pupil
	 * 28. devil blue/black
	 * 29. white small pupil
	 * 30. glossed over
	 */
	@:native("_SET_PED_EYE_COLOR")
	static function SetPedEyeColor(ped:Dynamic, index:Int):Dynamic;

	/**
	 * ```
	 * FIRING_PATTERN_BURST_FIRE = 0xD6FF6D61 ( 1073727030 )  
	 * FIRING_PATTERN_BURST_FIRE_IN_COVER = 0x026321F1 ( 40051185 )  
	 * FIRING_PATTERN_BURST_FIRE_DRIVEBY = 0xD31265F2 ( -753768974 )  
	 * FIRING_PATTERN_FROM_GROUND = 0x2264E5D6 ( 577037782 )  
	 * FIRING_PATTERN_DELAY_FIRE_BY_ONE_SEC = 0x7A845691 ( 2055493265 )  
	 * FIRING_PATTERN_FULL_AUTO = 0xC6EE6B4C ( -957453492 )  
	 * FIRING_PATTERN_SINGLE_SHOT = 0x5D60E4E0 ( 1566631136 )  
	 * FIRING_PATTERN_BURST_FIRE_PISTOL = 0xA018DB8A ( -1608983670 )  
	 * FIRING_PATTERN_BURST_FIRE_SMG = 0xD10DADEE ( 1863348768 )  
	 * FIRING_PATTERN_BURST_FIRE_RIFLE = 0x9C74B406 ( -1670073338 )  
	 * FIRING_PATTERN_BURST_FIRE_MG = 0xB573C5B4 ( -1250703948 )  
	 * FIRING_PATTERN_BURST_FIRE_PUMPSHOTGUN = 0x00BAC39B ( 12239771 )  
	 * FIRING_PATTERN_BURST_FIRE_HELI = 0x914E786F ( -1857128337 )  
	 * FIRING_PATTERN_BURST_FIRE_MICRO = 0x42EF03FD ( 1122960381 )  
	 * FIRING_PATTERN_SHORT_BURSTS = 0x1A92D7DF ( 445831135 )  
	 * FIRING_PATTERN_SLOW_FIRE_TANK = 0xE2CA3A71 ( -490063247 )  
	 * if anyone is interested firing pattern info: pastebin.com/Px036isB  
	 * ```
	 */
	@:native("SET_PED_FIRING_PATTERN")
	static function setPedFiringPattern(ped:Dynamic, patternHash:Int):Dynamic;

	/**
	 * ```
	 * OverlayID ranges from 0 to 12, index from 0 to _GET_NUM_OVERLAY_VALUES(overlayID)-1, and opacity from 0.0 to 1.0.   
	 * overlayID       Part                  Index, to disable  
	 * 0               Blemishes             0 - 23, 255  
	 * 1               Facial Hair           0 - 28, 255  
	 * 2               Eyebrows              0 - 33, 255  
	 * 3               Ageing                0 - 14, 255  
	 * 4               Makeup                0 - 74, 255  
	 * 5               Blush                 0 - 6, 255  
	 * 6               Complexion            0 - 11, 255  
	 * 7               Sun Damage            0 - 10, 255  
	 * 8               Lipstick              0 - 9, 255  
	 * 9               Moles/Freckles        0 - 17, 255  
	 * 10              Chest Hair            0 - 16, 255  
	 * 11              Body Blemishes        0 - 11, 255  
	 * 12              Add Body Blemishes    0 - 1, 255  
	 * ```
	 * 
	 * **Note:**
	 * 
	 * You may need to call [`SetPedHeadBlendData`](#\_0x9414E18B9434C2FE) prior to calling this native in order for it to work.
	 */
	@:native("SET_PED_HEAD_OVERLAY")
	static function setPedHeadOverlay(ped:Dynamic, overlayID:Int, index:Int, opacity:Float):Dynamic;

	/**
	 * ```
	 * From the scripts:  
	 * PED::SET_PED_GESTURE_GROUP(PLAYER::PLAYER_PED_ID(),  
	 * "ANIM_GROUP_GESTURE_MISS_FRA0");  
	 * PED::SET_PED_GESTURE_GROUP(PLAYER::PLAYER_PED_ID(),  
	 * "ANIM_GROUP_GESTURE_MISS_DocksSetup1");  
	 * ```
	 */
	@:native("SET_PED_GESTURE_GROUP")
	static function setPedGestureGroup(ped:Dynamic, animGroupGesture:String):Dynamic;

	/**
	 * Sets the tint index for the hair on the specified ped.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SET_PED_HAIR_TINT")
	static function setPedHairTint(ped:Dynamic, colorID:Int, highlightColorID:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_HEATSCALE_OVERRIDE")
	static function setPedHeatscaleOverride(ped:Dynamic, heatScale:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_GROUP_MEMBER_PASSENGER_INDEX")
	static function setPedGroupMemberPassengerIndex(ped:Dynamic, index:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_GET_OUT_UPSIDE_DOWN_VEHICLE")
	static function setPedGetOutUpsideDownVehicle(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_HEARING_RANGE")
	static function setPedHearingRange(ped:Dynamic, value:Float):Dynamic;

	/**
	 * ```
	 * Used for freemode (online) characters. 
	 * Called after SET_PED_HEAD_OVERLAY().  
	 * ```
	 * 
	 * **Note:**
	 * 
	 * You may need to call [`SetPedHeadBlendData`](#\_0x9414E18B9434C2FE) prior to calling this native in order for it to work.
	 */
	@:native("_SET_PED_HEAD_OVERLAY_COLOR")
	static function SetPedHeadOverlayColor(ped:Dynamic, overlayID:Int, colorType:Int, colorID:Int, secondColorID:Int):Dynamic;

	/**
	 * For more info please refer to [this](https://gtaforums.com/topic/858970-all-gtao-face-ids-pedset-ped-head-blend-data-explained) topic.
	 * 
	 * **Other information:**
	 * 
	 * IDs start at zero and go Male Non-DLC, Female Non-DLC, Male DLC, and Female DLC.</br>
	 * 
	 * This native function is often called prior to calling natives such as:
	 * 
	 * *   [`SetPedHairColor`](#\_0xBB43F090)
	 * *   [`SetPedHeadOverlayColor`](#\_0x78935A27)
	 * *   [`SetPedHeadOverlay`](#\_0xD28DBA90)
	 * *   [`SetPedFaceFeature`](#\_0x6C8D4458)
	 */
	@:native("SET_PED_HEAD_BLEND_DATA")
	static function setPedHeadBlendData(ped:Dynamic, shapeFirstID:Int, shapeSecondID:Int, shapeThirdID:Int, skinFirstID:Int, skinSecondID:Int, skinThirdID:Int, shapeMix:Float, skinMix:Float, thirdMix:Float, isParent:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_HELMET_FLAG")
	static function setPedHelmetFlag(ped:Dynamic, helmetFlag:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 3: BOOL p2
	 * ```
	 */
	@:native("SET_PED_HELMET_PROP_INDEX")
	static function setPedHelmetPropIndex(ped:Dynamic, propIndex:Int):Dynamic;

	/**
	 * Sets whether a pedestrian should wear a helmet.
	 */
	@:native("SET_PED_HELMET")
	static function setPedHelmet(ped:Dynamic, bEnable:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_PED_HELMET_UNK")
	static function SetPedHelmetUnk(ped:Dynamic, p1:Bool, p2:Int, p3:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_HELMET_TEXTURE_INDEX")
	static function setPedHelmetTextureIndex(ped:Dynamic, textureIndex:Int):Dynamic;

	/**
	 * ```
	 * PED::SET_PED_IN_VEHICLE_CONTEXT(l_128, MISC::GET_HASH_KEY("MINI_PROSTITUTE_LOW_PASSENGER"));
	 * PED::SET_PED_IN_VEHICLE_CONTEXT(l_128, MISC::GET_HASH_KEY("MINI_PROSTITUTE_LOW_RESTRICTED_PASSENGER"));
	 * PED::SET_PED_IN_VEHICLE_CONTEXT(l_3212, MISC::GET_HASH_KEY("MISS_FAMILY1_JIMMY_SIT"));
	 * PED::SET_PED_IN_VEHICLE_CONTEXT(l_3212, MISC::GET_HASH_KEY("MISS_FAMILY1_JIMMY_SIT_REAR"));
	 * PED::SET_PED_IN_VEHICLE_CONTEXT(l_95, MISC::GET_HASH_KEY("MISS_FAMILY2_JIMMY_BICYCLE"));
	 * PED::SET_PED_IN_VEHICLE_CONTEXT(num3, MISC::GET_HASH_KEY("MISSFBI2_MICHAEL_DRIVEBY"));
	 * PED::SET_PED_IN_VEHICLE_CONTEXT(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("MISS_ARMENIAN3_FRANKLIN_TENSE"));
	 * PED::SET_PED_IN_VEHICLE_CONTEXT(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("MISSFBI5_TREVOR_DRIVING"));
	 * ```
	 */
	@:native("SET_PED_IN_VEHICLE_CONTEXT")
	static function setPedInVehicleContext(ped:Dynamic, context:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_HIGHLY_PERCEPTIVE")
	static function setPedHighlyPerceptive(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_KEEP_TASK")
	static function setPedKeepTask(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_ID_RANGE")
	static function setPedIdRange(ped:Dynamic, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_MAX_MOVE_BLEND_RATIO")
	static function setPedMaxMoveBlendRatio(ped:Dynamic, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_INTO_VEHICLE")
	static function setPedIntoVehicle(ped:Dynamic, vehicle:Dynamic, seatIndex:Int):Dynamic;

	/**
	 * Set the maximum time a ped can stay underwater. Maximum seems to be 50 seconds.
	 */
	@:native("SET_PED_MAX_TIME_UNDERWATER")
	static function setPedMaxTimeUnderwater(ped:Dynamic, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_INCREASED_AVOIDANCE_RADIUS")
	static function setPedIncreasedAvoidanceRadius(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_MAX_HEALTH")
	static function setPedMaxHealth(ped:Dynamic, value:Int):Dynamic;

	/**
	 * ```
	 * "IK" stands for "Inverse kinematics." I assume this has something to do with how the ped uses his legs to balance. In the scripts, the second parameter is always an int with a value of 2, 0, or sometimes 1  
	 * ```
	 */
	@:native("SET_PED_LEG_IK_MODE")
	static function setPedLegIkMode(ped:Dynamic, mode:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_LOD_MULTIPLIER")
	static function setPedLodMultiplier(ped:Dynamic, multiplier:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_MODEL_IS_SUPPRESSED")
	static function setPedModelIsSuppressed(model:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_MAX_TIME_IN_WATER")
	static function setPedMaxTimeInWater(ped:Dynamic, value:Float):Dynamic;

	/**
	 * ```
	 * Maximum possible amount of money on MP is 2000. ~JX  
	 * -----------------------------------------------------------------------------  
	 * Maximum amount that a ped can theoretically have is 65535 (0xFFFF) since the amount is stored as an unsigned short (uint16_t) value.  
	 * ```
	 */
	@:native("SET_PED_MONEY")
	static function setPedMoney(ped:Dynamic, amount:Int):Dynamic;

	/**
	 * Overwrites the minimum time the ped will stay on the ground for after being stunned. Setting this while the ped is stunned will not alter the duration of the current stun but will still effect future stuns.
	 * 
	 * Passing -1 into the second parameter `minTimeInMs` will reset the modifier, making it use the weapons original `DamageTime` as the stun duration (see `update/update.rpf/common/data/ai/weapons.meta`)
	 * 
	 * **NOTE**: Unlike what the native name implies, this works on any weapon that has its `DamageType` in the `weapons.meta` set to `ELECTRIC`.
	 */
	@:native("SET_PED_MIN_GROUND_TIME_FOR_STUNGUN")
	static function setPedMinGroundTimeForStungun(ped:Dynamic, minTimeInMs:Int):Dynamic;

	/**
	 * ```
	 * Min: 0.00  
	 * Max: 10.00  
	 * Can be used in combo with fast run cheat.  
	 * When value is set to 10.00:  
	 * Sprinting without fast run cheat: 66 m/s  
	 * Sprinting with fast run cheat: 77 m/s  
	 * Needs to be looped!  
	 * Note: According to IDA for the Xbox360 xex, when they check bgt they seem to have the min to 0.0f, but the max set to 1.15f not 10.0f.  
	 * ```
	 */
	@:native("SET_PED_MOVE_RATE_OVERRIDE")
	static function setPedMoveRateOverride(ped:Dynamic, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_MOVE_ANIMS_BLEND_OUT")
	static function setPedMoveAnimsBlendOut(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_MIN_MOVE_BLEND_RATIO")
	static function setPedMinMoveBlendRatio(ped:Dynamic, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_MOTION_BLUR")
	static function setPedMotionBlur(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * NOTE: Debugging functions are not present in the retail version of the game.  
	 * *untested but char *name could also be a hash for a localized string  
	 * ```
	 */
	@:native("SET_PED_NAME_DEBUG")
	static function setPedNameDebug(ped:Dynamic, name:String):Dynamic;

	/**
	 * ```
	 * List of movement clipsets:
	 * Thanks to elsewhat for list.
	 *  "ANIM_GROUP_MOVE_BALLISTIC"
	 *  "ANIM_GROUP_MOVE_LEMAR_ALLEY"
	 *  "clipset@move@trash_fast_turn"
	 *  "FEMALE_FAST_RUNNER"
	 *  "missfbi4prepp1_garbageman"
	 *  "move_characters@franklin@fire"
	 *  "move_characters@Jimmy@slow@"
	 *  "move_characters@michael@fire"
	 *  "move_f@flee@a"
	 *  "move_f@scared"
	 *  "move_f@sexy@a"
	 *  "move_heist_lester"
	 *  "move_injured_generic"
	 *  "move_lester_CaneUp"
	 *  "move_m@bag"
	 *  "MOVE_M@BAIL_BOND_NOT_TAZERED"
	 *  "MOVE_M@BAIL_BOND_TAZERED"
	 *  "move_m@brave"
	 *  "move_m@casual@d"
	 *  "move_m@drunk@moderatedrunk"
	 *  "MOVE_M@DRUNK@MODERATEDRUNK"
	 *  "MOVE_M@DRUNK@MODERATEDRUNK_HEAD_UP"
	 *  "MOVE_M@DRUNK@SLIGHTLYDRUNK"
	 *  "MOVE_M@DRUNK@VERYDRUNK"
	 *  "move_m@fire"
	 *  "move_m@gangster@var_e"
	 *  "move_m@gangster@var_f"
	 *  "move_m@gangster@var_i"
	 *  "move_m@JOG@"
	 *  "MOVE_M@PRISON_GAURD"
	 *  "MOVE_P_M_ONE"
	 *  "MOVE_P_M_ONE_BRIEFCASE"
	 *  "move_p_m_zero_janitor"
	 *  "move_p_m_zero_slow"
	 *  "move_ped_bucket"
	 *  "move_ped_crouched"
	 *  "move_ped_mop"
	 *  "MOVE_M@FEMME@"
	 *  "MOVE_F@FEMME@"
	 *  "MOVE_M@GANGSTER@NG"
	 *  "MOVE_F@GANGSTER@NG"
	 *  "MOVE_M@POSH@"
	 *  "MOVE_F@POSH@"
	 *  "MOVE_M@TOUGH_GUY@"
	 *  "MOVE_F@TOUGH_GUY@"
	 * ~ NotCrunchyTaco
	 * ```
	 */
	@:native("SET_PED_MOVEMENT_CLIPSET")
	static function setPedMovementClipset(ped:Dynamic, clipSet:String, transitionSpeed:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_NEVER_LEAVES_GROUP")
	static function setPedNeverLeavesGroup(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * The distance between these points, is the diagonal of a box (remember it's 3D).  
	 * ```
	 */
	@:native("SET_PED_NON_CREATION_AREA")
	static function setPedNonCreationArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_PARACHUTE_TINT_INDEX")
	static function setPedParachuteTintIndex(ped:Dynamic, tintIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_PANIC_EXIT_SCENARIO")
	static function setPedPanicExitScenario(ped:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * Sets the palette index of a ped's phone.
	 * 
	 * | Value | Color      |
	 * | :---: | :-----:    |
	 * |  `0`  | Light Blue |
	 * |  `1`  | Green      |
	 * |  `2`  | Red        |
	 * |  `3`  | Orange     |
	 * |  `4`  | Grey       |
	 * |  `5`  | Purple     |
	 * |  `6`  | Pink       |
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SET_PED_PHONE_PALETTE_IDX")
	static function setPedPhonePaletteIdx(ped:Dynamic, index:Int):Dynamic;

	/**
	 * ```
	 * This is only called once in the scripts.
	 * sub_1CD9(&l_49, 0, getElem(3, &l_34, 4), "MICHAEL", 0, 1);
	 *                     sub_1CA8("WORLD_HUMAN_SMOKING", 2);
	 *                     PED::SET_PED_PRIMARY_LOOKAT(getElem(3, &l_34, 4), PLAYER::PLAYER_PED_ID());
	 * ```
	 */
	@:native("SET_PED_PRIMARY_LOOKAT")
	static function setPedPrimaryLookat(ped:Dynamic, lookAt:Dynamic):Dynamic;

	/**
	 * **This native does absolutely nothing, just a nullsub**
	 * 
	 * ```
	 * Points to the same function as for example GET_RANDOM_VEHICLE_MODEL_IN_MEMORY and it does absolutely nothing.  
	 * ```
	 */
	@:native("SET_PED_PLAYS_HEAD_ON_HORN_ANIM_WHEN_DIES_IN_VEHICLE")
	static function setPedPlaysHeadOnHornAnimWhenDiesInVehicle(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * i could be time. Only example in the decompiled scripts uses it as -1.
	 * ```
	 */
	@:native("SET_PED_PINNED_DOWN")
	static function setPedPinnedDown(ped:Dynamic, pinned:Bool, i:Int):Dynamic;

	/**
	 * ```
	 * from extreme3.c4
	 * PED::_39D55A620FCB6A3A(PLAYER::PLAYER_PED_ID(), 8, PED::GET_PED_DRAWABLE_VARIATION(PLAYER::PLAYER_PED_ID(), 8), PED::GET_PED_TEXTURE_VARIATION(PLAYER::PLAYER_PED_ID(), 8));
	 * p1 is probably componentId
	 * ```
	 */
	@:native("SET_PED_PRELOAD_VARIATION_DATA")
	static function setPedPreloadVariationData(ped:Dynamic, slot:Int, drawableId:Int, textureId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_PRELOAD_PROP_DATA")
	static function setPedPreloadPropData(ped:Dynamic, componentId:Int, drawableId:Int, textureId:Int):Bool;

	/**
	 * 
	 */
	@:native("SET_PED_RAGDOLL_FORCE_FALL")
	static function setPedRagdollForceFall(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_PREFERRED_COVER_SET")
	static function setPedPreferredCoverSet(ped:Dynamic, itemSet:Dynamic):Dynamic;

	/**
	 * Causes Ped to ragdoll on collision with any object (e.g Running into trashcan). If applied to player you will sometimes trip on the sidewalk.
	 * Needs to be recalled after each ragdoll from a Collision.
	 */
	@:native("SET_PED_RAGDOLL_ON_COLLISION")
	static function setPedRagdollOnCollision(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * This native is used to set prop variation on a ped. Components, drawables and textures IDs are related to the ped model.
	 * 
	 * ### MP Freemode list of props
	 * 
	 * **0**: Hats
	 * **1**: Glasses
	 * **2**: Ears
	 * **6**: Watches
	 * **7**: Bracelets
	 * 
	 * List of Prop IDs
	 * 
	 * ```cpp
	 * enum eAnchorPoints
	 * {
	 *     ANCHOR_HEAD = 0, // "p_head"
	 *     ANCHOR_EYES = 1, // "p_eyes"
	 *     ANCHOR_EARS = 2, // "p_ears"
	 *     ANCHOR_MOUTH = 3, // "p_mouth"
	 *     ANCHOR_LEFT_HAND = 4, // "p_lhand"
	 *     ANCHOR_RIGHT_HAND = 5, // "p_rhand"
	 *     ANCHOR_LEFT_WRIST = 6, // "p_lwrist"
	 *     ANCHOR_RIGHT_WRIST = 7, // "p_rwrist"
	 *     ANCHOR_HIP = 8, // "p_lhip"
	 *     ANCHOR_LEFT_FOOT = 9, // "p_lfoot"
	 *     ANCHOR_RIGHT_FOOT = 10, // "p_rfoot"
	 *     ANCHOR_PH_L_HAND = 11, // "ph_lhand"
	 *     ANCHOR_PH_R_HAND = 12, // "ph_rhand"
	 *     NUM_ANCHORS = 13,
	 * };
	 * ```
	 */
	@:native("SET_PED_PROP_INDEX")
	static function setPedPropIndex(ped:Dynamic, componentId:Int, drawableId:Int, textureId:Int, attach:Bool):Dynamic;

	/**
	 * ```
	 * p1 is always 0 in R* scripts; and a quick disassembly seems to indicate that p1 is unused.  
	 * ```
	 */
	@:native("SET_PED_RANDOM_COMPONENT_VARIATION")
	static function setPedRandomComponentVariation(ped:Dynamic, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_RELATIONSHIP_GROUP_DEFAULT_HASH")
	static function setPedRelationshipGroupDefaultHash(ped:Dynamic, hash:Int):Dynamic;

	/**
	 * PED::SET_PED_RESET_FLAG(PLAYER::PLAYER_PED_ID(), 240, 1);
	 * Known values:
	 */
	@:native("SET_PED_RESET_FLAG")
	static function setPedResetFlag(ped:Dynamic, flagId:Int, doReset:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_RESERVE_PARACHUTE_TINT_INDEX")
	static function setPedReserveParachuteTintIndex(ped:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_RANDOM_PROPS")
	static function setPedRandomProps(ped:Dynamic):Dynamic;

	/**
	 * When this ped receives its next script task, they will exit from their scenario using the normal scenario exit.
	 * Exiting the scenario may take several frames while the ped is playing the exit animation.
	 * If the ped is not currently using a scenario at the time of the command or 0,0,0 is specified as the reaction position,
	 * then the ped will by default attempt to direct their exit forwards.
	 */
	@:native("_SET_PED_SHOULD_PLAY_DIRECTED_SCENARIO_EXIT")
	static function SetPedShouldPlayDirectedScenarioExit(ped:Dynamic, x:Float, y:Float, z:Float):Bool;

	/**
	 * This native sets a scuba mask for freemode models and an oxygen bottle for player_\* models. It works on freemode and player_\* models.
	 */
	@:native("_SET_PED_SCUBA_GEAR_VARIATION")
	static function SetPedScubaGearVariation(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_RELATIONSHIP_GROUP_HASH")
	static function setPedRelationshipGroupHash(ped:Dynamic, hash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_SHOULD_PLAY_NORMAL_SCENARIO_EXIT")
	static function setPedShouldPlayNormalScenarioExit(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * shootRate 0-1000  
	 * ```
	 */
	@:native("SET_PED_SHOOT_RATE")
	static function setPedShootRate(ped:Dynamic, shootRate:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_SEEING_RANGE")
	static function setPedSeeingRange(ped:Dynamic, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_SHOULD_PLAY_IMMEDIATE_SCENARIO_EXIT")
	static function setPedShouldPlayImmediateScenarioExit(ped:Dynamic):Dynamic;

	/**
	 * Fires a weapon at a coordinate using a ped.
	 */
	@:native("SET_PED_SHOOTS_AT_COORD")
	static function setPedShootsAtCoord(ped:Dynamic, x:Float, y:Float, z:Float, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_STAY_IN_VEHICLE_WHEN_JACKED")
	static function setPedStayInVehicleWhenJacked(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_SPHERE_DEFENSIVE_AREA")
	static function setPedSphereDefensiveArea(ped:Dynamic, x:Float, y:Float, z:Float, radius:Float, p5:Bool, p6:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_SHOULD_PLAY_FLEE_SCENARIO_EXIT")
	static function setPedShouldPlayFleeScenarioExit(ped:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * p1 is usually 0 in the scripts. action is either 0 or a pointer to "DEFAULT_ACTION".  
	 * ```
	 */
	@:native("SET_PED_STEALTH_MOVEMENT")
	static function setPedStealthMovement(ped:Dynamic, p1:Bool, action:String):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_STEERS_AROUND_PEDS")
	static function setPedSteersAroundPeds(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_STEERS_AROUND_OBJECTS")
	static function setPedSteersAroundObjects(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_STEERS_AROUND_VEHICLES")
	static function setPedSteersAroundVehicles(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sweat is set to 100.0 or 0.0 in the decompiled scripts.  
	 * ```
	 */
	@:native("SET_PED_SWEAT")
	static function setPedSweat(ped:Dynamic, sweat:Float):Dynamic;

	/**
	 * Ped no longer takes critical damage modifiers if set to FALSE.
	 * 
	 * Example: Headshotting a player no longer one shots them. Instead they will take the same damage as a torso shot.
	 */
	@:native("SET_PED_SUFFERS_CRITICAL_HITS")
	static function setPedSuffersCriticalHits(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_STRAFE_CLIPSET")
	static function setPedStrafeClipset(ped:Dynamic, clipSet:String):Dynamic;

	/**
	 * ```
	 * Only 1 and 2 appear in the scripts. combatbehaviour.meta seems to only have TLR_SearchForTarget for all peds, but we don't know if that's 1 or 2.  
	 * ```
	 */
	@:native("SET_PED_TARGET_LOSS_RESPONSE")
	static function setPedTargetLossResponse(ped:Dynamic, responseType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_TO_LOAD_COVER")
	static function setPedToLoadCover(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Return variable is never used in R*'s scripts.  
	 * Not sure what p2 does. It seems like it would be a time judging by it's usage in R*'s scripts, but didn't seem to affect anything in my testings.  
	 * x, y, and z are coordinates, most likely to where the ped will fall.  
	 * p7 is probably the force of the fall, but untested, so I left the variable name the same.  
	 * p8 to p13 are always 0f in R*'s scripts.  
	 * (Simplified) Example of the usage of the function from R*'s scripts:  
	 * ped::set_ped_to_ragdoll_with_fall(ped, 1500, 2000, 1, -entity::get_entity_forward_vector(ped), 1f, 0f, 0f, 0f, 0f, 0f, 0f);  
	 * ```
	 */
	@:native("SET_PED_TO_RAGDOLL_WITH_FALL")
	static function setPedToRagdollWithFall(ped:Dynamic, time:Int, p2:Int, ragdollType:Int, x:Float, y:Float, z:Float, p7:Float, p8:Float, p9:Float, p10:Float, p11:Float, p12:Float, p13:Float):Bool;

	/**
	 * 
	 */
	@:native("SET_PED_TO_INFORM_RESPECTED_FRIENDS")
	static function setPedToInformRespectedFriends(ped:Dynamic, radius:Float, maxFriends:Int):Dynamic;

	/**
	 * p4/p5: Unusued in TU27
	 * 
	 * ### Ragdoll Types
	 * 
	 * **0**: CTaskNMRelax
	 * **1**: CTaskNMScriptControl: Hardcoded not to work in networked environments.
	 * **Else**: CTaskNMBalance
	 */
	@:native("SET_PED_TO_RAGDOLL")
	static function setPedToRagdoll(ped:Dynamic, time1:Int, time2:Int, ragdollType:Int, p4:Bool, p5:Bool, p6:Bool):Bool;

	/**
	 * 
	 */
	@:native("SET_PED_VISUAL_FIELD_CENTER_ANGLE")
	static function setPedVisualFieldCenterAngle(ped:Dynamic, angle:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 5: Any p4
	 * ```
	 */
	@:native("SET_PED_VEHICLE_FORCED_SEAT_USAGE")
	static function setPedVehicleForcedSeatUsage(ped:Dynamic, vehicle:Dynamic, seatIndex:Int, flags:Int):Dynamic;

	/**
	 * ```
	 * This native refers to the field of vision the ped has above them, starting at 0 degrees. 90f would let the ped see enemies directly above of them.  
	 * ```
	 */
	@:native("SET_PED_VISUAL_FIELD_MAX_ELEVATION_ANGLE")
	static function setPedVisualFieldMaxElevationAngle(ped:Dynamic, angle:Float):Dynamic;

	/**
	 * ```
	 * p2 is usually -1 in the scripts. action is either 0 or "DEFAULT_ACTION".  
	 * ```
	 */
	@:native("SET_PED_USING_ACTION_MODE")
	static function setPedUsingActionMode(ped:Dynamic, p1:Bool, p2:Int, action:String):Dynamic;

	/**
	 * ```
	 * This native refers to the field of vision the ped has below them, starting at 0 degrees. The angle value should be negative.  
	 * ```
	 */
	@:native("SET_PED_VISUAL_FIELD_MIN_ELEVATION_ANGLE")
	static function setPedVisualFieldMinElevationAngle(ped:Dynamic, angle:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_VISUAL_FIELD_MAX_ANGLE")
	static function setPedVisualFieldMaxAngle(ped:Dynamic, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_VISUAL_FIELD_MIN_ANGLE")
	static function setPedVisualFieldMinAngle(ped:Dynamic, value:Float):Dynamic;

	/**
	 * ```
	 * combined with PED::SET_PED_WETNESS_HEIGHT(), this native makes the ped drenched in water up to the height specified in the other function  
	 * ```
	 */
	@:native("SET_PED_WETNESS_ENABLED_THIS_FRAME")
	static function setPedWetnessEnabledThisFrame(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * It adds the wetness level to the player clothing/outfit. As if player just got out from water surface.  
	 * ```
	 */
	@:native("SET_PED_WETNESS_HEIGHT")
	static function setPedWetnessHeight(ped:Dynamic, height:Float):Dynamic;

	/**
	 * ```
	 * Min and max are usually 100.0 and 200.0
	 * ```
	 */
	@:native("SET_POP_CONTROL_SPHERE_THIS_FRAME")
	static function setPopControlSphereThisFrame(x:Float, y:Float, z:Float, min:Float, max:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_VISUAL_FIELD_PERIPHERAL_RANGE")
	static function setPedVisualFieldPeripheralRange(ped:Dynamic, range:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_WEAPON_MOVEMENT_CLIPSET")
	static function setPedWeaponMovementClipset(ped:Dynamic, clipSet:String):Dynamic;

	/**
	 * ```
	 * Sets the relationship between two groups. This should be called twice (once for each group).  
	 * Relationship types:  
	 * 0 = Companion  
	 * 1 = Respect  
	 * 2 = Like  
	 * 3 = Neutral  
	 * 4 = Dislike  
	 * 5 = Hate  
	 * 255 = Pedestrians  
	 * Example:  
	 * PED::SET_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C);  
	 * PED::SET_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);  
	 * ```
	 */
	@:native("SET_RELATIONSHIP_BETWEEN_GROUPS")
	static function setRelationshipBetweenGroups(relationship:Int, group1:Int, group2:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_SCENARIO_PEDS_SPAWN_IN_SPHERE_AREA")
	static function setScenarioPedsSpawnInSphereArea(x:Float, y:Float, z:Float, range:Float, p4:Int):Dynamic;

	/**
	 * ```
	 * Works for both player and peds, but some flags don't seem to work for the player (1, for example)  
	 * 1 - Blocks ragdolling when shot.  
	 * 2 - Blocks ragdolling when hit by a vehicle. The ped still might play a falling animation.  
	 * 4 - Blocks ragdolling when set on fire.  
	 * -----------------------------------------------------------------------  
	 * There seem to be 26 flags  
	 * ```
	 */
	@:native("SET_RAGDOLL_BLOCKING_FLAGS")
	static function setRagdollBlockingFlags(ped:Dynamic, flags:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_SCRIPTED_CONVERSION_COORD_THIS_FRAME")
	static function setScriptedConversionCoordThisFrame(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * Set the number of scenario peds on the entire map
	 */
	@:native("SET_SCENARIO_PED_DENSITY_MULTIPLIER_THIS_FRAME")
	static function setScenarioPedDensityMultiplierThisFrame(interiorMult:Float, exteriorMult:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_SYNCHRONIZED_SCENE_ORIGIN")
	static function setSynchronizedSceneOrigin(sceneID:Int, x:Float, y:Float, z:Float, roll:Float, pitch:Float, yaw:Float, p7:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_SYNCHRONIZED_SCENE_LOOPED")
	static function setSynchronizedSceneLooped(sceneID:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_SCRIPTED_ANIM_SEAT_OFFSET")
	static function setScriptedAnimSeatOffset(ped:Dynamic, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_RELATIONSHIP_GROUP_DONT_AFFECT_WANTED_LEVEL")
	static function SetRelationshipGroupDontAffectWantedLevel(group:Int, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_SYNCHRONIZED_SCENE_RATE")
	static function setSynchronizedSceneRate(sceneID:Int, rate:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_SYNCHRONIZED_SCENE_PHASE")
	static function setSynchronizedScenePhase(sceneID:Int, phase:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SPAWNPOINTS_GET_SEARCH_RESULT")
	static function spawnpointsGetSearchResult(randomInt:Int, x:Dynamic, y:Dynamic, z:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SPAWNPOINTS_CANCEL_SEARCH")
	static function spawnpointsCancelSearch():Dynamic;

	/**
	 * 
	 */
	@:native("SPAWNPOINTS_IS_SEARCH_COMPLETE")
	static function spawnpointsIsSearchComplete():Bool;

	/**
	 * ```
	 * Sets a value indicating whether scenario peds should be returned by the next call to a command that returns peds. Eg. GET_CLOSEST_PED.  
	 * ```
	 */
	@:native("SET_SCENARIO_PEDS_TO_BE_RETURNED_BY_NEXT_COMMAND")
	static function setScenarioPedsToBeReturnedByNextCommand(value:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("STOP_PED_WEAPON_FIRING_WHEN_DROPPED")
	static function stopPedWeaponFiringWhenDropped(ped:Dynamic):Dynamic;

	/**
	 * Kicks the ped from the current vehicle and keeps the rendering-focus on this ped (also disables its collision). If doing this for your player ped, you'll still be able to drive the vehicle.\
	 * Only to be used in very specific situations where the ped needs to be inside the car still but not attached.
	 */
	@:native("SPECIAL_FUNCTION_DO_NOT_USE")
	static function specialFunctionDoNotUse(ped:Dynamic, noCollisionUntilClear:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_SYNCHRONIZED_SCENE_HOLD_LAST_FRAME")
	static function setSynchronizedSceneHoldLastFrame(sceneID:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SPAWNPOINTS_GET_NUM_SEARCH_RESULTS")
	static function spawnpointsGetNumSearchResults():Int;

	/**
	 * See [`SET_PED_HEAD_BLEND_DATA`](#\_0x9414E18B9434C2FE)
	 */
	@:native("UPDATE_PED_HEAD_BLEND_DATA")
	static function updatePedHeadBlendData(ped:Dynamic, shapeMix:Float, skinMix:Float, thirdMix:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SPAWNPOINTS_GET_SEARCH_RESULT_FLAGS")
	static function spawnpointsGetSearchResultFlags(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * gtaforums.com/topic/885580-ped-headshotmugshot-txd/  
	 * ```
	 */
	@:native("UNREGISTER_PEDHEADSHOT")
	static function unregisterPedheadshot(id:Int):Dynamic;

	/**
	 * 
	 */
	@:native("WAS_PED_KNOCKED_OUT")
	static function wasPedKnockedOut(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("SPAWNPOINTS_IS_SEARCH_ACTIVE")
	static function spawnpointsIsSearchActive():Bool;

	/**
	 * ```
	 * Despite this function's name, it simply returns whether the specified handle is a Ped.  
	 * ```
	 */
	@:native("WAS_PED_SKELETON_UPDATED")
	static function wasPedSkeletonUpdated(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("SPAWNPOINTS_START_SEARCH")
	static function spawnpointsStartSearch(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, interiorFlags:Int, scale:Float, duration:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SPAWNPOINTS_IS_SEARCH_FAILED")
	static function spawnpointsIsSearchFailed():Bool;

	/**
	 * 
	 */
	@:native("SPAWNPOINTS_START_SEARCH_IN_ANGLED_AREA")
	static function spawnpointsStartSearchInAngledArea(x:Float, y:Float, z:Float, p3:Float, p4:Float, p5:Float, p6:Float, interiorFlags:Int, scale:Float, duration:Int):Dynamic;

	/**
	 * 
	 */
	@:native("TAKE_OWNERSHIP_OF_SYNCHRONIZED_SCENE")
	static function takeOwnershipOfSynchronizedScene(scene:Int):Dynamic;

	/**
	 * Verifies whether ped was eliminated through stealth.
	 */
	@:native("WAS_PED_KILLED_BY_STEALTH")
	static function wasPedKilledByStealth(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("STOP_ANY_PED_MODEL_BEING_SUPPRESSED")
	static function stopAnyPedModelBeingSuppressed():Dynamic;

	/**
	 * 
	 */
	@:native("WAS_PED_KILLED_BY_TAKEDOWN")
	static function wasPedKilledByTakedown(ped:Dynamic):Bool;

}
