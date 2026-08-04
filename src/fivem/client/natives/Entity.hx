package fivem.client.natives;

@:native("_G")
extern class Entity {
	/**
	 * Applies a force to the specified entity.
	 * 
	 * ```cpp
	 * enum eForceType
	 * {
	 *     MinForce = 0,
	 *     MaxForceRot = 1,
	 *     MinForce2 = 2,
	 *     MaxForceRot2 = 3,
	 *     ForceNoRot = 4,
	 *     ForceRotPlusForce = 5
	 * }
	 * ```
	 * 
	 * Research/documentation on the gtaforums can be found [here](https://gtaforums.com/topic/885669-precisely-define-object-physics/) and [here](https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/).
	 */
	@:native("APPLY_FORCE_TO_ENTITY")
	static function applyForceToEntity(entity:Dynamic, forceType:Int, x:Float, y:Float, z:Float, offX:Float, offY:Float, offZ:Float, boneIndex:Int, isDirectionRel:Bool, ignoreUpVec:Bool, isForceRel:Bool, p12:Bool, p13:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS")
	static function applyForceToEntityCenterOfMass(entity:Dynamic, forceType:Int, x:Float, y:Float, z:Float, p5:Bool, isDirectionRel:Bool, isForceRel:Bool, p8:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_ATTACH_ENTITY_BONE_TO_ENTITY_BONE")
	static function AttachEntityBoneToEntityBone(entity1:Dynamic, entity2:Dynamic, entityBone:Int, entityBone2:Int, p4:Bool, p5:Bool):Dynamic;

	/**
	 * ```
	 * breakForce is the amount of force required to break the bond.
	 * p14 - is always 1 in scripts
	 * p15 - is 1 or 0 in scripts - unknown what it does
	 * p16 - controls collision between the two entities (FALSE disables collision).
	 * p17 - do not teleport entity to be attached to the position of the bone Index of the target entity (if 1, entity will not be teleported to target bone)
	 * p18 - is always 2 in scripts.
	 * ```
	 */
	@:native("ATTACH_ENTITY_TO_ENTITY_PHYSICALLY")
	static function attachEntityToEntityPhysically(entity1:Dynamic, entity2:Dynamic, boneIndex1:Int, boneIndex2:Int, xPos1:Float, yPos1:Float, zPos1:Float, xPos2:Float, yPos2:Float, zPos2:Float, xRot:Float, yRot:Float, zRot:Float, breakForce:Float, fixedRot:Bool, p15:Bool, collision:Bool, teleport:Bool, p18:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_ATTACH_ENTITY_BONE_TO_ENTITY_BONE_PHYSICALLY")
	static function AttachEntityBoneToEntityBonePhysically(entity1:Dynamic, entity2:Dynamic, entityBone:Int, entityBone2:Int, p4:Bool, p5:Bool):Dynamic;

	/**
	 * This native **could affect** the arguments of the `CEventNetworkEntityDamage` game event, by clearing the damaging entity before the event is fired.
	 */
	@:native("CLEAR_ENTITY_LAST_DAMAGE_ENTITY")
	static function clearEntityLastDamageEntity(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("CREATE_FORCED_OBJECT")
	static function createForcedObject(x:Float, y:Float, z:Float, p3:Dynamic, modelHash:Int, p5:Bool):Dynamic;

	/**
	 * Attach an entity to the specified entity.
	 */
	@:native("ATTACH_ENTITY_TO_ENTITY")
	static function attachEntityToEntity(entity1:Dynamic, entity2:Dynamic, boneIndex:Int, xPos:Float, yPos:Float, zPos:Float, xRot:Float, yRot:Float, zRot:Float, p9:Bool, useSoftPinning:Bool, collision:Bool, isPed:Bool, rotationOrder:Int, syncRot:Bool):Dynamic;

	/**
	 * ```
	 * Only works with objects!  
	 * Network players do not see changes done with this.  
	 * ```
	 */
	@:native("CREATE_MODEL_SWAP")
	static function createModelSwap(x:Float, y:Float, z:Float, radius:Float, originalModel:Int, newModel:Int, p6:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CREATE_MODEL_HIDE_EXCLUDING_SCRIPT_OBJECTS")
	static function createModelHideExcludingScriptObjects(x:Float, y:Float, z:Float, radius:Float, model:Int, p5:Bool):Dynamic;

	/**
	 * Delete the specified entity, and invalidate the passed handle (i.e., the in/out argument).
	 * You might want to check if the entity exists before with [DOES_ENTITY_EXIST](#\_0x7239B21A38F536BA).
	 */
	@:native("DELETE_ENTITY")
	static function deleteEntity(entity:Dynamic):Dynamic;

	/**
	 * ```
	 * p5 = sets as true in scripts  
	 * Same as the comment for CREATE_MODEL_SWAP unless for some reason p5 affects it this only works with objects as well.  
	 * Network players do not see changes done with this.  
	 * ```
	 */
	@:native("CREATE_MODEL_HIDE")
	static function createModelHide(x:Float, y:Float, z:Float, radius:Float, model:Int, p5:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DETACH_ENTITY")
	static function detachEntity(entity:Dynamic, dynamic_:Bool, collision:Bool):Dynamic;

	/**
	 * Checks whether an entity exists in the game world.
	 */
	@:native("DOES_ENTITY_EXIST")
	static function doesEntityExist(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("DOES_ENTITY_BELONG_TO_THIS_SCRIPT")
	static function doesEntityBelongToThisScript(entity:Dynamic, p2:Bool):Bool;

	/**
	 * 
	 */
	@:native("DOES_ENTITY_HAVE_PHYSICS")
	static function doesEntityHavePhysics(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("DOES_ENTITY_HAVE_DRAWABLE")
	static function doesEntityHaveDrawable(entity:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_DOES_ENTITY_HAVE_ANIM_DIRECTOR")
	static function DoesEntityHaveAnimDirector(entity:Dynamic):Bool;

	/**
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("GET_ANIM_DURATION")
	static function getAnimDuration(animDict:String, animName:String):Float;

	/**
	 * ```
	 * ENABLE_*
	 * ```
	 */
	@:native("_ENABLE_ENTITY_UNK")
	static function EnableEntityUnk(entity:Dynamic):Dynamic;

	/**
	 * Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using [`SET_ENTITY_COORDS`](#\_0x06843DA7060A026B).
	 */
	@:native("FREEZE_ENTITY_POSITION")
	static function freezeEntityPosition(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("GET_ENTITY_ALPHA")
	static function getEntityAlpha(entity:Dynamic):Int;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_DOES_ENTITY_HAVE_SKELETON_DATA")
	static function DoesEntityHaveSkeletonData(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_GET_ENTITY_BONE_COUNT")
	static function GetEntityBoneCount(entity:Dynamic):Int;

	/**
	 * ```
	 * Based on carmod_shop script decompile this takes a vehicle parameter. It is called when repair is done on initial enter.  
	 * ```
	 */
	@:native("FORCE_ENTITY_AI_AND_ANIMATION_UPDATE")
	static function forceEntityAiAndAnimationUpdate(entity:Dynamic):Dynamic;

	/**
	 * ```
	 * Returns a float value representing animation's total playtime in milliseconds.  
	 * Example:  
	 * GET_ENTITY_ANIM_TOTAL_TIME(PLAYER_ID(),"amb@world_human_yoga@female@base","base_b")   
	 * return 20800.000000  
	 * ```
	 * 
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("GET_ENTITY_ANIM_TOTAL_TIME")
	static function getEntityAnimTotalTime(entity:Dynamic, animDict:String, animName:String):Float;

	/**
	 * ```
	 * In the script "player_scene_t_bbfight.c4":  
	 * "if (ENTITY::FIND_ANIM_EVENT_PHASE(&l_16E, &l_19F[v_4/ *16* /], v_9, &v_A, &v_B))"  
	 * -- &l_16E (p0) is requested as an anim dictionary earlier in the script.  
	 * -- &l_19F[v_4/ *16* /] (p1) is used in other natives in the script as the "animation" param.  
	 * -- v_9 (p2) is instantiated as "victim_fall"; I'm guessing that's another anim  
	 * --v_A and v_B (p3 & p4) are both set as -1.0, but v_A is used immediately after this native for:   
	 * "if (v_A < ENTITY::GET_ENTITY_ANIM_CURRENT_TIME(...))"  
	 * Both v_A and v_B are seemingly used to contain both Vector3's and floats, so I can't say what either really is other than that they are both output parameters. p4 looks more like a *Vector3 though  
	 * -alphazolam  
	 * ```
	 * 
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("FIND_ANIM_EVENT_PHASE")
	static function findAnimEventPhase(animDictionary:String, animName:String, p2:String, p3:Dynamic, p4:Dynamic):Bool;

	/**
	 * ```
	 * Gets the world rotation of the specified bone of the specified entity.
	 * This native is used in casinoroulette.c but I don't know yet what is the difference with _GET_ENTITY_BONE_ROTATION
	 * ```
	 */
	@:native("_GET_ENTITY_BONE_POSITION_2")
	static function GetEntityBonePosition2(entity:Dynamic, boneIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GET_COLLISION_NORMAL_OF_LAST_HIT_FOR_ENTITY")
	static function getCollisionNormalOfLastHitForEntity(entity:Dynamic):Dynamic;

	/**
	 * ```
	 * Returns a float value representing animation's current playtime with respect to its total playtime. This value increasing in a range from [0 to 1] and wrap back to 0 when it reach 1.  
	 * Example:  
	 * 0.000000 - mark the starting of animation.  
	 * 0.500000 - mark the midpoint of the animation.  
	 * 1.000000 - mark the end of animation.  
	 * ```
	 * 
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("GET_ENTITY_ANIM_CURRENT_TIME")
	static function getEntityAnimCurrentTime(entity:Dynamic, animDict:String, animName:String):Float;

	/**
	 * ```
	 * Returns the index of the bone. If the bone was not found, -1 will be returned.   
	 * list:  
	 * pastebin.com/D7JMnX1g  
	 * BoneNames:  
	 * 	chassis,  
	 * 	windscreen,  
	 * 	seat_pside_r,  
	 * 	seat_dside_r,  
	 * 	bodyshell,  
	 * 	suspension_lm,  
	 * 	suspension_lr,  
	 * 	platelight,  
	 * 	attach_female,  
	 * 	attach_male,  
	 * 	bonnet,  
	 * 	boot,  
	 * 	chassis_dummy,	//Center of the dummy  
	 * 	chassis_Control,	//Not found yet  
	 * 	door_dside_f,	//Door left, front  
	 * 	door_dside_r,	//Door left, back  
	 * 	door_pside_f,	//Door right, front  
	 * 	door_pside_r,	//Door right, back  
	 * 	Gun_GripR,  
	 * 	windscreen_f,  
	 * 	platelight,	//Position where the light above the numberplate is located  
	 * 	VFX_Emitter,  
	 * 	window_lf,	//Window left, front  
	 * 	window_lr,	//Window left, back  
	 * 	window_rf,	//Window right, front  
	 * 	window_rr,	//Window right, back  
	 * 	engine,	//Position of the engine  
	 * 	gun_ammo,  
	 * 	ROPE_ATTATCH,	//Not misspelled. In script "finale_heist2b.c4".  
	 * 	wheel_lf,	//Wheel left, front  
	 * 	wheel_lr,	//Wheel left, back  
	 * 	wheel_rf,	//Wheel right, front  
	 * 	wheel_rr,	//Wheel right, back  
	 * 	exhaust,	//Exhaust. shows only the position of the stock-exhaust  
	 * 	overheat,	//A position on the engine(not exactly sure, how to name it)  
	 * 	misc_e,	//Not a car-bone.  
	 * 	seat_dside_f,	//Driver-seat  
	 * 	seat_pside_f,	//Seat next to driver  
	 * 	Gun_Nuzzle,  
	 * 	seat_r  
	 * I doubt that the function is case-sensitive, since I found a "Chassis" and a "chassis". - Just tested: Definitely not case-sensitive.  
	 * ```
	 */
	@:native("GET_ENTITY_BONE_INDEX_BY_NAME")
	static function getEntityBoneIndexByName(entity:Dynamic, boneName:String):Int;

	/**
	 * 
	 */
	@:native("GET_ENTITY_COLLISION_DISABLED")
	static function getEntityCollisionDisabled(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GET_ENTITY_ATTACHED_TO")
	static function getEntityAttachedTo(entity:Dynamic):Dynamic;

	/**
	 * Gets the local rotation of the specified bone of the specified entity.
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_GET_ENTITY_BONE_ROTATION_LOCAL")
	static function GetEntityBoneRotationLocal(entity:Dynamic, boneIndex:Int):Dynamic;

	/**
	 * ```
	 * Gets the world rotation of the specified bone of the specified entity.
	 * ```
	 */
	@:native("_GET_ENTITY_BONE_ROTATION")
	static function GetEntityBoneRotation(entity:Dynamic, boneIndex:Int):Dynamic;

	/**
	 * ```
	 * Gets the entity's forward vector.
	 * ```
	 */
	@:native("GET_ENTITY_FORWARD_VECTOR")
	static function getEntityForwardVector(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_ENTITY_CAN_BE_DAMAGED")
	static function getEntityCanBeDamaged(entity:Dynamic):Bool;

	/**
	 * ```
	 * Gets the X-component of the entity's forward vector.  
	 * ```
	 */
	@:native("GET_ENTITY_FORWARD_X")
	static function getEntityForwardX(entity:Dynamic):Float;

	/**
	 * Gets the current coordinates (world position) for a specified entity.
	 */
	@:native("GET_ENTITY_COORDS")
	static function getEntityCoords(entity:Dynamic, alive:Bool):Dynamic;

	/**
	 * ```
	 * Returns the heading of the entity in degrees. Also know as the "Yaw" of an entity.
	 * ```
	 */
	@:native("GET_ENTITY_HEADING")
	static function getEntityHeading(entity:Dynamic):Float;

	/**
	 * ```
	 * Gets the Y-component of the entity's forward vector.  
	 * ```
	 */
	@:native("GET_ENTITY_FORWARD_Y")
	static function getEntityForwardY(entity:Dynamic):Float;

	/**
	 * Gets the heading of the entity physics in degrees, which tends to be more accurate than just [`GET_ENTITY_HEADING`](#\_0xE83D4F9BA2A38914). This can be clearly seen while, for example, ragdolling a ped/player.
	 */
	@:native("GET_ENTITY_HEADING_FROM_EULERS")
	static function getEntityHeadingFromEulers(entity:Dynamic):Float;

	/**
	 * ```
	 * Returns an integer value of entity's current health.
	 * Example of range for ped:
	 * - Player [0 to 200]
	 * - Ped [100 to 200]
	 * - Vehicle [0 to 1000]
	 * - Object [0 to 1000]
	 * Health is actually a float value but this native casts it to int.
	 * In order to get the actual value, do:
	 * float health = *(float *)(entityAddress + 0x280);
	 * ```
	 */
	@:native("GET_ENTITY_HEALTH")
	static function getEntityHealth(entity:Dynamic):Int;

	/**
	 * ```
	 * Returns the LOD distance of an entity.  
	 * ```
	 */
	@:native("GET_ENTITY_LOD_DIST")
	static function getEntityLodDist(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_ENTITY_HEIGHT")
	static function getEntityHeight(entity:Dynamic, X:Float, Y:Float, Z:Float, atTop:Bool, inWorldCoords:Bool):Float;

	/**
	 * ```
	 * Return height (z-dimension) above ground.   
	 * Example: The pilot in a titan plane is 1.844176 above ground.  
	 * How can i convert it to meters?  
	 * Everything seems to be in meters, probably this too.  
	 * ```
	 */
	@:native("GET_ENTITY_HEIGHT_ABOVE_GROUND")
	static function getEntityHeightAboveGround(entity:Dynamic):Float;

	/**
	 * A population type, from the following enum: https://alloc8or.re/gta5/doc/enums/ePopulationType.txt
	 */
	@:native("GET_ENTITY_POPULATION_TYPE")
	static function getEntityPopulationType(entity:Dynamic):Int;

	/**
	 * ```
	 * Return an integer value of entity's maximum health.  
	 * Example:  
	 * - Player = 200  
	 * ```
	 */
	@:native("GET_ENTITY_MAX_HEALTH")
	static function getEntityMaxHealth(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_ENTITY_MATRIX")
	static function getEntityMatrix(entity:Dynamic, forwardVector:Dynamic, rightVector:Dynamic, upVector:Dynamic, position:Dynamic):Dynamic;

	/**
	 * ```
	 * GET_ENTITY_*
	 * 
	 * Seems to return the handle of the entity's portable pickup.
	 * 
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("_GET_ENTITY_PICKUP")
	static function GetEntityPickup(entity:Dynamic, modelHash:Int):Dynamic;

	/**
	 * Returns the model hash from an entity.
	 */
	@:native("GET_ENTITY_MODEL")
	static function getEntityModel(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_ENTITY_PITCH")
	static function getEntityPitch(entity:Dynamic):Float;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_GET_ENTITY_PROOFS")
	static function GetEntityProofs(entity:Dynamic, bulletProof:Dynamic, fireProof:Dynamic, explosionProof:Dynamic, collisionProof:Dynamic, meleeProof:Dynamic, steamProof:Dynamic, p7:Dynamic, drownProof:Dynamic):Bool;

	/**
	 * ```
	 * Displays the current ROLL axis of the entity [-180.0000/180.0000+]  
	 * (Sideways Roll) such as a vehicle tipped on its side  
	 * ```
	 */
	@:native("GET_ENTITY_ROLL")
	static function getEntityRoll(entity:Dynamic):Float;

	/**
	 * **NOTE**: What you use for rotationOrder when getting must be the same as rotationOrder when setting the rotation.
	 * 
	 * ```cpp
	 * enum eRotationOrder {
	 *     // Rotate around the z-axis, then the y-axis and finally the x-axis.
	 *     ROT_ZYX = 0,
	 *     // Rotate around the y-axis, then the z-axis and finally the x-axis.
	 *     ROT_YZX = 1,
	 *     // Rotate around the z-axis, then the x-axis and finally the y-axis.
	 *     ROT_ZXY = 2,
	 *     // Rotate around the x-axis, then the z-axis and finally the y-axis.
	 *     ROT_XZY = 3,
	 *     // Rotate around the y-axis, then the x-axis and finally the z-axis.
	 *     ROT_YXZ = 4,
	 *     // Rotate around the x-axis, then the y-axis and finally the z-axis.
	 *     ROT_XYZ = 5,
	 * }
	 * ```
	 */
	@:native("GET_ENTITY_ROTATION")
	static function getEntityRotation(entity:Dynamic, rotationOrder:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GET_ENTITY_ROTATION_VELOCITY")
	static function getEntityRotationVelocity(entity:Dynamic):Dynamic;

	/**
	 * ```
	 * w is the correct parameter name!  
	 * ```
	 */
	@:native("GET_ENTITY_QUATERNION")
	static function getEntityQuaternion(entity:Dynamic, x:Dynamic, y:Dynamic, z:Dynamic, w:Dynamic):Dynamic;

	/**
	 * ```
	 * All ambient entities in-world seem to have the same value for the second argument (Any *script), depending on when the scripthook was activated/re-activated. I've seen numbers from ~5 to almost 70 when the value was translated with to_string. The function return value seems to always be 0.  
	 * ```
	 */
	@:native("GET_ENTITY_SCRIPT")
	static function getEntityScript(entity:Dynamic, script:Dynamic):String;

	/**
	 * 
	 */
	@:native("GET_ENTITY_UPRIGHT_VALUE")
	static function getEntityUprightValue(entity:Dynamic):Float;

	/**
	 * ```
	 * Relative can be used for getting speed relative to the frame of the vehicle, to determine for example, if you are going in reverse (-y speed) or not (+y speed).  
	 * ```
	 */
	@:native("GET_ENTITY_SPEED_VECTOR")
	static function getEntitySpeedVector(entity:Dynamic, relative:Bool):Dynamic;

	/**
	 * Get the speed of a entity.
	 */
	@:native("GET_ENTITY_SPEED")
	static function getEntitySpeed(entity:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_LAST_MATERIAL_HIT_BY_ENTITY")
	static function getLastMaterialHitByEntity(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_NEAREST_PLAYER_TO_ENTITY_ON_TEAM")
	static function getNearestPlayerToEntityOnTeam(entity:Dynamic, team:Int):Dynamic;

	/**
	 * ```
	 * Returns:
	 * 0 = no entity
	 * 1 = ped
	 * 2 = vehicle
	 * 3 = object
	 * ```
	 */
	@:native("GET_ENTITY_TYPE")
	static function getEntityType(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_ENTITY_VELOCITY")
	static function getEntityVelocity(entity:Dynamic):Dynamic;

	/**
	 * ```
	 * Converts world coords (posX - Z) to coords relative to the entity  
	 * Example:  
	 * posX = 50  
	 * posY = 1000  
	 * posZ = 60  
	 * Entity's coords are: x=30, y=1000, z=60.  
	 * All three returned coords will then be in range of [-20,20] depending on rotation of the entity.  
	 * ```
	 */
	@:native("GET_OFFSET_FROM_ENTITY_GIVEN_WORLD_COORDS")
	static function getOffsetFromEntityGivenWorldCoords(entity:Dynamic, posX:Float, posY:Float, posZ:Float):Dynamic;

	/**
	 * ```
	 * Get how much of the entity is submerged.  1.0f is whole entity.  
	 * ```
	 */
	@:native("GET_ENTITY_SUBMERGED_LEVEL")
	static function getEntitySubmergedLevel(entity:Dynamic):Float;

	/**
	 * ```
	 * Offset values are relative to the entity.  
	 * x = left/right  
	 * y = forward/backward  
	 * z = up/down  
	 * ```
	 */
	@:native("GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS")
	static function getOffsetFromEntityInWorldCoords(entity:Dynamic, offsetX:Float, offsetY:Float, offsetZ:Float):Dynamic;

	/**
	 * ```
	 * Returns the coordinates of an entity-bone.  
	 * ```
	 */
	@:native("GET_WORLD_POSITION_OF_ENTITY_BONE")
	static function getWorldPositionOfEntityBone(entity:Dynamic, boneIndex:Int):Dynamic;

	/**
	 * ```
	 * Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
	 * ```
	 */
	@:native("GET_PED_INDEX_FROM_ENTITY_INDEX")
	static function getPedIndexFromEntityIndex(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_NEAREST_PLAYER_TO_ENTITY")
	static function getNearestPlayerToEntity(entity:Dynamic):Dynamic;

	/**
	 * ```
	 * Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
	 * ```
	 */
	@:native("GET_VEHICLE_INDEX_FROM_ENTITY_INDEX")
	static function getVehicleIndexFromEntityIndex(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("HAS_ENTITY_BEEN_DAMAGED_BY_ANY_OBJECT")
	static function hasEntityBeenDamagedByAnyObject(entity:Dynamic):Bool;

	/**
	 * ```
	 * Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).  
	 * ```
	 */
	@:native("GET_OBJECT_INDEX_FROM_ENTITY_INDEX")
	static function getObjectIndexFromEntityIndex(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("HAS_COLLISION_LOADED_AROUND_ENTITY")
	static function hasCollisionLoadedAroundEntity(entity:Dynamic):Bool;

	/**
	 * ```
	 * P3 is always 3 as far as i cant tell  
	 * ```
	 * 
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("HAS_ENTITY_ANIM_FINISHED")
	static function hasEntityAnimFinished(entity:Dynamic, animDict:String, animName:String, p3:Int):Bool;

	/**
	 * ```
	 * if (ENTITY::HAS_ANIM_EVENT_FIRED(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("CreateObject")))
	 * ```
	 */
	@:native("HAS_ANIM_EVENT_FIRED")
	static function hasAnimEventFired(entity:Dynamic, actionHash:Int):Bool;

	/**
	 * 
	 */
	@:native("HAS_ENTITY_BEEN_DAMAGED_BY_ANY_VEHICLE")
	static function hasEntityBeenDamagedByAnyVehicle(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("HAS_ENTITY_BEEN_DAMAGED_BY_ANY_PED")
	static function hasEntityBeenDamagedByAnyPed(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("HAS_ENTITY_BEEN_DAMAGED_BY_ENTITY")
	static function hasEntityBeenDamagedByEntity(entity:Dynamic, damager:Dynamic, bCheckDamagerVehicle:Bool):Bool;

	/**
	 * 
	 */
	@:native("IS_AN_ENTITY")
	static function isAnEntity(handle:Int):Bool;

	/**
	 * Checks if entity1 has a clear line of sight to entity2. So a simple raycast which if it collides with any of the given colliderTypes returns false.
	 * 
	 * The direction of the check matters with for example bushes, so checking from inside to outside a bush with traceType 256 returns true, but the other way around returns false.
	 */
	@:native("HAS_ENTITY_CLEAR_LOS_TO_ENTITY")
	static function hasEntityClearLosToEntity(entity1:Dynamic, entity2:Dynamic, flags:Int):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("_HAS_ENTITY_CLEAR_LOS_TO_ENTITY_2")
	static function HasEntityClearLosToEntity2(entity1:Dynamic, entity2:Dynamic, traceType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("IS_ENTITY_AN_OBJECT")
	static function isEntityAnObject(entity:Dynamic):Bool;

	/**
	 * ```
	 * Checks if entity1 is within the box defined by x/y/zSize of entity2.  
	 * Last three parameters are almost alwasy p5 = 0, p6 = 1, p7 = 0  
	 * ```
	 */
	@:native("IS_ENTITY_AT_ENTITY")
	static function isEntityAtEntity(entity1:Dynamic, entity2:Dynamic, xSize:Float, ySize:Float, zSize:Float, p5:Bool, p6:Bool, p7:Int):Bool;

	/**
	 * ```
	 * Called on tick.  
	 * Tested with vehicles, returns true whenever the vehicle is touching any entity.  
	 * Note: for vehicles, the wheels can touch the ground and it will still return false, but if the body of the vehicle touches the ground, it will return true.  
	 * ```
	 */
	@:native("HAS_ENTITY_COLLIDED_WITH_ANYTHING")
	static function hasEntityCollidedWithAnything(entity:Dynamic):Bool;

	/**
	 * ```
	 * Has the entity1 got a clear line of sight to the other entity2 from the direction entity1 is facing.  
	 * This is one of the most CPU demanding BOOL natives in the game; avoid calling this in things like nested for-loops  
	 * ```
	 */
	@:native("HAS_ENTITY_CLEAR_LOS_TO_ENTITY_IN_FRONT")
	static function hasEntityClearLosToEntityInFront(entity1:Dynamic, entity2:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_A_VEHICLE")
	static function isEntityAVehicle(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_A_MISSION_ENTITY")
	static function isEntityAMissionEntity(entity:Dynamic):Bool;

	/**
	 * ```
	 * Checks if entity is within x/y/zSize distance of x/y/z.   
	 * Last three are unknown ints, almost always p7 = 0, p8 = 1, p9 = 0  
	 * ```
	 */
	@:native("IS_ENTITY_AT_COORD")
	static function isEntityAtCoord(entity:Dynamic, xPos:Float, yPos:Float, zPos:Float, xSize:Float, ySize:Float, zSize:Float, p7:Bool, p8:Bool, p9:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_A_PED")
	static function isEntityAPed(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_ATTACHED")
	static function isEntityAttached(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_ATTACHED_TO_ANY_OBJECT")
	static function isEntityAttachedToAnyObject(entity:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 2: BOOL p1
	 * ```
	 */
	@:native("IS_ENTITY_DEAD")
	static function isEntityDead(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_ATTACHED_TO_ANY_PED")
	static function isEntityAttachedToAnyPed(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_IN_AIR")
	static function isEntityInAir(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_ATTACHED_TO_ENTITY")
	static function isEntityAttachedToEntity(from:Dynamic, to:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_ATTACHED_TO_ANY_VEHICLE")
	static function isEntityAttachedToAnyVehicle(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_IN_WATER")
	static function isEntityInWater(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_TOUCHING_MODEL")
	static function isEntityTouchingModel(entity:Dynamic, modelHash:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_IN_AREA")
	static function isEntityInArea(entity:Dynamic, x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, p7:Bool, p8:Bool, p9:Dynamic):Bool;

	/**
	 * p10 is some entity flag check, also used in [`IS_ENTITY_AT_ENTITY`](#\_0x751B70C3D034E187), [`IS_ENTITY_IN_AREA`](#\_0x54736AA40E271165) and [`IS_ENTITY_AT_COORD`](#\_0x20B60995556D004F).
	 * 
	 * See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
	 */
	@:native("IS_ENTITY_IN_ANGLED_AREA")
	static function isEntityInAngledArea(entity:Dynamic, x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, width:Float, debug:Bool, includez:Bool, p10:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_VISIBLE")
	static function isEntityVisible(entity:Dynamic):Bool;

	/**
	 * Determines whether the screen position of the specified entity is within the 2D bounds of the screen.
	 * 
	 * This native will not check if the entity is not visible due to being occluded (for example, behind a wall). To check if a entity is on screen and is not occluded, use [IS_ENTITY_OCCLUDED](#\_0xE31C2C72B8692B64).
	 */
	@:native("IS_ENTITY_ON_SCREEN")
	static function isEntityOnScreen(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_OCCLUDED")
	static function isEntityOccluded(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_IN_ZONE")
	static function isEntityInZone(entity:Dynamic, zone:String):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_TOUCHING_ENTITY")
	static function isEntityTouchingEntity(entity:Dynamic, targetEntity:Dynamic):Bool;

	/**
	 * ```
	 * A static ped will not react to natives like "APPLY_FORCE_TO_ENTITY" or "SET_ENTITY_VELOCITY" and oftentimes will not react to task-natives like "AI::TASK_COMBAT_PED". The only way I know of to make one of these peds react is to ragdoll them (or sometimes to use CLEAR_PED_TASKS_IMMEDIATELY(). Static peds include almost all far-away peds, beach-combers, peds in certain scenarios, peds crossing a crosswalk, peds walking to get back into their cars, and others. If anyone knows how to make a ped non-static without ragdolling them, please edit this with the solution.  
	 * ^ Attach a phCollider to the ped.  
	 * ```
	 */
	@:native("IS_ENTITY_STATIC")
	static function isEntityStatic(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_UPSIDEDOWN")
	static function isEntityUpsidedown(entity:Dynamic):Bool;

	/**
	 * See also [`IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM`](#\_0x6EC47A344923E1ED)
	 * 
	 * ```
	 * Taken from ENTITY::IS_ENTITY_PLAYING_ANIM(PLAYER::PLAYER_PED_ID(), "creatures@shark@move", "attack_player", 3)  
	 * p4 is always 3 in the scripts.  
	 * taskFlag:  
	 * 2 - Check synchronized scene  
	 * ```
	 * 
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("IS_ENTITY_PLAYING_ANIM")
	static function isEntityPlayingAnim(entity:Dynamic, animDict:String, animName:String, taskFlag:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_UPRIGHT")
	static function isEntityUpright(entity:Dynamic, angle:Float):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_VISIBLE_TO_SCRIPT")
	static function isEntityVisibleToScript(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_WAITING_FOR_WORLD_COLLISION")
	static function isEntityWaitingForWorldCollision(entity:Dynamic):Bool;

	/**
	 * ```
	 * Called to update entity attachments.
	 * ```
	 */
	@:native("PROCESS_ENTITY_ATTACHMENTS")
	static function processEntityAttachments(entity:Dynamic):Dynamic;

	/**
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("PLAY_SYNCHRONIZED_MAP_ENTITY_ANIM")
	static function playSynchronizedMapEntityAnim(p0:Float, p1:Float, p2:Float, p3:Float, p4:Dynamic, p5:Dynamic, p6:Dynamic, p7:Dynamic, p8:Float, p9:Float, p10:Dynamic, p11:Float):Bool;

	/**
	 * 
	 */
	@:native("REMOVE_FORCED_OBJECT")
	static function removeForcedObject(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * p4 and p7 are usually 1000.0f.  
	 * ```
	 * 
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("PLAY_SYNCHRONIZED_ENTITY_ANIM")
	static function playSynchronizedEntityAnim(entity:Dynamic, syncedScene:Int, animation:String, propName:String, p4:Float, p5:Float, p6:Dynamic, p7:Float):Bool;

	/**
	 * 
	 */
	@:native("RESET_ENTITY_ALPHA")
	static function resetEntityAlpha(entity:Dynamic):Dynamic;

	/**
	 * ```
	 * delta and bitset are guessed fields. They are based on the fact that most of the calls have 0 or nil field types passed in.  
	 * The only time bitset has a value is 0x4000 and the only time delta has a value is during stealth with usually <1.0f values.  
	 * ```
	 * 
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("PLAY_ENTITY_ANIM")
	static function playEntityAnim(entity:Dynamic, animName:String, animDict:String, p3:Float, loop:Bool, stayInAnim:Bool, p6:Bool, delta:Float, bitset:Dynamic):Bool;

	/**
	 * p5 requires more research. See also [`CREATE_MODEL_HIDE`](#\_0x8A97BCA30A0CE478) and [`CREATE_MODEL_SWAP`](#\_0x92C47782FDA8B2A3).
	 * 
	 * Network players do not see changes done with this.
	 */
	@:native("REMOVE_MODEL_HIDE")
	static function removeModelHide(x:Float, y:Float, z:Float, radius:Float, model:Int, p5:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_MODEL_SWAP")
	static function removeModelSwap(x:Float, y:Float, z:Float, radius:Float, originalModel:Int, newModel:Int, p6:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CAN_CLIMB_ON_ENTITY")
	static function setCanClimbOnEntity(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CAN_AUTO_VAULT_ON_ENTITY")
	static function setCanAutoVaultOnEntity(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * This native sets the entity's alpha level.
	 */
	@:native("SET_ENTITY_ALPHA")
	static function setEntityAlpha(entity:Dynamic, alphaLevel:Int, skin:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_ALWAYS_PRERENDER")
	static function setEntityAlwaysPrerender(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_SET_ENTITY_ANGULAR_VELOCITY")
	static function SetEntityAngularVelocity(entity:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_ANIM_SPEED")
	static function setEntityAnimSpeed(entity:Dynamic, animDictionary:String, animName:String, speedMultiplier:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_CAN_BE_DAMAGED")
	static function setEntityCanBeDamaged(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Assigns an existing entity to be owned by the current script. If the entity was not owned by a script yet, this also means the entity will remain persistent until released.
	 * 
	 * Note that this is not needed right after creating an entity as a script-created entity will automatically be assigned.
	 */
	@:native("SET_ENTITY_AS_MISSION_ENTITY")
	static function setEntityAsMissionEntity(entity:Dynamic, scriptHostObject:Bool, bGrabFromOtherScript:Bool):Dynamic;

	/**
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("SET_ENTITY_ANIM_CURRENT_TIME")
	static function setEntityAnimCurrentTime(entity:Dynamic, animDictionary:String, animName:String, time:Float):Dynamic;

	/**
	 * ```
	 * True means it can be deleted by the engine when switching lobbies/missions/etc, false means the script is expected to clean it up.
	 * ```
	 */
	@:native("_SET_ENTITY_CLEANUP_BY_ENGINE")
	static function SetEntityCleanupByEngine(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Marks the specified entity (ped, vehicle or object) as no longer needed.  
	 * Entities marked as no longer needed, will be deleted as the engine sees fit.  
	 * ```
	 */
	@:native("SET_ENTITY_AS_NO_LONGER_NEEDED")
	static function setEntityAsNoLongerNeeded(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_COLLISION")
	static function setEntityCollision(entity:Dynamic, toggle:Bool, keepPhysics:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_CAN_BE_DAMAGED_BY_RELATIONSHIP_GROUP")
	static function setEntityCanBeDamagedByRelationshipGroup(entity:Dynamic, bCanBeDamaged:Bool, relGroup:Int):Dynamic;

	/**
	 * Sets the coordinates (world position) for a specified entity, offset by the radius of the entity on the Z axis.
	 */
	@:native("SET_ENTITY_COORDS")
	static function setEntityCoords(entity:Dynamic, xPos:Float, yPos:Float, zPos:Float, alive:Bool, deadFlag:Bool, ragdollFlag:Bool, clearArea:Bool):Dynamic;

	/**
	 * ```
	 * Sets whether the entity can be targeted without being in line-of-sight.  
	 * ```
	 */
	@:native("SET_ENTITY_CAN_BE_TARGETED_WITHOUT_LOS")
	static function setEntityCanBeTargetedWithoutLos(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_COMPLETELY_DISABLE_COLLISION")
	static function setEntityCompletelyDisableCollision(entity:Dynamic, toggle:Bool, keepPhysics:Bool):Dynamic;

	/**
	 * ```
	 * SET_ENTITY_*
	 * ```
	 */
	@:native("_SET_ENTITY_DECALS_DISABLED")
	static function SetEntityDecalsDisabled(entity:Dynamic, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_DYNAMIC")
	static function setEntityDynamic(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Teleports an entity to specified coordinates directly, with options to maintain certain behaviors post-teleportation.
	 * 
	 * **Note**:
	 * 
	 * *   This native allows precise placement of entities without the usual adjustments for collision or interaction with the environment that may occur with other teleportation natives.
	 * *   The `keepTasks` and `keepIK` parameters are specifically useful for maintaining the current state of a ped, ensuring actions or animations are not abruptly stopped due to the teleportation.
	 * *   Setting `doWarp` to `false` is useful when simulating continuous movement or when the entity should interact with its immediate surroundings upon arrival.
	 */
	@:native("SET_ENTITY_COORDS_NO_OFFSET")
	static function setEntityCoordsNoOffset(entity:Dynamic, x:Float, y:Float, z:Float, keepTasks:Bool, keepIK:Bool, doWarp:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_COORDS_WITHOUT_PLANTS_RESET")
	static function setEntityCoordsWithoutPlantsReset(entity:Dynamic, xPos:Float, yPos:Float, zPos:Float, alive:Bool, deadFlag:Bool, ragdollFlag:Bool, clearArea:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_HAS_GRAVITY")
	static function setEntityHasGravity(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sets a ped or an object totally invincible. It doesn't take any kind of damage. Peds will not ragdoll on explosions and the tazer animation won't apply either.  
	 * If you use this for a ped and you want Ragdoll to stay enabled, then do:  
	 * *(DWORD *)(pedAddress + 0x188) |= (1 << 9);  
	 * Use this if you want to get the invincibility status:  
	 * 	bool IsPedInvincible(Ped ped)  
	 * 	{  
	 * auto addr = getScriptHandleBaseAddress(ped);	  
	 * if (addr)  
	 * {  
	 * 	DWORD flag = *(DWORD *)(addr + 0x188);  
	 * 	return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0);  
	 * }  
	 * return false;  
	 * 	}  
	 * ```
	 */
	@:native("SET_ENTITY_INVINCIBLE")
	static function setEntityInvincible(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_LIGHTS")
	static function setEntityLights(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * When setting health for a player ped, the game will clamp the health value to ensure it does not exceed the maximum health. This maximum health can be retrieved by calling [`GET_PED_MAX_HEALTH`](#\_0x4700A416E8324EF3). It can also be modified by calling [`SET_PED_MAX_HEALTH`](#\_0xF5F6378C4F3419D3).
	 * 
	 * When setting the health for non-player peds or entities, the maximum health will be increased if the new health value exceeds the current maximum.
	 * 
	 * Default health for male peds is `200`, for female peds it is `175`.
	 * 
	 * ### Added parameters
	 * 
	 * *   **inflictor**: The handle for the entity that caused the damage.
	 */
	@:native("SET_ENTITY_HEALTH")
	static function setEntityHealth(entity:Dynamic, health:Int):Dynamic;

	/**
	 * Set the heading of an entity in degrees also known as "Yaw".
	 */
	@:native("SET_ENTITY_HEADING")
	static function setEntityHeading(entity:Dynamic, heading:Float):Dynamic;

	/**
	 * Loads collision grid for an entity spawned outside of a player's loaded area. This allows peds to execute tasks rather than sit dormant because of a lack of a physics grid.
	 * 
	 * Certainly not the main usage of this native but when set to true for a Vehicle, it will prevent the vehicle to explode if it is spawned far away from the player.
	 * 
	 * ```
	 * NativeDB Added Parameter 3: Any p2
	 * ```
	 */
	@:native("SET_ENTITY_LOAD_COLLISION_FLAG")
	static function setEntityLoadCollisionFlag(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * LOD distance can be 0 to 0xFFFF (higher values will result in 0xFFFF) as it is actually stored as a 16-bit value (aka uint16_t).  
	 * ```
	 */
	@:native("SET_ENTITY_LOD_DIST")
	static function setEntityLodDist(entity:Dynamic, value:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_IS_TARGET_PRIORITY")
	static function setEntityIsTargetPriority(entity:Dynamic, p1:Bool, p2:Float):Dynamic;

	/**
	 * ```
	 * For instance: ENTITY::SET_ENTITY_MAX_HEALTH(PLAYER::PLAYER_PED_ID(), 200); // director_mode.c4: 67849  
	 * ```
	 */
	@:native("SET_ENTITY_MAX_HEALTH")
	static function setEntityMaxHealth(entity:Dynamic, value:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_MAX_SPEED")
	static function setEntityMaxSpeed(entity:Dynamic, speed:Float):Dynamic;

	/**
	 * ```
	 * Calling this function disables collision between two entities.
	 * The importance of the order for entity1 and entity2 is unclear.
	 * The third parameter, `thisFrame`, decides whether the collision is to be disabled until it is turned back on, or if it's just this frame.
	 * ```
	 */
	@:native("SET_ENTITY_NO_COLLISION_ENTITY")
	static function setEntityNoCollisionEntity(entity1:Dynamic, entity2:Dynamic, thisFrameOnly:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_ONLY_DAMAGED_BY_PLAYER")
	static function setEntityOnlyDamagedByPlayer(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_ONLY_DAMAGED_BY_RELATIONSHIP_GROUP")
	static function setEntityOnlyDamagedByRelationshipGroup(entity:Dynamic, p1:Bool, relationshipHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_MOTION_BLUR")
	static function setEntityMotionBlur(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * w is the correct parameter name!  
	 * ```
	 */
	@:native("SET_ENTITY_QUATERNION")
	static function setEntityQuaternion(entity:Dynamic, x:Float, y:Float, z:Float, w:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_RECORDS_COLLISIONS")
	static function setEntityRecordsCollisions(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_REQUIRES_MORE_EXPENSIVE_RIVER_CHECK")
	static function setEntityRequiresMoreExpensiveRiverCheck(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Note that the third parameter(denoted as z) is "up and down" with positive numbers encouraging upwards movement.
	 * ```
	 */
	@:native("SET_ENTITY_VELOCITY")
	static function setEntityVelocity(entity:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * Sets the rotation of a specified entity in the game world.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SET_ENTITY_ROTATION")
	static function setEntityRotation(entity:Dynamic, pitch:Float, roll:Float, yaw:Float, rotationOrder:Int, bDeadCheck:Bool):Dynamic;

	/**
	 * ```
	 * Enable / disable each type of damage.  
	 * --------------  
	 * p7 is to to '1' in am_mp_property_ext/int: entity::set_entity_proofs(uParam0->f_19, true, true, true, true, true, true, 1, true);  
	 * ```
	 */
	@:native("SET_ENTITY_PROOFS")
	static function setEntityProofs(entity:Dynamic, bulletProof:Bool, fireProof:Bool, explosionProof:Bool, collisionProof:Bool, meleeProof:Bool, steamProof:Bool, p7:Bool, drownProof:Bool):Dynamic;

	/**
	 * Changing traffic-lights will not change the behavior of NPCs.
	 * 
	 * Example: [here](https://www.gtaforums.com/topic/830463-help-with-turning-lights-green-and-causing-peds-to-crash-into-each-other/#entry1068211340)
	 * 
	 * ```cpp
	 * enum eTrafficlightOverrideMode
	 * {
	 *     TLO_RED = 0,
	 *     TLO_AMBER = 1,
	 *     TLO_GREEN = 2,
	 *     TLO_NONE = 3
	 * }
	 * ```
	 */
	@:native("SET_ENTITY_TRAFFICLIGHT_OVERRIDE")
	static function setEntityTrafficlightOverride(entity:Dynamic, state:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_RENDER_SCORCHED")
	static function setEntityRenderScorched(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
	 * ```
	 */
	@:native("SET_OBJECT_AS_NO_LONGER_NEEDED")
	static function setObjectAsNoLongerNeeded(object:Dynamic):Dynamic;

	/**
	 * ```
	 * RAGEPluginHook list: docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm
	 * ```
	 */
	@:native("STOP_ENTITY_ANIM")
	static function stopEntityAnim(entity:Dynamic, animation:String, animGroup:String, p3:Float):Dynamic;

	/**
	 * ```
	 * SET_*
	 * Only called within 1 script for x360. 'fm_mission_controller' and it used on an object.
	 * Ran after these 2 natives,
	 * set_object_targettable(uParam0, 0);
	 * set_entity_invincible(uParam0, 1);
	 * ```
	 */
	@:native("SET_WAIT_FOR_COLLISIONS_BEFORE_PROBE")
	static function setWaitForCollisionsBeforeProbe(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Configures an entity to either allow or prevent it from being picked up by Cargobobs.
	 * 
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("SET_PICK_UP_BY_CARGOBOB_DISABLED")
	static function setPickUpByCargobobDisabled(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Toggle the visibility of a given entity.
	 */
	@:native("SET_ENTITY_VISIBLE")
	static function setEntityVisible(entity:Dynamic, toggle:Bool, unk:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("WOULD_ENTITY_BE_OCCLUDED")
	static function wouldEntityBeOccluded(entityModelHash:Int, x:Float, y:Float, z:Float, p4:Bool):Bool;

	/**
	 * ```
	 * p1 sync task id?  
	 * ```
	 */
	@:native("STOP_SYNCHRONIZED_ENTITY_ANIM")
	static function stopSynchronizedEntityAnim(entity:Dynamic, p1:Float, p2:Bool):Bool;

	/**
	 * ```
	 * This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
	 * ```
	 */
	@:native("SET_PED_AS_NO_LONGER_NEEDED")
	static function setPedAsNoLongerNeeded(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.  
	 * ```
	 */
	@:native("SET_VEHICLE_AS_NO_LONGER_NEEDED")
	static function setVehicleAsNoLongerNeeded(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("STOP_SYNCHRONIZED_MAP_ENTITY_ANIM")
	static function stopSynchronizedMapEntityAnim(p0:Float, p1:Float, p2:Float, p3:Float, p4:Dynamic, p5:Float):Bool;

}
