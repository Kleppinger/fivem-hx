package fivem.client.natives;

@:native("_G")
extern class Object {
	/**
	 * p5 only set to true in single player native scripts. Door hashes normally look like `PROP_[int]_DOOR_[int]` for interior doors and `PROP_BUILDING_[int]_DOOR_[int]` exterior doors but you can just make up your own hash if you want.
	 * 
	 * If scriptDoor is true, register the door on the script handler host (note: there's a hardcap on the number of script IDs that can be added to the system at a given time). If scriptDoor and isLocal are both false, the door is considered to be in a "Persists w/o netobj" state.
	 * 
	 * A simple "localized" door-system (with hundreds/thousands of doors) can be created by setting p5, p6, and p7 to false and using EventHandlers to synchronize the states to: [DOOR_SYSTEM_SET_DOOR_STATE](#\_0x6BAB9442830C7F53), [DOOR_SYSTEM_SET_OPEN_RATIO](#\_0xB6E6FBA95C7324AC), [DOOR_SYSTEM_SET_HOLD_OPEN](#\_0xD9B71952F78A2640), etc.
	 */
	@:native("ADD_DOOR_TO_SYSTEM")
	static function addDoorToSystem(doorHash:Int, modelHash:Int, x:Float, y:Float, z:Float, p5:Bool, scriptDoor:Bool, isLocal:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_CLEAR_GARAGE_AREA")
	static function ClearGarageArea(garageHash:Int, isNetwork:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ARE_ENTITIES_ENTIRELY_INSIDE_GARAGE")
	static function areEntitiesEntirelyInsideGarage(garageHash:Int, p1:Bool, p2:Bool, p3:Bool, p4:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("BREAK_OBJECT_FRAGMENT_CHILD")
	static function breakObjectFragmentChild(p0:Dynamic, p1:Dynamic, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ATTACH_PORTABLE_PICKUP_TO_PED")
	static function attachPortablePickupToPed(pickupObject:Dynamic, ped:Dynamic):Dynamic;

	/**
	 * Creates an ambient pickup given the hash. Pickup hashes can be found [here](https://gist.github.com/4mmonium/1eabfb6b3996e3aa6b9525a3eccf8a0b).
	 */
	@:native("CREATE_AMBIENT_PICKUP")
	static function createAmbientPickup(pickupHash:Int, posX:Float, posY:Float, posZ:Float, flags:Int, value:Int, modelHash:Int, returnHandle:Bool, p8:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_OBJECTS_INSIDE_GARAGE")
	static function clearObjectsInsideGarage(garageHash:Int, vehicles:Bool, peds:Bool, objects:Bool, isNetwork:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CREATE_NON_NETWORKED_PORTABLE_PICKUP")
	static function createNonNetworkedPortablePickup(pickupHash:Int, x:Float, y:Float, z:Float, placeOnGround:Bool, modelHash:Int):Dynamic;

	/**
	 * ```
	 * Spawns one or more money pickups.  
	 * x: The X-component of the world position to spawn the money pickups at.  
	 * y: The Y-component of the world position to spawn the money pickups at.  
	 * z: The Z-component of the world position to spawn the money pickups at.  
	 * value: The combined value of the pickups (in dollars).  
	 * amount: The number of pickups to spawn.  
	 * model: The model to use, or 0 for default money model.  
	 * Example:  
	 * CREATE_MONEY_PICKUPS(x, y, z, 1000, 3, 0x684a97ae);  
	 * Spawns 3 spray cans that'll collectively give $1000 when picked up. (Three spray cans, each giving $334, $334, $332 = $1000).  
	 * ==============================================  
	 * Max is 2000 in MP. So if you put the amount to 20, but the value to $400,000 eg. They will only be able to pickup 20 - $2,000 bags. So, $40,000  
	 * ```
	 */
	@:native("CREATE_MONEY_PICKUPS")
	static function createMoneyPickups(x:Float, y:Float, z:Float, value:Int, amount:Int, model:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_CREATE_NON_NETWORKED_AMBIENT_PICKUP")
	static function CreateNonNetworkedAmbientPickup(pickupHash:Dynamic, posX:Float, posY:Float, posZ:Float, flags:Int, value:Int, modelHash:Dynamic, p7:Bool, p8:Bool):Dynamic;

	/**
	 * Creates an object (prop) with the specified model at the specified position, offset on the Z axis by the radius of the object's model.
	 * This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
	 */
	@:native("CREATE_OBJECT")
	static function createObject(modelHash:Int, x:Float, y:Float, z:Float, isNetwork:Bool, netMissionEntity:Bool, doorFlag:Bool):Dynamic;

	/**
	 * Creates an object (prop) with the specified model centered at the specified position.
	 * This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
	 */
	@:native("CREATE_OBJECT_NO_OFFSET")
	static function createObjectNoOffset(modelHash:Int, x:Float, y:Float, z:Float, isNetwork:Bool, netMissionEntity:Bool, doorFlag:Bool):Dynamic;

	/**
	 * Pickup hashes can be found [here](https://gist.github.com/4mmonium/1eabfb6b3996e3aa6b9525a3eccf8a0b).
	 */
	@:native("CREATE_PORTABLE_PICKUP")
	static function createPortablePickup(pickupHash:Int, x:Float, y:Float, z:Float, placeOnGround:Bool, modelHash:Int):Dynamic;

	/**
	 * ```
	 * Pickup hashes: pastebin.com/8EuSv2r1  
	 * flags:  
	 * 8 (1 << 3): place on ground  
	 * 512 (1 << 9): spin around  
	 * ```
	 */
	@:native("CREATE_PICKUP_ROTATE")
	static function createPickupRotate(pickupHash:Int, posX:Float, posY:Float, posZ:Float, rotX:Float, rotY:Float, rotZ:Float, flag:Int, amount:Int, p9:Dynamic, p10:Bool, modelHash:Int):Dynamic;

	/**
	 * Pickup hashes can be found [here](https://gist.github.com/4mmonium/1eabfb6b3996e3aa6b9525a3eccf8a0b).
	 */
	@:native("CREATE_PICKUP")
	static function createPickup(pickupHash:Int, posX:Float, posY:Float, posZ:Float, p4:Int, value:Int, p6:Bool, modelHash:Int):Dynamic;

	/**
	 * ```
	 * p5 is usually 0.  
	 * ```
	 */
	@:native("DOES_OBJECT_OF_TYPE_EXIST_AT_COORDS")
	static function doesObjectOfTypeExistAtCoords(x:Float, y:Float, z:Float, radius:Float, hash:Int, p5:Bool):Bool;

	/**
	 * Deletes the specified object.
	 * 
	 * **Note**: If for some reason the entity won't delete, you might want to check if the object is a mission entity.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("DELETE_OBJECT")
	static function deleteObject(object:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("DETACH_PORTABLE_PICKUP_FROM_PED")
	static function detachPortablePickupFromPed(pickupObject:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("DOES_PICKUP_EXIST")
	static function doesPickupExist(pickup:Dynamic):Bool;

	/**
	 * Pickup hashes can be found [here](https://gist.github.com/4mmonium/1eabfb6b3996e3aa6b9525a3eccf8a0b).
	 */
	@:native("DOES_PICKUP_OF_TYPE_EXIST_IN_AREA")
	static function doesPickupOfTypeExistInArea(pickupHash:Int, x:Float, y:Float, z:Float, radius:Float):Bool;

	/**
	 * ```
	 * Returns true if a destructible object with this handle exists, false otherwise.  
	 * ```
	 */
	@:native("DOES_RAYFIRE_MAP_OBJECT_EXIST")
	static function doesRayfireMapObjectExist(object:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("_DOOR_SYSTEM_GET_AUTOMATIC_DISTANCE")
	static function DoorSystemGetAutomaticDistance(doorHash:Int):Float;

	/**
	 * 
	 */
	@:native("DOES_PICKUP_OBJECT_EXIST")
	static function doesPickupObjectExist(pickupObject:Dynamic):Bool;

	/**
	 * Search radius: 0.5
	 */
	@:native("DOOR_SYSTEM_FIND_EXISTING_DOOR")
	static function doorSystemFindExistingDoor(x:Float, y:Float, z:Float, modelHash:Int, doorOutPointer:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("DOOR_SYSTEM_GET_DOOR_STATE")
	static function doorSystemGetDoorState(doorHash:Int):Int;

	/**
	 * 
	 */
	@:native("DOOR_SYSTEM_GET_OPEN_RATIO")
	static function doorSystemGetOpenRatio(doorHash:Int):Float;

	/**
	 * Hardcoded not to work in multiplayer environments.
	 * Native name between `SET_LOCAL_PLAYER_VISIBLE_LOCALLY` & `SET_MAX_WANTED_LEVEL`.
	 * 
	 * ```
	 * OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 0, 0.0, 50.0, 0);  //door unlocked
	 * OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 1, 0.0, 50.0, 0);  //door locked
	 * ```
	 */
	@:native("_DOOR_CONTROL")
	static function DoorControl(modelHash:Int, x:Float, y:Float, z:Float, locked:Bool, xRotMult:Float, yRotMult:Float, zRotMult:Float):Dynamic;

	/**
	 * 
	 */
	@:native("DOOR_SYSTEM_GET_IS_PHYSICS_LOADED")
	static function doorSystemGetIsPhysicsLoaded(doorHash:Int):Bool;

	/**
	 * 
	 */
	@:native("DOOR_SYSTEM_SET_AUTOMATIC_DISTANCE")
	static function doorSystemSetAutomaticDistance(doorHash:Int, distance:Float, requestDoor:Bool, forceUpdate:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DOOR_SYSTEM_GET_DOOR_PENDING_STATE")
	static function doorSystemGetDoorPendingState(doorHash:Int):Int;

	/**
	 * Includes networking check: ownership vs. or the door itself **isn't** networked.
	 */
	@:native("DOOR_SYSTEM_SET_AUTOMATIC_RATE")
	static function doorSystemSetAutomaticRate(doorHash:Int, rate:Float, requestDoor:Bool, forceUpdate:Bool):Dynamic;

	/**
	 * Lockstates not applied and CNetObjDoor's not created until [DOOR_SYSTEM_GET_IS_PHYSICS_LOADED](#\_0xDF97CDD4FC08FD34) returns true.
	 * 
	 * ### Door lock states: (v323)
	 * 
	 * *   **0**: UNLOCKED
	 * *   **1**: LOCKED
	 * *   **2**: DOORSTATE_FORCE_LOCKED_UNTIL_OUT_OF_AREA
	 * *   **3**: DOORSTATE_FORCE_UNLOCKED_THIS_FRAME
	 * *   **4**: DOORSTATE_FORCE_LOCKED_THIS_FRAME
	 * *   **5**: DOORSTATE_FORCE_OPEN_THIS_FRAME
	 * *   **6**: DOORSTATE_FORCE_CLOSED_THIS_FRAME
	 */
	@:native("DOOR_SYSTEM_SET_DOOR_STATE")
	static function doorSystemSetDoorState(doorHash:Int, state:Int, requestDoor:Bool, forceUpdate:Bool):Dynamic;

	/**
	 * ```
	 * Sets the ajar angle of a door.
	 * Ranges from -1.0 to 1.0, and 0.0 is closed / default.
	 * ```
	 */
	@:native("DOOR_SYSTEM_SET_OPEN_RATIO")
	static function doorSystemSetOpenRatio(doorHash:Int, ajar:Float, requestDoor:Bool, forceUpdate:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ENABLE_SAVING_IN_GARAGE")
	static function enableSavingInGarage(garageHash:Int, toggle:Bool):Dynamic;

	/**
	 * Includes networking check: ownership vs. or the door itself **isn't** networked.
	 */
	@:native("DOOR_SYSTEM_SET_HOLD_OPEN")
	static function doorSystemSetHoldOpen(doorHash:Int, toggle:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_GET_IS_ARENA_PROP_PHYSICS_DISABLED")
	static function GetIsArenaPropPhysicsDisabled(entity:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_FORCE_PICKUP_REGENERATE")
	static function ForcePickupRegenerate(p0:Dynamic):Dynamic;

	/**
	 * Includes networking check: ownership vs. or the door itself **isn't** networked.
	 */
	@:native("DOOR_SYSTEM_SET_SPRING_REMOVED")
	static function doorSystemSetSpringRemoved(doorHash:Int, removed:Bool, requestDoor:Bool, forceUpdate:Bool):Dynamic;

	/**
	 * ```
	 * Has 8 params in the latest patches.  
	 * isMission - if true doesn't return mission objects  
	 * ```
	 */
	@:native("GET_CLOSEST_OBJECT_OF_TYPE")
	static function getClosestObjectOfType(x:Float, y:Float, z:Float, radius:Float, modelHash:Int, isMission:Bool, p6:Bool, p7:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_GET_OBJECT_TEXTURE_VARIATION")
	static function GetObjectTextureVariation(object:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_PICKUP_COORDS")
	static function getPickupCoords(pickup:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_OBJECT_FRAGMENT_DAMAGE_HEALTH")
	static function getObjectFragmentDamageHealth(p0:Dynamic, p1:Bool):Float;

	/**
	 * ```
	 * returns pickup hash.
	 * ```
	 */
	@:native("_GET_PICKUP_HASH")
	static function GetPickupHash(pickupHash:Int):Int;

	/**
	 * Resets and brings back all the children of a fragment based object.
	 * This should be used when attaching or detaching an object from another entity, especially when the object being detached consists of multiple fragments.
	 * 
	 * Attempting to teleport a fragment-based object using [`SET_ENTITY_COORDS`](#\_0x06843DA7060A026B) such as a flag object, will result in it remaining in place and failing to teleport, given the condition mentioned in the preceding statement.
	 * 
	 * The native should be executed after detaching the object from its parent entity and before calling [`SET_ENTITY_COORDS`](#\_0x06843DA7060A026B).
	 * 
	 * Example given down below.
	 */
	@:native("FIX_OBJECT_FRAGMENT")
	static function fixObjectFragment(object:Dynamic):Dynamic;

	/**
	 * Calculates the world coordinates after applying the specified offsets to the given position, relative to a certain heading.
	 * This native is similar to [`GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS`](#\_0x1899F328B0E12848), but uses a world position and heading as the reference point.
	 */
	@:native("GET_OFFSET_FROM_COORD_AND_HEADING_IN_WORLD_COORDS")
	static function getOffsetFromCoordAndHeadingInWorldCoords(xPos:Float, yPos:Float, zPos:Float, heading:Float, xOffset:Float, yOffset:Float, zOffset:Float):Dynamic;

	/**
	 * ```
	 * Example:
	 * OBJECT::GET_RAYFIRE_MAP_OBJECT(-809.9619750976562, 170.919, 75.7406997680664, 3.0, "des_tvsmash");
	 * ```
	 */
	@:native("GET_RAYFIRE_MAP_OBJECT")
	static function getRayfireMapObject(x:Float, y:Float, z:Float, radius:Float, name:String):Dynamic;

	/**
	 * 
	 */
	@:native("GET_PICKUP_OBJECT")
	static function getPickupObject(pickup:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_COORDS_AND_ROTATION_OF_CLOSEST_OBJECT_OF_TYPE")
	static function getCoordsAndRotationOfClosestObjectOfType(x:Float, y:Float, z:Float, radius:Float, modelHash:Int, outPosition:Dynamic, outRotation:Dynamic, rotationOrder:Int):Dynamic;

	/**
	 * ```
	 * `object`: The des-object handle to get the animation progress from.
	 * Return value is a float between 0.0 and 1.0, 0.0 is the beginning of the animation, 1.0 is the end. Value resets to 0.0 instantly after reaching 1.0.
	 * ```
	 */
	@:native("GET_RAYFIRE_MAP_OBJECT_ANIM_PHASE")
	static function getRayfireMapObjectAnimPhase(object:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_WEAPON_TYPE_FROM_PICKUP_TYPE")
	static function getWeaponTypeFromPickupType(pickupHash:Int):Int;

	/**
	 * 
	 */
	@:native("GET_SAFE_PICKUP_COORDS")
	static function getSafePickupCoords(x:Float, y:Float, z:Float, p3:Float, p4:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_GET_PICKUP_GENERATION_RANGE_MULTIPLIER")
	static function GetPickupGenerationRangeMultiplier():Float;

	/**
	 * See [`SET_STATE_OF_RAYFIRE_MAP_OBJECT`](#\_0x5C29F698D404C5E1) to see the different states
	 * 
	 * Get a destructible object's state. Substract 1 to get the real state. For example, if the object just spawned (state 2), the native will return 3.
	 */
	@:native("GET_STATE_OF_RAYFIRE_MAP_OBJECT")
	static function getStateOfRayfireMapObject(object:Dynamic):Int;

	/**
	 * 
	 */
	@:native("HAS_CLOSEST_OBJECT_OF_TYPE_BEEN_BROKEN")
	static function hasClosestObjectOfTypeBeenBroken(p0:Float, p1:Float, p2:Float, p3:Float, modelHash:Int, p5:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("HAS_CLOSEST_OBJECT_OF_TYPE_BEEN_COMPLETELY_DESTROYED")
	static function hasClosestObjectOfTypeBeenCompletelyDestroyed(x:Float, y:Float, z:Float, radius:Float, modelHash:Int, p5:Bool):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("HAS_OBJECT_BEEN_BROKEN")
	static function hasObjectBeenBroken(object:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_GET_PICKUP_HASH_FROM_WEAPON")
	static function GetPickupHashFromWeapon(weapon:Int):Int;

	/**
	 * ```
	 * locked is 0 if no door is found  
	 * locked is 0 if door is unlocked  
	 * locked is 1 if door is found and unlocked.  
	 * -------------  
	 * the locked bool is either 0(unlocked)(false) or 1(locked)(true)  
	 * ```
	 */
	@:native("GET_STATE_OF_CLOSEST_DOOR_OF_TYPE")
	static function getStateOfClosestDoorOfType(type:Int, x:Float, y:Float, z:Float, locked:Dynamic, heading:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("HAS_PICKUP_BEEN_COLLECTED")
	static function hasPickupBeenCollected(pickup:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("HIDE_PORTABLE_PICKUP_WHEN_DETACHED")
	static function hidePortablePickupWhenDetached(pickup:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("IS_ANY_ENTITY_ENTIRELY_INSIDE_GARAGE")
	static function isAnyEntityEntirelyInsideGarage(garageHash:Int, p1:Bool, p2:Bool, p3:Bool, p4:Dynamic):Bool;

	/**
	 * ```
	 * if (OBJECT::IS_DOOR_REGISTERED_WITH_SYSTEM(doorHash))
	 * {
	 *     OBJECT::REMOVE_DOOR_FROM_SYSTEM(doorHash);
	 * }
	 * ```
	 */
	@:native("IS_DOOR_REGISTERED_WITH_SYSTEM")
	static function isDoorRegisteredWithSystem(doorHash:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_ANY_OBJECT_NEAR_POINT")
	static function isAnyObjectNearPoint(x:Float, y:Float, z:Float, range:Float, p4:Bool):Bool;

	/**
	 * 
	 */
	@:native("IS_GARAGE_EMPTY")
	static function isGarageEmpty(garageHash:Int, p1:Bool, p2:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_OBJECT_ENTIRELY_INSIDE_GARAGE")
	static function isObjectEntirelyInsideGarage(garageHash:Int, entity:Dynamic, p2:Float, p3:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_DOOR_CLOSED")
	static function isDoorClosed(doorHash:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_OBJECT_NEAR_POINT")
	static function isObjectNearPoint(objectHash:Int, x:Float, y:Float, z:Float, range:Float):Bool;

	/**
	 * 
	 */
	@:native("IS_OBJECT_A_PICKUP")
	static function isObjectAPickup(object:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_OBJECT_VISIBLE")
	static function isObjectVisible(object:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1365
	 * ```
	 */
	@:native("IS_OBJECT_A_PORTABLE_PICKUP")
	static function isObjectAPortablePickup(object:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PICKUP_WEAPON_OBJECT_VALID")
	static function isPickupWeaponObjectValid(object:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_OBJECT_PARTIALLY_INSIDE_GARAGE")
	static function isObjectPartiallyInsideGarage(garageHash:Int, entity:Dynamic, p2:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_PLAYER_ENTIRELY_INSIDE_GARAGE")
	static function isPlayerEntirelyInsideGarage(garageHash:Int, player:Dynamic, p2:Float, p3:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_PLAYER_PARTIALLY_INSIDE_GARAGE")
	static function isPlayerPartiallyInsideGarage(garageHash:Int, player:Dynamic, p2:Int):Bool;

	/**
	 * ```
	 * is this like setting is as no longer needed?  
	 * ```
	 */
	@:native("_MARK_OBJECT_FOR_DELETION")
	static function MarkObjectForDeletion(object:Dynamic):Dynamic;

	/**
	 * An **angled area** is an X-Z oriented rectangle with three parameters:
	 * 
	 * 1.  **origin**: the mid-point along a base edge of the rectangle;
	 * 2.  **extent**: the mid-point of opposite base edge on the other Z;
	 * 3.  **width**: the length of the base edge; (named derived from logging strings `CNetworkRoadNodeWorldStateData`).
	 * 
	 * The oriented rectangle can then be derived from the direction of the two points (`norm(origin - extent)`), its orthonormal, and the width, e.g:
	 * 
	 * 1.  [golf_mp](https://i.imgur.com/JhsQAK9.png)
	 * 2.  [am_taxi](https://i.imgur.com/TJWCZaT.jpg)
	 */
	@:native("IS_POINT_IN_ANGLED_AREA")
	static function isPointInAngledArea(xPos:Float, yPos:Float, zPos:Float, x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, width:Float, p10:Bool, includez:Bool):Bool;

	/**
	 * 
	 */
	@:native("_PLACE_OBJECT_ON_GROUND_PROPERLY_2")
	static function PlaceObjectOnGroundProperly2(object:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("PREVENT_COLLECTION_OF_PORTABLE_PICKUP")
	static function preventCollectionOfPortablePickup(object:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * CDoor and CDoorSystemData still internally allocated (and their associations between doorHash, modelHash, and coordinates).
	 * 
	 * Only its NetObj removed and flag `*(v2 + 192) |= 8u` (1604 retail) toggled.
	 */
	@:native("REMOVE_DOOR_FROM_SYSTEM")
	static function removeDoorFromSystem(doorHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PLACE_OBJECT_ON_GROUND_PROPERLY")
	static function placeObjectOnGroundProperly(object:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("REMOVE_OBJECT_HIGH_DETAIL_MODEL")
	static function removeObjectHighDetailModel(object:Dynamic):Dynamic;

	/**
	 * ```
	 * Activate the physics to: "xs_prop_arena_{flipper,wall,bollard,turntable,pit}"
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_SET_ENABLE_ARENA_PROP_PHYSICS")
	static function SetEnableArenaPropPhysics(entity:Dynamic, toggle:Bool, p2:Int):Dynamic;

	/**
	 * Pickup hashes can be found [here](https://gist.github.com/4mmonium/1eabfb6b3996e3aa6b9525a3eccf8a0b).
	 */
	@:native("REMOVE_ALL_PICKUPS_OF_TYPE")
	static function removeAllPickupsOfType(pickupHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ACTIVATE_OBJECT_PHYSICS_AS_SOON_AS_IT_IS_UNFROZEN")
	static function setActivateObjectPhysicsAsSoonAsItIsUnfrozen(object:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_PICKUP")
	static function removePickup(pickup:Dynamic):Dynamic;

	/**
	 * ```
	 * draws circular marker at pos
	 * -1 = none
	 * 0 = red
	 * 1 = green
	 * 2 = blue
	 * 3 = green larger
	 * 4 = nothing
	 * 5 = green small
	 * ```
	 */
	@:native("RENDER_FAKE_PICKUP_GLOW")
	static function renderFakePickupGlow(x:Float, y:Float, z:Float, colorIndex:Int):Dynamic;

	/**
	 * ```
	 * Requires a component_at_*_flsh to be attached to the weapon object
	 * ```
	 */
	@:native("_SET_CREATE_WEAPON_OBJECT_LIGHT_SOURCE")
	static function SetCreateWeaponObjectLightSource(object:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_SET_ENABLE_ARENA_PROP_PHYSICS_ON_PED")
	static function SetEnableArenaPropPhysicsOnPed(entity:Dynamic, toggle:Bool, p2:Int, ped:Dynamic):Dynamic;

	/**
	 * ```
	 * Maximum amount of pickup models that can be disallowed is 30.
	 * SET_LOCAL_PLAYER_*
	 * ```
	 */
	@:native("_SET_LOCAL_PLAYER_CAN_USE_PICKUPS_WITH_THIS_MODEL")
	static function SetLocalPlayerCanUsePickupsWithThisModel(modelHash:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_LOCAL_PLAYER_CAN_COLLECT_PORTABLE_PICKUPS")
	static function setLocalPlayerCanCollectPortablePickups(p0:Bool):Dynamic;

	/**
	 * ```
	 * Overrides the climbing/blocking flags of the object, used in the native scripts mostly for "prop_dock_bouy_*"
	 * ```
	 */
	@:native("SET_OBJECT_ALLOW_LOW_LOD_BUOYANCY")
	static function setObjectAllowLowLodBuoyancy(object:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_MAX_NUM_PORTABLE_PICKUPS_CARRIED_BY_PLAYER")
	static function setMaxNumPortablePickupsCarriedByPlayer(modelHash:Int, p1:Int):Dynamic;

	/**
	 * Overrides a flag on the object which determines if the object should be avoided by a vehicle in task: CTaskVehicleGoToPointWithAvoidanceAutomobile.
	 * Tested on vehicles that were created by the vehicle generators.
	 */
	@:native("SET_OBJECT_FORCE_VEHICLES_TO_AVOID")
	static function setObjectForceVehiclesToAvoid(object:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_FORCE_OBJECT_THIS_FRAME")
	static function setForceObjectThisFrame(x:Float, y:Float, z:Float, p3:Float):Dynamic;

	/**
	 * ```
	 * rage::phArchetypeDamp
	 * p9: Some phBoundGeometry margin value, limited to (0.0, 0.1) exclusive.
	 * ```
	 */
	@:native("SET_OBJECT_PHYSICS_PARAMS")
	static function setObjectPhysicsParams(object:Dynamic, mass:Float, gravityFactor:Float, linearC:Float, linearV:Float, linearV2:Float, angularC:Float, angularV:Float, angularV2:Float, p9:Float, maxAngSpeed:Float, buoyancyFactor:Float):Dynamic;

	/**
	 * Sets color of embedded light source.
	 * Only appears in am_mp_nightclub.c for the nightclub dancefloor.
	 * 
	 * Not sure what p1 does, seems to only ever be '1' in scripts.
	 * 
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_SET_OBJECT_LIGHT_COLOR")
	static function SetObjectLightColor(object:Dynamic, p1:Bool, r:Int, g:Int, b:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_OBJECT_STUNT_PROP_DURATION")
	static function SetObjectStuntPropDuration(object:Dynamic, duration:Float):Dynamic;

	/**
	 * ```cpp
	 * enum eObjectPaintVariants
	 * {  
	 * 	Pacific = 0,  
	 * 	Azure = 1,  
	 * 	Nautical = 2,  
	 * 	Continental = 3,  
	 * 	Battleship = 4,  
	 * 	Intrepid = 5,  
	 * 	Uniform = 6,  
	 * 	Classico = 7,  
	 * 	Mediterranean = 8,  
	 * 	Command = 9,  
	 * 	Mariner = 10,  
	 * 	Ruby = 11,  
	 * 	Vintage = 12,  
	 * 	Pristine = 13,  
	 * 	Merchant = 14,  
	 * 	Voyager = 15  
	 * };  
	 * ```
	 */
	@:native("_SET_OBJECT_TEXTURE_VARIATION")
	static function SetObjectTextureVariation(object:Dynamic, textureVariation:Int):Dynamic;

	/**
	 * Sets the intensity of Speed Boost and Slow Down props.
	 * 
	 * The corresponding values for Speed Boosts in the Creator are:\
	 * Weak: `15`\
	 * Normal: `25`\
	 * Strong: `35`\
	 * Extra Strong: `45`\
	 * Ultra Strong: `100`
	 * 
	 * For Slow Downs:\
	 * Weak: `44`\
	 * Normal: `30`\
	 * Strong: `16`
	 */
	@:native("_SET_OBJECT_STUNT_PROP_SPEEDUP")
	static function SetObjectStuntPropSpeedup(object:Dynamic, intensity:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_OBJECT_TARGETTABLE")
	static function setObjectTargettable(object:Dynamic, targettable:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PICKUP_REGENERATION_TIME")
	static function setPickupRegenerationTime(pickup:Dynamic, duration:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_OBJECT_TARGETTABLE_BY_PLAYER")
	static function SetObjectTargettableByPlayer(object:Dynamic, setFlag34:Bool, setFlag35:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_PICKUP_HIDDEN_WHEN_UNCOLLECTABLE")
	static function SetPickupHiddenWhenUncollectable(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * Defines the state of a destructible object.
	 * Use the GET_RAYFIRE_MAP_OBJECT native to find an object's handle with its name / coords.
	 * State 2 == object just spawned
	 * State 4 == Beginning of the animation
	 * State 6 == Start animation
	 * State 9 == End of the animation
	 * ```
	 */
	@:native("SET_STATE_OF_RAYFIRE_MAP_OBJECT")
	static function setStateOfRayfireMapObject(object:Dynamic, state:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_TEXTURE_VARIATION_OF_CLOSEST_OBJECT_OF_TYPE")
	static function SetTextureVariationOfClosestObjectOfType(x:Float, y:Float, z:Float, radius:Float, modelHash:Int, textureVariation:Int):Bool;

	/**
	 * ```
	 * Hardcoded to not work in multiplayer.  
	 * Used to lock/unlock doors to interior areas of the game.  
	 * (Possible) Door Types:  
	 * pastebin.com/9S2m3qA4  
	 * Heading is either 1, 0 or -1 in the scripts. Means default closed(0) or opened either into(1) or out(-1) of the interior.  
	 * Locked means that the heading is locked.    
	 * p6 is always 0.   
	 * 225 door types, model names and coords found in stripclub.c4:  
	 * pastebin.com/gywnbzsH  
	 * get door info: pastebin.com/i14rbekD  
	 * ```
	 */
	@:native("SET_STATE_OF_CLOSEST_DOOR_OF_TYPE")
	static function setStateOfClosestDoorOfType(type:Int, x:Float, y:Float, z:Float, locked:Bool, heading:Float, p6:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PICKUP_GENERATION_RANGE_MULTIPLIER")
	static function setPickupGenerationRangeMultiplier(multiplier:Float):Dynamic;

	/**
	 * ```
	 * Disabling/enabling a player from getting pickups. From the scripts:
	 * OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
	 * OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
	 * OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 1);
	 * OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
	 * OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 0);
	 * OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 1);
	 * SET_PLAYER_*
	 * ```
	 */
	@:native("_TOGGLE_USE_PICKUPS_FOR_PLAYER")
	static function ToggleUsePickupsForPlayer(player:Dynamic, pickupHash:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_PICKUP_UNCOLLECTABLE")
	static function SetPickupUncollectable(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("TRACK_OBJECT_VISIBILITY")
	static function trackObjectVisibility(object:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1365
	 * ```
	 */
	@:native("_SET_UNK_GLOBAL_BOOL_RELATED_TO_DAMAGE")
	static function SetUnkGlobalBoolRelatedToDamage(value:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_TEAM_PICKUP_OBJECT")
	static function setTeamPickupObject(object:Dynamic, p1:Dynamic, p2:Bool):Dynamic;

	/**
	 * ```
	 * Returns true if the object has finished moving.  
	 * If false, moves the object towards the specified X, Y and Z coordinates with the specified X, Y and Z speed.  
	 * See also: https://gtagmodding.com/opcode-database/opcode/034E/
	 * Has to be looped until it returns true.   
	 * ```
	 */
	@:native("SLIDE_OBJECT")
	static function slideObject(object:Dynamic, toX:Float, toY:Float, toZ:Float, speedX:Float, speedY:Float, speedZ:Float, collision:Bool):Bool;

}
