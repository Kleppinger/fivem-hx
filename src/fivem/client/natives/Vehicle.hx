package fivem.client.natives;

@:native("_G")
extern class Vehicle {
	/**
	 * 
	 */
	@:native("AddRoadNodeSpeedZone")
	static function addRoadNodeSpeedZone(x:Float, y:Float, z:Float, radius:Float, speed:Float, p5:Bool):Int;

	/**
	 * 
	 */
	@:native("AddVehiclePhoneExplosiveDevice")
	static function addVehiclePhoneExplosiveDevice(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("AddVehicleCombatAngledAvoidanceArea")
	static function addVehicleCombatAngledAvoidanceArea(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Float):Dynamic;

	/**
	 * ```
	 * Appears to return false if any window is broken.  
	 * ```
	 */
	@:native("AreAllVehicleWindowsIntact")
	static function areAllVehicleWindowsIntact(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("AddVehicleStuckCheckWithWarp")
	static function addVehicleStuckCheckWithWarp(p0:Dynamic, p1:Float, p2:Dynamic, p3:Bool, p4:Bool, p5:Bool, p6:Dynamic):Dynamic;

	/**
	 * This native it's a debug native. Won't do anything.
	 */
	@:native("AllowAmbientVehiclesToAvoidAdverseConditions")
	static function allowAmbientVehiclesToAvoidAdverseConditions(vehicle:Dynamic):Dynamic;

	/**
	 * Returns true when the bomb bay doors of this plane are open. False if they're closed.
	 */
	@:native("AreBombBayDoorsOpen")
	static function AreBombBayDoorsOpen(aircraft:Dynamic):Bool;

	/**
	 * Only used with the "akula" in the decompiled native scripts.
	 * 
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("AreHeliStubWingsDeployed")
	static function AreHeliStubWingsDeployed(vehicle:Dynamic):Bool;

	/**
	 * Queries whether the control panels of a plane are intact. This native is used to determine the operational status of a plane's cockpit controls, which can affect the plane's flyability.
	 */
	@:native("ArePlaneControlPanelsIntact")
	static function arePlaneControlPanelsIntact(vehicle:Dynamic, checkForZeroHealth:Bool):Bool;

	/**
	 * 
	 */
	@:native("AddVehicleUpsidedownCheck")
	static function addVehicleUpsidedownCheck(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("ArePlaneWingsIntact")
	static function ArePlaneWingsIntact(plane:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("AttachContainerToHandlerFrame")
	static function AttachContainerToHandlerFrame(handler:Dynamic, container:Dynamic):Dynamic;

	/**
	 * ```
	 * Returns false if every seat is occupied.  
	 * ```
	 */
	@:native("AreAnyVehicleSeatsFree")
	static function areAnyVehicleSeatsFree(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("AttachVehicleToCargobob")
	static function attachVehicleToCargobob(cargobob:Dynamic, vehicle:Dynamic, vehicleBoneIndex:Int, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("AttachVehicleToTrailer")
	static function attachVehicleToTrailer(vehicle:Dynamic, trailer:Dynamic, radius:Float):Dynamic;

	/**
	 * 
	 */
	@:native("ArePlanePropellersIntact")
	static function arePlanePropellersIntact(plane:Dynamic):Bool;

	/**
	 * This native makes the vehicle stop immediately, as it happens when we enter a multiplayer garage.
	 */
	@:native("BringVehicleToHalt")
	static function bringVehicleToHalt(vehicle:Dynamic, distance:Float, duration:Int, bControlVerticalVelocity:Bool):Dynamic;

	/**
	 * Returns whether the outrigger legs are deployed for the vehicle.
	 * The Chernobog is one of the few vehicles with outrigger legs.
	 * 
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("AreOutriggerLegsDeployed")
	static function AreOutriggerLegsDeployed(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("AttachEntityToCargobob")
	static function attachEntityToCargobob(vehicle:Dynamic, entity:Dynamic, p2:Int, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("AttachVehicleOnToTrailer")
	static function attachVehicleOnToTrailer(vehicle:Dynamic, trailer:Dynamic, offsetX:Float, offsetY:Float, offsetZ:Float, coordsX:Float, coordsY:Float, coordsZ:Float, rotationX:Float, rotationY:Float, rotationZ:Float, disableColls:Float):Dynamic;

	/**
	 * 
	 */
	@:native("CanShuffleSeat")
	static function canShuffleSeat(vehicle:Dynamic, seatIndex:Int):Bool;

	/**
	 * ```
	 * HookOffset defines where the hook is attached. leave at 0 for default attachment.
	 * ```
	 */
	@:native("AttachVehicleToTowTruck")
	static function attachVehicleToTowTruck(towTruck:Dynamic, vehicle:Dynamic, rear:Bool, hookOffsetX:Float, hookOffsetY:Float, hookOffsetZ:Float):Dynamic;

	/**
	 * 
	 */
	@:native("ClearVehicleCustomSecondaryColour")
	static function clearVehicleCustomSecondaryColour(vehicle:Dynamic):Dynamic;

	/**
	 * Checks if a boat can be anchored at its present position without possibly intersecting collision later.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("CanAnchorBoatHere")
	static function canAnchorBoatHere(boat:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("CloseBombBayDoors")
	static function closeBombBayDoors(vehicle:Dynamic):Dynamic;

	/**
	 * Determines whether the specified Cargobob can pick up a given entity.
	 */
	@:native("CanCargobobPickUpEntity")
	static function canCargobobPickUpEntity(cargobob:Dynamic, entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("ClearLastDrivenVehicle")
	static function clearLastDrivenVehicle():Dynamic;

	/**
	 * 
	 */
	@:native("ClearVehicleRouteHistory")
	static function clearVehicleRouteHistory(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("ClearVehicleCustomPrimaryColour")
	static function clearVehicleCustomPrimaryColour(vehicle:Dynamic):Dynamic;

	/**
	 * Checks if a boat can be anchored at its present position, ignoring any players standing on the boat.
	 * 
	 * ```
	 * NativeDB Introduced: v678
	 * ```
	 */
	@:native("CanAnchorBoatHereIgnorePlayers")
	static function canAnchorBoatHereIgnorePlayers(boat:Dynamic):Bool;

	/**
	 * ```
	 * Works for vehicles with a retractable landing gear  
	 * landing gear states:  
	 * 0: Deployed  
	 * 1: Closing  
	 * 2: Opening  
	 * 3: Retracted  
	 * ```
	 */
	@:native("ControlLandingGear")
	static function controlLandingGear(vehicle:Dynamic, state:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ClearVehiclePhoneExplosiveDevice")
	static function ClearVehiclePhoneExplosiveDevice():Dynamic;

	/**
	 * Drops the Hook/Magnet on a cargobob
	 * 
	 * ```cpp
	 * enum eCargobobHook  
	 * {  
	 * 	CARGOBOB_HOOK = 0,  
	 * 	CARGOBOB_MAGNET = 1,  
	 * };  
	 * ```
	 */
	@:native("CreatePickUpRopeForCargobob")
	static function createPickUpRopeForCargobob(cargobob:Dynamic, state:Int):Dynamic;

	/**
	 * Train models must be [requested](#\_0x963D27A58DF860AC) before use. See trains.xml (located in `Grand Theft Auto V\update\update.rpf\common\data\levels\gta5\trains.xml`) for freight and metro variations.
	 * 
	 * Model names to request can be found by searching `model_name` in the file.
	 * 
	 * The `Lua` usage example provided down below has been provided in such way so users can test each and every train variation.
	 * 
	 * ### Newly added parameters (seen in 2372 build)
	 * 
	 * ```
	 * NativeDB Added Parameter 6: BOOL isNetwork
	 * NativeDB Added Parameter 7: BOOL netMissionEntity
	 * ```
	 * 
	 * *   **isNetwork**: Whether to create a network object for the train. If false, the train exists only locally.
	 * *   **netMissionEntity**: Whether to register the train as pinned to the script host in the R\* network model.
	 * 
	 * ### Train Models:
	 * 
	 * *   freight
	 * 
	 * ### Carriage Models:
	 * 
	 * *   freightcar
	 * *   freightcar2 (Added v2372)
	 * *   freightcont1
	 * *   freightcont2
	 * *   freightgrain
	 * *   metrotrain
	 * *   tankercar
	 * 
	 * ### Some train variations (default from trains.xml as of build 2372)
	 * 
	 * *   17. Very long train and freight variation.
	 * *   18. Freight train only.
	 * *   26. Double metro train (with both models flipped opposite to each other). This used to be `25` before the 2802 build, it also used to be `24` before the 2372 build.
	 */
	@:native("CreateMissionTrain")
	static function createMissionTrain(variation:Int, x:Float, y:Float, z:Float, direction:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: 3095
	 * ```
	 * 
	 * Resets or clears the nitrous system for a specified vehicle. You can check if a vehicle has nitrous with [`IS_NITROUS_ACTIVE`](#\_0x491E822B2C464FE4)
	 */
	@:native("ClearNitrous")
	static function clearNitrous(vehicle:Dynamic):Dynamic;

	/**
	 * Removes a scripted vehicle generator.
	 */
	@:native("DeleteScriptVehicleGenerator")
	static function deleteScriptVehicleGenerator(vehicleGenerator:Int):Dynamic;

	/**
	 * ```
	 * Creates a script vehicle generator at the given coordinates. Most parameters after the model hash are unknown.  
	 * Parameters:  
	 * a/w/s - Generator position  
	 * heading - Generator heading  
	 * p4 - Unknown (always 5.0)  
	 * p5 - Unknown (always 3.0)  
	 * modelHash - Vehicle model hash  
	 * p7/8/9/10 - Unknown (always -1)  
	 * p11 - Unknown (usually TRUE, only one instance of FALSE)  
	 * p12/13 - Unknown (always FALSE)  
	 * p14 - Unknown (usally FALSE, only two instances of TRUE)  
	 * p15 - Unknown (always TRUE)  
	 * p16 - Unknown (always -1)  
	 * Vector3 coords = GET_ENTITY_COORDS(PLAYER_PED_ID(), 0);	CREATE_SCRIPT_VEHICLE_GENERATOR(coords.x, coords.y, coords.z, 1.0f, 5.0f, 3.0f, GET_HASH_KEY("adder"), -1. -1, -1, -1, -1, true, false, false, false, true, -1);  
	 * ```
	 */
	@:native("CreateScriptVehicleGenerator")
	static function createScriptVehicleGenerator(x:Float, y:Float, z:Float, heading:Float, p4:Float, p5:Float, modelHash:Int, p7:Int, p8:Int, p9:Int, p10:Int, p11:Bool, p12:Bool, p13:Bool, p14:Bool, p15:Bool, p16:Int):Int;

	/**
	 * Removes the cargen area of interest and resumes normal cargen spawning.
	 * 
	 * You can set the area of interest with [`SET_VEHICLE_GENERATOR_AREA_OF_INTEREST`](#\_0x9A75585FB2E54FAD)
	 */
	@:native("ClearVehicleGeneratorAreaOfInterest")
	static function clearVehicleGeneratorAreaOfInterest():Dynamic;

	/**
	 * Copies sourceVehicle's damage (broken bumpers, broken lights, etc.) to targetVehicle.
	 */
	@:native("CopyVehicleDamages")
	static function copyVehicleDamages(sourceVehicle:Dynamic, targetVehicle:Dynamic):Dynamic;

	/**
	 * Detaches the specified entity currently being carried by a Cargobob.
	 */
	@:native("DetachEntityFromCargobob")
	static function detachEntityFromCargobob(vehicle:Dynamic, entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("DeleteAllTrains")
	static function deleteAllTrains():Dynamic;

	/**
	 * Used to delete mission trains created with [`CREATE_MISSION_TRAIN`](#\_0x63C6CCA8E68AE8C8).
	 */
	@:native("DeleteMissionTrain")
	static function deleteMissionTrain(train:Dynamic):Dynamic;

	/**
	 * Creates a vehicle with the specified model at the specified position. This vehicle will initially be owned by the creating
	 * script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
	 * 
	 * ```
	 * NativeDB Added Parameter 8: BOOL p7
	 * ```
	 */
	@:native("CreateVehicle")
	static function createVehicle(modelHash:Int, x:Float, y:Float, z:Float, heading:Float, isNetwork:Bool, netMissionEntity:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DetachVehicleFromAnyCargobob")
	static function detachVehicleFromAnyCargobob(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("DetachContainerFromHandlerFrame")
	static function detachContainerFromHandlerFrame(vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * Deletes a vehicle.  
	 * The vehicle must be a mission entity to delete, so call this before deleting: SET_ENTITY_AS_MISSION_ENTITY(vehicle, true, true);  
	 * eg how to use:  
	 * SET_ENTITY_AS_MISSION_ENTITY(vehicle, true, true);  
	 * DELETE_VEHICLE(&vehicle);  
	 * Deletes the specified vehicle, then sets the handle pointed to by the pointer to NULL.  
	 * ```
	 */
	@:native("DeleteVehicle")
	static function deleteVehicle(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("DetachVehicleFromCargobob")
	static function detachVehicleFromCargobob(cargobob:Dynamic, vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * how does this work?  
	 * ```
	 */
	@:native("DisableVehicleWeapon")
	static function disableVehicleWeapon(disabled:Bool, weaponHash:Int, vehicle:Dynamic, owner:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("DetachVehicleFromAnyTowTruck")
	static function detachVehicleFromAnyTowTruck(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * First two parameters swapped. Scripts verify that towTruck is the first parameter, not the second.  
	 * ```
	 */
	@:native("DetachVehicleFromTowTruck")
	static function detachVehicleFromTowTruck(towTruck:Dynamic, vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * Checks via CVehicleModelInfo  
	 * ```
	 */
	@:native("DoesExtraExist")
	static function doesExtraExist(vehicle:Dynamic, extraId:Int):Bool;

	/**
	 * 
	 */
	@:native("DetonateVehiclePhoneExplosiveDevice")
	static function detonateVehiclePhoneExplosiveDevice():Dynamic;

	/**
	 * 
	 */
	@:native("DisableIndividualPlanePropeller")
	static function disableIndividualPlanePropeller(vehicle:Dynamic, propeller:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DetachVehicleFromTrailer")
	static function detachVehicleFromTrailer(vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * Returns true if the vehicle has the FLAG_ALLOWS_RAPPEL flag set.
	 * ```
	 */
	@:native("DoesVehicleAllowRappel")
	static function DoesVehicleAllowRappel(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("DisablePlaneAileron")
	static function disablePlaneAileron(vehicle:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DisableVehicleTurretMovementThisFrame")
	static function DisableVehicleTurretMovementThisFrame(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("DisableVehicleNeonLights")
	static function DisableVehicleNeonLights(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Returns true only when the hook is active, will return false if the magnet is active  
	 * ```
	 */
	@:native("DoesCargobobHavePickUpRope")
	static function doesCargobobHavePickUpRope(cargobob:Dynamic):Bool;

	/**
	 * Disables collision for this vehicle (maybe it also supports other entities, not sure).
	 * Only world/building/fixed world objects will have their collisions disabled, props, peds, or any other entity still collides with the vehicle.
	 * 
	 * [Example video](https://streamable.com/6n45d5)
	 * 
	 * Not sure if there is a native (and if so, which one) that resets the collisions.
	 */
	@:native("DisableVehicleWorldCollision")
	static function DisableVehicleWorldCollision(vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * Returns true only when the magnet is active, will return false if the hook is active  
	 * ```
	 */
	@:native("DoesCargobobHavePickupMagnet")
	static function doesCargobobHavePickupMagnet(cargobob:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("DoesVehicleHaveLandingGear")
	static function DoesVehicleHaveLandingGear(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * Maximum amount of vehicles with vehicle stuck check appears to be 16.  
	 * ```
	 */
	@:native("DoesVehicleHaveStuckVehicleCheck")
	static function doesVehicleHaveStuckVehicleCheck(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("DoesVehicleHaveWeapons")
	static function doesVehicleHaveWeapons(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("DoesScriptVehicleGeneratorExist")
	static function doesScriptVehicleGeneratorExist(vehicleGenerator:Int):Bool;

	/**
	 * ```
	 * Explodes a selected vehicle.  
	 * Vehicle vehicle = Vehicle you want to explode.  
	 * BOOL isAudible = If explosion makes a sound.  
	 * BOOL isInvisible = If the explosion is invisible or not.  
	 * First BOOL does not give any visual explosion, the vehicle just falls apart completely but slowly and starts to burn.  
	 * ```
	 */
	@:native("ExplodeVehicle")
	static function explodeVehicle(vehicle:Dynamic, isAudible:Bool, isInvisible:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("EjectJb700Roof")
	static function EjectJb700Roof(vehicle:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * Determines whether the specified vehicle is equipped with a searchlight.
	 * 
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("DoesVehicleHaveSearchlight")
	static function doesVehicleHaveSearchlight(vehicle:Dynamic):Bool;

	/**
	 * Native is significantly more complicated than simply generating a random vector & length.
	 * 
	 * The 'point' is either 400.0 or 250.0 units away from the Ped's current coordinates; and paths into functions like rage::grcViewport\_\__IsSphereVisible.
	 * 
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("FindRandomPointInSpace")
	static function FindRandomPointInSpace(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("DoesVehicleExistWithDecorator")
	static function doesVehicleExistWithDecorator(decorator:String):Bool;

	/**
	 * See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
	 * 
	 * This function is coded to not work on vehicles of type: `CBike`, `Bmx`, `CBoat`, `CTrain`, and `CSubmarine`.
	 */
	@:native("FixVehicleWindow")
	static function fixVehicleWindow(vehicle:Dynamic, windowIndex:Int):Dynamic;

	/**
	 * ```
	 * Checks if vehicle tyre at index exists. Also returns false if tyre was removed.
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("DoesVehicleTyreExist")
	static function DoesVehicleTyreExist(vehicle:Dynamic, tyreIndex:Int):Bool;

	/**
	 * Determines whether a specific vehicle is equipped with a roof.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("DoesVehicleHaveRoof")
	static function doesVehicleHaveRoof(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * Often called after START_PLAYBACK_RECORDED_VEHICLE and SKIP_TIME_IN_PLAYBACK_RECORDED_VEHICLE; similar in use to FORCE_ENTITY_AI_AND_ANIMATION_UPDATE.
	 * ```
	 */
	@:native("ForcePlaybackRecordedVehicleUpdate")
	static function forcePlaybackRecordedVehicleUpdate(vehicle:Dynamic, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ExplodeVehicleInCutscene")
	static function explodeVehicleInCutscene(vehicle:Dynamic, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ForceSubmarineSurfaceMode")
	static function forceSubmarineSurfaceMode(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Finds the vehicle that is carrying this entity with a handler frame.
	 * The model of the entity must be prop_contr_03b_ld or the function will return 0.
	 * ```
	 */
	@:native("FindVehicleCarryingThisEntity")
	static function FindVehicleCarryingThisEntity(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetAllVehicles")
	static function GetAllVehicles(vehArray:Dynamic):Int;

	/**
	 * ```
	 * NativeDB Introduced: v3095
	 * ```
	 * 
	 * Recharges the nitrous system of the specified vehicle to its maximum capacity. This action sets the nitrous charge duration to the maximum limit defined by previous settings applied through [`SET_OVERRIDE_NITROUS_LEVEL`](#\_0xC8E9B6B71B8E660D).
	 */
	@:native("FullyChargeNitrous")
	static function fullyChargeNitrous(vehicle:Dynamic):Dynamic;

	/**
	 * Forces a submarine to maintain neutral buoyancy for a specified duration, preventing it from rising when unoccupied or without a driver.
	 * 
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("ForceSubmarineNeurtalBuoyancy")
	static function forceSubmarineNeurtalBuoyancy(submarine:Dynamic, time:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GetBoatBoomPositionRatio")
	static function getBoatBoomPositionRatio(vehicle:Dynamic):Float;

	/**
	 * ```
	 * Returns true if the vehicle has the FLAG_JUMPING_CAR flag set.
	 * ```
	 */
	@:native("GetCanVehicleJump")
	static function GetCanVehicleJump(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * Same call as VEHICLE::_0x0F3B4D4E43177236
	 * ```
	 */
	@:native("GetBoatBoomPositionRatio_2")
	static function GetBoatBoomPositionRatio2(vehicle:Dynamic, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("GetBoatBoomPositionRatio_3")
	static function GetBoatBoomPositionRatio3(vehicle:Dynamic, p1:Bool):Dynamic;

	/**
	 * Returns the convertible state of the specified vehicle.
	 * 
	 * ```cpp
	 * enum eRoofState {
	 *     RAISED = 0,
	 *     LOWERING = 1,
	 *     LOWERED = 2,
	 *     RAISING = 3,
	 *     CLOSING_BOOT = 4,
	 *     ROOF_STUCK_RAISED = 5,
	 *     ROOF_STUCK_LOWERED = 6
	 * }
	 * ```
	 */
	@:native("GetConvertibleRoofState")
	static function getConvertibleRoofState(vehicle:Dynamic):Int;

	/**
	 * Retrieves the agility for a specific boat model, including any vehicle mods. Unlike other vehicles where Rockstar Games typically assess performance based on traction, boats use agility as a measure. This static value is distinct from the traction metrics used for other vehicle types.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("GetBoatVehicleModelAgility")
	static function getBoatVehicleModelAgility(modelHash:Int):Float;

	/**
	 * ```
	 * Example usage  
	 * VEHICLE::GET_CLOSEST_VEHICLE(x, y, z, radius, hash, unknown leave at 70)   
	 * x, y, z: Position to get closest vehicle to.  
	 * radius: Max radius to get a vehicle.  
	 * modelHash: Limit to vehicles with this model. 0 for any.  
	 * flags: The bitwise flags altering the function's behaviour.  
	 * Does not return police cars or helicopters.  
	 * It seems to return police cars for me, does not seem to return helicopters, planes or boats for some reason  
	 * Only returns non police cars and motorbikes with the flag set to 70 and modelHash to 0. ModelHash seems to always be 0 when not a modelHash in the scripts, as stated above.   
	 * These flags were found in the b617d scripts: 0,2,4,6,7,23,127,260,2146,2175,12294,16384,16386,20503,32768,67590,67711,98309,100359.  
	 * Converted to binary, each bit probably represents a flag as explained regarding another native here: gtaforums.com/topic/822314-guide-driving-styles  
	 * Conversion of found flags to binary: pastebin.com/kghNFkRi  
	 * At exactly 16384 which is 0100000000000000 in binary and 4000 in hexadecimal only planes are returned.   
	 * It's probably more convenient to use worldGetAllVehicles(int *arr, int arrSize) and check the shortest distance yourself and sort if you want by checking the vehicle type with for example VEHICLE::IS_THIS_MODEL_A_BOAT  
	 * -------------------------------------------------------------------------  
	 * Conclusion: This native is not worth trying to use. Use something like this instead: pastebin.com/xiFdXa7h
	 * Use flag 127 to return police cars
	 * ```
	 */
	@:native("GetClosestVehicle")
	static function getClosestVehicle(x:Float, y:Float, z:Float, radius:Float, modelHash:Int, flags:Int):Dynamic;

	/**
	 * Gets the position of the cargobob hook, in world coords.
	 */
	@:native("GetCargobobHookPosition")
	static function GetCargobobHookPosition(cargobob:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetCurrentPlaybackForVehicle")
	static function getCurrentPlaybackForVehicle(vehicle:Dynamic):Int;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("GetDriftTyresEnabled")
	static function GetDriftTyresEnabled(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("GetDoesVehicleHaveTombstone")
	static function GetDoesVehicleHaveTombstone(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * Max 1000.  
	 * At 0 the main rotor will stall.  
	 * ```
	 */
	@:native("GetHeliMainRotorHealth")
	static function getHeliMainRotorHealth(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetEntityAttachedToTowTruck")
	static function getEntityAttachedToTowTruck(towTruck:Dynamic):Dynamic;

	/**
	 * Returns the display name/text label (`gameName` in `vehicles.meta`) for the specified vehicle model.
	 */
	@:native("GetDisplayNameFromVehicleModel")
	static function getDisplayNameFromVehicleModel(modelHash:Int):String;

	/**
	 * 
	 */
	@:native("GetHasRocketBoost")
	static function GetHasRocketBoost(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetHasRetractableWheels")
	static function GetHasRetractableWheels(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("GetHeliTailRotorHealth")
	static function getHeliTailRotorHealth(heli:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetEntityAttachedToCargobob")
	static function GetEntityAttachedToCargobob(vehicle:Dynamic):Dynamic;

	/**
	 * Checks whether the specified boat vehicle is capsized, meaning it has overturned or is upside down in the water.
	 */
	@:native("GetIsBoatCapsized")
	static function getIsBoatCapsized(vehicle:Dynamic):Bool;

	/**
	 * See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
	 */
	@:native("GetEntryPositionOfDoor")
	static function GetEntryPositionOfDoor(vehicle:Dynamic, doorIndex:Int):Dynamic;

	/**
	 * ```
	 * From the driver's perspective, is the right headlight broken.  
	 * ```
	 */
	@:native("GetIsRightVehicleHeadlightDamaged")
	static function getIsRightVehicleHeadlightDamaged(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * Check if Vehicle Secondary is avaliable for customize  
	 * ```
	 */
	@:native("GetIsVehicleSecondaryColourCustom")
	static function getIsVehicleSecondaryColourCustom(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * Returns true when in a vehicle, false whilst entering/exiting.  
	 * ```
	 */
	@:native("GetIsVehicleEngineRunning")
	static function getIsVehicleEngineRunning(vehicle:Dynamic):Bool;

	/**
	 * See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
	 */
	@:native("GetIsDoorValid")
	static function GetIsDoorValid(vehicle:Dynamic, doorIndex:Int):Bool;

	/**
	 * ```
	 * Landing gear states:  
	 * 0: Deployed  
	 * 1: Closing (Retracting)
	 * 3: Opening (Deploying)
	 * 4: Retracted  
	 * 5: Broken
	 * ```
	 * 
	 * Landing gear state 2 is never used.
	 */
	@:native("GetLandingGearState")
	static function getLandingGearState(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetIsWheelsLoweredStateActive")
	static function GetIsWheelsLoweredStateActive(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * Max 1000.
	 * At -100 both helicopter rotors will stall.
	 * ```
	 */
	@:native("GetHeliTailBoomHealth")
	static function getHeliTailBoomHealth(vehicle:Dynamic):Float;

	/**
	 * ```
	 * From the driver's perspective, is the left headlight broken.  
	 * ```
	 */
	@:native("GetIsLeftVehicleHeadlightDamaged")
	static function getIsLeftVehicleHeadlightDamaged(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetLastPedInVehicleSeat")
	static function getLastPedInVehicleSeat(vehicle:Dynamic, seatIndex:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("GetHydraulicWheelValue")
	static function GetHydraulicWheelValue(vehicle:Dynamic, wheelId:Int):Float;

	/**
	 * 
	 */
	@:native("GetModSlotName")
	static function getModSlotName(vehicle:Dynamic, modType:Int):String;

	/**
	 * ```
	 * Returns whether this vehicle is currently disabled by an EMP mine.
	 * 
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("GetIsVehicleEmpDisabled")
	static function GetIsVehicleEmpDisabled(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * Second Param = LiveryIndex  
	 * example   
	 * int count = VEHICLE::GET_VEHICLE_LIVERY_COUNT(veh);  
	 * for (int i = 0; i < count; i++)    
	 * 	{  
	 * char* LiveryName = VEHICLE::GET_LIVERY_NAME(veh, i);  
	 * 	}  
	 * this example will work fine to fetch all names   
	 * for example for Sanchez we get   
	 * SANC_LV1  
	 * SANC_LV2  
	 * SANC_LV3  
	 * SANC_LV4  
	 * SANC_LV5  
	 * Use _GET_LABEL_TEXT, to get the localized livery name.  
	 * -----------  
	 * NOTE: You may need to set the vehicle's modKit to 0 by using this function: SET_VEHICLE_MOD_KIT() before getting the name, otherwise this native may return NULL.  
	 * dev-c.com/nativedb/func/info/1f2aa07f00b3217a  
	 * ```
	 */
	@:native("GetLiveryName")
	static function getLiveryName(vehicle:Dynamic, liveryIndex:Int):String;

	/**
	 * 
	 */
	@:native("GetIsVehiclePrimaryColourCustom")
	static function getIsVehiclePrimaryColourCustom(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * paintType:
	 * 0: Normal
	 * 1: Metallic
	 * 2: Pearl
	 * 3: Matte
	 * 4: Metal
	 * 5: Chrome
	 * ```
	 */
	@:native("GetNumModColors")
	static function getNumModColors(paintType:Int, p1:Bool):Int;

	/**
	 * 
	 */
	@:native("GetLastDrivenVehicle")
	static function getLastDrivenVehicle():Dynamic;

	/**
	 * Checks if the vehicle is electric.
	 * 
	 * ```
	 * NativeDB Introduced: v3258
	 * ```
	 */
	@:native("GetIsVehicleElectric")
	static function GetIsVehicleElectric(vehicleModel:Int):Bool;

	/**
	 * 
	 */
	@:native("GetNumModKits")
	static function getNumModKits(vehicle:Dynamic):Int;

	/**
	 * Retrieves the manufacturer's name for a specified vehicle.
	 * 
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("GetMakeNameFromVehicleModel")
	static function getMakeNameFromVehicleModel(modelHash:Int):String;

	/**
	 * ```
	 * Returns how many possible mods a vehicle has for a given mod type  
	 * ```
	 */
	@:native("GetNumVehicleMods")
	static function getNumVehicleMods(vehicle:Dynamic, modType:Int):Int;

	/**
	 * 
	 */
	@:native("GetNumberOfVehicleDoors")
	static function GetNumberOfVehicleDoors(vehicle:Dynamic):Int;

	/**
	 * ```
	 * Returns the text label of a mod type for a given vehicle  
	 * Use _GET_LABEL_TEXT to get the part name in the game's language  
	 * ```
	 */
	@:native("GetModTextLabel")
	static function getModTextLabel(vehicle:Dynamic, modType:Int, modValue:Int):String;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("GetIsVehicleShuntBoostActive")
	static function GetIsVehicleShuntBoostActive(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * Distance traveled in the vehicles current recording.
	 * ```
	 */
	@:native("GetPositionInRecording")
	static function getPositionInRecording(vehicle:Dynamic):Float;

	/**
	 * ```
	 * Returns the number of *types* of licence plates, enumerated below in SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX.  
	 * ```
	 */
	@:native("GetNumberOfVehicleNumberPlates")
	static function getNumberOfVehicleNumberPlates():Int;

	/**
	 * ```
	 * Actually number of color combinations  
	 * ```
	 */
	@:native("GetNumberOfVehicleColours")
	static function getNumberOfVehicleColours(vehicle:Dynamic):Int;

	/**
	 * ```
	 * Returns last vehicle that was rammed by the given vehicle using the shunt boost.
	 * 
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("GetLastRammedVehicle")
	static function GetLastRammedVehicle(vehicle:Dynamic):Dynamic;

	/**
	 * This native does no interpolation between pathpoints. The same position will be returned for all times up to the next pathpoint in the recording.
	 * 
	 * See [`REQUEST_VEHICLE_RECORDING`](#\_0xAF514CABE74CBF15).
	 */
	@:native("GetPositionOfVehicleRecordingAtTime")
	static function getPositionOfVehicleRecordingAtTime(recording:Int, time:Float, script:String):Dynamic;

	/**
	 * 
	 */
	@:native("GetNumVehicleWindowTints")
	static function getNumVehicleWindowTints():Int;

	/**
	 * See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
	 */
	@:native("GetPedUsingVehicleDoor")
	static function getPedUsingVehicleDoor(vehicle:Dynamic, doorIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GetRandomVehicleBackBumperInSphere")
	static function getRandomVehicleBackBumperInSphere(p0:Float, p1:Float, p2:Float, p3:Float, p4:Int, p5:Int, p6:Int):Dynamic;

	/**
	 * ```
	 * Not present in the retail version! It's just a nullsub.  
	 * p0 always true (except in one case)  
	 * p1 a random vehicle hash loaded in memory  
	 * successIndicator: 0 if success, -1 if failed
	 * ```
	 */
	@:native("GetRandomVehicleModelInMemory")
	static function getRandomVehicleModelInMemory(p0:Bool, modelHash:Dynamic, successIndicator:Dynamic):Dynamic;

	/**
	 * ```
	 * Gets a random vehicle in a sphere at the specified position, of the specified radius.  
	 * x: The X-component of the position of the sphere.  
	 * y: The Y-component of the position of the sphere.  
	 * z: The Z-component of the position of the sphere.  
	 * radius: The radius of the sphere. Max is 9999.9004.  
	 * modelHash: The vehicle model to limit the selection to. Pass 0 for any model.  
	 * flags: The bitwise flags that modifies the behaviour of this function.  
	 * ```
	 */
	@:native("GetRandomVehicleInSphere")
	static function getRandomVehicleInSphere(x:Float, y:Float, z:Float, radius:Float, modelHash:Int, flags:Int):Dynamic;

	/**
	 * Gets the ped in the specified seat of the passed vehicle.
	 * 
	 * If there is no ped in the seat, and the game considers the vehicle as ambient population, this will create a random occupant ped in the seat, which may be cleaned up by the game fairly soon if not marked as script-owned mission entity.
	 * 
	 * **NativeDB Added Parameter 3**: BOOL p2 (uses a different GetOccupant function)
	 */
	@:native("GetPedInVehicleSeat")
	static function getPedInVehicleSeat(vehicle:Dynamic, seatIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GetPositionOfVehicleRecordingIdAtTime")
	static function getPositionOfVehicleRecordingIdAtTime(id:Int, time:Float):Dynamic;

	/**
	 * 
	 */
	@:native("GetRandomVehicleFrontBumperInSphere")
	static function getRandomVehicleFrontBumperInSphere(p0:Float, p1:Float, p2:Float, p3:Float, p4:Int, p5:Int, p6:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: 3095
	 * ```
	 * 
	 * Retrieves the remaining duration of nitrous boost available for the specified vehicle.
	 */
	@:native("GetRemainingNitrousDuration")
	static function GetRemainingNitrousDuration(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetRotationOfVehicleRecordingIdAtTime")
	static function getRotationOfVehicleRecordingIdAtTime(id:Int, time:Float):Dynamic;

	/**
	 * 
	 */
	@:native("GetRotationOfVehicleRecordingAtTime")
	static function getRotationOfVehicleRecordingAtTime(recording:Int, time:Float, script:String):Dynamic;

	/**
	 * Checks if a Submarine has any air leaks, when there is more than 4 the player will drown.
	 * 
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("GetSubmarineNumberOfAirLeaks")
	static function getSubmarineNumberOfAirLeaks(submarine:Dynamic):Int;

	/**
	 * Determines if the submarine is operating below its designated crush depth.
	 * 
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("GetSubmarineIsUnderDesignDepth")
	static function getSubmarineIsUnderDesignDepth(submarine:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetTotalDurationOfVehicleRecordingId")
	static function getTotalDurationOfVehicleRecordingId(id:Int):Float;

	/**
	 * ```
	 * Can be used with GET_TOTAL_DURATION_OF_VEHICLE_RECORDING{_ID} to compute a percentage.
	 * ```
	 */
	@:native("GetTimePositionInRecording")
	static function getTimePositionInRecording(vehicle:Dynamic):Float;

	/**
	 * ```
	 * NativeDB Introduced: v2060
	 * ```
	 */
	@:native("GetTyreWearMultiplier")
	static function GetTyreWearMultiplier(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * 
	 */
	@:native("GetTotalDurationOfVehicleRecording")
	static function getTotalDurationOfVehicleRecording(recording:Int, script:String):Float;

	/**
	 * Retrieves a static value representing the maximum drive force of specific a vehicle, including any vehicle mods. This value does not change dynamically during gameplay. This value provides an approximation and should be considered alongside other performance metrics like top speed for a more comprehensive understanding of the vehicle's capabilities.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("GetVehicleAcceleration")
	static function getVehicleAcceleration(vehicle:Dynamic):Float;

	/**
	 * ```
	 * Corrected p1. it's basically the 'carriage/trailer number'. So if the train has 3 trailers you'd call the native once with a var or 3 times with 1, 2, 3.  
	 * ```
	 */
	@:native("GetTrainCarriage")
	static function getTrainCarriage(train:Dynamic, trailerNumber:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GetVehicleCauseOfDestruction")
	static function getVehicleCauseOfDestruction(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleCanActivateParachute")
	static function GetVehicleCanActivateParachute(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("GetTyreHealth")
	static function GetTyreHealth(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * ```
	 * Returns an int  
	 * Vehicle Classes:  
	 * 0: Compacts  
	 * 1: Sedans  
	 * 2: SUVs  
	 * 3: Coupes  
	 * 4: Muscle  
	 * 5: Sports Classics  
	 * 6: Sports  
	 * 7: Super  
	 * 8: Motorcycles  
	 * 9: Off-road  
	 * 10: Industrial  
	 * 11: Utility  
	 * 12: Vans  
	 * 13: Cycles  
	 * 14: Boats  
	 * 15: Helicopters  
	 * 16: Planes  
	 * 17: Service  
	 * 18: Emergency  
	 * 19: Military  
	 * 20: Commercial  
	 * 21: Trains  
	 * 22: Open Wheel
	 * char buffer[128];  
	 * std::sprintf(buffer, "VEH_CLASS_%i", VEHICLE::GET_VEHICLE_CLASS(vehicle));  
	 * char* className = UI::_GET_LABEL_TEXT(buffer);  
	 * ```
	 */
	@:native("GetVehicleClass")
	static function getVehicleClass(vehicle:Dynamic):Int;

	/**
	 * ```
	 * Seems related to vehicle health, like the one in IV.  
	 * Max 1000, min 0.  
	 * Vehicle does not necessarily explode or become undrivable at 0.  
	 * ```
	 */
	@:native("GetVehicleBodyHealth")
	static function getVehicleBodyHealth(vehicle:Dynamic):Float;

	/**
	 * ```
	 * For a full enum, see here : pastebin.com/i2GGAjY0
	 * char buffer[128];
	 * std::sprintf(buffer, "VEH_CLASS_%i", VEHICLE::GET_VEHICLE_CLASS_FROM_NAME (hash));
	 * const char* className = HUD::_GET_LABEL_TEXT(buffer);
	 * ```
	 */
	@:native("GetVehicleClassFromName")
	static function getVehicleClassFromName(modelHash:Int):Int;

	/**
	 * ```
	 * Returns attached vehicle (Vehicle in parameter must be cargobob)  
	 * ```
	 */
	@:native("GetVehicleAttachedToCargobob")
	static function getVehicleAttachedToCargobob(cargobob:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetVehicleClassEstimatedMaxSpeed")
	static function getVehicleClassEstimatedMaxSpeed(vehicleClass:Int):Float;

	/**
	 * 
	 */
	@:native("GetVehicleClassMaxBraking")
	static function getVehicleClassMaxBraking(vehicleClass:Int):Float;

	/**
	 * 
	 */
	@:native("GetVehicleClassMaxTraction")
	static function getVehicleClassMaxTraction(vehicleClass:Int):Float;

	/**
	 * Gets the amount of bombs that this vehicle has. As far as I know, this does *not* impact vehicle weapons or the ammo of those weapons in any way, it is just a way to keep track of the amount of bombs in a specific plane.
	 * 
	 * In decompiled scripts this is used to check if the vehicle has enough bombs before a bomb can be dropped (bombs are dropped by using [`_SHOOT_SINGLE_BULLET_BETWEEN_COORDS_WITH_EXTRA_PARAMS`](#\_0xBFE5756E7407064A)).
	 * 
	 * Use [`_SET_AIRCRAFT_BOMB_COUNT`](#\_0xF4B2ED59DEB5D774) to set the amount of bombs on that vehicle.
	 */
	@:native("GetVehicleBombCount")
	static function GetVehicleBombCount(aircraft:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleClassMaxAcceleration")
	static function getVehicleClassMaxAcceleration(vehicleClass:Int):Float;

	/**
	 * See [`SET_VEHICLE_CUSTOM_PRIMARY_COLOUR`](#\_0x7141766F91D15BEA) and [`SET_VEHICLE_CUSTOM_SECONDARY_COLOUR`](#\_0x36CED73BFED89754).
	 */
	@:native("GetVehicleColor")
	static function getVehicleColor(vehicle:Dynamic, r:Dynamic, g:Dynamic, b:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetVehicleClassMaxAgility")
	static function getVehicleClassMaxAgility(vehicleClass:Int):Float;

	/**
	 * 
	 */
	@:native("GetVehicleColours")
	static function getVehicleColours(vehicle:Dynamic, colorPrimary:Dynamic, colorSecondary:Dynamic):Dynamic;

	/**
	 * Similar to [`_GET_AIRCRAFT_BOMB_COUNT`](#\_0xEA12BD130D7569A1), this gets the amount of countermeasures that are present on this vehicle.
	 * 
	 * Use [`_SET_AIRCRAFT_COUNTERMEASURE_COUNT`](#\_0x9BDA23BF666F0855) to set the current amount.
	 */
	@:native("GetVehicleCountermeasureCount")
	static function GetVehicleCountermeasureCount(aircraft:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleCustomPrimaryColour")
	static function getVehicleCustomPrimaryColour(vehicle:Dynamic, r:Dynamic, g:Dynamic, b:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetVehicleCustomSecondaryColour")
	static function getVehicleCustomSecondaryColour(vehicle:Dynamic, r:Dynamic, g:Dynamic, b:Dynamic):Dynamic;

	/**
	 * Checks the angle of the door mapped from 0.0 - 1.0 where 0.0 is fully closed and 1.0 is fully open.
	 * 
	 * See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
	 */
	@:native("GetVehicleDoorAngleRatio")
	static function getVehicleDoorAngleRatio(vehicle:Dynamic, doorIndex:Int):Float;

	/**
	 * 
	 */
	@:native("GetVehicleColourCombination")
	static function getVehicleColourCombination(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleDashboardColor")
	static function GetVehicleDashboardColor(vehicle:Dynamic, color:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetVehicleDoorsLockedForPlayer")
	static function getVehicleDoorsLockedForPlayer(vehicle:Dynamic, player:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetVehicleDoorLockStatus")
	static function getVehicleDoorLockStatus(vehicle:Dynamic):Int;

	/**
	 * ```
	 * Returns a float value between 0.0 and 3.0 related to its slipstream draft (boost/speedup).
	 * GET_VEHICLE_*
	 * ```
	 */
	@:native("GetVehicleCurrentSlipstreamDraft")
	static function GetVehicleCurrentSlipstreamDraft(vehicle:Dynamic):Float;

	/**
	 * ```
	 * The only example I can find of this function in the scripts, is this:  
	 * struct _s = VEHICLE::GET_VEHICLE_DEFORMATION_AT_POS(rPtr((A_0) + 4), 1.21f, 6.15f, 0.3f);  
	 * -----------------------------------------------------------------------------------------------------------------------------------------  
	 * PC scripts:  
	 * v_5/ *{3}* / = VEHICLE::GET_VEHICLE_DEFORMATION_AT_POS(a_0._f1, 1.21, 6.15, 0.3);  
	 * ```
	 */
	@:native("GetVehicleDeformationAtPos")
	static function getVehicleDeformationAtPos(vehicle:Dynamic, offsetX:Float, offsetY:Float, offsetZ:Float):Dynamic;

	/**
	 * 
	 */
	@:native("GetVehicleExtraColours")
	static function getVehicleExtraColours(vehicle:Dynamic, pearlescentColor:Dynamic, wheelColor:Dynamic):Dynamic;

	/**
	 * A getter for [`SET_VEHICLE_DIRT_LEVEL`](#\_0x79D3B596FE44EE8B).
	 */
	@:native("GetVehicleDirtLevel")
	static function getVehicleDirtLevel(vehicle:Dynamic):Float;

	/**
	 * ```
	 * NativeDB Introduced: v3258
	 * ```
	 * 
	 * **Note**: When using this native, the hash of the vehicle needs to be loaded into the client's memory. This can be done by requesting the model with [`REQUEST_MODEL`](#\_0x963D27A58DF860AC) or by simply having the vehicle spawned.
	 * 
	 * ```cpp
	 * 

	 * enum eVehicleDrivetrainType

	 * {

	 *     INVALID = 0,

	 *     FWD = 1,

	 *     RWD = 2,

	 *     AWD = 3

	 * };
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v3258
	 * ```
	 */
	@:native("GetVehicleDrivetrainType")
	static function GetVehicleDrivetrainType(vehicleModel:Int):Int;

	/**
	 * 
	 */
	@:native("GetVehicleHasKers")
	static function getVehicleHasKers(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 2: float maxEngineHealth
	 * NativeDB Added Parameter 3: float maxPetrolTankHealth
	 * NativeDB Added Parameter 4: float maxBodyHealth
	 * NativeDB Added Parameter 5: float maxMainRotorHealth
	 * NativeDB Added Parameter 6: float maxTailRotorHealth
	 * NativeDB Added Parameter 7: float maxUnkHealth
	 * ```
	 */
	@:native("GetVehicleHealthPercentage")
	static function getVehicleHealthPercentage(vehicle:Dynamic):Float;

	/**
	 * ```
	 * Returns 1000.0 if the function is unable to get the address of the specified vehicle or if it's not a vehicle.  
	 * Minimum: -4000  
	 * Maximum: 1000  
	 * -4000: Engine is destroyed  
	 * 0 and below: Engine catches fire and health rapidly declines  
	 * 300: Engine is smoking and losing functionality  
	 * 1000: Engine is perfect  
	 * ```
	 */
	@:native("GetVehicleEngineHealth")
	static function getVehicleEngineHealth(vehicle:Dynamic):Float;

	/**
	 * ```
	 * Returns a value depending on the lock-on state of vehicle weapons.
	 * 0: not locked on
	 * 1: locking on
	 * 2: locked on
	 * ```
	 */
	@:native("GetVehicleHomingLockonState")
	static function getVehicleHomingLockonState(vehicle:Dynamic):Int;

	/**
	 * Returns whether the specified vehicle is designated as a mercenary vehicle
	 */
	@:native("GetVehicleIsMercenary")
	static function getVehicleIsMercenary(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetVehicleLayoutHash")
	static function getVehicleLayoutHash(vehicle:Dynamic):Int;

	/**
	 * ```
	 * -1 = no livery  
	 * ```
	 */
	@:native("GetVehicleLivery")
	static function getVehicleLivery(vehicle:Dynamic):Int;

	/**
	 * Retrieves a static value representing the estimated max speed of a specific vehicle, including any vehicle mods. This value does not change dynamically during gameplay.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("GetVehicleEstimatedMaxSpeed")
	static function getVehicleEstimatedMaxSpeed(vehicle:Dynamic):Float;

	/**
	 * ```
	 * formerly known as _GET_VEHICLE_PAINT_FADE
	 * The result is a value from 0-1, where 0 is fresh paint.
	 * ```
	 */
	@:native("GetVehicleEnveffScale")
	static function getVehicleEnveffScale(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleLightsState")
	static function getVehicleLightsState(vehicle:Dynamic, lightsOn:Dynamic, highbeamsOn:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetVehicleFlightNozzlePosition")
	static function getVehicleFlightNozzlePosition(aircraft:Dynamic):Float;

	/**
	 * ```
	 * Returns -1 if the vehicle has no livery  
	 * ```
	 */
	@:native("GetVehicleLiveryCount")
	static function getVehicleLiveryCount(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleMod")
	static function getVehicleMod(vehicle:Dynamic, modType:Int):Int;

	/**
	 * 
	 */
	@:native("GetVehicleMaxNumberOfPassengers")
	static function getVehicleMaxNumberOfPassengers(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleHasParachute")
	static function GetVehicleHasParachute(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * returns a string which is the codename of the vehicle's currently selected primary color  
	 * p1 is always 0  
	 * ```
	 */
	@:native("GetVehicleModColor_1Name")
	static function getVehicleModColor1Name(vehicle:Dynamic, p1:Bool):String;

	/**
	 * 
	 */
	@:native("GetVehicleModColor_1")
	static function getVehicleModColor1(vehicle:Dynamic, paintType:Dynamic, color:Dynamic, pearlescentColor:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetVehicleInteriorColor")
	static function GetVehicleInteriorColor(vehicle:Dynamic, color:Dynamic):Dynamic;

	/**
	 * See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
	 */
	@:native("GetVehicleIndividualDoorLockStatus")
	static function getVehicleIndividualDoorLockStatus(vehicle:Dynamic, doorIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GetVehicleLockOnTarget")
	static function getVehicleLockOnTarget(vehicle:Dynamic, entity:Dynamic):Bool;

	/**
	 * ```
	 * Can be used for IS_DLC_VEHICLE_MOD and _0xC098810437312FFF
	 * ```
	 */
	@:native("GetVehicleModIdentifierHash")
	static function getVehicleModIdentifierHash(vehicle:Dynamic, modType:Int, modIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GetVehicleMaxBraking")
	static function getVehicleMaxBraking(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleMaxTraction")
	static function getVehicleMaxTraction(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleModModifierValue")
	static function getVehicleModModifierValue(vehicle:Dynamic, modType:Int, modIndex:Int):Int;

	/**
	 * Returns the acceleration of the specified model.
	 */
	@:native("GetVehicleModelAcceleration")
	static function getVehicleModelAcceleration(modelHash:Int):Float;

	/**
	 * 
	 */
	@:native("GetVehicleModColor_2")
	static function getVehicleModColor2(vehicle:Dynamic, paintType:Dynamic, color:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetVehicleModelMaxBrakingMaxMods")
	static function getVehicleModelMaxBrakingMaxMods(modelHash:Int):Float;

	/**
	 * ```
	 * GET_VEHICLE_MODEL_*
	 * 9.8 * thrust if air vehicle, else 0.38 + drive force?
	 * ```
	 */
	@:native("GetVehicleModelEstimatedAgility")
	static function GetVehicleModelEstimatedAgility(modelHash:Int):Float;

	/**
	 * ```
	 * GET_VEHICLE_MODEL_*
	 * Function pertains only to aviation vehicles.
	 * ```
	 */
	@:native("GetVehicleModelMaxKnots")
	static function GetVehicleModelMaxKnots(modelHash:Int):Float;

	/**
	 * ```
	 * Returns max braking of the specified vehicle model.
	 * ```
	 */
	@:native("GetVehicleModelMaxBraking")
	static function getVehicleModelMaxBraking(modelHash:Int):Float;

	/**
	 * ```
	 * returns a string which is the codename of the vehicle's currently selected secondary color  
	 * ```
	 */
	@:native("GetVehicleModColor_2Name")
	static function getVehicleModColor2Name(vehicle:Dynamic):String;

	/**
	 * ```
	 * Returns `nMonetaryValue` from handling.meta for specific model, which is the vehicle's monetary value.
	 * ```
	 */
	@:native("GetVehicleModelValue")
	static function getVehicleModelValue(vehicleModel:Int):Int;

	/**
	 * 
	 */
	@:native("GetVehicleModKitType")
	static function getVehicleModKitType(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleModKit")
	static function getVehicleModKit(vehicle:Dynamic):Int;

	/**
	 * ```
	 * Only used for wheels(ModType = 23/24) Returns true if the wheels are custom wheels
	 * ```
	 */
	@:native("GetVehicleModVariation")
	static function getVehicleModVariation(vehicle:Dynamic, modType:Int):Bool;

	/**
	 * ```
	 * Also includes some "turnOffBones" when vehicle mods are installed.
	 * ```
	 */
	@:native("GetVehicleNumberOfBrokenOffBones")
	static function GetVehicleNumberOfBrokenOffBones(vehicle:Dynamic):Int;

	/**
	 * ```
	 * Gets the number of passengers, NOT including the driver. Use IS_VEHICLE_SEAT_FREE(Vehicle, -1) to also check for the driver  
	 * ```
	 */
	@:native("GetVehicleNumberOfPassengers")
	static function getVehicleNumberOfPassengers(vehicle:Dynamic):Int;

	/**
	 * ```
	 * Returns max speed (without mods) of the specified vehicle model in m/s.
	 * ```
	 */
	@:native("GetVehicleModelEstimatedMaxSpeed")
	static function getVehicleModelEstimatedMaxSpeed(modelHash:Int):Float;

	/**
	 * ```
	 * Returns max number of passengers (including the driver) for the specified vehicle model.
	 * ```
	 */
	@:native("GetVehicleModelNumberOfSeats")
	static function getVehicleModelNumberOfSeats(modelHash:Int):Int;

	/**
	 * ```cpp
	 * enum eVehiclePlateIndicies {
	 * 	SanAndreasCursive = 0,
	 * 	SanAndreasBlack = 1,
	 * 	SanAndreasBlue = 2,
	 * 	SanAndreasPlain = 3,
	 * 	SRExcept = 4,
	 * 	NorthYankton = 5,
	 * 	// All indicies below this require b3095
	 * 	ECola = 6,
	 * 	LasVenturas = 7,
	 * 	LiberyCity = 8,
	 * 	LSCarMeet = 9,
	 * 	LSPanic = 10,
	 * 	LSPounders = 11,
	 * 	Sprunk = 12,
	 * }
	 * ```
	 */
	@:native("GetVehicleNumberPlateTextIndex")
	static function getVehicleNumberPlateTextIndex(vehicle:Dynamic):Int;

	/**
	 * Returns the plates a vehicle has.
	 * 
	 * ```cpp
	 * enum eVehiclePlateType
	 * {
	 * 	VPT_FRONT_AND_BACK_PLATES = 0,
	 * 	VPT_FRONT_PLATES = 1,
	 * 	VPT_BACK_PLATES = 2,
	 * 	VPT_NONE = 3,
	 * };
	 * ```
	 * 
	 * Motorcycles with no visible plates will sometimes return a 2 for unknown reasons.
	 */
	@:native("GetVehiclePlateType")
	static function getVehiclePlateType(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleNumberOfBrokenBones")
	static function GetVehicleNumberOfBrokenBones(vehicle:Dynamic):Int;

	/**
	 * ```
	 * Returns max traction of the specified vehicle model.
	 * ```
	 */
	@:native("GetVehicleModelMaxTraction")
	static function getVehicleModelMaxTraction(modelHash:Int):Float;

	/**
	 * ```
	 * 1000 is max health  
	 * Begins leaking gas at around 650 health  
	 * ```
	 */
	@:native("GetVehiclePetrolTankHealth")
	static function getVehiclePetrolTankHealth(vehicle:Dynamic):Float;

	/**
	 * Returns a number of available rooftop liveries, or -1 if vehicle has no rooftop liveries available.
	 */
	@:native("GetVehicleRoofLiveryCount")
	static function GetVehicleRoofLiveryCount(vehicle:Dynamic):Int;

	/**
	 * See [`REQUEST_VEHICLE_RECORDING`](#\_0xAF514CABE74CBF15).
	 */
	@:native("GetVehicleRecordingId")
	static function getVehicleRecordingId(recording:Int, script:String):Int;

	/**
	 * ```
	 * Outputs 2 Vector3's.
	 * Scripts check if out2.x - out1.x > something.x
	 * Could be suspension related, as in max suspension height and min suspension height, considering the natives location.
	 * ```
	 */
	@:native("GetVehicleSuspensionBounds")
	static function GetVehicleSuspensionBounds(vehicle:Dynamic, out1:Dynamic, out2:Dynamic):Dynamic;

	/**
	 * Gets the color of the neon lights of the specified vehicle.
	 * 
	 * See [`_SET_VEHICLE_NEON_LIGHTS_COLOUR`](#\_0x8E0A582209A62695) for more information
	 */
	@:native("GetVehicleNeonLightsColour")
	static function GetVehicleNeonLightsColour(vehicle:Dynamic, r:Dynamic, g:Dynamic, b:Dynamic):Dynamic;

	/**
	 * ```
	 * Gets the height of the vehicle's suspension.  
	 * The higher the value the lower the suspension. Each 0.002 corresponds with one more level lowered.  
	 * 0.000 is the stock suspension.  
	 * 0.008 is Ultra Suspension.  
	 * ```
	 */
	@:native("GetVehicleSuspensionHeight")
	static function GetVehicleSuspensionHeight(vehicle:Dynamic):Float;

	/**
	 * ```
	 * Gets the trailer of a vehicle and puts it into the trailer parameter.  
	 * ```
	 */
	@:native("GetVehicleTrailerVehicle")
	static function getVehicleTrailerVehicle(vehicle:Dynamic, trailer:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetVehicleTyreSmokeColor")
	static function getVehicleTyreSmokeColor(vehicle:Dynamic, r:Dynamic, g:Dynamic, b:Dynamic):Dynamic;

	/**
	 * ```
	 * Returns the license plate text from a vehicle.  8 chars maximum.  
	 * ```
	 */
	@:native("GetVehicleNumberPlateText")
	static function getVehicleNumberPlateText(vehicle:Dynamic):String;

	/**
	 * 
	 */
	@:native("GetVehicleWeaponCapacity")
	static function GetVehicleWeaponCapacity(vehicle:Dynamic, weaponIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GetVehicleTyresCanBurst")
	static function getVehicleTyresCanBurst(vehicle:Dynamic):Bool;

	/**
	 * ```cpp
	 * enum eVehicleWheelType
	 * {
	 *     VWT_SPORT = 0,
	 *     VWT_MUSCLE = 1,
	 *     VWT_LOWRIDER = 2,
	 *     VWT_SUV = 3,
	 *     VWT_OFFROAD = 4,
	 *     VWT_TUNER = 5,
	 *     VWT_BIKE = 6,
	 *     VWT_HIEND = 7,
	 *     // Benny's Original
	 *     VWT_SUPERMOD1 = 8,
	 *     // Benny's Bespoke
	 *     VWT_SUPERMOD2 = 9,
	 *     // Open Wheel
	 *     VWT_SUPERMOD3 = 10,
	 *     // Street
	 *     VWT_SUPERMOD4 = 11,
	 *     // Track
	 *     VWT_SUPERMOD5 = 12,
	 * };
	 * ```
	 */
	@:native("GetVehicleWheelType")
	static function getVehicleWheelType(vehicle:Dynamic):Int;

	/**
	 * Returns index of the current vehicle's rooftop livery.
	 * A getter for [\_SET_VEHICLE_ROOF_LIVERY](#\_0xA6D3A8750DC73270).
	 */
	@:native("GetVehicleRoofLivery")
	static function GetVehicleRoofLivery(vehicle:Dynamic):Int;

	/**
	 * ```
	 * HAS_*
	 * ```
	 */
	@:native("HasFilledVehiclePopulation")
	static function HasFilledVehiclePopulation():Bool;

	/**
	 * 
	 */
	@:native("GetVehicleWindowTint")
	static function getVehicleWindowTint(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("HasVehicleAssetLoaded")
	static function hasVehicleAssetLoaded(vehicleAsset:Int):Bool;

	/**
	 * 
	 */
	@:native("HaveVehicleModsStreamedIn")
	static function haveVehicleModsStreamedIn(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("HasVehiclePhoneExplosiveDevice")
	static function hasVehiclePhoneExplosiveDevice():Bool;

	/**
	 * 
	 */
	@:native("IsAnyPedRappellingFromHeli")
	static function isAnyPedRappellingFromHeli(vehicle:Dynamic):Bool;

	/**
	 * Use [\_SET_VEHICLE_HEADLIGHTS_COLOUR](#\_0xE41033B25D003A07) to set the headlights color for the vehicle.
	 * 
	 * You must enable xenon headlights for this native to work properly.
	 * 
	 * ```cpp
	 * enum eHeadlightColors {
	 *     Default = 255,
	 *     White = 0,
	 *     Blue = 1,
	 *     ElectricBlue = 2,
	 *     MintGreen = 3,
	 *     LimeGreen = 4,
	 *     Yellow = 5,
	 *     GoldenShower = 6,
	 *     Orange = 7,
	 *     Red = 8,
	 *     PonyPink = 9,
	 *     HotPink = 10,
	 *     Purple = 11,
	 *     Blacklight = 12
	 * }
	 * ```
	 */
	@:native("GetVehicleXenonLightsColor")
	static function GetVehicleXenonLightsColor(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("IsBigVehicle")
	static function isBigVehicle(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * Usage:  
	 * public bool isCopInRange(Vector3 Location, float Range)  
	 *         {  
	 *             return Function.Call<bool>(Hash.IS_COP_PED_IN_AREA_3D, Location.X - Range, Location.Y - Range, Location.Z - Range, Location.X + Range, Location.Y + Range, Location.Z + Range);  
	 *         }  
	 * ```
	 */
	@:native("IsCopVehicleInArea_3d")
	static function isCopVehicleInArea3D(x1:Float, x2:Float, y1:Float, y2:Float, z1:Float, z2:Float):Bool;

	/**
	 * 
	 */
	@:native("HasPreloadModsFinished")
	static function hasPreloadModsFinished(p0:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("HideVehicleTombstone")
	static function HideVehicleTombstone(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Checks if a boat is currently anchored.
	 * 
	 * This native is a getter for [SET_BOAT_ANCHOR](#\_0x75DBEC174AEEAD10).
	 * 
	 * ```
	 * NativeDB Introduced: v573
	 * ```
	 */
	@:native("IsBoatAnchored")
	static function isBoatAnchored(boat:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("HasVehicleRecordingBeenLoaded")
	static function hasVehicleRecordingBeenLoaded(recording:Int, script:String):Bool;

	/**
	 * 
	 */
	@:native("IsAnyEntityAttachedToHandlerFrame")
	static function isAnyEntityAttachedToHandlerFrame(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsHeliLandingAreaBlocked")
	static function isHeliLandingAreaBlocked(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("InstantlyFillVehiclePopulation")
	static function instantlyFillVehiclePopulation():Dynamic;

	/**
	 * 
	 */
	@:native("IsHeliPartBroken")
	static function isHeliPartBroken(vehicle:Dynamic, p1:Bool, p2:Bool, p3:Bool):Bool;

	/**
	 * 
	 */
	@:native("IsAnyVehicleNearPoint")
	static function isAnyVehicleNearPoint(x:Float, y:Float, z:Float, radius:Float):Bool;

	/**
	 * 
	 */
	@:native("IsEntityAttachedToHandlerFrame")
	static function isEntityAttachedToHandlerFrame(vehicle:Dynamic, entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsHandlerFrameAboveContainer")
	static function IsHandlerFrameAboveContainer(handler:Dynamic, container:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsPlaneLandingGearIntact")
	static function isPlaneLandingGearIntact(plane:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsTaxiLightOn")
	static function isTaxiLightOn(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsPedExclusiveDriverOfVehicle")
	static function IsPedExclusiveDriverOfVehicle(ped:Dynamic, vehicle:Dynamic, outIndex:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: 3095
	 * ```
	 * 
	 * Determines if the nitrous is currently activated in the specified vehicle.
	 */
	@:native("IsNitrousActive")
	static function isNitrousActive(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("IsMissionTrain")
	static function IsMissionTrain(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsThisModelABike")
	static function isThisModelABike(model:Int):Bool;

	/**
	 * 
	 */
	@:native("IsSeatWarpOnly")
	static function isSeatWarpOnly(vehicle:Dynamic, seatIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("IsPlaybackGoingOnForVehicle")
	static function isPlaybackGoingOnForVehicle(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsPlaybackUsingAiGoingOnForVehicle")
	static function isPlaybackUsingAiGoingOnForVehicle(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * To check if the model is an amphibious car, see gtaforums.com/topic/717612-v-scriptnative-documentation-and-research/page-33#entry1069317363 (for build 944 and above only!)  
	 * ```
	 */
	@:native("IsThisModelACar")
	static function isThisModelACar(model:Int):Bool;

	/**
	 * 
	 */
	@:native("IsThisModelABoat")
	static function isThisModelABoat(model:Int):Bool;

	/**
	 * 
	 */
	@:native("IsThisModelABicycle")
	static function isThisModelABicycle(model:Int):Bool;

	/**
	 * ```
	 * Checks if model is a boat, then checks for FLAG_IS_JETSKI.
	 * ```
	 */
	@:native("IsThisModelAJetski")
	static function IsThisModelAJetski(model:Int):Bool;

	/**
	 * 
	 */
	@:native("IsThisModelAQuadbike")
	static function isThisModelAQuadbike(model:Int):Bool;

	/**
	 * 
	 */
	@:native("IsThisModelAHeli")
	static function isThisModelAHeli(model:Int):Bool;

	/**
	 * 
	 */
	@:native("IsThisModelAPlane")
	static function isThisModelAPlane(model:Int):Bool;

	/**
	 * 
	 */
	@:native("IsThisModelAnAmphibiousCar")
	static function IsThisModelAnAmphibiousCar(model:Int):Bool;

	/**
	 * 
	 */
	@:native("IsThisModelAnAmphibiousQuadbike")
	static function IsThisModelAnAmphibiousQuadbike(model:Int):Bool;

	/**
	 * 
	 */
	@:native("IsThisModelATrain")
	static function isThisModelATrain(model:Int):Bool;

	/**
	 * 
	 */
	@:native("IsToggleModOn")
	static function isToggleModOn(vehicle:Dynamic, modType:Int):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleAlarmActivated")
	static function isVehicleAlarmActivated(vehicle:Dynamic):Bool;

	/**
	 * Determines if a vehicle is a convertible with an animatable roof. This native checks if the specified vehicle model features a convertible roof that can be lowered or raised through an animation.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("IsVehicleAConvertible")
	static function isVehicleAConvertible(vehicle:Dynamic, checkRoofExtras:Bool):Bool;

	/**
	 * ```
	 * Scripts verify that towTruck is the first parameter, not the second.  
	 * ```
	 */
	@:native("IsVehicleAttachedToTowTruck")
	static function isVehicleAttachedToTowTruck(towTruck:Dynamic, vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsTurretSeat")
	static function isTurretSeat(vehicle:Dynamic, seatIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleAttachedToCargobob")
	static function isVehicleAttachedToCargobob(cargobob:Dynamic, vehicleAttached:Dynamic):Bool;

	/**
	 * ```
	 * Returns true if vehicle is halted by BRING_VEHICLE_TO_HALT
	 * _IS_VEHICLE_*
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("IsVehicleBeingHalted")
	static function IsVehicleBeingHalted(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleAttachedToTrailer")
	static function isVehicleAttachedToTrailer(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * Appears to return true if the vehicle has any damage, including cosmetically.
	 * GET_*
	 * ```
	 */
	@:native("IsVehicleDamaged")
	static function IsVehicleDamaged(vehicle:Dynamic):Bool;

	/**
	 * See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
	 */
	@:native("IsVehicleDoorDamaged")
	static function isVehicleDoorDamaged(veh:Dynamic, doorID:Int):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleBumperBouncing")
	static function isVehicleBumperBouncing(vehicle:Dynamic, frontBumper:Bool):Bool;

	/**
	 * ```
	 * p1 is always 0 in the scripts.  
	 * p1 = check if vehicle is on fire  
	 * ```
	 */
	@:native("IsVehicleDriveable")
	static function isVehicleDriveable(vehicle:Dynamic, isOnFireCheck:Bool):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleHighDetail")
	static function isVehicleHighDetail(vehicle:Dynamic):Bool;

	/**
	 * Only ever used once in decompiled scripts: **am_pi_menu**:
	 * Returns true if the engine is on fire, or if the vehicle engine health is < 0 and it **has been** on fire.
	 * 
	 * It sometimes doesn't return true when the vehicle engine has been on fire, and has since been fixed. I'm not really sure what the exact conditions are.
	 * 
	 * This usually returns true even if there are no visible flames yet (engine health > 0). However if you monitor engine health you'll see that it starts decreasing as soon as this returns true.
	 */
	@:native("IsVehicleEngineOnFire")
	static function IsVehicleEngineOnFire(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleBumperBrokenOff")
	static function isVehicleBumperBrokenOff(vehicle:Dynamic, front:Bool):Bool;

	/**
	 * ```
	 * garageName example "Michael - Beverly Hills"
	 * ```
	 */
	@:native("IsVehicleInGarageArea")
	static function isVehicleInGarageArea(garageName:String, vehicle:Dynamic):Bool;

	/**
	 * See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
	 */
	@:native("IsVehicleDoorFullyOpen")
	static function isVehicleDoorFullyOpen(vehicle:Dynamic, doorIndex:Int):Bool;

	/**
	 * ```
	 * mpsum2_g9ec
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("IsVehicleModHswExclusive")
	static function IsVehicleModHswExclusive(vehicle:Dynamic, modType:Int, modIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleExtraTurnedOn")
	static function isVehicleExtraTurnedOn(vehicle:Dynamic, extraId:Int):Bool;

	/**
	 * ```
	 * Returns whether the specified vehicle is currently in a burnout.  
	 * vb.net  
	 * Public Function isVehicleInBurnout(vh As Vehicle) As Boolean  
	 *         Return Native.Function.Call(Of Boolean)(Hash.IS_VEHICLE_IN_BURNOUT, vh)  
	 *     End Function  
	 * ```
	 */
	@:native("IsVehicleInBurnout")
	static function isVehicleInBurnout(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * Public Function isVehicleOnAllWheels(vh As Vehicle) As Boolean  
	 * Return Native.Function.Call(Of Boolean)(Hash.IS_VEHICLE_ON_ALL_WHEELS, vh)  
	 * 		    End Function  
	 * ```
	 */
	@:native("IsVehicleOnAllWheels")
	static function isVehicleOnAllWheels(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("IsVehicleInSubmarineMode")
	static function isVehicleInSubmarineMode(vehicle:Dynamic):Bool;

	/**
	 * Does not work for vehicle of type: CBike, CBmx, CBoat, CTrain, CSubmarine.
	 */
	@:native("IsVehicleParachuteActive")
	static function IsVehicleParachuteActive(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleRocketBoostActive")
	static function IsVehicleRocketBoostActive(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleModel")
	static function isVehicleModel(vehicle:Dynamic, model:Int):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleSirenAudioOn")
	static function isVehicleSirenAudioOn(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * Check if a vehicle seat is accessible. If you park your vehicle near a wall and the ped cannot enter/exit this side, the return value toggles from true (not blocked) to false (blocked).
	 * side = only relevant for bikes/motorcycles to check if the left (false)/right (true) side is blocked.
	 * onEnter = check if you can enter (true) or exit (false) a vehicle.
	 * ```
	 */
	@:native("IsVehicleSeatAccessible")
	static function IsVehicleSeatAccessible(ped:Dynamic, vehicle:Dynamic, seatIndex:Int, side:Bool, onEnter:Bool):Bool;

	/**
	 * ```
	 * indices:  
	 * 0 = Left  
	 * 1 = Right  
	 * 2 = Front  
	 * 3 = Back  
	 * ```
	 */
	@:native("IsVehicleNeonLightEnabled")
	static function IsVehicleNeonLightEnabled(vehicle:Dynamic, index:Int):Bool;

	/**
	 * Seat indices range from -1 to [`GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS`](#\_0xA7C4F2C6E744A550) minus one.
	 * 
	 * ```cpp
	 * // CTaskExitVehicleSeat::eSeatPosition - 1
	 * enum eSeatPosition
	 * {
	 *     SF_FrontDriverSide = -1,
	 *     SF_FrontPassengerSide = 0,
	 *     SF_BackDriverSide = 1,
	 *     SF_BackPassengerSide = 2,
	 *     SF_AltFrontDriverSide = 3,
	 *     SF_AltFrontPassengerSide = 4,
	 *     SF_AltBackDriverSide = 5,
	 *     SF_AltBackPassengerSide = 6,
	 * };
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 3: BOOL isTaskRunning
	 * 
	 * isTaskRunning = on true the function returns already false while a task on the target seat is running (TASK_ENTER_VEHICLE/TASK_SHUFFLE_TO_NEXT_VEHICLE_SEAT) - on false only when a ped is finally sitting in the seat.
	 * ```
	 */
	@:native("IsVehicleSeatFree")
	static function isVehicleSeatFree(vehicle:Dynamic, seatIndex:Int):Bool;

	/**
	 * Returns whether the vehicle's lights and sirens are on.
	 */
	@:native("IsVehicleSirenOn")
	static function isVehicleSirenOn(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * Returns false if the vehicle has the FLAG_NO_RESPRAY flag set.
	 * ```
	 */
	@:native("IsVehicleSprayable")
	static function isVehicleSprayable(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * Possibly: Returns whether the searchlight (found on police vehicles) is toggled on.  
	 * ```
	 */
	@:native("IsVehicleSearchlightOn")
	static function isVehicleSearchlightOn(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleSlipstreamLeader")
	static function IsVehicleSlipstreamLeader(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleStolen")
	static function isVehicleStolen(vehicle:Dynamic):Bool;

	/**
	 * This native checks if the given vehicle is stopped at a red or amber traffic light junction, provided the driver's personality is set to not run amber lights.
	 */
	@:native("IsVehicleStoppedAtTrafficLights")
	static function isVehicleStoppedAtTrafficLights(vehicle:Dynamic):Bool;

	/**
	 * ```
	 * Returns true if the vehicle's current speed is less than, or equal to 0.0025f.
	 * For some vehicles it returns true if the current speed is <= 0.00039999999.
	 * ```
	 */
	@:native("IsVehicleStopped")
	static function isVehicleStopped(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleStuckOnRoof")
	static function isVehicleStuckOnRoof(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleWeaponDisabled")
	static function IsVehicleWeaponDisabled(weaponHash:Int, vehicle:Dynamic, owner:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleVisible")
	static function isVehicleVisible(vehicle:Dynamic):Bool;

	/**
	 * ```cpp
	 * enum eVehicleWheels
	 * {
	 * 	WHEEL_LF = 0, // Vehicle Left front
	 * 	WHEEL_RF = 1, // Vehicle Right front
	 * 	WHEEL_LM = 2, // Vehicle Left middle
	 * 	WHEEL_RM = 3, // Vehicle Right middle
	 * 	WHEEL_LR = 4, // Vehicle Left rear
	 * 	WHEEL_RR = 5, // Vehicle Right rear
	 * 	WHEEL_BF = 6, // Bike front
	 * 	WHEEL_BR = 7, // Bike rear
	 * 	MAX_WHEELS = 8
	 * };
	 * ```
	 */
	@:native("IsVehicleTyreBurst")
	static function isVehicleTyreBurst(vehicle:Dynamic, wheelID:Int, isBurstToRim:Bool):Bool;

	/**
	 * ```
	 * p1 can be anywhere from 0 to 3 in the scripts. p2 is generally somewhere in the 1000 to 10000 range.  
	 * ```
	 */
	@:native("IsVehicleStuckTimerUp")
	static function isVehicleStuckTimerUp(vehicle:Dynamic, p1:Int, p2:Int):Bool;

	/**
	 * 
	 */
	@:native("ModifyVehicleTopSpeed")
	static function modifyVehicleTopSpeed(vehicle:Dynamic, value:Float):Dynamic;

	/**
	 * ```cpp
	 * enum eWindowId {
	 * 	VEH_EXT_WINDOW_LF = 0,
	 * 	VEH_EXT_WINDOW_RF = 1,
	 * 	VEH_EXT_WINDOW_LR = 2,
	 * 	VEH_EXT_WINDOW_RR = 3,
	 * 	VEH_EXT_WINDOW_LM = 4,
	 * 	VEH_EXT_WINDOW_RM = 5,
	 * 	VEH_EXT_WINDSCREEN = 6,
	 * 	VEH_EXT_WINDSCREEN_R = 7,
	 * }
	 * ```
	 */
	@:native("IsVehicleWindowIntact")
	static function isVehicleWindowIntact(vehicle:Dynamic, windowIndex:Int):Bool;

	/**
	 * Lowers the roof on a convertible vehicle, utilizing any available animations for the action. This native is particularly useful for creating a realistic interaction with convertible vehicles by animating the process of lowering the roof.
	 * 
	 * You can check if the vehicle has an convertible roof using [`IS_VEHICLE_A_CONVERTIBLE`](#\_0x52F357A30698BCCE).
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("LowerConvertibleRoof")
	static function lowerConvertibleRoof(vehicle:Dynamic, instantlyLower:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("LowerRetractableWheels")
	static function LowerRetractableWheels(vehicle:Dynamic):Dynamic;

	/**
	 * Will disable a plane or a helicopter's need to swerve around object in its heightmap when using TASK_PLANE_MISSION or other AI / Pilot behavior.  Will ensure plane flys directly to it's destination or die trying! This native does NOT need to be called every frame, but instead, just called once on the vehicle (NOT THE PED) you're trying to disable avoidance for!
	 */
	@:native("EnableAircraftObstacleAvoidance")
	static function EnableAircraftObstacleAvoidance(vehicle:Dynamic, avoidObstacles:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("OpenBombBayDoors")
	static function openBombBayDoors(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PausePlaybackRecordedVehicle")
	static function pausePlaybackRecordedVehicle(vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * Implemented only for Trains.
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkUseHighPrecisionVehicleBlending")
	static function NetworkUseHighPrecisionVehicleBlending(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Detaches the vehicle's windscreen.
	 */
	@:native("PopOutVehicleWindscreen")
	static function popOutVehicleWindscreen(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PreloadVehicleMod")
	static function preloadVehicleMod(p0:Dynamic, modType:Int, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("ReleasePreloadMods")
	static function releasePreloadMods(vehicle:Dynamic):Dynamic;

	/**
	 * Raises the roof on a convertible vehicle, utilizing any available animations for the action. This native is particularly useful for creating a realistic interaction with convertible vehicles by animating the process of raising the roof.
	 * 
	 * You can check if the vehicle has an convertible roof using [`IS_VEHICLE_A_CONVERTIBLE`](#\_0x52F357A30698BCCE).
	 * 
	 * To lower the convertible roof, you can use [`LOWER_CONVERTIBLE_ROOF`](#\_0xDED51F703D0FA83D).
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("RaiseConvertibleRoof")
	static function raiseConvertibleRoof(vehicle:Dynamic, instantlyRaise:Bool):Dynamic;

	/**
	 * ```
	 * Retracts the hook on the cargobob.  
	 * Note: after you retract it the natives for dropping the hook no longer work  
	 * ```
	 */
	@:native("RemovePickUpRopeForCargobob")
	static function removePickUpRopeForCargobob(cargobob:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveVehicleCombatAvoidanceArea")
	static function removeVehicleCombatAvoidanceArea(p0:Dynamic):Dynamic;

	/**
	 * See [REQUEST_VEHICLE_RECORDING](#\_0xAF514CABE74CBF15)
	 */
	@:native("RemoveVehicleRecording")
	static function removeVehicleRecording(recording:Int, script:String):Dynamic;

	/**
	 * 
	 */
	@:native("RaiseRetractableWheels")
	static function RaiseRetractableWheels(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveVehicleMod")
	static function removeVehicleMod(vehicle:Dynamic, modType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveVehicleAsset")
	static function removeVehicleAsset(vehicleAsset:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveRoadNodeSpeedZone")
	static function removeRoadNodeSpeedZone(speedzone:Int):Bool;

	/**
	 * Remove the weird shadow applied by [\_SET_VEHICLE_SHADOW_EFFECT](#\_0x2A70BAE8883E4C81)
	 */
	@:native("RemoveVehicleShadowEffect")
	static function RemoveVehicleShadowEffect(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveVehicleUpsidedownCheck")
	static function removeVehicleUpsidedownCheck(vehicle:Dynamic):Dynamic;

	/**
	 * See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
	 */
	@:native("RemoveVehicleWindow")
	static function removeVehicleWindow(vehicle:Dynamic, windowIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveVehicleHighDetailModel")
	static function removeVehicleHighDetailModel(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveVehicleStuckCheck")
	static function removeVehicleStuckCheck(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveVehiclesFromGeneratorsInArea")
	static function removeVehiclesFromGeneratorsInArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, unk:Dynamic):Dynamic;

	/**
	 * ```
	 * REQUEST_VEHICLE_ASSET(GET_HASH_KEY(cargobob3), 3);  
	 * vehicle found that have asset's:  
	 * cargobob3  
	 * submersible  
	 * blazer  
	 * ```
	 */
	@:native("RequestVehicleAsset")
	static function requestVehicleAsset(vehicleHash:Int, vehicleAsset:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RequestVehicleHighDetailModel")
	static function requestVehicleHighDetailModel(vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * Request the vehicle recording defined by the lowercase format string "%s%03d.yvr". For example, REQUEST_VEHICLE_RECORDING(1, "FBIs1UBER") corresponds to fbis1uber001.yvr.
	 * For all vehicle recording/playback natives, "script" is a common prefix that usually corresponds to the script/mission the recording is used in, "recording" is its int suffix, and "id" (e.g., in native GET_TOTAL_DURATION_OF_VEHICLE_RECORDING_ID) corresponds to a unique identifier within the recording streaming module.
	 * Note that only 24 recordings (hardcoded in multiple places) can ever active at a given time before clobbering begins.
	 * ```
	 */
	@:native("RequestVehicleRecording")
	static function requestVehicleRecording(recording:Int, script:String):Dynamic;

	/**
	 * ```
	 * REQUEST_VEHICLE_*  
	 * ```
	 */
	@:native("RequestVehicleDashboardScaleformMovie")
	static function RequestVehicleDashboardScaleformMovie(vehicle:Dynamic):Dynamic;

	/**
	 * See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
	 */
	@:native("RollUpWindow")
	static function rollUpWindow(vehicle:Dynamic, windowIndex:Int):Dynamic;

	/**
	 * ```
	 * The inner function has a switch on the second parameter. It's the stuck timer index.  
	 * Here's some pseudo code I wrote for the inner function:  
	 * void __fastcall NATIVE_RESET_VEHICLE_STUCK_TIMER_INNER(CUnknown* unknownClassInVehicle, int timerIndex)  
	 * {  
	 * 	switch (timerIndex)  
	 * 	{  
	 * 	case 0:  
	 * unknownClassInVehicle->FirstStuckTimer = (WORD)0u;  
	 * 	case 1:  
	 * unknownClassInVehicle->SecondStuckTimer = (WORD)0u;  
	 * 	case 2:  
	 * unknownClassInVehicle->ThirdStuckTimer = (WORD)0u;  
	 * 	case 3:  
	 * unknownClassInVehicle->FourthStuckTimer = (WORD)0u;  
	 * 	case 4:  
	 * unknownClassInVehicle->FirstStuckTimer = (WORD)0u;  
	 * unknownClassInVehicle->SecondStuckTimer = (WORD)0u;  
	 * unknownClassInVehicle->ThirdStuckTimer = (WORD)0u;  
	 * unknownClassInVehicle->FourthStuckTimer = (WORD)0u;  
	 * break;  
	 * 	};  
	 * }  
	 * ```
	 */
	@:native("ResetVehicleStuckTimer")
	static function resetVehicleStuckTimer(vehicle:Dynamic, nullAttributes:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ResetVehicleWheels")
	static function resetVehicleWheels(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetAllVehicleGeneratorsActive")
	static function setAllVehicleGeneratorsActive():Dynamic;

	/**
	 * ```
	 * Roll down all the windows of the vehicle passed through the first parameter.  
	 * ```
	 */
	@:native("RollDownWindows")
	static function rollDownWindows(vehicle:Dynamic):Dynamic;

	/**
	 * See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
	 */
	@:native("RollDownWindow")
	static function rollDownWindow(vehicle:Dynamic, windowIndex:Int):Dynamic;

	/**
	 * ```
	 * Only works on bikes, both X and Y work in the -1 - 1 range.
	 * X forces the bike to turn left or right (-1, 1)
	 * Y forces the bike to lean to the left or to the right (-1, 1)
	 * Example with X -1/Y 1
	 * http://i.imgur.com/TgIuAPJ.jpg
	 * ```
	 */
	@:native("SetBikeOnStand")
	static function setBikeOnStand(vehicle:Dynamic, x:Float, y:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetAmbientVehicleRangeMultiplierThisFrame")
	static function setAmbientVehicleRangeMultiplierThisFrame(range:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetAllVehicleGeneratorsActiveInArea")
	static function setAllVehicleGeneratorsActiveInArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, p6:Bool, p7:Bool):Dynamic;

	/**
	 * Sets whether a boat should remain anchored even when a player is driving it.
	 * 
	 * **Note**: This native is always used with [SET_BOAT_ANCHOR](#\_0x75DBEC174AEEAD10).
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SetBoatRemainsAnchoredWhilePlayerIsDriver")
	static function setBoatRemainsAnchoredWhilePlayerIsDriver(boat:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetAllLowPriorityVehicleGeneratorsActive")
	static function setAllLowPriorityVehicleGeneratorsActive(active:Bool):Dynamic;

	/**
	 * Sets the boat boom position for the `TR3` trailer.
	 * 
	 * Ratio value is between `0.0` and `1.0`, where `0.0` is 90 degrees to the left of the boat, and `1.0` is just slightly to the right/back of the boat.
	 * 
	 * To get the current boom position ratio, use [GET_BOAT_BOOM_POSITION_RATIO](#\_0x6636C535F6CC2725).
	 */
	@:native("SetBoatBoomPositionRatio")
	static function SetBoatBoomPositionRatio(vehicle:Dynamic, ratio:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetBoatDisableAvoidance")
	static function setBoatDisableAvoidance(vehicle:Dynamic, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetCamberedWheelsDisabled")
	static function SetCamberedWheelsDisabled(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Sets the anchor state for a boat.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 * 
	 * **Note**: You might want to check if you can use your anchor before with [CAN_ANCHOR_BOAT_HERE](#\_0x26C10ECBDA5D043B).
	 */
	@:native("SetBoatAnchor")
	static function setBoatAnchor(boat:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Sets the distance from the player at which anchored boats switch between high and low LOD (Level of Detail) buoyancy mode.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SetBoatLowLodAnchorDistance")
	static function setBoatLowLodAnchorDistance(boat:Dynamic, value:Float):Dynamic;

	/**
	 * ```
	 * Something to do with "high speed bump severity"?  
	 * if (!sub_87a46("SET_CAR_HIGH_SPEED_BUMP_SEVERITY_MULTIPLIER")) {  
	 *     VEHICLE::_84FD40F56075E816(0.0);  
	 *     sub_8795b("SET_CAR_HIGH_SPEED_BUMP_SEVERITY_MULTIPLIER", 1);  
	 * }  
	 * ```
	 */
	@:native("SetCarHighSpeedBumpSeverityMultiplier")
	static function SetCarHighSpeedBumpSeverityMultiplier(multiplier:Float):Dynamic;

	/**
	 * ```
	 * Hardcoded to not work in multiplayer.  
	 * ```
	 */
	@:native("SetCanResprayVehicle")
	static function setCanResprayVehicle(vehicle:Dynamic, state:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetBoatIsSinking")
	static function SetBoatIsSinking(vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * Won't attract or magnetize to any helicopters or planes of course, but that's common sense.  
	 * ```
	 */
	@:native("SetCargobobPickupMagnetActive")
	static function setCargobobPickupMagnetActive(cargobob:Dynamic, isActive:Bool):Dynamic;

	/**
	 * Stops cargobob from being able to detach the attached vehicle.
	 */
	@:native("SetCargobobForceDontDetachVehicle")
	static function setCargobobForceDontDetachVehicle(cargobob:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetBoatSinksWhenWrecked")
	static function setBoatSinksWhenWrecked(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetCarBootOpen")
	static function setCarBootOpen(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SetCargobobPickupMagnetPullRopeLength")
	static function setCargobobPickupMagnetPullRopeLength(cargobob:Dynamic, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetCargobobPickupMagnetFalloff")
	static function setCargobobPickupMagnetFalloff(vehicle:Dynamic, p1:Float):Dynamic;

	/**
	 * ```
	 * Stops the cargobob from being able to attach any vehicle
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("SetCargobobHookCanAttach")
	static function SetCargobobHookCanAttach(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetCargobobPickupMagnetReducedFalloff")
	static function setCargobobPickupMagnetReducedFalloff(cargobob:Dynamic, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetCargobobPickupRopeDampingMultiplier")
	static function setCargobobPickupRopeDampingMultiplier(cargobob:Dynamic, p1:Float):Dynamic;

	/**
	 * Prevents a specified entity from being detached from a Cargobob, even in the event of collisions.
	 */
	@:native("SetCargobobExcludeFromPickupEntity")
	static function setCargobobExcludeFromPickupEntity(cargobob:Dynamic, entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SetCargobobPickupMagnetEffectRadius")
	static function setCargobobPickupMagnetEffectRadius(vehicle:Dynamic, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetCargobobPickupRopeType")
	static function setCargobobPickupRopeType(vehicle:Dynamic, state:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetCargobobPickupMagnetPullStrength")
	static function setCargobobPickupMagnetPullStrength(cargobob:Dynamic, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetCargobobPickupMagnetReducedStrength")
	static function setCargobobPickupMagnetReducedStrength(cargobob:Dynamic, vehicle:Dynamic):Dynamic;

	/**
	 * Enables or disables the convertible roof on vehicles that support old-style GTA IV roofs, which are not animated. Setting `toggle` to true will apply the roof to the vehicle, and setting it to false will remove the roof, assuming the vehicle has versions with and without a roof.
	 * 
	 * If you want to lock or unlock the roof mechanism, use [`SET_CONVERTIBLE_ROOF_LATCH_STATE`](#\_0x1A78AD3D8240536F).
	 * 
	 * You can check if the vehicle has a roof with [`DOES_VEHICLE_HAVE_ROOF`](#\_0x8AC862B0B32C5B80).
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 * 
	 * #### Vehicles with both roofed and roofless versions (others may exist; this list is compiled from decompiled scripts).
	 * 
	 * *   chino
	 * *   voltic
	 * *   buccaneer
	 * *   buccaneer2
	 * *   chino2
	 * *   faction
	 * *   faction2
	 * *   mamba
	 */
	@:native("SetConvertibleRoof")
	static function setConvertibleRoof(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetCargobobPickupMagnetStrength")
	static function setCargobobPickupMagnetStrength(cargobob:Dynamic, strength:Float):Dynamic;

	/**
	 * Disables the additional physics forces applied to BMX bikes that enable them to perform tricks.
	 * 
	 * ```
	 * NativeDB Introduced: v463
	 * ```
	 */
	@:native("SetDisableBmxExtraTrickForces")
	static function setDisableBmxExtraTrickForces(disableExtraTrickForces:Bool):Dynamic;

	/**
	 * Only used with the "akula" and "annihilator2" in the decompiled native scripts.
	 * 
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("SetDeployHeliStubWings")
	static function SetDeployHeliStubWings(vehicle:Dynamic, deploy:Bool, p2:Bool):Dynamic;

	/**
	 * This native is used to latch or unlatch the convertible roof of a vehicle. It allows for direct control over the roof's mechanism without actually opening or closing the roof. This can be useful for scenarios where you need to prepare a vehicle's roof to be opened or closed by another action or to ensure it remains fixed in its current state regardless of other interactions.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SetConvertibleRoofLatchState")
	static function setConvertibleRoofLatchState(vehicle:Dynamic, bLatched:Bool):Dynamic;

	/**
	 * Prevents a helicopter from exploding due to relatively minor body damage.
	 * 
	 * ```
	 * NativeDB Introduced: v1103
	 * ```
	 */
	@:native("SetDisableHeliExplodeFromBodyDamage")
	static function setDisableHeliExplodeFromBodyDamage(helicopter:Dynamic, disableExplode:Bool):Dynamic;

	/**
	 * Disables wings for `Deluxo` and `Oppressor MK II`. For the Deluxo, it retracts the wings immediately, preventing flight. For the Oppressor Mk II, the wings retract after landing and take-off is not possible, though it can still glide if launched into the air.
	 */
	@:native("SetDisableHoverModeFlight")
	static function setDisableHoverModeFlight(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetDisablePretendOccupants")
	static function setDisablePretendOccupants(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetDisableSuperdummyMode")
	static function SetDisableSuperdummyMode(vehicle:Dynamic, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetDisableVehicleEngineFires")
	static function setDisableVehicleEngineFires(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Prevents a vehicle from exploding upon sustaining body damage from physical collisions. This can be used to increase the durability of vehicles in high-impact scenarios, such as races or combat situations, by preventing them from being destroyed due to collision-induced body damage.
	 * 
	 * For helicopters, you might want to check [`SET_DISABLE_HELI_EXPLODE_FROM_BODY_DAMAGE`](#\_0xEDBC8405B3895CC9) instead.
	 * 
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("SetDisableExplodeFromBodyDamageOnCollision")
	static function setDisableExplodeFromBodyDamageOnCollision(vehicle:Dynamic, disableExplode:Bool):Dynamic;

	/**
	 * Disables turret movement when called in a loop. You can still fire and aim. You cannot shoot backwards though.
	 * 
	 * ```
	 * NativeDB Introduced: v1365
	 * ```
	 */
	@:native("SetDisableTurretMovementThisFrame")
	static function SetDisableTurretMovementThisFrame(vehicle:Dynamic, turretIdx:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("SetDisableVehicleUnk")
	static function SetDisableVehicleUnk(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetDisableRandomTrainsThisFrame")
	static function setDisableRandomTrainsThisFrame(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetDisableVehiclePetrolTankDamage")
	static function setDisableVehiclePetrolTankDamage(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Toggles to render distant vehicles. They may not be vehicles but images to look like vehicles.  
	 * ```
	 */
	@:native("SetDistantCarsEnabled")
	static function setDistantCarsEnabled(toggle:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("SetDisableVehicleUnk_2")
	static function SetDisableVehicleUnk2(toggle:Bool):Dynamic;

	/**
	 * ```
	 * True stops vtols from switching modes. Doesn't stop the sound though.
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("SetDisableVehicleFlightNozzlePosition")
	static function SetDisableVehicleFlightNozzlePosition(vehicle:Dynamic, direction:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetFarDrawVehicles")
	static function setFarDrawVehicles(toggle:Bool):Dynamic;

	/**
	 * Enable/Disables global slipstream physics
	 */
	@:native("SetEnableVehicleSlipstreaming")
	static function setEnableVehicleSlipstreaming(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetDisableVehiclePetrolTankFires")
	static function setDisableVehiclePetrolTankFires(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * 0.0 = Lowest 1.0 = Highest. This is best to be used if you wanna pick-up a car since un-realistically on GTA V forklifts can't pick up much of anything due to vehicle mass. If you put this under a car then set it above 0.0 to a 'lifted-value' it will raise the car with no issue lol
	 * ```
	 */
	@:native("SetForkliftForkHeight")
	static function setForkliftForkHeight(vehicle:Dynamic, height:Float):Dynamic;

	/**
	 * R\* used it to "remove" vehicle windows when "nightshark" had some mod, which adding some kind of armored windows. When enabled, you can't break vehicles glass. All your bullets wiil shoot through glass. You also will not able to break the glass with any other way (hitting and etc)
	 */
	@:native("SetDisableVehicleWindowCollisions")
	static function SetDisableVehicleWindowCollisions(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Enables or disables the ability for a helicopter's tail boom to break off.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SetHeliTailBoomCanBreakOff")
	static function setHeliTailBoomCanBreakOff(heli:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("SetDriftTyresEnabled")
	static function SetDriftTyresEnabled(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sets the speed of the helicopter blades in percentage of the full speed.  
	 * vehicleHandle: The helicopter.  
	 * speed: The speed in percentage, 0.0f being 0% and 1.0f being 100%.  
	 * ```
	 */
	@:native("SetHeliBladesSpeed")
	static function setHeliBladesSpeed(vehicle:Dynamic, speed:Float):Dynamic;

	/**
	 * Sets whether a boat should remain in the non-physical, low LOD anchor mode even when a player is driving it.
	 * 
	 * **Note**: This native requires [SET_BOAT_REMAINS_ANCHORED_WHILE_PLAYER_IS_DRIVER](#\_0xE3EBAAE484798530) to be set to `true` to work properly.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SetForceLowLodAnchorMode")
	static function setForceLowLodAnchorMode(boat:Dynamic, toggle:Bool):Dynamic;

	/**
	 * This native allows opening or closing the wings of the Deluxo/Oppressor. For the Deluxo, wing deployment depends on sufficient altitude.
	 */
	@:native("SetHoverModeWingRatio")
	static function setHoverModeWingRatio(vehicle:Dynamic, ratio:Float):Dynamic;

	/**
	 * Set a specific offset for helis chasing target in combat
	 * 
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("SetHeliCombatOffset")
	static function setHeliCombatOffset(vehicle:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetForceHdVehicle")
	static function setForceHdVehicle(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sets vehicle wheel hydraulic states transition. Known states:
	 * 0 - reset
	 * 1 - raise wheel (uses value arg, works just like _SET_VEHICLE_HYDRAULIC_WHEEL_VALUE)
	 * 2 - jump using wheel
	 * ```
	 */
	@:native("SetHydraulicWheelStateTransition")
	static function SetHydraulicWheelStateTransition(vehicle:Dynamic, wheelId:Int, state:Int, value:Float, p4:Float):Dynamic;

	/**
	 * ```
	 * Equivalent of SET_HELI_BLADES_SPEED(vehicleHandle, 1.0f);  
	 * this native works on planes to?  
	 * ```
	 */
	@:native("SetHeliBladesFullSpeed")
	static function setHeliBladesFullSpeed(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SetGarbageTrucks")
	static function setGarbageTrucks(toggle:Bool):Dynamic;

	/**
	 * ```
	 * value between 0.0 and 1.0  
	 * ```
	 */
	@:native("SetHelicopterRollPitchYawMult")
	static function SetHelicopterRollPitchYawMult(helicopter:Dynamic, multiplier:Float):Dynamic;

	/**
	 * Makes a helicopter resistant to multiple explosions. When enabled, helicopters can survive two or more explosions.
	 * 
	 * ```
	 * NativeDB Introduced: 2545
	 * ```
	 */
	@:native("SetHeliResistToExplosion")
	static function setHeliResistToExplosion(helicopter:Dynamic, bResistToExplosion:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetHeliTailRotorHealth")
	static function SetHeliTailRotorHealth(vehicle:Dynamic, health:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetHeliMainRotorHealth")
	static function SetHeliMainRotorHealth(vehicle:Dynamic, health:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetHydraulicWheelState")
	static function SetHydraulicWheelState(vehicle:Dynamic, state:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetHeliTurbulenceScalar")
	static function setHeliTurbulenceScalar(vehicle:Dynamic, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetHydraulicRaised")
	static function SetHydraulicRaised(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetLastDrivenVehicle")
	static function setLastDrivenVehicle(vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * p1 is always 0  
	 * ```
	 */
	@:native("SetMissionTrainAsNoLongerNeeded")
	static function setMissionTrainAsNoLongerNeeded(train:Dynamic, p1:Bool):Dynamic;

	/**
	 * ```
	 * Works only on vehicles that support hydraulic.
	 * ```
	 */
	@:native("SetHydraulicWheelValue")
	static function SetHydraulicWheelValue(vehicle:Dynamic, wheelId:Int, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetMissionTrainCoords")
	static function setMissionTrainCoords(train:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetLightsCutoffDistanceTweak")
	static function setLightsCutoffDistanceTweak(distance:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetNumberOfParkedVehicles")
	static function setNumberOfParkedVehicles(value:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * NativeDB Added Parameter 2 (2060): float durationMod : A multiplier applied to the default nitrous duration (default is 3 seconds). 
	 * NativeDB Added Parameter 3 (2060): float power : A multiplier applied to the default nitrous power multiplier (default is 3).
	 * NativeDB Added Parameter 4 (2060): float rechargeTime : A multiplier applied to the default nitrous recharge rate.
	 * NativeDB Added Parameter 5 (2060): BOOL disableSound : A boolean to disable the default nitrous sound when the nitrous is active.
	 * ```
	 * 
	 * Overrides the default settings of a vehicle's nitrous system, allowing custom control over its performance characteristics.
	 */
	@:native("SetOverrideNitrousLevel")
	static function setOverrideNitrousLevel(vehicle:Dynamic, override_:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetParkedVehicleDensityMultiplierThisFrame")
	static function setParkedVehicleDensityMultiplierThisFrame(multiplier:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: 3095
	 * ```
	 * 
	 * Activates or deactivates the nitrous system in the specified vehicle, based on the boolean value provided.
	 * You can clear the nitrous with [`CLEAR_NITROUS`](#\_0xC889AE921400E1ED), if you want to have more control on the nitrous and those settings, use [`SET_OVERRIDE_NITROUS_LEVEL`](#\_0xC8E9B6B71B8E660D)
	 */
	@:native("SetNitrousIsActive")
	static function setNitrousIsActive(vehicle:Dynamic, isActive:Bool):Dynamic;

	/**
	 * ```
	 * Works just like SET_VEHICLE_ENGINE_HEALTH, didn't saw any difference. But this native works only for planes.
	 * ```
	 */
	@:native("SetPlaneEngineHealth")
	static function SetPlaneEngineHealth(vehicle:Dynamic, health:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetPlanePropellersHealth")
	static function SetPlanePropellersHealth(plane:Dynamic, health:Float):Dynamic;

	/**
	 * Enables or disables the opening of a vehicle's rear doors in the event of a sticky bomb explosion. This native is effective for armored vehicles, such as the Stockade (Brinks vehicle), allowing the rear doors to be opened through controlled explosions, which might otherwise remain locked due to the vehicle nature.
	 */
	@:native("SetOpenRearDoorsOnExplosion")
	static function setOpenRearDoorsOnExplosion(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Set state to true to extend the wings, false to retract them.
	 */
	@:native("SetOppressorTransformState")
	static function SetOppressorTransformState(vehicle:Dynamic, extend:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetPlaybackSpeed")
	static function setPlaybackSpeed(vehicle:Dynamic, speed:Float):Dynamic;

	/**
	 * Adjusts the scale of damage applied to a specified section of a plane.
	 * In the decompiled scripts the `damageScale` is always set to `0f` (maybe to disable damages on the specified section)
	 * 
	 * ```cpp
	 * enum ePlaneDamageSection {
	 *     WING_L = 0,
	 *     WING_R = 1,
	 *     TAIL = 2,
	 *     ENGINE_L = 3,
	 *     ENGINE_R = 4,
	 *     ELEVATOR_L = 5,
	 *     ELEVATOR_R = 6,
	 *     AILERON_L = 7,
	 *     AILERON_R = 8,
	 *     RUDDER = 9,
	 *     RUDDER_2 = 10,
	 *     AIRBRAKE_L = 11,
	 *     AIRBRAKE_R = 12
	 * }
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("SetPlaneSectionDamageScale")
	static function setPlaneSectionDamageScale(vehicle:Dynamic, damageSection:Int, damageScale:Float):Dynamic;

	/**
	 * ```
	 * min: 1.9f, max: 100.0f
	 * ```
	 */
	@:native("SetPickupRopeLengthForCargobob")
	static function setPickupRopeLengthForCargobob(cargobob:Dynamic, length1:Float, length2:Float, state:Bool):Dynamic;

	/**
	 * This native sets the turbulence multiplier. It only works for planes.
	 * 0.0 = no turbulence at all.
	 * 1.0 = heavy turbulence.
	 * 
	 * Works by just calling it once, does not need to be called every tick.
	 */
	@:native("SetPlaneTurbulenceMultiplier")
	static function setPlaneTurbulenceMultiplier(vehicle:Dynamic, multiplier:Float):Dynamic;

	/**
	 * Identical to SET_PLAYBACK_TO_USE_AI_TRY_TO_REVERT_BACK_LATER with 0 as arguments for p1 and p3.
	 */
	@:native("SetPlaybackToUseAi")
	static function setPlaybackToUseAi(vehicle:Dynamic, drivingStyle:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetPlaneResistToExplosion")
	static function setPlaneResistToExplosion(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetPlayersLastVehicle")
	static function setPlayersLastVehicle(vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * Time is number of milliseconds before reverting, zero for indefinitely.
	 * ```
	 */
	@:native("SetPlaybackToUseAiTryToRevertBackLater")
	static function setPlaybackToUseAiTryToRevertBackLater(vehicle:Dynamic, time:Int, drivingStyle:Int, p3:Bool):Dynamic;

	/**
	 * Enables spawning random trains on the preset tracks.
	 * 
	 * Requires [`SWITCH_TRAIN_TRACK`](#\_0xFD813BB7DB977F20) and [`SET_TRAIN_TRACK_SPAWN_FREQUENCY`](#\_0x21973BBF8D17EDFA) to be set.
	 */
	@:native("SetRandomTrains")
	static function setRandomTrains(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetRandomBoats")
	static function setRandomBoats(toggle:Bool):Dynamic;

	/**
	 * Sets flag on vehicle that changes behaviour in relation to when player gets wanted level
	 */
	@:native("SetPoliceFocusWillTrackVehicle")
	static function setPoliceFocusWillTrackVehicle(vehicle:Dynamic, p1:Bool):Dynamic;

	/**
	 * Allows locking the hover/non-hover mode of a vehicle, such as the flying mode of the `Deluxo`. In the decompiled scripts, this native is used on `oppressor2` but couldn't get it to work on it.
	 */
	@:native("SetSpecialFlightModeAllowed")
	static function setSpecialFlightModeAllowed(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Lowers the vehicle's stance. Only works for vehicles that support this feature.
	 * 
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("SetReduceDriftVehicleSuspension")
	static function SetReduceDriftVehicleSuspension(vehicle:Dynamic, enable:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetRandomVehicleDensityMultiplierThisFrame")
	static function setRandomVehicleDensityMultiplierThisFrame(multiplier:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("SetRandomBoatsInMp")
	static function SetRandomBoatsInMp(toggle:Bool):Dynamic;

	/**
	 * According to decompiled scripts this should work with the `deluxo` and `oppressor2` vehicles.
	 * Does nothing when used on `oppressor2`.
	 * 
	 * For the deluxo:
	 * 
	 * *   Set `state` to `0.0`: Fully transform to a 'road' vehicle (non-hover mode).
	 * *   Set `state` to `1.0`: Fully transform to a 'flying' vehicle (hover mode).
	 * 
	 * If you set it to something like 0.5, then something [weird happens](https://streamable.com/p6wmr), you end up in some 50% hover mode, 50% not hover mode.
	 * 
	 * This doesn't need to be called every tick, just once and the vehicle will transform to that state at the usual transform speed. It'll just stop transforming when it reaches the state you provided.
	 * 
	 * Once this native is used then players will just be able to hit the vehicle transform key to toggle the transformation cycle; it won't block users from using the key.
	 */
	@:native("SetSpecialFlightModeTargetRatio")
	static function setSpecialFlightModeTargetRatio(vehicle:Dynamic, state:Float):Dynamic;

	/**
	 * ```
	 * makes the train all jumbled up and derailed as it moves on the tracks (though that wont stop it from its normal operations)  
	 * ```
	 */
	@:native("SetRenderTrainAsDerailed")
	static function setRenderTrainAsDerailed(train:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetSubmarineCrushDepths")
	static function setSubmarineCrushDepths(vehicle:Dynamic, toggle:Bool, depth1:Float, depth2:Float, depth3:Float):Dynamic;

	/**
	 * ```
	 * This is not tested - it's just an assumption.  
	 * Doesn't seem to work.  I'll try with an int instead. --JT  
	 * Read the scripts, im dumpass.   
	 * Doesn't work at all, wether with an bool neither an int  
	 *                             if (!VEHICLE::IS_TAXI_LIGHT_ON(l_115)) {  
	 *                                 VEHICLE::SET_TAXI_LIGHTS(l_115, 1);  
	 *                             }  
	 * ```
	 */
	@:native("SetTaxiLights")
	static function setTaxiLights(vehicle:Dynamic, state:Bool):Dynamic;

	/**
	 * ```
	 * Only called once in the decompiled scripts. Presumably activates the specified generator.  
	 * ```
	 */
	@:native("SetScriptVehicleGenerator")
	static function setScriptVehicleGenerator(vehicleGenerator:Int, enabled:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetTaskVehicleGotoPlaneMinHeightAboveTerrain")
	static function setTaskVehicleGotoPlaneMinHeightAboveTerrain(plane:Dynamic, height:Int):Dynamic;

	/**
	 * ```
	 * Inverse of 0x95CF53B3D687F9FA
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 1: Vehicle vehicle
	 * ```
	 */
	@:native("SetTrailerLegsLowered")
	static function SetTrailerLegsLowered():Dynamic;

	/**
	 * 
	 */
	@:native("SetTrailerInverseMassScale")
	static function setTrailerInverseMassScale(vehicle:Dynamic, p1:Float):Dynamic;

	/**
	 * Used alongside [`SET_SPECIAL_FLIGHT_MODE_TARGET_RATIO`](#\_0x438B3D7CA026FE91), this function initiates hover transformation for vehicles with a hover mode, like the `Deluxo`, based on a specified ratio (0.0 to 1.0). Incorrect values can glitch the vehicle. Without pairing, vehicles revert to car mode. Ineffective on the `oppressor2`
	 */
	@:native("SetSpecialFlightModeRatio")
	static function setSpecialFlightModeRatio(vehicle:Dynamic, ratio:Float):Dynamic;

	/**
	 * ```
	 * in the decompiled scripts, seems to be always called on the vehicle right after being attached to a trailer.
	 * ```
	 */
	@:native("SetTrailerLegsRaised")
	static function setTrailerLegsRaised(vehicle:Dynamic):Dynamic;

	/**
	 * Used to control train speed, can be used to start and stop its movement as well.
	 */
	@:native("SetTrainCruiseSpeed")
	static function setTrainCruiseSpeed(train:Dynamic, speed:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetTrainSpeed")
	static function setTrainSpeed(train:Dynamic, speed:Float):Dynamic;

	/**
	 * ```
	 * Only called once inside main_persitant with the parameters, 0  
	 * ```
	 */
	@:native("SetTrainTrackSpawnFrequency")
	static function setTrainTrackSpawnFrequency(trackIndex:Int, frequency:Int):Dynamic;

	/**
	 * Affects the playback speed of the submarine car conversion animations. Does not affect hardcoded animations such as the wheels being retracted. In decompiled scripts the only value used for transformRate is 2.5.
	 */
	@:native("SetTransformRateForAnimation")
	static function setTransformRateForAnimation(vehicle:Dynamic, transformRate:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("SetTyreHealth")
	static function SetTyreHealth(vehicle:Dynamic, wheelIndex:Int, health:Float):Dynamic;

	/**
	 * Changes the key used to transform a vehicle into submarine mode. When set to true, the transformation key switches from the default raise/lower convertible roof key (usually 'H') to the special vehicle transformation key (usually 'X').
	 * 
	 * ```
	 * NativeDB Introduced: v1365
	 * ```
	 */
	@:native("SetTransformToSubmarineUsesAlternateInput")
	static function setTransformToSubmarineUsesAlternateInput(vehicle:Dynamic, useAlternateInput:Dynamic):Dynamic;

	/**
	 * ```
	 * Controls how much traction the wheel loses.
	 * Default values from Rockstar's Open Wheel Race JSON's:
	 * "owrtds" (Soft): 0.05
	 * "owrtdm" (Medium): 0.45
	 * "owrtdh" (Hard): 0.8
	 * Usable wheels:
	 * 0: wheel_lf
	 * 1: wheel_rf
	 * 2: wheel_lm1
	 * 3: wheel_rm1
	 * 4: wheel_lr
	 * 5: wheel_rr
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v2060
	 * ```
	 */
	@:native("SetTyreTractionLossMultiplier")
	static function SetTyreTractionLossMultiplier(vehicle:Dynamic, wheelIndex:Int, multiplier:Float):Dynamic;

	/**
	 * Allows vehicles with the FLAG_JUMPING_CAR flag to jump higher (i.e. Ruiner 2000).
	 */
	@:native("SetUseHigherVehicleJumpForce")
	static function SetUseHigherVehicleJumpForce(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Controls how fast the tires wear out.
	 * Default values from Rockstar's Open Wheel Race JSON's:
	 * "owrtss" (Soft): 2.2
	 * "owrtsm" (Medium): 1.7
	 * "owrtsh" (Hard): 1.2
	 * Usable wheels:
	 * 0: wheel_lf
	 * 1: wheel_rf
	 * 2: wheel_lm1
	 * 3: wheel_rm1
	 * 4: wheel_lr
	 * 5: wheel_rr
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v2060
	 * ```
	 */
	@:native("SetTyreSoftnessMultiplier")
	static function SetTyreSoftnessMultiplier(vehicle:Dynamic, wheelIndex:Int, multiplier:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleActiveForPedNavigation")
	static function setVehicleActiveForPedNavigation(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * This native is used to simulate a high-speed impact for a vehicle when it collides with a breakable object (frag). It's particularly useful in scripted sequences where a vehicle is required to break through a barrier but might not actually be moving at a sufficient speed to do so realistically. Note that this setting is temporary and will reset after one frame, so it needs to be called every frame for a lasting effect.
	 */
	@:native("SetVehicleActAsIfHighSpeedForFragSmashing")
	static function setVehicleActAsIfHighSpeedForFragSmashing(vehicle:Dynamic, actHighSpeed:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("SetTyreWearMultiplier")
	static function SetTyreWearMultiplier(vehicle:Dynamic, wheelIndex:Int, multiplier:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleAlarm")
	static function setVehicleAlarm(vehicle:Dynamic, state:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleBrake")
	static function setVehicleBrake(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleActiveDuringPlayback")
	static function setVehicleActiveDuringPlayback(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Makes the vehicle accept no passengers.  
	 * ```
	 */
	@:native("SetVehicleAllowNoPassengersLockon")
	static function setVehicleAllowNoPassengersLockon(veh:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * p2 often set to 1000.0 in the decompiled scripts.  
	 * ```
	 */
	@:native("SetVehicleBodyHealth")
	static function setVehicleBodyHealth(vehicle:Dynamic, value:Float):Dynamic;

	/**
	 * ```
	 * SET_VEHICLE_AL*
	 * ```
	 */
	@:native("SetVehicleCanBeLockedOn")
	static function SetVehicleCanBeLockedOn(vehicle:Dynamic, canBeLockedOn:Bool, unk:Bool):Dynamic;

	/**
	 * Sets the arm position of a bulldozer. Position must be a value between 0.0 and 1.0. Ignored when `p2` is set to false, instead incrementing arm position by 0.1 (or 10%).
	 */
	@:native("SetVehicleBulldozerArmPosition")
	static function setVehicleBulldozerArmPosition(vehicle:Dynamic, position:Float, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleCanBeVisiblyDamaged")
	static function setVehicleCanBeVisiblyDamaged(vehicle:Dynamic, state:Bool):Dynamic;

	/**
	 * Sets the amount of bombs that this vehicle has. As far as I know, this does *not* impact vehicle weapons or the ammo of those weapons in any way, it is just a way to keep track of the amount of bombs in a specific plane.
	 * 
	 * In decompiled scripts this is used to deduct from or add to the count whenever bombs are dropped or purchased/restocked.
	 * 
	 * Use [`_GET_AIRCRAFT_BOMB_COUNT`](#\_0xEA12BD130D7569A1) to get the amount of bombs on that vehicle.
	 */
	@:native("SetVehicleBombCount")
	static function SetVehicleBombCount(aircraft:Dynamic, bombCount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleBrakeLights")
	static function setVehicleBrakeLights(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleAutomaticallyAttaches")
	static function setVehicleAutomaticallyAttaches(vehicle:Dynamic, p1:Bool, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleCanEngineOperateOnFire")
	static function SetVehicleCanEngineOperateOnFire(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleCanSaveInGarage")
	static function setVehicleCanSaveInGarage(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * On accelerating, spins the driven wheels with the others braked, so you don't go anywhere.  
	 * ```
	 */
	@:native("SetVehicleBurnout")
	static function setVehicleBurnout(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * colorPrimary & colorSecondary are the paint indexes for the vehicle.
	 * 
	 * For a list of valid paint indexes, view: pastebin.com/pwHci0xK
	 */
	@:native("SetVehicleColours")
	static function setVehicleColours(vehicle:Dynamic, colorPrimary:Int, colorSecondary:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleCanLeakOil")
	static function setVehicleCanLeakOil(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleCanBeUsedByFleeingPeds")
	static function setVehicleCanBeUsedByFleeingPeds(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * This has not yet been tested - it's just an assumption of what the types could be.  
	 * ```
	 */
	@:native("SetVehicleCanBeTargetted")
	static function setVehicleCanBeTargetted(vehicle:Dynamic, state:Bool):Dynamic;

	/**
	 * Sets the selected vehicle's colors to their default value (specific variant specified using the colorCombination parameter).
	 * 
	 * Range of possible values for colorCombination is currently unknown, I couldn't find where these values are stored either (Disquse's guess was vehicles.meta but I haven't seen it in there.)
	 */
	@:native("SetVehicleColourCombination")
	static function setVehicleColourCombination(vehicle:Dynamic, colorCombination:Int):Dynamic;

	/**
	 * ```
	 * p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)  
	 * ```
	 */
	@:native("SetVehicleCustomSecondaryColour")
	static function setVehicleCustomSecondaryColour(vehicle:Dynamic, r:Int, g:Int, b:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleCanDeformWheels")
	static function setVehicleCanDeformWheels(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleCanBreak")
	static function setVehicleCanBreak(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)  
	 * ```
	 */
	@:native("SetVehicleCustomPrimaryColour")
	static function setVehicleCustomPrimaryColour(vehicle:Dynamic, r:Int, g:Int, b:Int):Dynamic;

	/**
	 * ```
	 * Previously named GET_VEHICLE_DEFORMATION_GET_TREE (hash collision)
	 * from Decrypted Scripts I found
	 * VEHICLE::SET_VEHICLE_CEILING_HEIGHT(l_BD9[2/ *2* /], 420.0);
	 * ```
	 */
	@:native("SetVehicleCeilingHeight")
	static function setVehicleCeilingHeight(vehicle:Dynamic, height:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleCanLeakPetrol")
	static function setVehicleCanLeakPetrol(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Inverts vehicle's controls. So INPUT_VEH_ACCELERATE will be INPUT_VEH_BRAKE and vise versa (same for A/D controls)
	 * Doesn't work for planes/helis.
	 * ```
	 */
	@:native("SetVehicleControlsInverted")
	static function SetVehicleControlsInverted(vehicle:Dynamic, state:Bool):Dynamic;

	/**
	 * **Usage:**
	 * 
	 * *   Use this native inside a looped function.
	 * *   Values:
	 *     *   `0.0` = no vehicles on streets
	 *     *   `1.0` = normal vehicles on streets
	 * 
	 * `1.0` Seems to be the maximum.
	 */
	@:native("SetVehicleDensityMultiplierThisFrame")
	static function setVehicleDensityMultiplierThisFrame(multiplier:Float):Dynamic;

	/**
	 * ```
	 * <1.0 - Decreased torque
	 * =1.0 - Default torque
	 * >1.0 - Increased torque
	 * Negative values will cause the vehicle to go backwards instead of forwards while accelerating.
	 * value - is between 0.2 and 1.8 in the decompiled scripts.
	 * This needs to be called every frame to take effect.
	 * ```
	 */
	@:native("SetVehicleCheatPowerIncrease")
	static function setVehicleCheatPowerIncrease(vehicle:Dynamic, value:Float):Dynamic;

	/**
	 * Apply damage to vehicle at a location. Location is relative to vehicle model (not world).
	 * Radius of effect damage applied in a sphere at impact location
	 * When `focusOnModel` set to `true`, the damage sphere will travel towards the vehicle from the given point, thus guaranteeing an impact
	 */
	@:native("SetVehicleDamage")
	static function setVehicleDamage(vehicle:Dynamic, xOffset:Float, yOffset:Float, zOffset:Float, damage:Float, radius:Float, focusOnModel:Bool):Dynamic;

	/**
	 * See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
	 */
	@:native("SetVehicleDoorBroken")
	static function setVehicleDoorBroken(vehicle:Dynamic, doorIndex:Int, deleteDoor:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleDashboardColor")
	static function SetVehicleDashboardColor(vehicle:Dynamic, color:Int):Dynamic;

	/**
	 * Similar to [`_SET_AIRCRAFT_BOMB_COUNT`](#\_0xF4B2ED59DEB5D774), this sets the amount of countermeasures that are present on this vehicle.
	 * 
	 * Use [`_GET_AIRCRAFT_COUNTERMEASURE_COUNT`](#\_0xF846AA63DF56B804) to get the current amount.
	 */
	@:native("SetVehicleCountermeasureCount")
	static function SetVehicleCountermeasureCount(aircraft:Dynamic, count:Int):Dynamic;

	/**
	 * Sets the dirt level of the passed vehicle.
	 */
	@:native("SetVehicleDirtLevel")
	static function setVehicleDirtLevel(vehicle:Dynamic, dirtLevel:Float):Dynamic;

	/**
	 * See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
	 */
	@:native("SetVehicleDoorControl")
	static function setVehicleDoorControl(vehicle:Dynamic, doorIndex:Int, speed:Int, angle:Float):Dynamic;

	/**
	 * ```
	 * SET_VEHICLE_D*
	 * ```
	 */
	@:native("SetVehicleDamageModifier")
	static function SetVehicleDamageModifier(vehicle:Dynamic, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleDisableTowing")
	static function setVehicleDisableTowing(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * This fixes the deformation of a vehicle but the vehicle health doesn't improve  
	 * ```
	 */
	@:native("SetVehicleDeformationFixed")
	static function setVehicleDeformationFixed(vehicle:Dynamic):Dynamic;

	/**
	 * See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
	 */
	@:native("SetVehicleDoorCanBreak")
	static function SetVehicleDoorCanBreak(vehicle:Dynamic, doorIndex:Int, isBreakable:Bool):Dynamic;

	/**
	 * Sets the specified door index shut on the passed vehicle.
	 * 
	 * ```cpp
	 * enum eDoorId
	 * {
	 * 	VEH_EXT_DOOR_DSIDE_F = 0,
	 * 	VEH_EXT_DOOR_DSIDE_R = 1,
	 * 	VEH_EXT_DOOR_PSIDE_F = 2,
	 * 	VEH_EXT_DOOR_PSIDE_R = 3,
	 * 	VEH_EXT_BONNET = 4,
	 * 	VEH_EXT_BOOT = 5,
	 * 	// 0x872E72B8 = 0xFFFFFFFF,
	 * }
	 * ```
	 */
	@:native("SetVehicleDoorShut")
	static function setVehicleDoorShut(vehicle:Dynamic, doorIndex:Int, closeInstantly:Bool):Dynamic;

	/**
	 * Locks the doors of a specified vehicle to a defined lock state, affecting how players and NPCs can interact with the vehicle.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 * 
	 * ```cpp
	 * enum eVehicleLockState {
	 *     // No specific lock state, vehicle behaves according to the game's default settings.
	 *     VEHICLELOCK_NONE = 0,
	 *     // Vehicle is fully unlocked, allowing free entry by players and NPCs.
	 *     VEHICLELOCK_UNLOCKED = 1,
	 *     // Vehicle is locked, preventing entry by players and NPCs.
	 *     VEHICLELOCK_LOCKED = 2,
	 *     // Vehicle locks out only players, allowing NPCs to enter.
	 *     VEHICLELOCK_LOCKOUT_PLAYER_ONLY = 3,
	 *     // Vehicle is locked once a player enters, preventing others from entering.
	 *     VEHICLELOCK_LOCKED_PLAYER_INSIDE = 4,
	 *     // Vehicle starts in a locked state, but may be unlocked through game events.
	 *     VEHICLELOCK_LOCKED_INITIALLY = 5,
	 *     // Forces the vehicle's doors to shut and lock.
	 *     VEHICLELOCK_FORCE_SHUT_DOORS = 6,
	 *     // Vehicle is locked but can still be damaged.
	 *     VEHICLELOCK_LOCKED_BUT_CAN_BE_DAMAGED = 7,
	 *     // Vehicle is locked, but its trunk/boot remains unlocked.
	 *     VEHICLELOCK_LOCKED_BUT_BOOT_UNLOCKED = 8,
	 *     // Vehicle is locked and does not allow passengers, except for the driver.
	 *     VEHICLELOCK_LOCKED_NO_PASSENGERS = 9,
	 *     // Vehicle is completely locked, preventing entry entirely, even if previously inside.
	 *     VEHICLELOCK_CANNOT_ENTER = 10 
	 * };
	 * 
	 * ```
	 */
	@:native("SetVehicleDoorsLocked")
	static function setVehicleDoorsLocked(vehicle:Dynamic, doorLockStatus:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleDoorsLockedForAllPlayers")
	static function setVehicleDoorsLockedForAllPlayers(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Sets the specified door index open on the passed vehicle. See [`IS_VEHICLE_DOOR_FULLY_OPEN`](#\_0x3E933CFF7B111C22).
	 */
	@:native("SetVehicleDoorOpen")
	static function setVehicleDoorOpen(vehicle:Dynamic, doorIndex:Int, loose:Bool, openInstantly:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleDoorsLockedForTeam")
	static function setVehicleDoorsLockedForTeam(vehicle:Dynamic, team:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleDoorsLockedForNonScriptPlayers")
	static function setVehicleDoorsLockedForNonScriptPlayers(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
	 */
	@:native("SetVehicleDoorLatched")
	static function setVehicleDoorLatched(vehicle:Dynamic, doorIndex:Int, forceClose:Bool, lock:Bool, p4:Bool):Dynamic;

	/**
	 * ```
	 * Money pickups are created around cars when they explode. Only works when the vehicle model is a car. A single pickup is between 1 and 18 dollars in size. All car models seem to give the same amount of money.
	 * youtu.be/3arlUxzHl5Y
	 * i.imgur.com/WrNpYFs.jpg
	 * ```
	 */
	@:native("SetVehicleDropsMoneyWhenBlownUp")
	static function setVehicleDropsMoneyWhenBlownUp(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Closes all doors of a vehicle:  
	 * ```
	 */
	@:native("SetVehicleDoorsShut")
	static function setVehicleDoorsShut(vehicle:Dynamic, closeInstantly:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleEngineCanDegrade")
	static function setVehicleEngineCanDegrade(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * 1000 is max health
	 * Begins leaking gas at around 650 health
	 * -999.90002441406 appears to be minimum health, although nothing special occurs <- false statement
	 * -------------------------
	 * Minimum: -4000
	 * Maximum: 1000
	 * -4000: Engine is destroyed
	 * 0 and below: Engine catches fire and health rapidly declines
	 * 300: Engine is smoking and losing functionality
	 * 1000: Engine is perfect
	 * ```
	 */
	@:native("SetVehicleEngineHealth")
	static function setVehicleEngineHealth(vehicle:Dynamic, health:Float):Dynamic;

	/**
	 * Starts or stops the engine on the specified vehicle.
	 * From what I've tested when I do this to a helicopter the propellers turn off after the engine has started.
	 */
	@:native("SetVehicleEngineOn")
	static function setVehicleEngineOn(vehicle:Dynamic, value:Bool, instantly:Bool, disableAutoStart:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleDoorsLockedForPlayer")
	static function setVehicleDoorsLockedForPlayer(vehicle:Dynamic, player:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Incorrectly named `SET_VEHICLE_EXCLUSIVE_DRIVER`; likely `SET_VEHICLE_ALLOW_*`.
	 * 
	 * Toggles a flag related to `SET_VEHICLE_EXCLUSIVE_DRIVER`, however, doesn't enable that feature (or trigger script events related to it).
	 * 
	 * See [`_SET_VEHICLE_EXCLUSIVE_DRIVER_2`](#\_0xB5C51B5502E85E83).
	 * 
	 * ```
	 * NativeDB Removed Parameter 2: int index
	 * ```
	 */
	@:native("SetVehicleExclusiveDriver")
	static function setVehicleExclusiveDriver(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Examples with a besra:
	 * 
	 * *   [fade value `0.0`](https://i.imgur.com/DXNk63e.jpg)
	 * *   [fade value `0.5`](https://i.imgur.com/2Vb35fq.jpg)
	 * *   [fade value `1.0`](https://i.imgur.com/aa8cxaD.jpg)
	 * 
	 * The parameter fade is a value from 0-1, where 0 is fresh paint.
	 */
	@:native("SetVehicleEnveffScale")
	static function setVehicleEnveffScale(vehicle:Dynamic, fade:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1365
	 * ```
	 */
	@:native("SetVehicleDoorsLockedForUnk")
	static function SetVehicleDoorsLockedForUnk(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Note: only some vehicle have extras  
	 * extra ids are from 1 - 9 depending on the vehicle  
	 * -------------------------------------------------  
	 * ^ not sure if outdated or simply wrong. Max extra ID for b944 is 14  
	 * -------------------------------------------------  
	 * p2 is not a on/off toggle. mostly 0 means on and 1 means off.  
	 * not sure if it really should be a BOOL.  
	 * -------------------------------------------------  
	 * Confirmed p2 does not work as a bool. Changed to int. [0=on, 1=off]  
	 * ```
	 */
	@:native("SetVehicleExtra")
	static function setVehicleExtra(vehicle:Dynamic, extraId:Int, disable:Bool):Dynamic;

	/**
	 * The **actual** [`SET_VEHICLE_EXCLUSIVE_DRIVER`](#\_0x41062318F23ED854) native.
	 */
	@:native("SetVehicleExclusiveDriver_2")
	static function SetVehicleExclusiveDriver2(vehicle:Dynamic, ped:Dynamic, index:Int):Dynamic;

	/**
	 * ```
	 * Max value is 32767
	 * ```
	 */
	@:native("SetVehicleExtendedRemovalRange")
	static function setVehicleExtendedRemovalRange(vehicle:Dynamic, range:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleFlightNozzlePositionImmediate")
	static function setVehicleFlightNozzlePositionImmediate(vehicle:Dynamic, angle:Float):Dynamic;

	/**
	 * ```
	 * Sets a vehicle to be strongly resistant to explosions. p0 is the vehicle; set p1 to false to toggle the effect on/off.  
	 * ```
	 */
	@:native("SetVehicleExplodesOnHighExplosionDamage")
	static function setVehicleExplodesOnHighExplosionDamage(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Fix a given vehicle.
	 * If the vehicle's engine's broken then you cannot fix it with this native.
	 */
	@:native("SetVehicleFixed")
	static function setVehicleFixed(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleForceAfterburner")
	static function setVehicleForceAfterburner(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleFlightNozzlePosition")
	static function setVehicleFlightNozzlePosition(vehicle:Dynamic, angleRatio:Float):Dynamic;

	/**
	 * ```
	 * It switch to highbeam when p1 is set to true.  
	 * ```
	 */
	@:native("SetVehicleFullbeam")
	static function setVehicleFullbeam(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * They use the same color indexs as SET_VEHICLE_COLOURS.  
	 * ```
	 */
	@:native("SetVehicleExtraColours")
	static function setVehicleExtraColours(vehicle:Dynamic, pearlescentColor:Int, wheelColor:Int):Dynamic;

	/**
	 * ```
	 * Seems to be related to the metal parts, not tyres (like i was expecting lol)  
	 * Must be called every tick.  
	 * ```
	 */
	@:native("SetVehicleFrictionOverride")
	static function setVehicleFrictionOverride(vehicle:Dynamic, friction:Float):Dynamic;

	/**
	 * ```
	 * SCALE: Setting the speed to 30 would result in a speed of roughly 60mph, according to speedometer.  
	 * Speed is in meters per second  
	 * You can convert meters/s to mph here:  
	 * http://www.calculateme.com/Speed/MetersperSecond/ToMilesperHour.htm  
	 * ```
	 */
	@:native("SetVehicleForwardSpeed")
	static function setVehicleForwardSpeed(vehicle:Dynamic, speed:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleGravity")
	static function setVehicleGravity(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Allows creation of CEventShockingPlaneFlyby, CEventShockingHelicopterOverhead, and other(?) Shocking events
	 * ```
	 */
	@:native("SetVehicleGeneratesEngineShockingEvents")
	static function setVehicleGeneratesEngineShockingEvents(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleHandlingHashForAi")
	static function SetVehicleHandlingHashForAi(vehicle:Dynamic, hash:Int):Dynamic;

	/**
	 * Specifies an area of interest where cargens will focus on spawning vehicles
	 * 
	 * You can clear the area of interest with [`CLEAR_VEHICLE_GENERATOR_AREA_OF_INTEREST`](#\_0x0A436B8643716D14)
	 */
	@:native("SetVehicleGeneratorAreaOfInterest")
	static function setVehicleGeneratorAreaOfInterest(x:Float, y:Float, z:Float, radius:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleHandbrake")
	static function setVehicleHandbrake(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleHasMutedSirens")
	static function setVehicleHasMutedSirens(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleHasBeenDrivenFlag")
	static function setVehicleHasBeenDrivenFlag(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleHasBeenOwnedByPlayer")
	static function setVehicleHasBeenOwnedByPlayer(vehicle:Dynamic, owned:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleInactiveDuringPlayback")
	static function setVehicleInactiveDuringPlayback(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Sets whether the vehicle's lights can be broken.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SetVehicleHasUnbreakableLights")
	static function setVehicleHasUnbreakableLights(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * if true, axles won't bend.  
	 * ```
	 */
	@:native("SetVehicleHasStrongAxles")
	static function setVehicleHasStrongAxles(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleIndividualDoorsLocked")
	static function setVehicleIndividualDoorsLocked(vehicle:Dynamic, doorIndex:Int, doorLockStatus:Int):Dynamic;

	/**
	 * ```
	 * Sets the turn signal enabled for a vehicle.  
	 * Set turnSignal to 1 for left light, 0 for right light.  
	 * ```
	 */
	@:native("SetVehicleIndicatorLights")
	static function setVehicleIndicatorLights(vehicle:Dynamic, turnSignal:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleInteriorColor")
	static function SetVehicleInteriorColor(vehicle:Dynamic, color:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleInteriorlight")
	static function setVehicleInteriorlight(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Sets the vehicle headlight shadow flags.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 * 
	 * ```cpp
	 * enum eVehicleHeadlightShadowFlags {

	 *     // Default (Lights can be toggled between off, normal and high beams)

	 *     NO_HEADLIGHT_SHADOWS = 0,

	 *     // Lights Disabled (Lights are fully disabled, cannot be toggled)

	 *     HEADLIGHTS_CAST_DYNAMIC_SHADOWS = 1,

	 *     // Always On (Lights can be toggled between normal and high beams)

	 *     HEADLIGHTS_CAST_STATIC_SHADOWS = 2,

	 *     HEADLIGHTS_CAST_FULL_SHADOWS = 3 

	 * };
	 * ```
	 */
	@:native("SetVehicleHeadlightShadows")
	static function setVehicleHeadlightShadows(vehicle:Dynamic, flag:Int):Dynamic;

	/**
	 * ```
	 * Setting this to false, makes the specified vehicle to where if you press Y your character doesn't even attempt the animation to enter the vehicle. Hence it's not considered aka ignored.  
	 * ```
	 */
	@:native("SetVehicleIsConsideredByPlayer")
	static function setVehicleIsConsideredByPlayer(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * This native sets whether a specific vehicle influences the player's wanted level when it is involved in an incident that typically triggers a wanted response, such as being marked as a "victim" vehicle.
	 * 
	 * This is particularly useful when utilizing the wanted system from GTA, and you want to prevent a vehicle from affecting the wanted level when it is stolen. In the decompiled scripts this native is only used to disable the influence of the vehicle on the wanted level.
	 */
	@:native("SetVehicleInfluencesWantedLevel")
	static function setVehicleInfluencesWantedLevel(vehicle:Dynamic, influenceWantedLevel:Bool):Dynamic;

	/**
	 * ```
	 * Sets the wanted state of this vehicle.  
	 * ```
	 */
	@:native("SetVehicleIsWanted")
	static function setVehicleIsWanted(vehicle:Dynamic, state:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleIsStolen")
	static function setVehicleIsStolen(vehicle:Dynamic, isStolen:Bool):Dynamic;

	/**
	 * This multiplier has no limit, by default the game has this set to `1.0`.
	 */
	@:native("SetVehicleLightMultiplier")
	static function setVehicleLightMultiplier(vehicle:Dynamic, multiplier:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleLodMultiplier")
	static function setVehicleLodMultiplier(vehicle:Dynamic, multiplier:Float):Dynamic;

	/**
	 * Calling this native will keep a vehicle's engine running after exiting.
	 */
	@:native("SetVehicleKeepEngineOnWhenAbandoned")
	static function setVehicleKeepEngineOnWhenAbandoned(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleKersAllowed")
	static function setVehicleKersAllowed(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * p1 (toggle) was always 1 (true) except in one case in the b678 scripts.  
	 * ```
	 */
	@:native("SetVehicleIsRacing")
	static function setVehicleIsRacing(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleLivery")
	static function setVehicleLivery(vehicle:Dynamic, livery:Int):Dynamic;

	/**
	 * Sets the vehicle lights state. Allowing for different lighting modes.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 * 
	 * ```cpp
	 * enum eVehicleLightSetting {

	 *     // Normal light behavior. Lights cycle through off, then low beams, then high beams.

	 *     // Note: It's affected by day or night; high beams don't exist in daytime.

	 *     NO_VEHICLE_LIGHT_OVERRIDE = 0,

	 *     // Vehicle doesn't have lights, always off.

	 *     FORCE_VEHICLE_LIGHTS_OFF  = 1, 

	 *     // Vehicle has always-on lights.

	 *     // During day: Cycles between low beams and high beams. 

	 *     // At night: Cycles between low beams, low beams, and high beams.

	 *     FORCE_VEHICLE_LIGHTS_ON   = 2,

	 *     // Sets vehicle lights on. Behaves like normal lights (same as 0).

	 *     SET_VEHICLE_LIGHTS_ON     = 3,

	 *     // Sets vehicle lights off. Behaves like normal lights (same as 0).

	 *     SET_VEHICLE_LIGHTS_OFF    = 4 

	 * };
	 * ```
	 */
	@:native("SetVehicleLights")
	static function setVehicleLights(vehicle:Dynamic, state:Int):Dynamic;

	/**
	 * ```
	 * paintType:  
	 * 0: Normal  
	 * 1: Metallic  
	 * 2: Pearl  
	 * 3: Matte  
	 * 4: Metal  
	 * 5: Chrome  
	 * color: number of the color.  
	 * p3 seems to always be 0.  
	 * ```
	 */
	@:native("SetVehicleModColor_1")
	static function setVehicleModColor1(vehicle:Dynamic, paintType:Int, color:Int, pearlescentColor:Int):Dynamic;

	/**
	 * ```
	 * seems to make the vehicle stop spawning naturally in traffic. Here's an essential example:  
	 * VEHICLE::SET_VEHICLE_MODEL_IS_SUPPRESSED(GAMEPLAY::GET_HASH_KEY("taco"), true);  
	 * ```
	 */
	@:native("SetVehicleModelIsSuppressed")
	static function setVehicleModelIsSuppressed(model:Int, suppressed:Bool):Dynamic;

	/**
	 * To reset the max speed, set the `speed` value to `0.0` or lower.
	 */
	@:native("SetVehicleMaxSpeed")
	static function SetVehicleMaxSpeed(vehicle:Dynamic, speed:Float):Dynamic;

	/**
	 * ```cpp
	 * // eVehicleModType values modified to conform to script native reorganization (see 0x140D25327 in 1604).
	 * enum eVehicleModType
	 * {
	 * 	VMT_SPOILER = 0,
	 * 	VMT_BUMPER_F = 1,
	 * 	VMT_BUMPER_R = 2,
	 * 	VMT_SKIRT = 3,
	 * 	VMT_EXHAUST = 4,
	 * 	VMT_CHASSIS = 5,
	 * 	VMT_GRILL = 6,
	 * 	VMT_BONNET = 7,
	 * 	VMT_WING_L = 8,
	 * 	VMT_WING_R = 9,
	 * 	VMT_ROOF = 10,
	 * 	VMT_ENGINE = 11,
	 * 	VMT_BRAKES = 12,
	 * 	VMT_GEARBOX = 13,
	 * 	VMT_HORN = 14,
	 * 	VMT_SUSPENSION = 15,
	 * 	VMT_ARMOUR = 16,
	 * 	VMT_NITROUS = 17,
	 * 	VMT_TURBO = 18,
	 * 	VMT_SUBWOOFER = 19,
	 * 	VMT_TYRE_SMOKE = 20,
	 * 	VMT_HYDRAULICS = 21,
	 * 	VMT_XENON_LIGHTS = 22,
	 * 	VMT_WHEELS = 23,
	 * 	VMT_WHEELS_REAR_OR_HYDRAULICS = 24,
	 * 	VMT_PLTHOLDER = 25,
	 * 	VMT_PLTVANITY = 26,
	 * 	VMT_INTERIOR1 = 27,
	 * 	VMT_INTERIOR2 = 28,
	 * 	VMT_INTERIOR3 = 29,
	 * 	VMT_INTERIOR4 = 30,
	 * 	VMT_INTERIOR5 = 31,
	 * 	VMT_SEATS = 32,
	 * 	VMT_STEERING = 33,
	 * 	VMT_KNOB = 34,
	 * 	VMT_PLAQUE = 35,
	 * 	VMT_ICE = 36,
	 * 	VMT_TRUNK = 37,
	 * 	VMT_HYDRO = 38,
	 * 	VMT_ENGINEBAY1 = 39,
	 * 	VMT_ENGINEBAY2 = 40,
	 * 	VMT_ENGINEBAY3 = 41,
	 * 	VMT_CHASSIS2 = 42,
	 * 	VMT_CHASSIS3 = 43,
	 * 	VMT_CHASSIS4 = 44,
	 * 	VMT_CHASSIS5 = 45,
	 * 	VMT_DOOR_L = 46,
	 * 	VMT_DOOR_R = 47,
	 * 	VMT_LIVERY_MOD = 48,
	 * 	VMT_LIGHTBAR = 49,
	 * };
	 * ```
	 */
	@:native("SetVehicleMod")
	static function setVehicleMod(vehicle:Dynamic, modType:Int, modIndex:Int, customTires:Bool):Dynamic;

	/**
	 * ```
	 * Changes the secondary paint type and color  
	 * paintType:  
	 * 0: Normal  
	 * 1: Metallic  
	 * 2: Pearl  
	 * 3: Matte  
	 * 4: Metal  
	 * 5: Chrome  
	 * color: number of the color  
	 * ```
	 */
	@:native("SetVehicleModColor_2")
	static function setVehicleModColor2(vehicle:Dynamic, paintType:Int, color:Int):Dynamic;

	/**
	 * This method is utilized solely for debugging purposes and is functional only in debug builds of the game. Please note that its functionality may not be available in the retail version.
	 */
	@:native("SetVehicleNameDebug")
	static function setVehicleNameDebug(vehicle:Dynamic, name:String):Dynamic;

	/**
	 * Sets the color of the neon lights on the specified vehicle.
	 * 
	 * RGB values and colour names taken from the decompiled scripts:
	 * 
	 * | Colour         |  R  |  G  |  B  |
	 * |---------------|:---:|:---:|:---:|
	 * | White         | 222 | 222 | 255 |
	 * | Blue          | 2   | 21  | 255 |
	 * | Electric Blue | 3   | 83  | 255 |
	 * | Mint Green    | 0   | 255 | 140 |
	 * | Lime Green    | 94  | 255 | 1   |
	 * | Yellow        | 255 | 255 | 0   |
	 * | Golden Shower | 255 | 150 | 0   |
	 * | Orange        | 255 | 62  | 0   |
	 * | Red           | 255 | 1   | 1   |
	 * | Pony Pink     | 255 | 50  | 100 |
	 * | Hot Pink      | 255 | 5   | 190 |
	 * | Purple        | 35  | 1   | 255 |
	 * | Blacklight    | 15  | 3   | 255 |
	 */
	@:native("SetVehicleNeonLightsColour")
	static function SetVehicleNeonLightsColour(vehicle:Dynamic, r:Int, g:Int, b:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleNeedsToBeHotwired")
	static function setVehicleNeedsToBeHotwired(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Tested on the player's current vehicle. Unless you kill the driver, the vehicle doesn't loose control, however, if enabled, explodeOnImpact is still active. The moment you crash, boom.  
	 * ```
	 */
	@:native("SetVehicleOutOfControl")
	static function setVehicleOutOfControl(vehicle:Dynamic, killDriver:Bool, explodeOnImpact:Bool):Dynamic;

	/**
	 * ```
	 * Set modKit to 0 if you plan to call SET_VEHICLE_MOD. That's what the game does. Most body modifications through SET_VEHICLE_MOD will not take effect until this is set to 0.
	 * ```
	 */
	@:native("SetVehicleModKit")
	static function setVehicleModKit(vehicle:Dynamic, modKit:Int):Dynamic;

	/**
	 * Please refer to [`GET_VEHICLE_NUMBER_PLATE_TEXT_INDEX`](#\_0xF11BC2DD9A3E7195) for plate indicies.
	 */
	@:native("SetVehicleNumberPlateTextIndex")
	static function setVehicleNumberPlateTextIndex(vehicle:Dynamic, plateIndex:Int):Dynamic;

	/**
	 * ```
	 * colorIndex = 0 - 7
	 * ```
	 */
	@:native("SetVehicleParachuteTextureVariation")
	static function SetVehicleParachuteTextureVariation(vehicle:Dynamic, textureVariation:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("SetVehicleNeonLightsColor_2")
	static function SetVehicleNeonLightsColor2(vehicle:Dynamic, color:Int):Dynamic;

	/**
	 * ```
	 * Sets the neon lights of the specified vehicle on/off.  
	 * Indices:  
	 * 0 = Left  
	 * 1 = Right  
	 * 2 = Front  
	 * 3 = Back  
	 * ```
	 */
	@:native("SetVehicleNeonLightEnabled")
	static function SetVehicleNeonLightEnabled(vehicle:Dynamic, index:Int, toggle:Bool):Dynamic;

	/**
	 * ```
	 * 1000 is max health  
	 * Begins leaking gas at around 650 health  
	 * ```
	 */
	@:native("SetVehiclePetrolTankHealth")
	static function setVehiclePetrolTankHealth(vehicle:Dynamic, health:Float):Dynamic;

	/**
	 * ```
	 * Sets a vehicle on the ground on all wheels.  Returns whether or not the operation was successful.  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 2: float p1
	 * ```
	 */
	@:native("SetVehicleOnGroundProperly")
	static function setVehicleOnGroundProperly(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("SetVehicleParachuteActive")
	static function SetVehicleParachuteActive(vehicle:Dynamic, active:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleNumberPlateText")
	static function setVehicleNumberPlateText(vehicle:Dynamic, plateText:String):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleRampLaunchModifier")
	static function SetVehicleRampLaunchModifier(vehicle:Dynamic, p1:Float):Dynamic;

	/**
	 * ```
	 * parachuteModel = 230075693  
	 * ```
	 */
	@:native("SetVehicleParachuteModel")
	static function SetVehicleParachuteModel(vehicle:Dynamic, modelHash:Int):Dynamic;

	/**
	 * ```
	 * Reduces grip significantly so it's hard to go anywhere.  
	 * ```
	 */
	@:native("SetVehicleReduceGrip")
	static function setVehicleReduceGrip(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleProvidesCover")
	static function setVehicleProvidesCover(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleRocketBoostPercentage")
	static function SetVehicleRocketBoostPercentage(vehicle:Dynamic, percentage:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleReceivesRampDamage")
	static function SetVehicleReceivesRampDamage(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleRampUpwardsLaunchMotion")
	static function SetVehicleRampUpwardsLaunchMotion(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleRampSidewaysLaunchMotion")
	static function SetVehicleRampSidewaysLaunchMotion(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Often used in conjunction with: [SET_VEHICLE_REDUCE_GRIP](#\_0x222FF6A823D122E2).
	 * 
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("SetVehicleReduceTraction")
	static function SetVehicleReduceTraction(vehicle:Dynamic, val:Int):Dynamic;

	/**
	 * ```
	 * Only works during nighttime.
	 * ```
	 */
	@:native("SetVehicleSearchlight")
	static function setVehicleSearchlight(heli:Dynamic, toggle:Bool, canBeUsedByAI:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleRocketBoostRefillTime")
	static function SetVehicleRocketBoostRefillTime(vehicle:Dynamic, time:Float):Dynamic;

	/**
	 * ```
	 * Commands the driver of an armed vehicle (p0) to shoot its weapon at a target (p1). p3, p4 and p5 are the coordinates of the target. Example:  
	 * WEAPON::SET_CURRENT_PED_VEHICLE_WEAPON(pilot,GAMEPLAY::GET_HASH_KEY("VEHICLE_WEAPON_PLANE_ROCKET"));VEHICLE::SET_VEHICLE_SHOOT_AT_TARGET(pilot, target, targPos.x, targPos.y, targPos.z);  
	 * ```
	 */
	@:native("SetVehicleShootAtTarget")
	static function setVehicleShootAtTarget(driver:Dynamic, entity:Dynamic, xTarget:Float, yTarget:Float, zTarget:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleRocketBoostActive")
	static function SetVehicleRocketBoostActive(vehicle:Dynamic, active:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleRudderBroken")
	static function setVehicleRudderBroken(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * If set to TRUE, it seems to suppress door noises and doesn't allow the horn to be continuous.  
	 * ```
	 */
	@:native("SetVehicleSilent")
	static function SetVehicleSilent(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Used to set the tornado custom (convertible) rooftop livery.
	 * 
	 * Livery value that works for tornado custom is between 0 and 9 from what i can tell. Maybe 0-8 even.
	 * 
	 * Might work on other custom vehicles but im not sure what those might be, only confirmed it working with the tornado custom.
	 */
	@:native("SetVehicleRoofLivery")
	static function SetVehicleRoofLivery(vehicle:Dynamic, livery:Int):Dynamic;

	/**
	 * ```
	 * Adds some kind of shadow to the vehicle.
	 * -1 disables the effect.
	 * DISABLE_*
	 * ```
	 */
	@:native("SetVehicleShadowEffect")
	static function SetVehicleShadowEffect(vehicle:Dynamic, p1:Int, p2:Int):Dynamic;

	/**
	 * ```
	 * Has something to do with trains. Always precedes SET_MISSION_TRAIN_AS_NO_LONGER_NEEDED.  
	 * ============================================  
	 * May be true that it can be used with trains not sure, but not specifically for trains. Go find Xbox360 decompiled scripts and search for 'func_1333' in freemode.c it isn't used just for trains. Thanks for the info tho.  
	 * Btw, func_1333 ends up calling this func which uses this native,  
	 * void func_1338(int iParam0)//Position   
	 * {  
	 * 	ENTITY::FREEZE_ENTITY_POSITION(iParam0, true);  
	 * 	ENTITY::SET_ENTITY_COLLISION(iParam0, false, 0);  
	 * 	ENTITY::SET_ENTITY_INVINCIBLE(iParam0, true);  
	 * 	VEHICLE::_0xDF594D8D(iParam0, true);  
	 * }  
	 * ```
	 */
	@:native("SetVehicleSt")
	static function SetVehicleSt(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Activate siren on vehicle (Only works if the vehicle has a siren).  
	 * ```
	 */
	@:native("SetVehicleSiren")
	static function setVehicleSiren(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Locks the vehicle's steering to the desired angle, explained below.  
	 * Requires to be called onTick. Steering is unlocked the moment the function stops being called on the vehicle.  
	 * Steer bias:  
	 * -1.0 = full right  
	 * 0.0 = centered steering  
	 * 1.0 = full left  
	 * ```
	 */
	@:native("SetVehicleSteerBias")
	static function setVehicleSteerBias(vehicle:Dynamic, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleTankTurretPosition")
	static function setVehicleTankTurretPosition(vehicle:Dynamic, position:Float, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleSteeringBiasScalar")
	static function setVehicleSteeringBiasScalar(vehicle:Dynamic, scalar:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleTimedExplosion")
	static function setVehicleTimedExplosion(vehicle:Dynamic, ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * If set to true, vehicle will not take crash damage, but is still susceptible to damage from bullets and explosives  
	 * ```
	 */
	@:native("SetVehicleStrong")
	static function setVehicleStrong(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleTurretSpeedThisFrame")
	static function setVehicleTurretSpeedThisFrame(vehicle:Dynamic, speed:Float):Dynamic;

	/**
	 * ```
	 * Sets how much the crane on the tow truck is raised, where 0.0 is fully lowered and 1.0 is fully raised.  
	 * ```
	 */
	@:native("SetVehicleTowTruckArmPosition")
	static function setVehicleTowTruckArmPosition(vehicle:Dynamic, position:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleUndriveable")
	static function setVehicleUndriveable(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Toggles specific flag on turret
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("SetVehicleTurretUnk")
	static function SetVehicleTurretUnk(vehicle:Dynamic, index:Int, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sets the tire smoke's color of this vehicle.  
	 * vehicle: The vehicle that is the target of this method.  
	 * r: The red level in the RGB color code.  
	 * g: The green level in the RGB color code.  
	 * b: The blue level in the RGB color code.  
	 * Note:  
	 * setting r,g,b to 0 will give the car independance day tyre smoke  
	 * ```
	 */
	@:native("SetVehicleTyreSmokeColor")
	static function setVehicleTyreSmokeColor(vehicle:Dynamic, r:Int, g:Int, b:Int):Dynamic;

	/**
	 * ```
	 * "To burst tyres VEHICLE::SET_VEHICLE_TYRE_BURST(vehicle, 0, true, 1000.0)  
	 * to burst all tyres type it 8 times where p1 = 0 to 7.  
	 * p3 seems to be how much damage it has taken. 0 doesn't deflate them, 1000 completely deflates them.  
	 * '0 = wheel_lf / bike, plane or jet front  
	 * '1 = wheel_rf  
	 * '2 = wheel_lm / in 6 wheels trailer, plane or jet is first one on left  
	 * '3 = wheel_rm / in 6 wheels trailer, plane or jet is first one on right  
	 * '4 = wheel_lr / bike rear / in 6 wheels trailer, plane or jet is last one on left  
	 * '5 = wheel_rr / in 6 wheels trailer, plane or jet is last one on right  
	 * '45 = 6 wheels trailer mid wheel left  
	 * '47 = 6 wheels trailer mid wheel right  
	 * ```
	 */
	@:native("SetVehicleTyreBurst")
	static function setVehicleTyreBurst(vehicle:Dynamic, index:Int, onRim:Bool, p3:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v3095
	 * ```
	 * 
	 * Enables or disables the use of the vehicle's horn button for activating the nitrous system.
	 */
	@:native("SetVehicleUseHornButtonForNitrous")
	static function SetVehicleUseHornButtonForNitrous(vehicle:Dynamic, bToggle:Bool):Dynamic;

	/**
	 * ```
	 * Allows you to toggle bulletproof tires.  
	 * ```
	 */
	@:native("SetVehicleTyresCanBurst")
	static function setVehicleTyresCanBurst(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleUseCutsceneWheelCompression")
	static function setVehicleUseCutsceneWheelCompression(p0:Dynamic, p1:Bool, p2:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleWeaponsDisabled")
	static function SetVehicleWeaponsDisabled(vehicle:Dynamic, weaponSlot:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleUseAlternateHandling")
	static function setVehicleUseAlternateHandling(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * tyreIndex = 0 to 4 on normal vehicles  
	 * '0 = wheel_lf / bike, plane or jet front  
	 * '1 = wheel_rf  
	 * '2 = wheel_lm / in 6 wheels trailer, plane or jet is first one on left  
	 * '3 = wheel_rm / in 6 wheels trailer, plane or jet is first one on right  
	 * '4 = wheel_lr / bike rear / in 6 wheels trailer, plane or jet is last one on left  
	 * '5 = wheel_rr / in 6 wheels trailer, plane or jet is last one on right  
	 * '45 = 6 wheels trailer mid wheel left  
	 * '47 = 6 wheels trailer mid wheel right  
	 * ```
	 */
	@:native("SetVehicleTyreFixed")
	static function setVehicleTyreFixed(vehicle:Dynamic, tyreIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleUsePlayerLightSettings")
	static function setVehicleUsePlayerLightSettings(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleWheelsCanBreak")
	static function setVehicleWheelsCanBreak(vehicle:Dynamic, enabled:Bool):Dynamic;

	/**
	 * ```
	 * vehicle must be a plane
	 * ```
	 */
	@:native("SetVehicleUsesLargeRearRamp")
	static function setVehicleUsesLargeRearRamp(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleWheelsCanBreakOffWhenBlowUp")
	static function setVehicleWheelsCanBreakOffWhenBlowUp(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleUnkDamageMultiplier")
	static function SetVehicleUnkDamageMultiplier(vehicle:Dynamic, multiplier:Float):Dynamic;

	/**
	 * ```
	 * Related to monster trucks in native scripts.
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("SetVehicleWheelsDealDamage")
	static function SetVehicleWheelsDealDamage(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```cpp
	 * enum WindowTints  
	 * {  
	 * 	WINDOWTINT_NONE = 0,
	 * 	WINDOWTINT_PURE_BLACK = 1,
	 * 	WINDOWTINT_DARKSMOKE = 2,
	 * 	WINDOWTINT_LIGHTSMOKE = 3,
	 * 	WINDOWTINT_STOCK = 4,
	 * 	WINDOWTINT_LIMO = 5,
	 * 	WINDOWTINT_GREEN = 6
	 * };  
	 * ```
	 */
	@:native("SetVehicleWindowTint")
	static function setVehicleWindowTint(vehicle:Dynamic, tint:Int):Dynamic;

	/**
	 * ```
	 * SET_TIME_POSITION_IN_RECORDING can be emulated by: desired_time - GET_TIME_POSITION_IN_RECORDING(vehicle)
	 * ```
	 */
	@:native("SkipTimeInPlaybackRecordedVehicle")
	static function skipTimeInPlaybackRecordedVehicle(vehicle:Dynamic, time:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleWeaponCapacity")
	static function SetVehicleWeaponCapacity(vehicle:Dynamic, weaponIndex:Int, capacity:Int):Dynamic;

	/**
	 * Refer to [GET_VEHICLE_WHEEL_TYPE](#\_0xB3ED1BFB4BE636DC) for wheel types.
	 */
	@:native("SetVehicleWheelType")
	static function setVehicleWheelType(vehicle:Dynamic, wheelType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("StabiliseEntityAttachedToHeli")
	static function stabiliseEntityAttachedToHeli(vehicle:Dynamic, entity:Dynamic, p2:Float):Dynamic;

	/**
	 * p3 is some flag related to 'trailers' (invokes CVehicle::GetTrailer).
	 * 
	 * See [`REQUEST_VEHICLE_RECORDING`](#\_0xAF514CABE74CBF15).
	 */
	@:native("StartPlaybackRecordedVehicle")
	static function startPlaybackRecordedVehicle(vehicle:Dynamic, recording:Int, script:String, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SkipToEndAndStopPlaybackRecordedVehicle")
	static function skipToEndAndStopPlaybackRecordedVehicle(vehicle:Dynamic):Dynamic;

	/**
	 * Paint index goes from 0 to 12.
	 * 
	 * You can find the list of colors and ids here: [\_GET_VEHICLE_HEADLIGHTS_COLOUR](#\_0x3DFF319A831E0CDB)
	 */
	@:native("SetVehicleXenonLightsColor")
	static function SetVehicleXenonLightsColor(vehicle:Dynamic, color:Int):Dynamic;

	/**
	 * ```
	 * AI abides by the provided driving style (e.g., stopping at red lights or waiting behind traffic) while executing the specificed vehicle recording.
	 * 
	 * 0x1F2E4E06DEA8992B is a related native that deals with the AI physics for such recordings.
	 * ```
	 */
	@:native("StartPlaybackRecordedVehicleUsingAi")
	static function startPlaybackRecordedVehicleUsingAi(vehicle:Dynamic, recording:Int, script:String, speed:Float, drivingStyle:Int):Dynamic;

	/**
	 * ```
	 * flags requires further research, e.g., 0x4/0x8 are related to the AI driving task and 0x20 is internally set and interacts with dynamic entity components.
	 * time, often zero and capped at 500, is related to SET_PLAYBACK_TO_USE_AI_TRY_TO_REVERT_BACK_LATER
	 * ```
	 */
	@:native("StartPlaybackRecordedVehicleWithFlags")
	static function startPlaybackRecordedVehicleWithFlags(vehicle:Dynamic, recording:Int, script:String, flags:Int, time:Int, drivingStyle:Int):Dynamic;

	/**
	 * Smashes a vehicles window. See eWindowId declared in [`IS_VEHICLE_WINDOW_INTACT`](#\_0x46E571A0E20D01F1).
	 */
	@:native("SmashVehicleWindow")
	static function smashVehicleWindow(vehicle:Dynamic, windowIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("StopAllGarageActivity")
	static function stopAllGarageActivity():Dynamic;

	/**
	 * Sounds the horn for the specified vehicle. Note that if a player is in the vehicle, it will only sound briefly.
	 */
	@:native("StartVehicleHorn")
	static function startVehicleHorn(vehicle:Dynamic, duration:Int, mode:Int, forever:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("StartVehicleAlarm")
	static function startVehicleAlarm(vehicle:Dynamic):Dynamic;

	/**
	 * Enables or disables a vehicle mod by index (`modType`) for a given vehicle.
	 * 
	 * `eVehicleModType` enum, used for `modType` index can be found under [`SET_VEHICLE_MOD`](#\_0x6AF0636DDEDCB6DD).
	 */
	@:native("ToggleVehicleMod")
	static function toggleVehicleMod(vehicle:Dynamic, modType:Int, toggle:Bool):Dynamic;

	/**
	 * ```
	 * in script hook .net   
	 * Vehicle v = ...;  
	 * Function.Call(Hash.TRACK_VEHICLE_VISIBILITY, v.Handle);  
	 * ```
	 */
	@:native("TrackVehicleVisibility")
	static function trackVehicleVisibility(vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * Stops CTaskBringVehicleToHalt
	 * ```
	 */
	@:native("StopBringVehicleToHalt")
	static function StopBringVehicleToHalt(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("UnpausePlaybackRecordedVehicle")
	static function unpausePlaybackRecordedVehicle(vehicle:Dynamic):Dynamic;

	/**
	 * Transforms the `stormberg` to its "water vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.
	 */
	@:native("TransformToSubmarine")
	static function transformToSubmarine(vehicle:Dynamic, instantly:Bool):Dynamic;

	/**
	 * Toggles whether ambient trains can spawn on the specified track or not.
	 * 
	 * | trackId | File | Description |
	 * | --- | --- | --- |
	 * | 0 | `trains1.dat` | Main track around SA |
	 * | 1 | `trains2.dat` | Davis Quartz Quarry branch |
	 * | 2 | `trains3.dat` | Second track alongside live track along Roy Lewenstein Blv. |
	 * | 3 | `trains4.dat` | Metro track circuit |
	 * | 4 | `trains5.dat` | Branch in Mirror Park Railyard |
	 * | 5 | `trains6.dat` | Branch in Mirror Park Railyard |
	 * | 6 | `trains7.dat` | LS branch to Mirror Park Railyard |
	 * | 7 | `trains8.dat` | Overground part of metro track along Forum Dr. |
	 * | 8 | `trains9.dat` | Branch to Mirror Park Railyard |
	 * | 9 | `trains10.dat` | Yankton train |
	 * | 10 | `trains11.dat` | Part of metro track near mission row |
	 * | 11 | `trains12.dat` | Yankton prologue mission train |
	 * 
	 * Tracks IDs `0` and `3` are the main tracks you find trains on during normal gameplay, all the others are used during missions and are not complete tracks.
	 */
	@:native("SwitchTrainTrack")
	static function switchTrainTrack(trackId:Int, state:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("StopPlaybackRecordedVehicle")
	static function stopPlaybackRecordedVehicle(vehicle:Dynamic):Dynamic;

	/**
	 * Transforms the `stormberg` to its "road vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.
	 */
	@:native("TransformToCar")
	static function transformToCar(vehicle:Dynamic, instantly:Bool):Dynamic;

}
