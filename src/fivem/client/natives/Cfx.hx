package fivem.client.natives;

@:native("_G")
extern class Cfx {
	/**
	 * Loads a minimap overlay from a GFx file in the current resource.
	 */
	@:native("AddMinimapOverlayWithDepth")
	static function addMinimapOverlayWithDepth(name:String, depth:Int):Int;

	/**
	 * This is similar to the PushScaleformMovieFunction natives, except it calls in the `TIMELINE` of a minimap overlay.
	 */
	@:native("CallMinimapScaleformFunction")
	static function callMinimapScaleformFunction(miniMap:Int, fnName:String):Bool;

	/**
	 * Adds the given model name hash to the list of valid models for the player ped's parachute pack.
	 */
	@:native("AddAuthorizedParachutePackModel")
	static function addAuthorizedParachutePackModel(modelNameHash:Int):Dynamic;

	/**
	 * Loads a minimap overlay from a GFx file in the current resource.
	 * 
	 * If you need to control the depth of overlay use [`ADD_MINIMAP_OVERLAY_WITH_DEPTH`](#\_0xED0935B5).
	 */
	@:native("AddMinimapOverlay")
	static function addMinimapOverlay(name:String):Int;

	/**
	 * 
	 */
	@:native("AddTextEntryByHash")
	static function addTextEntryByHash(entryKey:Int, entryText:String):Dynamic;

	/**
	 * Experimental natives, please do not use in a live environment.
	 */
	@:native("AddReplaceTexture")
	static function addReplaceTexture(origTxd:String, origTxn:String, newTxd:String, newTxn:String):Dynamic;

	/**
	 * Break off vehicle wheel by index. The `leaveDebrisTrail` flag requires `putOnFire` to be true.
	 */
	@:native("BreakOffVehicleWheel")
	static function breakOffVehicleWheel(vehicle:Dynamic, wheelIndex:Int, leaveDebrisTrail:Bool, deleteWheel:Bool, unknownFlag:Bool, putOnFire:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CloneTimecycleModifier")
	static function cloneTimecycleModifier(sourceModifierName:String, clonedModifierName:String):Int;

	/**
	 * 
	 */
	@:native("ApplyWeatherCycles")
	static function applyWeatherCycles(numEntries:Int, msPerCycle:Int):Bool;

	/**
	 * Creates a runtime texture from the specified file in the current resource or a base64 data URL.
	 */
	@:native("CreateRuntimeTextureFromImage")
	static function createRuntimeTextureFromImage(txd:Int, txn:String, fileName:String):Int;

	/**
	 * Destroys a DUI browser.
	 */
	@:native("DestroyDui")
	static function destroyDui(duiObject:Int):Dynamic;

	/**
	 * Creates a runtime texture dictionary with the specified name.

	 * Example:
	 * 
	 * ```lua
	 * local txd = CreateRuntimeTxd('meow')
	 * ```
	 */
	@:native("CreateRuntimeTxd")
	static function createRuntimeTxd(name:String):Int;

	/**
	 * Create a clean timecycle modifier. See [`SET_TIMECYCLE_MODIFIER_VAR`](#\_0x6E0A422B) to add variables.
	 */
	@:native("CreateTimecycleModifier")
	static function createTimecycleModifier(modifierName:String):Int;

	/**
	 * Activates built-in timecycle editing tool.
	 */
	@:native("ActivateTimecycleEditor")
	static function activateTimecycleEditor():Dynamic;

	/**
	 * 
	 */
	@:native("AddTextEntry")
	static function addTextEntry(entryKey:String, entryText:String):Dynamic;

	/**
	 * Removes vehicle xenon lights custom RGB color.
	 */
	@:native("ClearVehicleXenonLightsCustomColor")
	static function clearVehicleXenonLightsCustomColor(vehicle:Dynamic):Dynamic;

	/**
	 * Creates a volume where water effects do not apply.

	 * Useful for preventing water collisions from flooding areas underneath them.

	 * This has no effect on waterquads, only water created from drawables and collisions.

	 * Don't create volumes when your local ped is swimming (e.g. use IS_PED_SWIMMING in your scripts before you call this)
	 */
	@:native("CreateDryVolume")
	static function createDryVolume(xMin:Float, yMin:Float, zMin:Float, xMax:Float, yMax:Float, zMax:Float):Int;

	/**
	 * Creates a runtime texture from a DUI handle.
	 */
	@:native("CreateRuntimeTextureFromDuiHandle")
	static function createRuntimeTextureFromDuiHandle(txd:Int, txn:String, duiHandle:String):Int;

	/**
	 * Checks whether the vehicle consumes fuel. The check is done based on petrol tank volume and vehicle type. Bicycles and vehicles with petrol tank volume equal to zero (only bicycles by default) do not use fuel. All other vehicles do.
	 * 
	 * You can customize petrol tank volume using [`SET_HANDLING_FLOAT`](#\_0x90DD01C)/[`SET_VEHICLE_HANDLING_FLOAT`](#\_0x488C86D2) natives with `fieldName` equal to `fPetrolTankVolume`.
	 */
	@:native("DoesVehicleUseFuel")
	static function doesVehicleUseFuel(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("DoesTimecycleModifierHasVar")
	static function doesTimecycleModifierHasVar(modifierName:String, varName:String):Bool;

	/**
	 * Resets the screen's draw-origin which was changed by the function [`SET_DRAW_ORIGIN`](#\_0xE10198D5) back to `x=0, y=0`. See [`SET_DRAW_ORIGIN`](#\_0xE10198D5) for further information.
	 */
	@:native("ClearDrawOrigin")
	static function clearDrawOrigin():Dynamic;

	/**
	 * Adds the given model name hash to the list of valid models for the player ped's parachute.
	 */
	@:native("AddAuthorizedParachuteModel")
	static function addAuthorizedParachuteModel(modelNameHash:Int):Dynamic;

	/**
	 * Commits the backing pixels to the specified runtime texture.
	 */
	@:native("CommitRuntimeTexture")
	static function commitRuntimeTexture(tex:Int):Dynamic;

	/**
	 * Adds an output for the specified audio submix.
	 */
	@:native("AddAudioSubmixOutput")
	static function addAudioSubmixOutput(submixId:Int, outputSubmixId:Int):Dynamic;

	/**
	 * Adds new health config.
	 */
	@:native("AddHealthConfig")
	static function addHealthConfig(configName:String, defaultHealth:Float, defaultArmor:Float, defaultEndurance:Float, fatiguedHealthThreshold:Float, injuredHealthThreshold:Float, dyingHealthThreshold:Float, hurtHealthThreshold:Float, dogTakedownThreshold:Float, writheFromBulletThreshold:Float, meleeCardinalFatalAttack:Bool, invincible:Bool):Dynamic;

	/**
	 * Disables the specified `rawKeyIndex`, making it not trigger the regular `IS_RAW_KEY_*` natives.
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("DisableRawKeyThisFrame")
	static function disableRawKeyThisFrame(rawKeyIndex:Int):Bool;

	/**
	 * Creates a DUI browser. This can be used to draw on a runtime texture using CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
	 */
	@:native("CreateDui")
	static function createDui(url:String, width:Int, height:Int):Int;

	/**
	 * Disables the game's afk camera that starts panning around after 30 seconds of inactivity.
	 */
	@:native("DisableIdleCamera")
	static function disableIdleCamera(state:Bool):Dynamic;

	/**
	 * In compare to `0x31DC8D3F216D8509` return true if texture its created when `0x31DC8D3F216D8509` return true if you put there any id in valid range
	 */
	@:native("DoesTextureExist")
	static function doesTextureExist(textureId:Int):Dynamic;

	/**
	 * Disables the game's afk camera that starts panning around after 30 seconds of inactivity(While riding in a car as a passenger)
	 */
	@:native("DisableVehiclePassengerIdleCamera")
	static function disableVehiclePassengerIdleCamera(state:Bool):Dynamic;

	/**
	 * Creates an audio submix with the specified name, or gets the existing audio submix by that name.
	 */
	@:native("CreateAudioSubmix")
	static function createAudioSubmix(name:String):Int;

	/**
	 * Returns a list of door system entries: a door system hash (see [ADD_DOOR_TO_SYSTEM](#\_0x6F8838D03D1DC226)) and its object handle.
	 * 
	 * The data returned adheres to the following layout:
	 * 
	 * ```
	 * [{doorHash1, doorHandle1}, ..., {doorHashN, doorHandleN}]
	 * ```
	 */
	@:native("DoorSystemGetActive")
	static function doorSystemGetActive():Dynamic;

	/**
	 * Creates a blank runtime texture.
	 */
	@:native("CreateRuntimeTexture")
	static function createRuntimeTexture(txd:Int, txn:String, width:Int, height:Int):Int;

	/**
	 * DRAW_RECT, but with a rotation. Seems to be broken.
	 */
	@:native("DrawRectRotated")
	static function drawRectRotated(x:Float, y:Float, width:Float, height:Float, rotation:Float, r:Int, g:Int, b:Int, a:Int):Dynamic;

	/**
	 * 
	 */
	@:native("EndFindPickup")
	static function endFindPickup(findHandle:Int):Dynamic;

	/**
	 * Allows drawing advanced light effects, known as coronas, which support flares, volumetric lighting, and customizable glow properties.
	 */
	@:native("DrawCorona")
	static function drawCorona(posX:Float, posY:Float, posZ:Float, size:Float, alpha:Int, red:Int, green:Int, blue:Int, intensity:Float, zBias:Float, dirX:Float, dirY:Float, dirZ:Float, viewThreshold:Float, innerAngle:Float, outerAngle:Float, flags:Int):Dynamic;

	/**
	 * Draw a glow sphere this frame. Up to 256 per single frame.
	 */
	@:native("DrawGlowSphere")
	static function drawGlowSphere(posX:Float, posY:Float, posZ:Float, radius:Float, colorR:Int, colorG:Int, colorB:Int, intensity:Float, invert:Bool, marker:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DrawPoly")
	static function drawPoly(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, x3:Float, y3:Float, z3:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * Draw the prepared light.
	 */
	@:native("DrawLight")
	static function drawLight():Dynamic;

	/**
	 * Disables the game's world horizon lods rendering (see `farlods.#dd`).

	 * Using the island hopper natives might also affect this state.
	 */
	@:native("DisableWorldhorizonRendering")
	static function disableWorldhorizonRendering(state:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DrawLine")
	static function drawLine(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * 
	 */
	@:native("FindNextObject")
	static function findNextObject(findHandle:Int, outEntity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("FindNextPed")
	static function findNextPed(findHandle:Int, outEntity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("EndFindPed")
	static function endFindPed(findHandle:Int):Dynamic;

	/**
	 * This native is not implemented.
	 */
	@:native("ExperimentalLoadCloneSync")
	static function experimentalLoadCloneSync(entity:Dynamic, data:String):Dynamic;

	/**
	 * 
	 */
	@:native("EndFindObject")
	static function endFindObject(findHandle:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DrawBox")
	static function drawBox(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * This native is not implemented.
	 */
	@:native("ExperimentalLoadCloneCreate")
	static function experimentalLoadCloneCreate(data:String, objectId:Int, tree:String):Dynamic;

	/**
	 * 
	 */
	@:native("FindFirstPed")
	static function findFirstPed(outEntity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("DoorSystemGetSize")
	static function doorSystemGetSize():Int;

	/**
	 * 
	 */
	@:native("FindNextPickup")
	static function findNextPickup(findHandle:Int, outEntity:Dynamic):Bool;

	/**
	 * Like DRAW_RECT, but it's a line.
	 */
	@:native("DrawLine_2d")
	static function drawLine2D(x1:Float, y1:Float, x2:Float, y2:Float, width:Float, r:Int, g:Int, b:Int, a:Int):Dynamic;

	/**
	 * This native is not implemented.
	 */
	@:native("ExperimentalSaveCloneCreate")
	static function experimentalSaveCloneCreate(entity:Dynamic):String;

	/**
	 * 
	 */
	@:native("FindFirstObject")
	static function findFirstObject(outEntity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("FindFirstPickup")
	static function findFirstPickup(outEntity:Dynamic):Int;

	/**
	 * A getter for [SET_AMBIENT_VEHICLE_RANGE_MULTIPLIER_THIS_FRAME](#\_0x90B6DA738A9A25DA).
	 */
	@:native("GetAmbientVehicleRangeMultiplier")
	static function getAmbientVehicleRangeMultiplier():Float;

	/**
	 * 
	 */
	@:native("GetCalmingQuadCount")
	static function getCalmingQuadCount():Int;

	/**
	 * 
	 */
	@:native("FindFirstVehicle")
	static function findFirstVehicle(outEntity:Dynamic):Int;

	/**
	 * Returns all rope handles. The data returned adheres to the following layout:
	 * 
	 * ```
	 * [ 770, 1026, 1282, 1538, 1794, 2050, 2306, 2562, 2818, 3074, 3330, 3586, 3842, 4098, 4354, 4610, ...]
	 * ```
	 */
	@:native("GetAllRopes")
	static function getAllRopes():Dynamic;

	/**
	 * 
	 */
	@:native("FindNextVehicle")
	static function findNextVehicle(findHandle:Int, outEntity:Dynamic):Bool;

	/**
	 * Forces the game snow pass to render.
	 */
	@:native("ForceSnowPass")
	static function forceSnowPass(enabled:Bool):Dynamic;

	/**
	 * Returns all registered vehicle model names, including non-dlc vehicles and custom vehicles in no particular order.
	 * 
	 * **Example output**
	 * 
	 * ```
	 * 	["dubsta", "dubsta2", "dubsta3", "myverycoolcar", "sultan", "sultanrs", ...]
	 * ```
	 * 
	 * This native will not return vehicles that are unregistered (i.e from a resource being stopped) during runtime.
	 */
	@:native("GetAllVehicleModels")
	static function getAllVehicleModels():Dynamic;

	/**
	 * Gets the current aspect ratio
	 * 
	 * ```lua
	 * local ratio = GetAspectRatio()

	 * print(string.format("%.2f", ratio))
	 * ```
	 */
	@:native("GetAspectRatio")
	static function getAspectRatio():Float;

	/**
	 * This native is not implemented.
	 */
	@:native("ExperimentalSaveCloneSync")
	static function experimentalSaveCloneSync(entity:Dynamic):String;

	/**
	 * Returns all player indices for 'active' physical players known to the client.

	 * The data returned adheres to the following layout:
	 * 
	 * ```
	 * [127, 42, 13, 37]
	 * ```
	 */
	@:native("GetActivePlayers")
	static function getActivePlayers():Dynamic;

	/**
	 * 
	 */
	@:native("EndFindVehicle")
	static function endFindVehicle(findHandle:Int):Dynamic;

	/**
	 * Get all track nodes and their track ids within the radius of the specified coordinates.
	 */
	@:native("GetClosestTrackNodes")
	static function getClosestTrackNodes(position:Dynamic, radius:Float):Dynamic;

	/**
	 * A getter for [SET_AMBIENT_PED_RANGE_MULTIPLIER_THIS_FRAME](#\_0x0B919E1FB47CC4E0).
	 */
	@:native("GetAmbientPedRangeMultiplier")
	static function getAmbientPedRangeMultiplier():Float;

	/**
	 * 
	 */
	@:native("GetCalmingQuadDampening")
	static function getCalmingQuadDampening(waterQuad:Int, calmingQuadDampening:Dynamic):Bool;

	/**
	 * This native returns the index of a calming quad if the given point is inside its bounds.
	 */
	@:native("GetCalmingQuadAtCoords")
	static function getCalmingQuadAtCoords(x:Float, y:Float):Int;

	/**
	 * Returns all track junctions on the client

	 * The data returned adheres to the following structure:
	 * 
	 * ```
	 * [1, 2, 4, 6, 69, 420]
	 * ```
	 */
	@:native("GetAllTrackJunctions")
	static function getAllTrackJunctions():Dynamic;

	/**
	 * Gets the current screen resolution.
	 * 
	 * ```lua
	 * local  width, height = GetCurrentScreenResolution()

	 * print(string.format("Current screen resolution: %dx%d", width, height))

	 * 
	 * ```
	 */
	@:native("GetCurrentScreenResolution")
	static function getCurrentScreenResolution(width:Dynamic, height:Dynamic):Dynamic;

	/**
	 * A getter for [SET_FALL_DAMAGE_LAND_ON_FOOT_MULTIPLIER](#\_0x164A08C9).
	 */
	@:native("GetFallDamageLandOnFootMultiplier")
	static function getFallDamageLandOnFootMultiplier():Float;

	/**
	 * 
	 */
	@:native("GetCalmingQuadBounds")
	static function getCalmingQuadBounds(waterQuad:Int, minX:Dynamic, minY:Dynamic, maxX:Dynamic, maxY:Dynamic):Bool;

	/**
	 * Returns whether a specific client configuration flag is currently enabled.

	 * You can find a list of configuration flags in [`SET_CLIENT_CONFIG_BOOL`](#\_0xD174EF7E).
	 */
	@:native("GetClientConfigBool")
	static function getClientConfigBool(flagIndex:Int):Bool;

	/**
	 * Get the minimap type:
	 * 
	 * ```
	 * 0 = Off,

	 * 1 = Regular,

	 * 2 = Expanded,

	 * 3 = Simple,
	 * ```
	 */
	@:native("GetMinimapType")
	static function getMinimapType():Int;

	/**
	 * 
	 */
	@:native("GetHudComponentSize")
	static function getHudComponentSize(id:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GetInteriorEntitiesExtents")
	static function getInteriorEntitiesExtents(interiorId:Int, bbMinX:Dynamic, bbMinY:Dynamic, bbMinZ:Dynamic, bbMaxX:Dynamic, bbMaxY:Dynamic, bbMaxZ:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetFuelConsumptionState")
	static function getFuelConsumptionState():Bool;

	/**
	 * This native returns the currently used game's name.
	 */
	@:native("GetCurrentGameName")
	static function getCurrentGameName():String;

	/**
	 * An alternative to [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#\_0xA6E7F1CEB523E171) that uses local collection indexing instead of the global one.
	 */
	@:native("GetNumberOfPedCollectionPropTextureVariations")
	static function getNumberOfPedCollectionPropTextureVariations(ped:Dynamic, anchorPoint:Int, collection:String, propIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GetInteriorPortalEntityArchetype")
	static function getInteriorPortalEntityArchetype(interiorId:Int, portalIndex:Int, entityIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GetInteriorPortalCornerPosition")
	static function getInteriorPortalCornerPosition(interiorId:Int, portalIndex:Int, cornerIndex:Int, posX:Dynamic, posY:Dynamic, posZ:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetInteriorRoomTimecycle")
	static function getInteriorRoomTimecycle(interiorId:Int, roomIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GetInteriorPortalRoomTo")
	static function getInteriorPortalRoomTo(interiorId:Int, portalIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GetInteriorPortalEntityCount")
	static function getInteriorPortalEntityCount(interiorId:Int, portalIndex:Int):Int;

	/**
	 * A getter for [SET_PED_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x95E3D6257B166CF2).
	 */
	@:native("GetPedDensityMultiplier")
	static function getPedDensityMultiplier():Float;

	/**
	 * Returns the peer address of the remote game server that the user is currently connected to.
	 */
	@:native("GetCurrentServerEndpoint")
	static function getCurrentServerEndpoint():String;

	/**
	 * 
	 */
	@:native("GetInteriorRoomExtents")
	static function getInteriorRoomExtents(interiorId:Int, roomIndex:Int, bbMinX:Dynamic, bbMinY:Dynamic, bbMinZ:Dynamic, bbMaxX:Dynamic, bbMaxY:Dynamic, bbMaxZ:Dynamic):Dynamic;

	/**
	 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
	 * 
	 * Returns the memory address of an entity.
	 * 
	 * This native is intended for singleplayer debugging, and may not be available during multiplayer.
	 */
	@:native("GetEntityAddress")
	static function getEntityAddress(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetInteriorRoomName")
	static function getInteriorRoomName(interiorId:Int, roomIndex:Int):String;

	/**
	 * 
	 */
	@:native("GetFuelConsumptionRateMultiplier")
	static function getFuelConsumptionRateMultiplier():Float;

	/**
	 * Returns the NUI window handle for a specified DUI browser object.
	 */
	@:native("GetDuiHandle")
	static function getDuiHandle(duiObject:Int):String;

	/**
	 * 
	 */
	@:native("GetInteriorPortalEntityFlag")
	static function getInteriorPortalEntityFlag(interiorId:Int, portalIndex:Int, entityIndex:Int):Int;

	/**
	 * Returns the zoom level data by index from mapzoomdata.meta file.
	 */
	@:native("GetMapZoomDataLevel")
	static function getMapZoomDataLevel(index:Int, zoomScale:Dynamic, zoomSpeed:Dynamic, scrollSpeed:Dynamic, tilesX:Dynamic, tilesY:Dynamic):Bool;

	/**
	 * A getter for [SET_FALL_DAMAGE_MULTIPLIER](#\_0xF2E1A531).
	 */
	@:native("GetFallDamageMultiplier")
	static function getFallDamageMultiplier():Float;

	/**
	 * An analogue of [GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS](#\_0x27561561732A7842) that returns number of drawable variations inside a single collection instead of the total number across all collections.
	 */
	@:native("GetNumberOfPedCollectionDrawableVariations")
	static function getNumberOfPedCollectionDrawableVariations(ped:Dynamic, componentId:Int, collection:String):Int;

	/**
	 * Returns the world matrix of the specified camera. To turn this into a view matrix, calculate the inverse.
	 */
	@:native("GetCamMatrix")
	static function getCamMatrix(camera:Dynamic, rightVector:Dynamic, forwardVector:Dynamic, upVector:Dynamic, position:Dynamic):Dynamic;

	/**
	 * An analogue to [GET_PED_PROP_INDEX](#\_0x898CC20EA75BACD8) that returns collection name instead of the global drawable index.
	 * 
	 * Should be used together with [GET_PED_PROP_COLLECTION_LOCAL_INDEX](#\_0xCD420AD1).
	 */
	@:native("GetPedPropCollectionName")
	static function getPedPropCollectionName(ped:Dynamic, anchorPoint:Int):String;

	/**
	 * 
	 */
	@:native("GetInteriorRotation")
	static function getInteriorRotation(interiorId:Int, rotx:Dynamic, rotY:Dynamic, rotZ:Dynamic, rotW:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetNuiCursorPosition")
	static function getNuiCursorPosition(x:Dynamic, y:Dynamic):Dynamic;

	/**
	 * A getter for [SET_GLOBAL_PASSENGER_MASS_MULTIPLIER](#\_0x3422291C).
	 */
	@:native("GetGlobalPassengerMassMultiplier")
	static function getGlobalPassengerMassMultiplier():Float;

	/**
	 * Returns global drawable index based on the local one. Is it a reverse to [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) natives.
	 * 
	 * Drawables are stored inside collections. Each collection usually corresponds to a certain DCL or the base game.
	 * 
	 * If all drawables from all collections are placed into one continuous array - the global index will correspond to the index of drawable in such array. Local index is index of drawable in this array relative to the start of the given collection.
	 */
	@:native("GetPedDrawableGlobalIndexFromCollection")
	static function getPedDrawableGlobalIndexFromCollection(ped:Dynamic, componentId:Int, collection:String, drawableId:Int):Int;

	/**
	 * 
	 */
	@:native("GetInteriorPortalEntityRotation")
	static function getInteriorPortalEntityRotation(interiorId:Int, portalIndex:Int, entityIndex:Int, rotX:Dynamic, rotY:Dynamic, rotZ:Dynamic, rotW:Dynamic):Dynamic;

	/**
	 * Returns the world position the pointer is hovering on the pause map.
	 */
	@:native("GetPauseMapPointerWorldPosition")
	static function getPauseMapPointerWorldPosition():Dynamic;

	/**
	 * See [SET_SCRIPT_GFX_ALIGN](#\_0xB8A850F20A067EB6) for details about how gfx align works.
	 */
	@:native("GetHudComponentAlign")
	static function getHudComponentAlign(id:Int, horizontalAlign:Dynamic, verticalAlign:Dynamic):Dynamic;

	/**
	 * Gets local index inside a collection (which can be obtained using [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B)) for the given global drawable ID. The collection name and index are used in functions like [SET_PED_COLLECTION_COMPONENT_VARIATION](#\_0x88711BBA).
	 */
	@:native("GetPedCollectionLocalIndexFromDrawable")
	static function getPedCollectionLocalIndexFromDrawable(ped:Dynamic, componentId:Int, drawableId:Int):Int;

	/**
	 * 
	 */
	@:native("GetHudComponentName")
	static function getHudComponentName(id:Int):String;

	/**
	 * An alternative to [GET_NUMBER_OF_PED_TEXTURE_VARIATIONS](#\_0x8F7156A3142A6BAD) that uses local collection indexing instead of the global one.
	 */
	@:native("GetNumberOfPedCollectionTextureVariations")
	static function getNumberOfPedCollectionTextureVariations(ped:Dynamic, componentId:Int, collection:String, drawableId:Int):Int;

	/**
	 * Returns global prop index based on the local one. Is it a reverse to [GET_PED_COLLECTION_NAME_FROM_PROP](#\_0x8ED0C17) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_PROP](#\_0xFBDB885F) natives.
	 * 
	 * Props are stored inside collections. Each collection usually corresponds to a certain DCL or the base game.
	 * 
	 * If all props from all collections are placed into one continuous array - the global index will correspond to the index of the prop in such array. Local index is index of the prop in this array relative to the start of the given collection.
	 */
	@:native("GetPedPropGlobalIndexFromCollection")
	static function getPedPropGlobalIndexFromCollection(ped:Dynamic, anchorPoint:Int, collection:String, propIndex:Int):Int;

	/**
	 * Returns entity's archetype name, if available.
	 */
	@:native("GetEntityArchetypeName")
	static function getEntityArchetypeName(entity:Dynamic):String;

	/**
	 * Returns the bone matrix of the specified bone id. usefull for entity attachment
	 */
	@:native("GetPedBoneMatrix")
	static function getPedBoneMatrix(ped:Dynamic, boneId:Int, forwardVector:Dynamic, rightVector:Dynamic, upVector:Dynamic, position:Dynamic):Dynamic;

	/**
	 * Gets local index inside a collection (which can be obtained using [GET_PED_COLLECTION_NAME_FROM_PROP](#\_0x8ED0C17)) for the given global prop index. The collection name and index are used in functions like [SET_PED_COLLECTION_PROP_INDEX](#\_0x75240BCB).
	 */
	@:native("GetPedCollectionLocalIndexFromProp")
	static function getPedCollectionLocalIndexFromProp(ped:Dynamic, anchorPoint:Int, propIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GetInteriorPosition")
	static function getInteriorPosition(interiorId:Int, posX:Dynamic, posY:Dynamic, posZ:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetInteriorPortalFlag")
	static function getInteriorPortalFlag(interiorId:Int, portalIndex:Int):Int;

	/**
	 * Gets collection name for the given global prop index. Together with [GET_PED_COLLECTION_LOCAL_INDEX_FROM_PROP](#\_0xFBDB885F) is used to get collection and local index (inside the given collection) of the prop. The collection name and index are used in functions like [SET_PED_COLLECTION_PROP_INDEX](#\_0x75240BCB).
	 */
	@:native("GetPedCollectionNameFromProp")
	static function getPedCollectionNameFromProp(ped:Dynamic, anchorPoint:Int, propIndex:Int):String;

	/**
	 * Unlike [GET_PLAYER_INVINCIBLE](#\_0xB721981B2B939E07) this native gets both [SET_PLAYER_INVINCIBLE_KEEP_RAGDOLL_ENABLED](#\_0x6BC97F4F4BB3C04B) and [SET_PLAYER_INVINCIBLE](#\_0x239528EACDC3E7DE) invincibility state.
	 */
	@:native("GetPlayerInvincible_2")
	static function getPlayerInvincible2(player:Dynamic):Bool;

	/**
	 * A getter for [\_SET_PED_FACE_FEATURE](#\_0x71A5C1DBA060049E). Returns 0.0 if fails to get.
	 */
	@:native("GetPedFaceFeature")
	static function getPedFaceFeature(ped:Dynamic, index:Int):Float;

	/**
	 * 
	 */
	@:native("GetPedMovementClipset")
	static function getPedMovementClipset(ped:Dynamic):Int;

	/**
	 * A getter for [\_SET_PED_HAIR_COLOR](#\_0x4CFFC65454C93A49). Returns -1 if fails to get.
	 */
	@:native("GetPedHairHighlightColor")
	static function getPedHairHighlightColor(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetInteriorRoomIndexByHash")
	static function getInteriorRoomIndexByHash(interiorId:Int, roomHash:Int):Int;

	/**
	 * An analogue to [GET_PED_DRAWABLE_VARIATION](#\_0x67F3780DD425D4FC) that returns collection local drawable index (inside [GET_PED_DRAWABLE_VARIATION_COLLECTION_NAME](#\_0xBCE0AB63) collection) instead of the global drawable index.
	 */
	@:native("GetPedDrawableVariationCollectionLocalIndex")
	static function getPedDrawableVariationCollectionLocalIndex(ped:Dynamic, componentId:Int):Int;

	/**
	 * A getter for [SET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER](#\_0xAE540335B4ABC4E2).
	 */
	@:native("GetPlayerMeleeWeaponDefenseModifier")
	static function getPlayerMeleeWeaponDefenseModifier(playerId:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetInteriorRoomFlag")
	static function getInteriorRoomFlag(interiorId:Int, roomIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GetPedScale")
	static function getPedScale(ped:Dynamic):Float;

	/**
	 * A getter for [SET_KILL_FALL_HEIGHT](#\_0x7E8D83E4).
	 */
	@:native("GetKillFallHeight")
	static function getKillFallHeight():Float;

	/**
	 * 
	 */
	@:native("GetNetworkWalkMode")
	static function getNetworkWalkMode():Dynamic;

	/**
	 * A getter for [\_SET_PED_HAIR_COLOR](#\_0x4CFFC65454C93A49). Returns -1 if fails to get.
	 */
	@:native("GetPedHairColor")
	static function getPedHairColor(ped:Dynamic):Int;

	/**
	 * Returns a list of decorations applied to a ped.
	 * 
	 * The data returned adheres to the following layout:
	 * 
	 * ```
	 * [ [ collectionHash1, overlayHash1 ], ..., [c ollectionHashN, overlayHashN ] ]
	 * ```
	 * 
	 * This command will return undefined data if invoked on a remote player ped.
	 */
	@:native("GetPedDecorations")
	static function getPedDecorations(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetRopeTimeMultiplier")
	static function getRopeTimeMultiplier(rope:Int):Float;

	/**
	 * Returns number of variation collections available for the given Ped.
	 * 
	 * Collections are groups of drawable components or props available for the given Ped. Usually collection corresponds to a certain DLC or the base game. See [SET_PED_COLLECTION_COMPONENT_VARIATION](#\_0x88711BBA), [SET_PED_COLLECTION_PROP_INDEX](#\_0x75240BCB), [GET_NUMBER_OF_PED_COLLECTION_DRAWABLE_VARIATIONS](#\_0x310D0271) etc natives for more details on how to work with collections.
	 * 
	 * `GET_PED_COLLECTIONS_COUNT` can be used together with [GET_PED_COLLECTION_NAME](#\_0xFED5D83A) to list all collections attached to Ped.
	 */
	@:native("GetPedCollectionsCount")
	static function getPedCollectionsCount(ped:Dynamic):Int;

	/**
	 * A getter for [SET_PED_HEAD_OVERLAY](#\_0x48F44967FA05CC1E) and [\_SET_PED_HEAD_OVERLAY_COLOR](#\_0x497BF74A7B9CB952) natives.
	 */
	@:native("GetPedHeadOverlayData")
	static function getPedHeadOverlayData(ped:Dynamic, index:Int, overlayValue:Dynamic, colourType:Dynamic, firstColour:Dynamic, secondColour:Dynamic, overlayOpacity:Dynamic):Bool;

	/**
	 * An analogue to [GET_PED_DRAWABLE_VARIATION](#\_0x67F3780DD425D4FC) that returns collection name instead of the global drawable index.
	 * 
	 * Should be used together with [GET_PED_DRAWABLE_VARIATION_COLLECTION_LOCAL_INDEX](#\_0x9970386F).
	 */
	@:native("GetPedDrawableVariationCollectionName")
	static function getPedDrawableVariationCollectionName(ped:Dynamic, componentId:Int):String;

	/**
	 * 
	 */
	@:native("GetInteriorPortalCount")
	static function getInteriorPortalCount(interiorId:Int):Int;

	/**
	 * Gets a ped model's health config.
	 */
	@:native("GetPedModelHealthConfig")
	static function getPedModelHealthConfig(modelHash:Int):Int;

	/**
	 * Gets the coordinates of a specific track node.
	 */
	@:native("GetTrackNodeCoords")
	static function getTrackNodeCoords(trackIndex:Int, trackNode:Int, coords:Dynamic):Dynamic;

	/**
	 * A getter for [SET_RANDOM_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0xB3B3359379FE77D3).

	 * Same as vehicle density multiplier.
	 */
	@:native("GetRandomVehicleDensityMultiplier")
	static function getRandomVehicleDensityMultiplier():Float;

	/**
	 * 
	 */
	@:native("GetPedWetnessHeight")
	static function getPedWetnessHeight(ped:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetInteriorPortalRoomFrom")
	static function getInteriorPortalRoomFrom(interiorId:Int, portalIndex:Int):Int;

	/**
	 * Gets the ratio that a door is open for on a train.
	 */
	@:native("GetTrainDoorOpenRatio")
	static function getTrainDoorOpenRatio(train:Dynamic, doorIndex:Int):Float;

	/**
	 * 
	 */
	@:native("GetPlayerStamina")
	static function getPlayerStamina(playerId:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetInteriorPortalEntityPosition")
	static function getInteriorPortalEntityPosition(interiorId:Int, portalIndex:Int, entityIndex:Int, posX:Dynamic, posY:Dynamic, posZ:Dynamic):Dynamic;

	/**
	 * An analogue of [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47) that returns number of prop variations inside a single collection instead of the total number across all collections.
	 */
	@:native("GetNumberOfPedCollectionPropDrawableVariations")
	static function getNumberOfPedCollectionPropDrawableVariations(ped:Dynamic, anchorPoint:Int, collection:String):Int;

	/**
	 * 
	 */
	@:native("GetInteriorRoomCount")
	static function getInteriorRoomCount(interiorId:Int):Int;

	/**
	 * Returns name of collection under given index for the given Ped.
	 * 
	 * Collections are groups of drawable components or props available for the given Ped. Usually collection corresponds to a certain DLC or the base game. See [SET_PED_COLLECTION_COMPONENT_VARIATION](#\_0x88711BBA), [SET_PED_COLLECTION_PROP_INDEX](#\_0x75240BCB), [GET_NUMBER_OF_PED_COLLECTION_DRAWABLE_VARIATIONS](#\_0x310D0271) etc natives for more details on how to work with collections.
	 * 
	 * `GET_PED_COLLECTION_NAME` can be used together with [GET_PED_COLLECTIONS_COUNT](#\_0x45946359) to list all collections attached to Ped.
	 */
	@:native("GetPedCollectionName")
	static function getPedCollectionName(ped:Dynamic, index:Int):String;

	/**
	 * 
	 */
	@:native("GetRopeUpdateOrder")
	static function getRopeUpdateOrder(rope:Int):Int;

	/**
	 * 
	 */
	@:native("GetPlayerServerId")
	static function getPlayerServerId(player:Dynamic):Int;

	/**
	 * A getter for [SET_PARKED_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0xEAE6DCC7EEE3DB1D).
	 */
	@:native("GetParkedVehicleDensityMultiplier")
	static function getParkedVehicleDensityMultiplier():Float;

	/**
	 * Gets collection name for the given global drawable ID. Together with [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) is used to get collection and local index (inside the given collection) of the drawable. The collection name and index are used in functions like [SET_PED_COLLECTION_COMPONENT_VARIATION](#\_0x88711BBA).
	 */
	@:native("GetPedCollectionNameFromDrawable")
	static function getPedCollectionNameFromDrawable(ped:Dynamic, componentId:Int, drawableId:Int):String;

	/**
	 * Gets the row pitch of the specified runtime texture, for use when creating data for `SET_RUNTIME_TEXTURE_ARGB_DATA`.
	 */
	@:native("GetRuntimeTexturePitch")
	static function getRuntimeTexturePitch(tex:Int):Int;

	/**
	 * Gets a ped model's personality type.
	 */
	@:native("GetPedModelPersonality")
	static function getPedModelPersonality(modelHash:Int):Int;

	/**
	 * A getter for [SET_PED_SWEAT](#\_0x27B0405F59637D1F).
	 */
	@:native("GetPedSweat")
	static function getPedSweat(ped:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetTrackBrakingDistance")
	static function getTrackBrakingDistance(track:Int):Float;

	/**
	 * Returns the amount of variables available to be applied on timecycle modifiers.
	 */
	@:native("GetTimecycleVarCount")
	static function getTimecycleVarCount():Int;

	/**
	 * 
	 */
	@:native("GetPlayerMaxStamina")
	static function getPlayerMaxStamina(playerId:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetRopeLengthChangeRate")
	static function getRopeLengthChangeRate(rope:Int):Float;

	/**
	 * 
	 */
	@:native("GetTimecycleModifierVarCount")
	static function getTimecycleModifierVarCount(modifierName:String):Int;

	/**
	 * An analogue to [GET_PED_PROP_INDEX](#\_0x898CC20EA75BACD8) that returns collection local prop index (inside [GET_PED_PROP_COLLECTION_NAME](#\_0x6B5653E4) collection) instead of the global prop index.
	 */
	@:native("GetPedPropCollectionLocalIndex")
	static function getPedPropCollectionLocalIndex(ped:Dynamic, anchorPoint:Int):Int;

	/**
	 * A getter for [\_SET_PED_EYE_COLOR](#\_0x50B56988B170AFDF). Returns -1 if fails to get.
	 */
	@:native("GetPedEyeColor")
	static function getPedEyeColor(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetTrackMaxSpeed")
	static function getTrackMaxSpeed(track:Int):Float;

	/**
	 * 
	 */
	@:native("GetTimecycleModifierVarNameByIndex")
	static function getTimecycleModifierVarNameByIndex(modifierName:String, modifierVarIndex:Int):String;

	/**
	 * 
	 */
	@:native("GetPedWetness")
	static function getPedWetness(ped:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleDashboardOilPressure")
	static function getVehicleDashboardOilPressure():Float;

	/**
	 * A getter for [SET_VEHICLE_CHEAT_POWER_INCREASE](#\_0xB59E4BD37AE292DB).
	 */
	@:native("GetVehicleCheatPowerIncrease")
	static function getVehicleCheatPowerIncrease(vehicle:Dynamic):Float;

	/**
	 * A getter for [SET_PLAYER_KILL_FALL_HEIGHT](#\_0xAEF2C6A4).
	 */
	@:native("GetPlayerKillFallHeight")
	static function getPlayerKillFallHeight():Float;

	/**
	 * 
	 */
	@:native("GetVehicleCurrentRpm")
	static function getVehicleCurrentRpm(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetTimecycleModifierNameByIndex")
	static function getTimecycleModifierNameByIndex(modifierIndex:Int):String;

	/**
	 * Returns the result of a shape test, also returning the material of any touched surface.
	 * 
	 * When used with an asynchronous shape test, this native should be looped until returning 0 or 2, after which the handle is invalidated.
	 * 
	 * Unless the return value is 2, the other return values are undefined.
	 */
	@:native("GetShapeTestResultIncludingMaterial")
	static function getShapeTestResultIncludingMaterial(shapeTestHandle:Int, hit:Dynamic, endCoords:Dynamic, surfaceNormal:Dynamic, materialHash:Dynamic, entityHit:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetTimecycleModifierCount")
	static function getTimecycleModifierCount():Int;

	/**
	 * Gets a local client's Player ID from its server ID counterpart, assuming the passed `serverId` exists on the client.
	 * 
	 * If no matching client is found, or an invalid value is passed over as the `serverId` native's parameter, the native result will be `-1`.
	 * 
	 * It's worth noting that this native method can only retrieve information about clients that are culled to the connected client.
	 */
	@:native("GetPlayerFromServerId")
	static function getPlayerFromServerId(serverId:Int):Dynamic;

	/**
	 * A getter for [SET_PLAYER_VEHICLE_DEFENSE_MODIFIER](#\_0x4C60E6EFDAFF2462).
	 */
	@:native("GetPlayerVehicleDefenseModifier")
	static function getPlayerVehicleDefenseModifier(playerId:Dynamic):Float;

	/**
	 * Gets the specified tracks node count.
	 */
	@:native("GetTrackNodeCount")
	static function getTrackNodeCount(trackIndex:Int):Int;

	/**
	 * A getter for [SET_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x245A6883D966D537).
	 */
	@:native("GetVehicleDensityMultiplier")
	static function getVehicleDensityMultiplier():Float;

	/**
	 * A getter for [SET_PLAYER_VEHICLE_DAMAGE_MODIFIER](#\_0xA50E117CDDF82F0C).
	 */
	@:native("GetPlayerVehicleDamageModifier")
	static function getPlayerVehicleDamageModifier(playerId:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleDashboardRpm")
	static function getVehicleDashboardRpm():Float;

	/**
	 * 
	 */
	@:native("GetTimecycleModifierVar")
	static function getTimecycleModifierVar(modifierName:String, varName:String, value1:Dynamic, value2:Dynamic):Bool;

	/**
	 * Gets the width of the specified runtime texture.
	 */
	@:native("GetRuntimeTextureWidth")
	static function getRuntimeTextureWidth(tex:Int):Int;

	/**
	 * 
	 */
	@:native("GetVehicleDashboardVacuum")
	static function getVehicleDashboardVacuum():Float;

	/**
	 * A getter for [SET_SCENARIO_PED_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x7A556143A1C03898).
	 */
	@:native("GetScenarioPedDensityMultiplier")
	static function getScenarioPedDensityMultiplier():Float;

	/**
	 * 
	 */
	@:native("GetVehicleClutch")
	static function getVehicleClutch(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleDashboardFuel")
	static function getVehicleDashboardFuel():Float;

	/**
	 * See [GET_TIMECYCLE_VAR_COUNT](#\_0x838B34D8).
	 */
	@:native("GetTimecycleVarDefaultValueByIndex")
	static function getTimecycleVarDefaultValueByIndex(varIndex:Int):Float;

	/**
	 * Gets the door count for the specified train.
	 */
	@:native("GetTrainDoorCount")
	static function getTrainDoorCount(train:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetTimecycleModifierIndexByName")
	static function getTimecycleModifierIndexByName(modifierName:String):Int;

	/**
	 * 
	 */
	@:native("GetTrainCurrentTrackNode")
	static function getTrainCurrentTrackNode(train:Dynamic):Int;

	/**
	 * A getter for [SET_TIMECYCLE_MODIFIER_STRENGTH](#\_0x82E7FFCD5B2326B3).
	 */
	@:native("GetTimecycleModifierStrength")
	static function getTimecycleModifierStrength():Float;

	/**
	 * 
	 */
	@:native("GetVehicleDashboardSpeed")
	static function getVehicleDashboardSpeed(vehicle:Dynamic):Float;

	/**
	 * **Note**: Flags are not the same based on your `gamebuild`. Please see [here](https://docs.fivem.net/docs/game-references/vehicle-references/vehicle-flags) to see a complete list of all vehicle flags.
	 * 
	 * Get vehicle.meta flag by index. Useful examples include `FLAG_LAW_ENFORCEMENT` (31), `FLAG_RICH_CAR` (36), `FLAG_IS_ELECTRIC` (43), `FLAG_IS_OFFROAD_VEHICLE` (48).
	 */
	@:native("GetVehicleHasFlag")
	static function getVehicleHasFlag(vehicle:Dynamic, flagIndex:Int):Dynamic;

	/**
	 * Gets the speed the train is currently going.
	 */
	@:native("GetTrainSpeed")
	static function getTrainSpeed(train:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleWheelTireColliderWidth")
	static function getVehicleWheelTireColliderWidth(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * 
	 */
	@:native("GetVehicleTurboPressure")
	static function getVehicleTurboPressure(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleCurrentGear")
	static function getVehicleCurrentGear(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleAlarmTimeLeft")
	static function getVehicleAlarmTimeLeft(vehicle:Dynamic):Int;

	/**
	 * Gets the height of the specified runtime texture.
	 */
	@:native("GetRuntimeTextureHeight")
	static function getRuntimeTextureHeight(tex:Int):Int;

	/**
	 * Gets whether the wheel is powered.

	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.

	 * This is a shortcut to a flag in GET_VEHICLE_WHEEL_FLAGS.
	 */
	@:native("GetVehicleWheelIsPowered")
	static function getVehicleWheelIsPowered(vehicle:Dynamic, wheelIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("GetVehicleFuelLevel")
	static function getVehicleFuelLevel(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleEngineTemperature")
	static function getVehicleEngineTemperature(vehicle:Dynamic):Float;

	/**
	 * Gets vehicles gear ratio on choosen gear.
	 */
	@:native("GetVehicleGearRatio")
	static function getVehicleGearRatio(vehicle:Dynamic, gear:Int):Float;

	/**
	 * Gets the state of the player vehicle's dashboard lights as a bit set

	 * indicator_left = 1

	 * indicator_right = 2

	 * handbrakeLight = 4

	 * engineLight = 8

	 * ABSLight = 16

	 * gasLight = 32

	 * oilLight = 64

	 * headlights = 128

	 * highBeam = 256

	 * batteryLight = 512
	 */
	@:native("GetVehicleDashboardLights")
	static function getVehicleDashboardLights():Int;

	/**
	 * Gets a vehicle's multiplier used with a wheel's GET_VEHICLE_WHEEL_STEERING_ANGLE to determine the angle the wheel is rendered.
	 */
	@:native("GetVehicleDrawnWheelAngleMult")
	static function getVehicleDrawnWheelAngleMult(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleDashboardOilTemp")
	static function getVehicleDashboardOilTemp():Float;

	/**
	 * ```cpp
	 * enum eRopeFlags

	 * {

	 *     DrawShadowEnabled = 2,

	 * 	Breakable = 4,

	 * 	RopeUnwindingFront = 8,

	 * 	RopeWinding = 32

	 * }
	 * ```
	 */
	@:native("GetRopeFlags")
	static function getRopeFlags(rope:Int):Int;

	/**
	 * See [GET_TIMECYCLE_VAR_COUNT](#\_0x838B34D8).
	 */
	@:native("GetTimecycleVarNameByIndex")
	static function getTimecycleVarNameByIndex(varIndex:Int):String;

	/**
	 * Gets the traction vector length of a wheel.

	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("GetVehicleWheelTractionVectorLength")
	static function getVehicleWheelTractionVectorLength(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * 
	 */
	@:native("GetVehicleWheelYRotation")
	static function getVehicleWheelYRotation(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * Returns the effective handling data of a vehicle as a vector value.

	 * Example: `local inertiaMultiplier = GetVehicleHandlingVector(vehicle, 'CHandlingData', 'vecInertiaMultiplier')`
	 */
	@:native("GetVehicleHandlingVector")
	static function getVehicleHandlingVector(vehicle:Dynamic, class_:String, fieldName:String):Dynamic;

	/**
	 * Gets power being sent to a wheel.

	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("GetVehicleWheelPower")
	static function getVehicleWheelPower(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * Gets speed of a wheel at the tyre.

	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("GetVehicleWheelSpeed")
	static function getVehicleWheelSpeed(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * 
	 */
	@:native("GetVehicleDashboardTemp")
	static function getVehicleDashboardTemp():Float;

	/**
	 * 
	 */
	@:native("GetVehicleHighGear")
	static function getVehicleHighGear(vehicle:Dynamic):Int;

	/**
	 * Gets the rotation speed of a wheel.

	 * This is used internally to calcuate GET_VEHICLE_WHEEL_SPEED.

	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("GetVehicleWheelRotationSpeed")
	static function getVehicleWheelRotationSpeed(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * This alternative implementation of [`GetWaterQuadAtCoords`](#\_0x17321452) also checks the height of the water level.
	 */
	@:native("GetWaterQuadAtCoords_3d")
	static function getWaterQuadAtCoords3D(x:Float, y:Float, z:Float):Int;

	/**
	 * 
	 */
	@:native("GetVehicleWheelHealth")
	static function getVehicleWheelHealth(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * 
	 */
	@:native("GetVehicleDashboardBoost")
	static function getVehicleDashboardBoost():Float;

	/**
	 * List of known states:
	 * 
	 * ```
	 * 1: Not wheeling.

	 * 65: Vehicle is ready to do wheelie (burnouting).

	 * 129: Vehicle is doing wheelie.
	 * ```
	 */
	@:native("GetVehicleWheelieState")
	static function getVehicleWheelieState(vehicle:Dynamic):Int;

	/**
	 * Gets the current suspension compression of a wheel.

	 * Returns a positive value. 0 means the suspension is fully extended, the wheel is off the ground.

	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("GetVehicleWheelSuspensionCompression")
	static function getVehicleWheelSuspensionCompression(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * 
	 */
	@:native("GetVehicleNextGear")
	static function getVehicleNextGear(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetWaterQuadHasLimitedDepth")
	static function getWaterQuadHasLimitedDepth(waterQuad:Int, hasLimitedDepth:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetVehicleWheelSurfaceMaterial")
	static function getVehicleWheelSurfaceMaterial(vehicle:Dynamic, wheelIndex:Int):Int;

	/**
	 * Returns the effective handling data of a vehicle as a floating-point value.

	 * Example: `local fSteeringLock = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock')`
	 */
	@:native("GetVehicleHandlingFloat")
	static function getVehicleHandlingFloat(vehicle:Dynamic, class_:String, fieldName:String):Float;

	/**
	 * 
	 */
	@:native("GetVehicleGravityAmount")
	static function getVehicleGravityAmount(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleSteeringScale")
	static function getVehicleSteeringScale(vehicle:Dynamic):Float;

	/**
	 * *level is defined as "z" in water.xml*
	 */
	@:native("GetWaterQuadLevel")
	static function getWaterQuadLevel(waterQuad:Int, waterQuadLevel:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetVehicleThrottleOffset")
	static function getVehicleThrottleOffset(vehicle:Dynamic):Float;

	/**
	 * Returns vehicle xenon lights custom RGB color values. Do note this native doesn't return non-RGB colors that was set with [\_SET_VEHICLE_XENON_LIGHTS_COLOR](#\_0xE41033B25D003A07).
	 */
	@:native("GetVehicleXenonLightsCustomColor")
	static function getVehicleXenonLightsCustomColor(vehicle:Dynamic, red:Dynamic, green:Dynamic, blue:Dynamic):Bool;

	/**
	 * A getter for `CWeaponFallOffModifier` damage modifier value in a weapon component.
	 */
	@:native("GetWeaponComponentRangeDamageModifier")
	static function getWeaponComponentRangeDamageModifier(componentHash:Int):Float;

	/**
	 * Gets steering angle of a wheel.

	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("GetVehicleWheelSteeringAngle")
	static function getVehicleWheelSteeringAngle(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * A getter for `CWeaponFallOffModifier` range modifier value in a weapon component.
	 */
	@:native("GetWeaponComponentRangeModifier")
	static function getWeaponComponentRangeModifier(componentHash:Int):Float;

	/**
	 * Returns the effective handling data of a vehicle as an integer value.

	 * Example: `local modelFlags = GetVehicleHandlingInt(vehicle, 'CHandlingData', 'strModelFlags')`
	 */
	@:native("GetVehicleHandlingInt")
	static function getVehicleHandlingInt(vehicle:Dynamic, class_:String, fieldName:String):Int;

	/**
	 * 
	 */
	@:native("GetWaveQuadAmplitude")
	static function getWaveQuadAmplitude(waveQuad:Int, waveQuadAmplitude:Dynamic):Bool;

	/**
	 * Returns whether or not the specific minimap overlay has loaded.
	 */
	@:native("HasMinimapOverlayLoaded")
	static function hasMinimapOverlayLoaded(id:Int):Bool;

	/**
	 * This native returns the index of a water quad if the given point is inside its bounds.
	 * 
	 * *If you also want to check for water level, check out [`GetWaterQuadAtCoords_3d`](#\_0xF8E03DB8)*
	 */
	@:native("GetWaterQuadAtCoords")
	static function getWaterQuadAtCoords(x:Float, y:Float):Int;

	/**
	 * 
	 */
	@:native("GetVehicleLightMultiplier")
	static function getVehicleLightMultiplier(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetWaterQuadNoStencil")
	static function getWaterQuadNoStencil(waterQuad:Int, noStencil:Dynamic):Bool;

	/**
	 * Returns the offset of the specified wheel relative to the wheel's axle center.
	 */
	@:native("GetVehicleWheelXOffset")
	static function getVehicleWheelXOffset(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * Retrieves the current gear displayed on the dashboard of the vehicle the player is in, returned as a float. This value represents the gear shown in the instrument cluster, such as "R" (0.0) or positive values (e.g., 1.0, 2.0, etc.) for drive gears.
	 */
	@:native("GetVehicleDashboardCurrentGear")
	static function getVehicleDashboardCurrentGear():Float;

	/**
	 * Returns the model type of the vehicle as defined by:
	 * 
	 * ```cpp
	 * enum VehicleType

	 * {

	 * 	VEHICLE_TYPE_NONE = -1,

	 * 	VEHICLE_TYPE_CAR = 0,

	 * 	VEHICLE_TYPE_PLANE = 1,

	 * 	VEHICLE_TYPE_TRAILER = 2,

	 * 	VEHICLE_TYPE_QUADBIKE = 3,

	 * 	VEHICLE_TYPE_DRAFT = 4,

	 * 	VEHICLE_TYPE_SUBMARINECAR = 5,

	 * 	VEHICLE_TYPE_AMPHIBIOUS_AUTOMOBILE = 6,

	 * 	VEHICLE_TYPE_AMPHIBIOUS_QUADBIKE = 7,

	 * 	VEHICLE_TYPE_HELI = 8,

	 * 	VEHICLE_TYPE_BLIMP = 9,

	 * 	VEHICLE_TYPE_AUTOGYRO = 10,

	 * 	VEHICLE_TYPE_BIKE = 11,

	 * 	VEHICLE_TYPE_BICYCLE = 12,

	 * 	VEHICLE_TYPE_BOAT = 13,

	 * 	VEHICLE_TYPE_TRAIN = 14,

	 * 	VEHICLE_TYPE_SUBMARINE = 15,

	 * };
	 * ```
	 */
	@:native("GetVehicleTypeRaw")
	static function getVehicleTypeRaw(vehicle:Dynamic):Int;

	/**
	 * Gets brake pressure of a wheel.

	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.

	 * Normal values around 1.0f when braking.
	 */
	@:native("GetVehicleWheelBrakePressure")
	static function getVehicleWheelBrakePressure(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * A getter for [MODIFY_VEHICLE_TOP_SPEED](#\_0x93A3996368C94158). Returns -1.0 if a modifier is not set.
	 */
	@:native("GetVehicleTopSpeedModifier")
	static function getVehicleTopSpeedModifier(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleOilLevel")
	static function getVehicleOilLevel(vehicle:Dynamic):Float;

	/**
	 * A getter for `ClipSize` in a weapon component.
	 */
	@:native("GetWeaponComponentClipSize")
	static function getWeaponComponentClipSize(componentHash:Int):Int;

	/**
	 * A getter for [SET_VEHICLE_XMAS_SNOW_FACTOR](#\_0x80CC4C9E).
	 */
	@:native("GetVehicleXmasSnowFactor")
	static function getVehicleXmasSnowFactor():Float;

	/**
	 * A getter for the accuracy spread of a weapon.
	 */
	@:native("GetWeaponAccuracySpread")
	static function getWeaponAccuracySpread(weaponHash:Int):Float;

	/**
	 * 
	 */
	@:native("GetWaterQuadCount")
	static function getWaterQuadCount():Int;

	/**
	 * A getter for [SET_VISUAL_SETTING_FLOAT](#\_0xD1D31681).
	 */
	@:native("GetVisualSettingFloat")
	static function getVisualSettingFloat(name:String):Float;

	/**
	 * 
	 */
	@:native("GetVehicleWheelRimColliderSize")
	static function getVehicleWheelRimColliderSize(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * 
	 */
	@:native("IsBigmapFull")
	static function isBigmapFull():Bool;

	/**
	 * A getter for `ReticuleHash` in a weapon scope component.
	 */
	@:native("GetWeaponComponentReticuleHash")
	static function getWeaponComponentReticuleHash(componentHash:Int):Int;

	/**
	 * Gets the flags of a wheel.

	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("GetVehicleWheelFlags")
	static function getVehicleWheelFlags(vehicle:Dynamic, wheelIndex:Int):Int;

	/**
	 * This native returns the index of a wave quad if the given point is inside its bounds.
	 */
	@:native("GetWaveQuadAtCoords")
	static function getWaveQuadAtCoords(x:Float, y:Float):Int;

	/**
	 * Gets if the specified `rawKeyIndex` is pressed, even if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014).
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("IsDisabledRawKeyPressed")
	static function isDisabledRawKeyPressed(rawKeyIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("GetWaterQuadIsInvisible")
	static function getWaterQuadIsInvisible(waterQuad:Int, isInvisible:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetWaterQuadAlpha")
	static function getWaterQuadAlpha(waterQuad:Int, a0:Dynamic, a1:Dynamic, a2:Dynamic, a3:Dynamic):Bool;

	/**
	 * Valid type definitions:
	 * 
	 * *   **0** Square
	 * *   **1** Right triangle where the 90 degree angle is at maxX, minY
	 * *   **2** Right triangle where the 90 degree angle is at minX, minY
	 * *   **3** Right triangle where the 90 degree angle is at minX, maxY
	 * *   **4** Right triangle where the 90 degree angle is at maxY, maxY
	 */
	@:native("GetWaterQuadType")
	static function getWaterQuadType(waterQuad:Int, waterType:Dynamic):Bool;

	/**
	 * Gets if the specified `rawKeyIndex` is up, even if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014).
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("IsDisabledRawKeyUp")
	static function isDisabledRawKeyUp(rawKeyIndex:Int):Bool;

	/**
	 * A getter for `CameraHash` in a weapon scope component.
	 */
	@:native("GetWeaponComponentCameraHash")
	static function getWeaponComponentCameraHash(componentHash:Int):Int;

	/**
	 * 
	 */
	@:native("IsVehicleAlarmSet")
	static function isVehicleAlarmSet(vehicle:Dynamic):Bool;

	/**
	 * Gets the vehicle indicator light state. 0 = off, 1 = left, 2 = right, 3 = both
	 */
	@:native("GetVehicleIndicatorLights")
	static function getVehicleIndicatorLights(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetWaveQuadBounds")
	static function getWaveQuadBounds(waveQuad:Int, minX:Dynamic, minY:Dynamic, maxX:Dynamic, maxY:Dynamic):Bool;

	/**
	 * A getter for `CWeaponDamageModifier` in a weapon component.
	 */
	@:native("GetWeaponComponentDamageModifier")
	static function getWeaponComponentDamageModifier(componentHash:Int):Float;

	/**
	 * Gets if the specified `rawKeyIndex` is pressed down, even if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014).
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("IsDisabledRawKeyDown")
	static function isDisabledRawKeyDown(rawKeyIndex:Int):Bool;

	/**
	 * Returns vehicle's wheels' size (size is the same for all the wheels, cannot get/set specific wheel of vehicle).

	 * Only works on non-default wheels (returns 0 in case of default wheels).
	 */
	@:native("GetVehicleWheelSize")
	static function getVehicleWheelSize(vehicle:Dynamic):Float;

	/**
	 * Checks if keyboard input is enabled during NUI focus using `SET_NUI_FOCUS_KEEP_INPUT`.
	 */
	@:native("IsNuiFocusKeepingInput")
	static function isNuiFocusKeepingInput():Bool;

	/**
	 * Returns true if the minimap is currently expanded. False if it's the normal minimap state.

	 * Use [`IsBigmapFull`](#\_0x66EE14B2) to check if the full map is currently revealed on the minimap.
	 */
	@:native("IsBigmapActive")
	static function isBigmapActive():Bool;

	/**
	 * 
	 */
	@:native("GetWaterQuadBounds")
	static function getWaterQuadBounds(waterQuad:Int, minX:Dynamic, minY:Dynamic, maxX:Dynamic, maxY:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("MumbleClearVoiceChannel")
	static function mumbleClearVoiceChannel():Dynamic;

	/**
	 * 
	 */
	@:native("GetWaveQuadCount")
	static function getWaveQuadCount():Int;

	/**
	 * A getter for the recoil shake amplitude of a weapon.
	 */
	@:native("GetWeaponRecoilShakeAmplitude")
	static function getWeaponRecoilShakeAmplitude(weaponHash:Int):Float;

	/**
	 * A getter for `CWeaponAccuracyModifier` in a weapon component.
	 */
	@:native("GetWeaponComponentAccuracyModifier")
	static function getWeaponComponentAccuracyModifier(componentHash:Int):Float;

	/**
	 * 
	 */
	@:native("GetVehicleWheelTireColliderSize")
	static function getVehicleWheelTireColliderSize(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * A getter for [\_SET_WEAPON_DAMAGE_MODIFIER](#\_0x4757F00BC6323CFE).
	 */
	@:native("GetWeaponDamageModifier")
	static function getWeaponDamageModifier(weaponHash:Int):Float;

	/**
	 * Gets if the specified `rawKeyIndex` is pressed on the keyboard.
	 * 
	 * This will not be triggered if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014)
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("IsRawKeyPressed")
	static function isRawKeyPressed(rawKeyIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("IsPedComponentVariationGen9Exclusive")
	static function isPedComponentVariationGen9Exclusive(ped:Dynamic, componentId:Int, drawableId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GetVehicleNumberOfWheels")
	static function getVehicleNumberOfWheels(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("IsVehicleNeedsToBeHotwired")
	static function isVehicleNeedsToBeHotwired(vehicle:Dynamic):Bool;

	/**
	 * A getter for [SET_WEAPON_ANIMATION_OVERRIDE](#\_0x1055AC3A667F09D9).
	 */
	@:native("GetWeaponAnimationOverride")
	static function getWeaponAnimationOverride(ped:Dynamic):Int;

	/**
	 * Getter for [SWITCH_TRAIN_TRACK](#\_0xFD813BB7DB977F20). Determines if ambient trains are able to spawn on this track.
	 */
	@:native("IsTrackSwitchedOff")
	static function isTrackSwitchedOff(track:Int):Dynamic;

	/**
	 * Converts a screen coordinate into its relative world coordinate.
	 */
	@:native("GetWorldCoordFromScreenCoord")
	static function getWorldCoordFromScreenCoord(screenX:Float, screenY:Float, worldVector:Dynamic, normalVector:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("IsVehicleWanted")
	static function isVehicleWanted(vehicle:Dynamic):Bool;

	/**
	 * Returns vehicle's wheels' width (width is the same for all the wheels, cannot get/set specific wheel of vehicle).

	 * Only works on non-default wheels (returns 0 in case of default wheels).
	 */
	@:native("GetVehicleWheelWidth")
	static function getVehicleWheelWidth(vehicle:Dynamic):Float;

	/**
	 * Gets if the specified `rawKeyIndex` was released, even if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014).
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("IsDisabledRawKeyReleased")
	static function isDisabledRawKeyReleased(rawKeyIndex:Int):Bool;

	/**
	 * Adds the specified channel to the target list for the specified Mumble voice target ID.
	 */
	@:native("MumbleAddVoiceTargetChannel")
	static function mumbleAddVoiceTargetChannel(targetId:Int, channel:Int):Dynamic;

	/**
	 * 
	 */
	@:native("IsVehiclePreviouslyOwnedByPlayer")
	static function isVehiclePreviouslyOwnedByPlayer(vehicle:Dynamic):Bool;

	/**
	 * An alternative to [IS_PED_COMPONENT_VARIATION_VALID](#\_0xE825F6B6CEA7671D) that uses local collection indexing instead of the global one.
	 * 
	 * The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
	 * 
	 * Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) natives.
	 */
	@:native("IsPedCollectionComponentVariationValid")
	static function isPedCollectionComponentVariationValid(ped:Dynamic, componentId:Int, collection:String, drawableId:Int, textureId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("IsGameEnhancedVersion")
	static function isGameEnhancedVersion():Bool;

	/**
	 * Adds the specified player to the target list for the specified Mumble voice target ID.
	 */
	@:native("MumbleAddVoiceTargetPlayer")
	static function mumbleAddVoiceTargetPlayer(targetId:Int, player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetWaveQuadDirection")
	static function getWaveQuadDirection(waveQuad:Int, directionX:Dynamic, directionY:Dynamic):Bool;

	/**
	 * An alternative to [IS_PED_COMPONENT_VARIATION_GEN9\_EXCLUSIVE](#\_0xC767B581) that uses local collection indexing instead of the global one.
	 * 
	 * The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
	 * 
	 * Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) natives.
	 */
	@:native("IsPedCollectionComponentVariationGen9Exclusive")
	static function isPedCollectionComponentVariationGen9Exclusive(ped:Dynamic, componentId:Int, collection:String, drawableId:Int):Dynamic;

	/**
	 * Sets the current input distance. The player will be able to talk to other players within this distance.
	 */
	@:native("MumbleSetAudioInputDistance")
	static function mumbleSetAudioInputDistance(distance:Float):Dynamic;

	/**
	 * Gets if the specified `rawKeyIndex` is up  on the keyboard.
	 * 
	 * This will not be triggered if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014)
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("IsRawKeyUp")
	static function isRawKeyUp(rawKeyIndex:Int):Bool;

	/**
	 * Returns whether or not a browser is created for a specified DUI browser object.
	 */
	@:native("IsDuiAvailable")
	static function isDuiAvailable(duiObject:Int):Bool;

	/**
	 * 
	 */
	@:native("MumbleSetVoiceChannel")
	static function mumbleSetVoiceChannel(channel:Int):Dynamic;

	/**
	 * Returns the current NUI focus state previously set with `SET_NUI_FOCUS`.
	 */
	@:native("IsNuiFocused")
	static function isNuiFocused():Bool;

	/**
	 * Clears channels from the target list for the specified Mumble voice target ID.
	 */
	@:native("MumbleClearVoiceTargetChannels")
	static function mumbleClearVoiceTargetChannels(targetId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("MumbleGetTalkerProximity")
	static function mumbleGetTalkerProximity():Float;

	/**
	 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
	 * 
	 * Returns whether an asynchronous streaming file registration completed.
	 */
	@:native("IsStreamingFileReady")
	static function isStreamingFileReady(registerAs:String):Bool;

	/**
	 * Clears players from the target list for the specified Mumble voice target ID.
	 */
	@:native("MumbleClearVoiceTargetPlayers")
	static function mumbleClearVoiceTargetPlayers(targetId:Int):Dynamic;

	/**
	 * Starts listening to the specified channel, when available.
	 */
	@:native("MumbleAddVoiceChannelListen")
	static function mumbleAddVoiceChannelListen(channel:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkDoesEntityExistWithNetworkId")
	static function networkDoesEntityExistWithNetworkId(netId:Int):Bool;

	/**
	 * Gets if the specified `rawKeyIndex` was just released on the keyboard.
	 * 
	 * This will not be triggered if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014)
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("IsRawKeyReleased")
	static function isRawKeyReleased(rawKeyIndex:Int):Bool;

	/**
	 * Removes the specified voice channel from the user's voice targets.
	 * 
	 * Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_CHANNEL](#\_0x4D386C9E)
	 */
	@:native("MumbleRemoveVoiceTargetChannel")
	static function mumbleRemoveVoiceTargetChannel(targetId:Int, channel:Int):Dynamic;

	/**
	 * Create a new light with specified type, flags, position, color, and intensity.
	 */
	@:native("PrepareLight")
	static function prepareLight(lightType:Int, flags:Int, x:Float, y:Float, z:Float, r:Int, g:Int, b:Int, intensity:Float):Dynamic;

	/**
	 * Getter for [BREAK_OFF_VEHICLE_WHEEL](?\_0xA274CADB).
	 */
	@:native("IsVehicleWheelBrokenOff")
	static function isVehicleWheelBrokenOff(vehicle:Dynamic, wheelIndex:Int):Bool;

	/**
	 * Gets if the specified `rawKeyIndex` is pressed down on the keyboard.
	 * 
	 * This will not be triggered if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014)
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("IsRawKeyDown")
	static function isRawKeyDown(rawKeyIndex:Int):Bool;

	/**
	 * Removes the specified player from the user's voice targets.
	 * 
	 * Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_PLAYER_BY_SERVER_ID](#\_0x25F2B65F)
	 */
	@:native("MumbleRemoveVoiceTargetPlayerByServerId")
	static function mumbleRemoveVoiceTargetPlayerByServerId(targetId:Int, serverId:Int):Dynamic;

	/**
	 * Getter for [SET_TRACK_ENABLED](#\_0x4B41E84C)
	 */
	@:native("IsTrackEnabled")
	static function isTrackEnabled(track:Int):Dynamic;

	/**
	 * This native will return true if the user succesfully connected to the voice server.

	 * If the user disabled the voice-chat setting it will return false.
	 */
	@:native("MumbleIsConnected")
	static function mumbleIsConnected():Bool;

	/**
	 * 
	 */
	@:native("MumbleIsPlayerTalking")
	static function mumbleIsPlayerTalking(player:Dynamic):Bool;

	/**
	 * Check whether specified channel exists on the Mumble server.
	 */
	@:native("MumbleDoesChannelExist")
	static function mumbleDoesChannelExist(channel:Int):Bool;

	/**
	 * Stops listening to the specified channel.
	 */
	@:native("MumbleRemoveVoiceChannelListen")
	static function mumbleRemoveVoiceChannelListen(channel:Int):Dynamic;

	/**
	 * Overrides the output volume for a particular player with the specified server id and player name on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.
	 */
	@:native("MumbleSetVolumeOverrideByServerId")
	static function mumbleSetVolumeOverrideByServerId(serverId:Int, volume:Float):Dynamic;

	/**
	 * 
	 */
	@:native("RegisterNuiCallback")
	static function registerNuiCallback(callbackType:String, callback:haxe.Constraints.Function):Dynamic;

	/**
	 * 
	 */
	@:native("IsVehicleInteriorLightOn")
	static function isVehicleInteriorLightOn(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("MumbleSetActive")
	static function mumbleSetActive(state:Bool):Dynamic;

	/**
	 * Adds the specified player to the target list for the specified Mumble voice target ID.
	 */
	@:native("MumbleAddVoiceTargetPlayerByServerId")
	static function mumbleAddVoiceTargetPlayerByServerId(targetId:Int, serverId:Int):Dynamic;

	/**
	 * Sets the current output distance. The player will be able to hear other players talking within this distance.
	 */
	@:native("MumbleSetAudioOutputDistance")
	static function mumbleSetAudioOutputDistance(distance:Float):Dynamic;

	/**
	 * Returns the mumble voice channel from a player's server id.
	 */
	@:native("MumbleGetVoiceChannelFromServerId")
	static function mumbleGetVoiceChannelFromServerId(serverId:Int):Int;

	/**
	 * 
	 */
	@:native("MumbleIsActive")
	static function mumbleIsActive():Bool;

	/**
	 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
	 * 
	 * Registers a set of archetypes with the game engine. These should match `CBaseArchetypeDef` class information from the game.
	 */
	@:native("RegisterArchetypes")
	static function registerArchetypes(factory:haxe.Constraints.Function):Dynamic;

	/**
	 * 
	 */
	@:native("MumbleSetTalkerProximity")
	static function mumbleSetTalkerProximity(value:Float):Dynamic;

	/**
	 * Define the xml in a resources fxmanifest, under the file(s) section.
	 */
	@:native("LoadWaterFromPath")
	static function loadWaterFromPath(resourceName:String, fileName:String):Bool;

	/**
	 * Removes the specified player from the user's voice targets.
	 * 
	 * Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_PLAYER](#\_0x32C5355A)
	 */
	@:native("MumbleRemoveVoiceTargetPlayer")
	static function mumbleRemoveVoiceTargetPlayer(targetId:Int, player:Dynamic):Dynamic;

	/**
	 * Overrides the output volume for a particular player on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.
	 * 
	 * Set to -1.0 to reset the Volume override.
	 */
	@:native("MumbleSetVolumeOverride")
	static function mumbleSetVolumeOverride(player:Dynamic, volume:Float):Dynamic;

	/**
	 * Changes the Mumble server address to connect to, and reconnects to the new address.
	 * 
	 * Setting the address to an empty string and the port to -1 will reset to the built in FXServer Mumble Implementation.
	 */
	@:native("MumbleSetServerAddress")
	static function mumbleSetServerAddress(address:String, port:Int):Dynamic;

	/**
	 * Sets whether peds can stand on top of *all* vehicles without falling off.
	 * 
	 * Note this flag is not replicated automatically, you will have to manually do so.
	 */
	@:native("OverridePedsCanStandOnTopFlag")
	static function overridePedsCanStandOnTopFlag(flag:Bool):Dynamic;

	/**
	 * Clears the target list for the specified Mumble voice target ID.
	 */
	@:native("MumbleClearVoiceTarget")
	static function mumbleClearVoiceTarget(targetId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RegisterNuiCallbackType")
	static function registerNuiCallbackType(callbackType:String):Dynamic;

	/**
	 * Setting the state to true and a value between 0 and 2 will cause pedestrian vehicles to react accordingly to sirens.
	 * 
	 * ```cpp
	 * enum Reactions {

	 *     Left = 0,

	 *     Right = 1,

	 *     Stop = 2

	 * }
	 * ```
	 */
	@:native("OverrideReactionToVehicleSiren")
	static function overrideReactionToVehicleSiren(state:Bool, reaction:Int):Dynamic;

	/**
	 * Allows the bypassing of default game behavior that prevents the use of [SET_PED_DRIVE_BY_CLIPSET_OVERRIDE](#\_0xED34AB6C5CB36520) in certain scenarios to avoid clipping issues (e.g., when there is more than one Ped in a vehicle).
	 * 
	 * Note: This flag and the overridden clipset are not replicated values and require synchronization through user scripts. Additionally, current game behavior also restricts applying this clipset locally when in first-person mode and will require a temporary workaround.
	 */
	@:native("OverridePedsUseDefaultDriveByClipset")
	static function overridePedsUseDefaultDriveByClipset(flag:Bool):Dynamic;

	/**
	 * Use this native to disable noise suppression and high pass filters.
	 * 
	 * The possible intents for this are as follows (backticks are used to represent hashes):
	 * 
	 * | Index | Description |

	 * |-|-|

	 * | \`speech\` | Default intent |

	 * | \`music\` | Disable noise suppression and high pass filter |
	 */
	@:native("MumbleSetAudioInputIntent")
	static function mumbleSetAudioInputIntent(intentHash:Int):Dynamic;

	/**
	 * Sets the audio submix ID for a specified player using Mumble 'Native Audio' functionality.
	 */
	@:native("MumbleSetSubmixForServerId")
	static function mumbleSetSubmixForServerId(serverId:Int, submixId:Int):Dynamic;

	/**
	 * Replaces the `popgroups` (CPopGroupList) meta file with the file in the specified path.
	 */
	@:native("OverridePopGroups")
	static function overridePopGroups(path:String):Dynamic;

	/**
	 * Sets the current Mumble voice target ID to broadcast voice to.
	 */
	@:native("MumbleSetVoiceTarget")
	static function mumbleSetVoiceTarget(targetId:Int):Dynamic;

	/**
	 * Registers a key mapping for the current resource.
	 * 
	 * See the related [cookbook post](https://cookbook.fivem.net/2020/01/06/using-the-new-console-key-bindings/) for more information.
	 * 
	 * Below you can find some examples on how to create these keybindings as well as the alternate keybinding syntax, which is preceded by `~!` to indicate that it's an alternate key.
	 */
	@:native("RegisterKeyMapping")
	static function registerKeyMapping(commandString:String, description:String, defaultMapper:String, defaultParameter:String):Dynamic;

	/**
	 * 
	 */
	@:native("RegisterRawNuiCallback")
	static function registerRawNuiCallback(callbackType:String, callback:haxe.Constraints.Function):Dynamic;

	/**
	 * Toggles a check that prevents attaching (networked) entities to remotely owned peds. This is disabled by default.
	 */
	@:native("OnesyncEnableRemoteAttachmentSanitization")
	static function onesyncEnableRemoteAttachmentSanitization(enable:Bool):Dynamic;

	/**
	 * Removes health config.
	 */
	@:native("RemoveHealthConfig")
	static function removeHealthConfig(configName:String):Dynamic;

	/**
	 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
	 * 
	 * Registers a KVP value as an asset with the GTA streaming module system. This function currently won't work.
	 */
	@:native("RegisterStreamingFileFromKvs")
	static function registerStreamingFileFromKvs(kvsKey:String):Dynamic;

	/**
	 * Injects a 'mouse move' event for a DUI object. Coordinates are in browser space.
	 */
	@:native("SendDuiMouseMove")
	static function sendDuiMouseMove(duiObject:Int, x:Int, y:Int):Dynamic;

	/**
	 * Overrides whether or not peds can stand on top of the specified vehicle.
	 * 
	 * Note this flag is not replicated automatically, you will have to manually do so.
	 */
	@:native("OverrideVehiclePedsCanStandOnTopFlag")
	static function overrideVehiclePedsCanStandOnTopFlag(vehicle:Dynamic, can:Bool):Dynamic;

	/**
	 * Registers a specified .gfx file as GFx font library.

	 * The .gfx file has to be registered with the streamer already.
	 */
	@:native("RegisterFontFile")
	static function registerFontFile(fileName:String):Dynamic;

	/**
	 * Remaps the keymap bound to `keymapName` to `newRawKeyIndex`
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("RemapRawKeymap")
	static function remapRawKeymap(keymapName:String, newRawKeyIndex:Int):Dynamic;

	/**
	 * Injects a 'mouse wheel' event for a DUI object.
	 */
	@:native("SendDuiMouseWheel")
	static function sendDuiMouseWheel(duiObject:Int, deltaY:Int, deltaX:Int):Dynamic;

	/**
	 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
	 * 
	 * Registers a dynamic streaming asset from the server with the GTA streaming module system.
	 */
	@:native("RegisterStreamingFileFromCache")
	static function registerStreamingFileFromCache(resourceName:String, fileName:String, cacheString:String):Dynamic;

	/**
	 * Resets values from the zoom level data by index to defaults from mapzoomdata.meta.
	 */
	@:native("ResetMapZoomDataLevel")
	static function resetMapZoomDataLevel(index:Int):Dynamic;

	/**
	 * Removes the specified track junction.
	 */
	@:native("RemoveTrackJunction")
	static function removeTrackJunction(junctionIndex:Int):Dynamic;

	/**
	 * Resets parameters which is used by the game for checking is ped needs to fly through windscreen after a crash to default values.
	 */
	@:native("ResetFlyThroughWindscreenParams")
	static function resetFlyThroughWindscreenParams():Dynamic;

	/**
	 * Registers a specified font name for use with text draw commands.
	 */
	@:native("RegisterFontId")
	static function registerFontId(fontName:String):Int;

	/**
	 * Registers a track junction that when enabled will cause a train on the defined trackIndex, node and direction to change its current track index and begin traveling on the new node
	 */
	@:native("RegisterTrackJunction")
	static function registerTrackJunction(trackIndex:Int, trackNode:Int, newIndex:Int, newNode:Int, direction:Dynamic):Int;

	/**
	 * Injects a 'mouse down' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
	 */
	@:native("SendDuiMouseDown")
	static function sendDuiMouseDown(duiObject:Int, button:String):Dynamic;

	/**
	 * Assigns a RadioFX effect to a submix effect slot.
	 * 
	 * The parameter values for this effect are as follows (backticks are used to represent hashes):
	 * 
	 * | Index | Type | Description |

	 * |-|-|-|

	 * | \`enabled\` | int | Enables or disables RadioFX on this DSP. |

	 * | \`default\` | int | Sets default parameters for the RadioFX DSP and enables it. |

	 * | \`freq_low\` | float |  |

	 * | \`freq_hi\` | float |  |

	 * | \`fudge\` | float |  |

	 * | \`rm_mod_freq\` | float |  |

	 * | \`rm_mix\` | float |  |

	 * | \`o_freq_lo\` | float |  |

	 * | \`o_freq_hi\` | float |  |
	 */
	@:native("SetAudioSubmixEffectRadioFx")
	static function setAudioSubmixEffectRadioFx(submixId:Int, effectSlot:Int):Dynamic;

	/**
	 * Registers a custom rope data with the game. For guidance on what these values should be use common:/data/ropedata.xml as a reference.

	 * Returns a rope type which can be passed into [ADD_ROPE](#\_0xE832D760399EB220) to use a custom rope design.

	 * Once a rope data is registered it can be used indefinitely and you should take caution not too register too many as to exceed the games limit.
	 */
	@:native("RegisterRopeData")
	static function registerRopeData(numSections:Int, radius:Float, diffuseTextureName:String, normalMapName:String, distanceMappingScale:Float, uvScaleX:Float, uvScaleY:Float, specularFresnel:Float, specularFalloff:Float, specularIntensity:Float, bumpiness:Float, color:Int):Int;

	/**
	 * 
	 */
	@:native("RemoveTimecycleModifierVar")
	static function removeTimecycleModifierVar(modifierName:String, varName:String):Dynamic;

	/**
	 * Removes a dry volume from the game session.

	 * See CREATE_DRY_VOLUME for more info
	 */
	@:native("RemoveDryVolume")
	static function removeDryVolume(handle:Int):Dynamic;

	/**
	 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
	 * 
	 * Registers a file from an URL as a streaming asset in the GTA streaming subsystem. This will asynchronously register the asset, and caching is done based on the URL itself - cache headers are ignored.
	 * 
	 * Use `IS_STREAMING_FILE_READY` to check if the asset has been registered successfully.
	 */
	@:native("RegisterStreamingFileFromUrl")
	static function registerStreamingFileFromUrl(registerAs:String, url:String):Dynamic;

	/**
	 * Requests a resource file set with the specified name to be downloaded and mounted on top of the current resource.
	 * 
	 * Resource file sets are specified in `fxmanifest.lua` with the following syntax:
	 * 
	 * ```lua
	 * file_set 'addon_ui' {

	 *     'ui/addon/index.html',

	 *     'ui/addon/ **.js',

	 * }
	 * ```
	 * 
	 * This command will trigger a script error if the request failed.
	 */
	@:native("RequestResourceFileSet")
	static function requestResourceFileSet(setName:String):Bool;

	/**
	 * ```cpp
	 * enum ClientConfigFlag

	 * {

	 *     WeaponsNoAutoReload = 0,

	 * 	UIVisibleWhenDead = 1,

	 * 	DisableDeathAudioScene = 2,

	 * 	DisableRemoteAttachments = 3

	 * }
	 * ```
	 * 
	 * Sets the value of a client configuration flag.

	 * This native allows enabling or disabling specific one-time client-side features.
	 */
	@:native("SetClientConfigBool")
	static function setClientConfigBool(flagIndex:Int, enabled:Bool):Dynamic;

	/**
	 * Restores an overridden ped model personality type to the default value.
	 */
	@:native("ResetPedModelPersonality")
	static function resetPedModelPersonality(modelHash:Int):Dynamic;

	/**
	 * Sets the volumes for the sound channels in a submix effect.

	 * Values can be between 0.0 and 1.0.

	 * Channel 5 and channel 6 are not used in voice chat but are believed to be center and LFE channels.

	 * Output slot starts at 0 for the first ADD_AUDIO_SUBMIX_OUTPUT call then incremented by 1 on each subsequent call.
	 */
	@:native("SetAudioSubmixOutputVolumes")
	static function setAudioSubmixOutputVolumes(submixId:Int, outputSlot:Int, frontLeftVolume:Float, frontRightVolume:Float, rearLeftVolume:Float, rearRightVolume:Float, channel5Volume:Float, channel6Volume:Float):Dynamic;

	/**
	 * Registers a keymap that will be triggered whenever `rawKeyIndex` is pressed or released.
	 * 
	 * `onKeyUp` and `onKeyDown` will not provide any arguments.
	 * 
	 * ```ts
	 * function onStateChange();
	 * ```
	 */
	@:native("RegisterRawKeymap")
	static function registerRawKeymap(keymapName:String, onKeyDown:haxe.Constraints.Function, onKeyUp:haxe.Constraints.Function, rawKeyIndex:Int, canBeDisabled:Bool):Dynamic;

	/**
	 * A setter for [GET_FALL_DAMAGE_LAND_ON_FOOT_MULTIPLIER](#\_0x3C8A1C92).
	 */
	@:native("SetFallDamageLandOnFootMultiplier")
	static function setFallDamageLandOnFootMultiplier(multiplier:Float):Dynamic;

	/**
	 * Experimental natives, please do not use in a live environment.
	 */
	@:native("RemoveReplaceTexture")
	static function removeReplaceTexture(origTxd:String, origTxn:String):Dynamic;

	/**
	 * 
	 */
	@:native("SetCalmingQuadBounds")
	static function setCalmingQuadBounds(waterQuad:Int, minX:Int, minY:Int, maxX:Int, maxY:Int):Bool;

	/**
	 * Allows Weapon-Flashlight beams to stay visible while moving. Normally it only stays on while aiming.
	 */
	@:native("SetFlashLightKeepOnWhileMoving")
	static function setFlashLightKeepOnWhileMoving(state:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetCursorLocation")
	static function setCursorLocation(x:Float, y:Float):Bool;

	/**
	 * Resets the water to the games default water.xml.
	 */
	@:native("ResetWater")
	static function resetWater():Dynamic;

	/**
	 * Removes the specified texture and remove it from the ped.

	 * Unlike `0x6BEFAA907B076859` which only marks the texture as "can be reused" (and keeps it until will be reused), this function deletes it right away. Can fix some sync issues. `DOES_TEXTURE_EXIST` can be use to wait until fully unloaded by game
	 * 
	 * ```lua
	 * RemoveTexture(textureId)

	 * while DoesTextureExist(textureId) do 

	 *     Wait(0)

	 * end
	 * ```
	 */
	@:native("RemoveTexture")
	static function removeTexture(textureId:Int):Dynamic;

	/**
	 * Sets an integer parameter for a submix effect.
	 */
	@:native("SetAudioSubmixEffectParamInt")
	static function setAudioSubmixEffectParamInt(submixId:Int, effectSlot:Int, paramIndex:Int, paramValue:Int):Dynamic;

	/**
	 * Sets a clickable button to be displayed in a player's Discord rich presence.
	 */
	@:native("SetDiscordRichPresenceAction")
	static function setDiscordRichPresenceAction(index:Int, label:String, url:String):Dynamic;

	/**
	 * Resets whether or not peds can stand on top of the specified vehicle.
	 * 
	 * Note this flag is not replicated automatically, you will have to manually do so.
	 */
	@:native("ResetVehiclePedsCanStandOnTopFlag")
	static function resetVehiclePedsCanStandOnTopFlag(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveTimecycleModifier")
	static function removeTimecycleModifier(modifierName:String):Dynamic;

	/**
	 * Sets the default number plate text pattern for vehicles seen on the local client with the specified plate index as their *default* index (`plateProbabilities` from carvariations).
	 * 
	 * For consistency, this should be used with the same value on all clients, since vehicles *without* custom text will use a seeded random number generator with this pattern to determine the default plate text.
	 * 
	 * The default value is `11AAA111`, and using this or a NULL string will revert to the default game RNG.
	 * 
	 * ### Pattern string format
	 * 
	 * *   `1` will lead to a random number from 0-9.
	 * *   `A` will lead to a random letter from A-Z.
	 * *   `.` will lead to a random letter *or* number, with 50% probability of being either.
	 * *   `^1` will lead to a literal `1` being emitted.
	 * *   `^A` will lead to a literal `A` being emitted.
	 * *   Any other character will lead to said character being emitted.
	 * *   A string shorter than 8 characters will be padded on the right.
	 */
	@:native("SetDefaultVehicleNumberPlateTextPattern")
	static function setDefaultVehicleNumberPlateTextPattern(plateIndex:Int, pattern:String):Dynamic;

	/**
	 * Injects a 'mouse up' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
	 */
	@:native("SendDuiMouseUp")
	static function sendDuiMouseUp(duiObject:Int, button:String):Dynamic;

	/**
	 * Sends a message to the `loadingScreen` NUI frame, which contains the HTML page referenced in `loadscreen` resources.
	 */
	@:native("SendLoadingScreenMessage")
	static function sendLoadingScreenMessage(jsonString:String):Bool;

	/**
	 * Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
	 */
	@:native("SetHandlingInt")
	static function setHandlingInt(vehicle:String, class_:String, fieldName:String, value:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetCalmingQuadDampening")
	static function setCalmingQuadDampening(calmingQuad:Int, dampening:Float):Bool;

	/**
	 * Adds a cooldown between instances of moving and then aiming.

	 * Can be optionally used to hinder 'speedboosting'

	 * To turn off, set value to 0
	 */
	@:native("SetAimCooldown")
	static function setAimCooldown(value:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SendNuiMessage")
	static function sendNuiMessage(jsonString:String):Bool;

	/**
	 * Sets the on-screen drawing origin for draw-functions in world coordinates.
	 * 
	 * The effect can be reset by calling [`CLEAR_DRAW_ORIGIN`](#\_0xDD76B263) and is limited to 32 different origins each frame.
	 */
	@:native("SetDrawOrigin")
	static function setDrawOrigin(x:Float, y:Float, z:Float, is2d:Bool):Dynamic;

	/**
	 * This native sets the hover text of the image asset for the discord rich presence implementation.
	 */
	@:native("SetDiscordRichPresenceAssetText")
	static function setDiscordRichPresenceAssetText(text:String):Dynamic;

	/**
	 * Sets default hurt health threshold value for specific health config.
	 */
	@:native("SetHealthConfigHurtThreshold")
	static function setHealthConfigHurtThreshold(configName:String, newValue:Float):Dynamic;

	/**
	 * This native sets the small image asset for the discord rich presence implementation.
	 */
	@:native("SetDiscordRichPresenceAssetSmall")
	static function setDiscordRichPresenceAssetSmall(assetName:String):Dynamic;

	/**
	 * This completely disables rendering of fog volumes (vfxfogvolumeinfo.ymt).
	 */
	@:native("SetFogVolumeRenderDisabled")
	static function setFogVolumeRenderDisabled(state:Bool):Dynamic;

	/**
	 * Sets default armor value for specific health config.
	 */
	@:native("SetHealthConfigDefaultArmor")
	static function setHealthConfigDefaultArmor(configName:String, newValue:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetInteriorPortalEntityFlag")
	static function setInteriorPortalEntityFlag(interiorId:Int, portalIndex:Int, entityIndex:Int, flag:Int):Dynamic;

	/**
	 * Sends a message to the specific DUI root page. This is similar to SEND_NUI_MESSAGE.
	 */
	@:native("SendDuiMessage")
	static function sendDuiMessage(duiObject:Int, jsonString:String):Dynamic;

	/**
	 * 
	 */
	@:native("SetInteriorPortalFlag")
	static function setInteriorPortalFlag(interiorId:Int, portalIndex:Int, flag:Int):Dynamic;

	/**
	 * A setter for [GET_FALL_DAMAGE_MULTIPLIER](#\_0x2D6A0A83).
	 */
	@:native("SetFallDamageMultiplier")
	static function setFallDamageMultiplier(multiplier:Float):Dynamic;

	/**
	 * This native sets the hover text of the small image asset for the discord rich presence implementation.
	 */
	@:native("SetDiscordRichPresenceAssetSmallText")
	static function setDiscordRichPresenceAssetSmallText(text:String):Dynamic;

	/**
	 * Sets some in-game parameters which is used for checks is ped needs to fly through windscreen after a crash.
	 */
	@:native("SetFlyThroughWindscreenParams")
	static function setFlyThroughWindscreenParams(vehMinSpeed:Float, unkMinSpeed:Float, unkModifier:Float, minDamage:Float):Bool;

	/**
	 * Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.

	 * Example: `SetHandlingField('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
	 */
	@:native("SetHandlingField")
	static function setHandlingField(vehicle:String, class_:String, fieldName:String, value:Dynamic):Dynamic;

	/**
	 * Sets default dying health threshold value for specific health config.
	 */
	@:native("SetHealthConfigDyingThreshold")
	static function setHealthConfigDyingThreshold(configName:String, newValue:Float):Dynamic;

	/**
	 * Sets default melee cardinal fatal attack value for specific health config.
	 */
	@:native("SetHealthConfigMeleeFatalAttack")
	static function setHealthConfigMeleeFatalAttack(configName:String, newValue:Bool):Dynamic;

	/**
	 * Sets a floating-point parameter for a submix effect.
	 */
	@:native("SetAudioSubmixEffectParamFloat")
	static function setAudioSubmixEffectParamFloat(submixId:Int, effectSlot:Int, paramIndex:Int, paramValue:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetBackfaceculling")
	static function setBackfaceculling(toggle:Bool):Dynamic;

	/**
	 * Toggles the visibility of resource names in the FiveM key mapping page.
	 */
	@:native("SetKeyMappingHideResources")
	static function setKeyMappingHideResources(hide:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SetGlobalPassengerMassMultiplier")
	static function setGlobalPassengerMassMultiplier(massMul:Float):Dynamic;

	/**
	 * Turns on and off fuel consumption in all vehicles operated by a player. NPC operated vehicles will not consume fuel to avoid traffic disruptions.
	 * 
	 * The default Gta5 behaviour is fuel consumption turned off.
	 */
	@:native("SetFuelConsumptionState")
	static function setFuelConsumptionState(state:Bool):Dynamic;

	/**
	 * This native sets the image asset for the discord rich presence implementation.
	 */
	@:native("SetDiscordRichPresenceAsset")
	static function setDiscordRichPresenceAsset(assetName:String):Dynamic;

	/**
	 * Adjust the falloff parameter for an existing light, affecting how light intensity decreases over distance.
	 */
	@:native("SetLightFalloff")
	static function setLightFalloff(falloff:Float):Dynamic;

	/**
	 * This native sets the app id for the discord rich presence implementation.
	 */
	@:native("SetDiscordAppId")
	static function setDiscordAppId(appId:String):Dynamic;

	/**
	 * Navigates the specified DUI browser to a different URL.
	 */
	@:native("SetDuiUrl")
	static function setDuiUrl(duiObject:Int, url:String):Dynamic;

	/**
	 * Sets whether or not ownership checks should be performed while trying to stow a carriable on a hunting wagon.
	 */
	@:native("SetIgnoreVehicleOwnershipForStowing")
	static function setIgnoreVehicleOwnershipForStowing(ignore:Bool):Dynamic;

	/**
	 * Sets default injured health threshold value for specific health config.
	 */
	@:native("SetHealthConfigInjuredThreshold")
	static function setHealthConfigInjuredThreshold(configName:String, newValue:Float):Dynamic;

	/**
	 * Set the color of a specified light.
	 */
	@:native("SetLightColor")
	static function setLightColor(r:Int, g:Int, b:Int):Dynamic;

	/**
	 * Allows StaticEmitter's without a linked entity to make use of environment features like occlusion and reverb even if they are located higher than 20.0 units above any static collision inside interiors.
	 * 
	 * This native allows you to extend the probe range up to 150.0 units.
	 */
	@:native("SetEmitterProbeLength")
	static function setEmitterProbeLength(probeLength:Float):Dynamic;

	/**
	 * A setter for [GET_KILL_FALL_HEIGHT](#\_0x884C8B5A).
	 */
	@:native("SetKillFallHeight")
	static function setKillFallHeight(height:Float):Dynamic;

	/**
	 * Set the clip rectangle for a created light.
	 */
	@:native("SetLightClipRect")
	static function setLightClipRect(x:Int, y:Int, width:Int, height:Int):Dynamic;

	/**
	 * Set the plane parameters for a light.
	 */
	@:native("SetLightPlane")
	static function setLightPlane(x:Float, y:Float, z:Float, w:Float):Dynamic;

	/**
	 * Overwrite the games default CPortalTracker interior detection range.

	 * This fixes potentially unwanted behaviour in the base game and allows you to build custom interiors with larger ceiling heights without running into graphical glitches.
	 * 
	 * By default CPortalTracker will probe 4 units downward trying to reach collisions that are part of the interior the entity is in.

	 * If no collision can be found 16 units are used in some circumstances.
	 * 
	 * There are 30+ hard coded special cases, only some of them exposed via script (for example `ENABLE_STADIUM_PROBES_THIS_FRAME`).
	 * 
	 * This native allows you to extend the probe range up to 150 units which is the same value the game uses for the `xs_arena_interior`
	 */
	@:native("SetInteriorProbeLength")
	static function setInteriorProbeLength(probeLength:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetInteriorPortalRoomTo")
	static function setInteriorPortalRoomTo(interiorId:Int, portalIndex:Int, roomTo:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetInteriorRoomTimecycle")
	static function setInteriorRoomTimecycle(interiorId:Int, roomIndex:Int, timecycleHash:Int):Dynamic;

	/**
	 * Sets default invincible value for specific health config.
	 */
	@:native("SetHealthConfigInvincible")
	static function setHealthConfigInvincible(configName:String, newValue:Bool):Dynamic;

	/**
	 * Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.

	 * Example: `SetHandlingFloat('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
	 */
	@:native("SetHandlingFloat")
	static function setHandlingFloat(vehicle:String, class_:String, fieldName:String, value:Float):Dynamic;

	/**
	 * Set the forward and tangent direction vectors for an existing light, allowing control over its orientation (useful for spotlights and directional lights).
	 */
	@:native("SetLightDirection")
	static function setLightDirection(xDir:Float, yDir:Float, zDir:Float, xTanDir:Float, yTanDir:Float, zTanDir:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetInteriorPortalRoomFrom")
	static function setInteriorPortalRoomFrom(interiorId:Int, portalIndex:Int, roomFrom:Int):Dynamic;

	/**
	 * Set volumetric light properties for an existing light, enabling custom volumetric effects such as fog-like glow.
	 */
	@:native("SetLightVolumeDetails")
	static function setLightVolumeDetails(volIntensity:Float, volSizeScale:Float, r:Float, g:Float, b:Float, i:Float, outerExponent:Float):Dynamic;

	/**
	 * Set the capsule size of a specified light.
	 */
	@:native("SetLightCapsuleSize")
	static function setLightCapsuleSize(size:Float):Dynamic;

	/**
	 * Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.

	 * Example: `SetHandlingVector('AIRTUG', 'CHandlingData', 'vecCentreOfMassOffset', vector3(0.0, 0.0, -5.0))`
	 */
	@:native("SetHandlingVector")
	static function setHandlingVector(vehicle:String, class_:String, fieldName:String, value:Dynamic):Dynamic;

	/**
	 * Sets default dog takedown threshold value for specific health config.
	 */
	@:native("SetHealthConfigDogTakedownThreshold")
	static function setHealthConfigDogTakedownThreshold(configName:String, newValue:Float):Dynamic;

	/**
	 * Set ambient occlusion (AO) parameters for a specified light.
	 */
	@:native("SetLightAo")
	static function setLightAo(intensity:Float, radius:Float, bias:Float, intensity2:Float):Dynamic;

	/**
	 * Set the shadow details for a created light.
	 */
	@:native("SetLightShadowDetails")
	static function setLightShadowDetails(shadowFlags:Int, shadowDistance:Float, shadowFade:Float, shadowDepthBiasScale:Float):Dynamic;

	/**
	 * Overrides the minimap component data (from `common:/data/ui/frontend.xml`) for a specified component.
	 */
	@:native("SetMinimapComponentPosition")
	static function setMinimapComponentPosition(name:String, alignX:String, alignY:String, posX:Float, posY:Float, sizeX:Float, sizeY:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetInteriorPortalCornerPosition")
	static function setInteriorPortalCornerPosition(interiorId:Int, portalIndex:Int, cornerIndex:Int, posX:Float, posY:Float, posZ:Float):Dynamic;

	/**
	 * Sets default writhe from bullet threshold value for specific health config.
	 */
	@:native("SetHealthConfigWritheFromBulletThreshold")
	static function setHealthConfigWritheFromBulletThreshold(configName:String, newValue:Float):Dynamic;

	/**
	 * Sets default health value for specific health config.
	 */
	@:native("SetHealthConfigDefaultHealth")
	static function setHealthConfigDefaultHealth(configName:String, newValue:Float):Dynamic;

	/**
	 * Set the alpha transparency of the light.
	 */
	@:native("SetLightAlpha")
	static function setLightAlpha(alpha:Float):Dynamic;

	/**
	 * Set the radius of a created light.
	 */
	@:native("SetLightRadius")
	static function setLightRadius(radius:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetInteriorRoomExtents")
	static function setInteriorRoomExtents(interiorId:Int, roomIndex:Int, bbMinX:Float, bbMinY:Float, bbMinZ:Float, bbMaxX:Float, bbMaxY:Float, bbMaxZ:Float):Dynamic;

	/**
	 * Set or update specific flags for a created light to control its behavior or properties.
	 */
	@:native("SetLightFlags")
	static function setLightFlags(flags:Int):Dynamic;

	/**
	 * Sets values to the zoom level data by index.
	 */
	@:native("SetMapZoomDataLevel")
	static function setMapZoomDataLevel(index:Int, zoomScale:Float, zoomSpeed:Float, scrollSpeed:Float, tilesX:Float, tilesY:Float):Dynamic;

	/**
	 * Sets the type for the minimap blip clipping object to be either rectangular or rounded.
	 */
	@:native("SetMinimapClipType")
	static function setMinimapClipType(type:Int):Dynamic;

	/**
	 * Set the inner and outer cone angles of a specified light.
	 */
	@:native("SetLightCone")
	static function setLightCone(innerConeAngle:Float, outerConeAngle:Float):Dynamic;

	/**
	 * Possible Types:
	 * 
	 * ```
	 * 0 = Off,

	 * 1 = Regular,

	 * 2 = Expanded,

	 * 3 = Simple,
	 * ```
	 */
	@:native("SetMinimapType")
	static function setMinimapType(type:Int):Dynamic;

	/**
	 * Set the intensity of an existing light.
	 */
	@:native("SetLightIntensity")
	static function setLightIntensity(intensity:Float):Dynamic;

	/**
	 * Overrides a ped model personality type.
	 */
	@:native("SetPedModelPersonality")
	static function setPedModelPersonality(modelHash:Int, personalityHash:Int):Dynamic;

	/**
	 * Sets fuel consumption rate multiplier for all vehicles operated by a player. This is a way to slow down or speed up fuel consumption for all vehicles at a time. If 0 - it practically means that fuel will not be consumed. By default is set to 1.
	 * 
	 * When the multiplier is set to 1 a default 65 litre gas tank car with average fuel consumption can stay idle for ~16.67 hours or run with max RPM for ~2.5 hours.
	 * 
	 * To customize fuel consumption per vehicle / vehicle class use [`SET_HANDLING_FLOAT`](#\_0x90DD01C)/[`SET_VEHICLE_HANDLING_FLOAT`](#\_0x488C86D2) natives with `fieldName` equal to `fPetrolConsumptionRate`. By default it is set to 0.5 for all vehicles.
	 */
	@:native("SetFuelConsumptionRateMultiplier")
	static function setFuelConsumptionRateMultiplier(multiplier:Float):Dynamic;

	/**
	 * Set the z-index of the NUI resource.
	 */
	@:native("SetNuiZindex")
	static function setNuiZindex(zIndex:Int):Dynamic;

	/**
	 * An alternative to [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F) that uses local collection indexing instead of the global one.
	 * 
	 * The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
	 * 
	 * Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_PROP](#\_0x8ED0C17) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_PROP](#\_0xFBDB885F) natives.
	 */
	@:native("SetPedCollectionPropIndex")
	static function setPedCollectionPropIndex(ped:Dynamic, anchorPoint:Int, collection:String, propIndex:Int, textureId:Int, attach:Bool):Dynamic;

	/**
	 * A setter for [GET_PLAYER_KILL_FALL_HEIGHT](#\_0x13BC2C63).
	 */
	@:native("SetPlayerKillFallHeight")
	static function setPlayerKillFallHeight(height:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetNetworkWalkMode")
	static function setNetworkWalkMode(enabled:Dynamic):Dynamic;

	/**
	 * An alternative to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80) that uses local collection indexing instead of the global one.
	 * 
	 * The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
	 * 
	 * Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) natives.
	 */
	@:native("SetPedCollectionComponentVariation")
	static function setPedCollectionComponentVariation(ped:Dynamic, componentId:Int, collection:String, drawableId:Int, textureId:Int, paletteId:Int):Dynamic;

	/**
	 * Set the fade distance for volumetric lightingn.
	 */
	@:native("SetLightVolumetricFadeDistance")
	static function setLightVolumetricFadeDistance(volumetricFadeDistance:Int):Dynamic;

	/**
	 * Toggles whether the usage of [ADD_ROPE](#\_0xE832D760399EB220) should create an underlying CNetworkRopeWorldStateData. By default this is set to false.
	 */
	@:native("SetRopesCreateNetworkWorldState")
	static function setRopesCreateNetworkWorldState(shouldCreate:Bool):Dynamic;

	/**
	 * Set the fade distance.
	 */
	@:native("SetLightFadeDistance")
	static function setLightFadeDistance(fadeDistance:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetRuntimeTextureArgbData")
	static function setRuntimeTextureArgbData(tex:Int, buffer:String, length:Int):Bool;

	/**
	 * 
	 */
	@:native("SetSnakeoilForEntry")
	static function setSnakeoilForEntry(name:String, path:String, data:String):Dynamic;

	/**
	 * Sets the maximum distance at which all tags will be visible and which beyond will not be displayed. Distance is measured from the camera position.
	 */
	@:native("SetMpGamerTagsVisibleDistance")
	static function setMpGamerTagsVisibleDistance(distance:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetPlayerStamina")
	static function setPlayerStamina(playerId:Dynamic, stamina:Float):Dynamic;

	/**
	 * Sets default fatigued health threshold value for specific health config.
	 */
	@:native("SetHealthConfigFatiguedThreshold")
	static function setHealthConfigFatiguedThreshold(configName:String, newValue:Float):Dynamic;

	/**
	 * Sets the max speed for the train tracks. Used by ambient trains and for station calculations
	 */
	@:native("SetTrackMaxSpeed")
	static function setTrackMaxSpeed(track:Int, newSpeed:Int):Dynamic;

	/**
	 * Set additional configuration flags for an existing light
	 */
	@:native("SetLightExtraflags")
	static function setLightExtraflags(extraFlags:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleCurrentGear")
	static function setVehicleCurrentGear(vehicle:Dynamic, gear:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleEngineTemperature")
	static function setVehicleEngineTemperature(vehicle:Dynamic, temperature:Float):Dynamic;

	/**
	 * An alternative to [SET_PED_PRELOAD_PROP_DATA](#\_0x2B16A3BFF1FBCE49) that uses local collection indexing instead of the global one.
	 * 
	 * The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
	 * 
	 * Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_PROP](#\_0x8ED0C17) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_PROP](#\_0xFBDB885F) natives.
	 */
	@:native("SetPedCollectionPreloadPropData")
	static function setPedCollectionPreloadPropData(ped:Dynamic, anchorPoint:Int, collection:String, propIndex:Int, textureId:Int):Dynamic;

	/**
	 * Set the fade distance for the shadows of a created light.
	 */
	@:native("SetLightShadowFadeDistance")
	static function setLightShadowFadeDistance(fadeDistance:Int):Dynamic;

	/**
	 * Replaces the pixel data in a runtime texture with the image data from a file in the current resource, or a data URL.
	 * 
	 * If the bitmap is a different size compared to the existing texture, it will be resampled.
	 * 
	 * This command may end up executed asynchronously, and only update the texture data at a later time.
	 */
	@:native("SetRuntimeTextureImage")
	static function setRuntimeTextureImage(tex:Int, fileName:String):Bool;

	/**
	 * Set the world coordinates of a specified light.
	 */
	@:native("SetLightCoords")
	static function setLightCoords(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetTextChatEnabled")
	static function setTextChatEnabled(enabled:Bool):Bool;

	/**
	 * Set's the ropes length change rate, which is the speed that rope should wind if started.
	 */
	@:native("SetRopeLengthChangeRate")
	static function setRopeLengthChangeRate(rope:Int, lengthChangeRate:Float):Dynamic;

	/**
	 * **Note**: This native is deprecated and doesn't work anymore. Use [loadscreen_manual_shutdown](https://docs.fivem.net/docs/scripting-reference/resource-manifest/#loadscreen_manual_shutdown) in the fxmanifest.lua instead.
	 */
	@:native("SetManualShutdownLoadingScreenNui")
	static function setManualShutdownLoadingScreenNui(manualShutdown:Bool):Dynamic;

	/**
	 * Sets default endurance value for specific health config.
	 */
	@:native("SetHealthConfigDefaultEndurance")
	static function setHealthConfigDefaultEndurance(configName:String, newValue:Float):Dynamic;

	/**
	 * Set the specular fade distance for a created light.
	 */
	@:native("SetLightSpecularFadeDistance")
	static function setLightSpecularFadeDistance(fadeDistance:Int):Dynamic;

	/**
	 * Sets the ratio that a door is open for on a train.
	 */
	@:native("SetTrainDoorOpenRatio")
	static function setTrainDoorOpenRatio(train:Dynamic, doorIndex:Int, ratio:Float):Dynamic;

	/**
	 * An alternative to [SET_PED_PRELOAD_VARIATION_DATA](#\_0x39D55A620FCB6A3A) that uses local collection indexing instead of the global one.
	 * 
	 * The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
	 * 
	 * Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) natives.
	 */
	@:native("SetPedCollectionPreloadVariationData")
	static function setPedCollectionPreloadVariationData(ped:Dynamic, componentId:Int, collection:String, drawableId:Int, textureId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleAlarmTimeLeft")
	static function setVehicleAlarmTimeLeft(vehicle:Dynamic, time:Int):Dynamic;

	/**
	 * See [SET_SCRIPT_GFX_ALIGN](#\_0xB8A850F20A067EB6) for details about how gfx align works.
	 */
	@:native("SetHudComponentAlign")
	static function setHudComponentAlign(id:Int, horizontalAlign:Int, verticalAlign:Int):Dynamic;

	/**
	 * Toggles a train's ability to stop at stations
	 */
	@:native("SetTrainStopAtStations")
	static function setTrainStopAtStations(train:Dynamic, state:Bool):Dynamic;

	/**
	 * Sets the display info for a minimap overlay.
	 */
	@:native("SetMinimapOverlayDisplay")
	static function setMinimapOverlayDisplay(miniMap:Int, x:Float, y:Float, xScale:Float, yScale:Float, alpha:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetTextWrap")
	static function setTextWrap(start:Float, end:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetHudComponentSize")
	static function setHudComponentSize(id:Int, x:Float, y:Float):Dynamic;

	/**
	 * Sets the height of the vehicle's suspension.

	 * This changes the same value set by Suspension in the mod shop.

	 * Negatives values raise the car. Positive values lower the car.
	 * 
	 * This is change is visual only. The collision of the vehicle will not move.
	 */
	@:native("SetVehicleSuspensionHeight")
	static function setVehicleSuspensionHeight(vehicle:Dynamic, newHeight:Float):Dynamic;

	/**
	 * Sets the braking distance of the track. Used by trains to determine the point to slow down when entering a station.
	 */
	@:native("SetTrackBrakingDistance")
	static function setTrackBrakingDistance(track:Int, brakingDistance:Float):Dynamic;

	/**
	 * Set the interior and room where the light should be active.
	 */
	@:native("SetLightInterior")
	static function setLightInterior(interiorId:Int, isPortal:Dynamic, roomIndex:Int):Dynamic;

	/**
	 * Sets the maximum distance in which [\_SET_VEHICLE_NITRO_ENABLED](#\_0xC8E9B6B71B8E660D) PTFX are rendered. Distance is measured from the camera position.
	 */
	@:native("SetVehicleNitroPtfxRange")
	static function setVehicleNitroPtfxRange(range:Float):Dynamic;

	/**
	 * Sets the vehicles gear ratio on choosen gear, reverse gear needs to be a negative float and forward moving gear needs to be a positive float. Refer to the examples if confused.
	 */
	@:native("SetVehicleGearRatio")
	static function setVehicleGearRatio(vehicle:Dynamic, gear:Int, ratio:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleTurboPressure")
	static function setVehicleTurboPressure(vehicle:Dynamic, pressure:Float):Dynamic;

	/**
	 * Assign a texture to an existing light source, allowing custom light shapes or patterns using textures from streaming assets.
	 */
	@:native("SetLightTexture")
	static function setLightTexture(textureDict:String, textureHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleNextGear")
	static function setVehicleNextGear(vehicle:Dynamic, nextGear:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetInteriorRoomFlag")
	static function setInteriorRoomFlag(interiorId:Int, roomIndex:Int, flag:Int):Dynamic;

	/**
	 * Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_VECTOR`, this might require some experimentation.
	 */
	@:native("SetVehicleHandlingVector")
	static function setVehicleHandlingVector(vehicle:Dynamic, class_:String, fieldName:String, value:Dynamic):Dynamic;

	/**
	 * Disables the vehicle from being repaired when a vehicle extra is enabled.
	 */
	@:native("SetVehicleAutoRepairDisabled")
	static function setVehicleAutoRepairDisabled(vehicle:Dynamic, value:Bool):Dynamic;

	/**
	 * Sets vehicle's wheels' size (size is the same for all the wheels, cannot get/set specific wheel of vehicle).

	 * Only works on non-default wheels.

	 * Returns whether change was successful (can be false if trying to set size for non-default wheels).
	 */
	@:native("SetVehicleWheelSize")
	static function setVehicleWheelSize(vehicle:Dynamic, size:Float):Bool;

	/**
	 * Toggles the track being active. If disabled mission trains will not be able to spawn on this track and will look for the next closest track to spawn
	 */
	@:native("SetTrackEnabled")
	static function setTrackEnabled(track:Int, enabled:Dynamic):Dynamic;

	/**
	 * Set the headlight properties of a created light, adjusting its intensity and range.
	 */
	@:native("SetLightHeadlight")
	static function setLightHeadlight(intensity:Float, range:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleWheelHealth")
	static function setVehicleWheelHealth(vehicle:Dynamic, wheelIndex:Int, health:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleSteeringAngle")
	static function setVehicleSteeringAngle(vehicle:Dynamic, angle:Float):Dynamic;

	/**
	 * the status of default voip system. It affects on `NETWORK_IS_PLAYER_TALKING` and `mp_facial` animation.

	 * This function doesn't need to be called every frame, it works like a switcher.
	 */
	@:native("SetPlayerTalkingOverride")
	static function setPlayerTalkingOverride(player:Dynamic, state:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleHighGear")
	static function setVehicleHighGear(vehicle:Dynamic, gear:Int):Dynamic;

	/**
	 * This native is a setter for [`GET_VEHICLE_HAS_FLAG`](#\_0xD85C9F57).
	 */
	@:native("SetVehicleFlag")
	static function setVehicleFlag(vehicle:Dynamic, flagIndex:Int, value:Dynamic):Dynamic;

	/**
	 * Sets a pixel in the specified runtime texture. This will have to be committed using `COMMIT_RUNTIME_TEXTURE` to have any effect.
	 */
	@:native("SetRuntimeTexturePixel")
	static function setRuntimeTexturePixel(tex:Int, x:Int, y:Int, r:Int, g:Int, b:Int, a:Int):Dynamic;

	/**
	 * Overrides how many real ms are equal to one game minute.

	 * A setter for [`GetMillisecondsPerGameMinute`](#\_0x2F8B4D1C595B11DB).
	 */
	@:native("SetMillisecondsPerGameMinute")
	static function setMillisecondsPerGameMinute(value:Int):Dynamic;

	/**
	 * **This native is deprecated and does nothing!**
	 */
	@:native("SetModelHeadlightConfiguration")
	static function setModelHeadlightConfiguration(modelHash:Int, ratePerSecond:Float, headlightRotation:Float, invertRotation:Bool):Dynamic;

	/**
	 * Change the light type of a already created light.

	 * Certain light type needs more configurations to work properly (Like direction, flags or size)
	 */
	@:native("SetLightType")
	static function setLightType(lightType:Int):Dynamic;

	/**
	 * Sets whether the wheel is powered.

	 * On all wheel drive cars this works to change which wheels receive power, but if a car's fDriveBiasFront doesn't send power to that wheel, it won't get power anyway. This can be fixed by changing the fDriveBiasFront with SET_VEHICLE_HANDLING_FLOAT.

	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.

	 * This is a shortcut to a flag in SET_VEHICLE_WHEEL_FLAGS.
	 */
	@:native("SetVehicleWheelIsPowered")
	static function setVehicleWheelIsPowered(vehicle:Dynamic, wheelIndex:Int, powered:Bool):Dynamic;

	/**
	 * Override the limits on the number and types of melee combatants. The game is limited to at most ten combatants among the three types: primary, secondary, and observers.
	 * 
	 * This native infers the number of observers based on the primary and secondary counts.
	 */
	@:native("SetPedMeleeCombatLimits")
	static function setPedMeleeCombatLimits(primaryCount:Int, secondaryCount:Int, populationPedCount:Int):Dynamic;

	/**
	 * Enables or disables whether train doors should be forced open whilst a player is inside the train. This is enabled by default in multiplayer.
	 */
	@:native("SetTrainsForceDoorsOpen")
	static function setTrainsForceDoorsOpen(forceOpen:Dynamic):Dynamic;

	/**
	 * directionX/Y should be constrained between -1.0 and 1.0

	 * A positive value will create the wave starting at min and rolling towards max

	 * A negative value will create the wave starting at max and rolling towards min

	 * Applying both values allows you to make diagonal waves
	 */
	@:native("SetWaveQuadDirection")
	static function setWaveQuadDirection(waveQuad:Int, directionX:Float, directionY:Float):Bool;

	/**
	 * Set the vehicle's pitch bias. Only works on planes.
	 */
	@:native("SetVehiclePitchBias")
	static function setVehiclePitchBias(vehicle:Dynamic, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleGravityAmount")
	static function setVehicleGravityAmount(vehicle:Dynamic, gravity:Float):Dynamic;

	/**
	 * Purpose: The game's default values for these make shooting while traveling Left quite a bit slower than shooting while traveling right (This could be a game-balance thing?)
	 * 
	 * Default Min: -45 Degrees

	 * Default Max: 135 Degrees
	 * 
	 * ```
	 *    \ ,- ~ ||~ - ,

	 * , ' \    x   x    ' ,
	 * ```
	 * 
	 * ,      \    x    x   x  ,

	 * ,         \  x     x      ,

	 * ,            \     x    x  ,

	 * ,              \      x    ,

	 * ,                \   x     ,

	 * ,                 \   x x ,

	 * ,                  \  x ,

	 * ,                 , '

	 * ' - , \_ \_ \_ ,  '  \\
	 * 
	 * If the transition angle is within the shaded portion (x), there will be no transition(Quicker)

	 * The angle corresponds to where you are looking(North on the circle) vs. the heading of your Ped.

	 * Note: For some reason,
	 * 
	 * You can set these values to whatever you'd like with this native, but keep in mind that the transitional spin is only clockwise for some reason.
	 * 
	 * I'd personally recommend something like -135/135
	 */
	@:native("SetPedTurningThresholds")
	static function setPedTurningThresholds(min:Float, max:Float):Dynamic;

	/**
	 * Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FIELD`, this might require some experimentation.

	 * Example: `SetVehicleHandlingField(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
	 */
	@:native("SetVehicleHandlingField")
	static function setVehicleHandlingField(vehicle:Dynamic, class_:String, fieldName:String, value:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SetNuiFocus")
	static function setNuiFocus(hasFocus:Bool, hasCursor:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetTimecycleModifierVar")
	static function setTimecycleModifierVar(modifierName:String, varName:String, value1:Float, value2:Float):Dynamic;

	/**
	 * Sets the rotation speed of a wheel.

	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("SetVehicleWheelRotationSpeed")
	static function setVehicleWheelRotationSpeed(vehicle:Dynamic, wheelIndex:Int, speed:Float):Dynamic;

	/**
	 * Sets brake pressure of a wheel.

	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.

	 * Normal values around 1.0f
	 */
	@:native("SetVehicleWheelBrakePressure")
	static function setVehicleWheelBrakePressure(vehicle:Dynamic, wheelIndex:Int, pressure:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetWaterQuadAlpha")
	static function setWaterQuadAlpha(waterQuad:Int, a0:Int, a1:Int, a2:Int, a3:Int):Bool;

	/**
	 * 
	 */
	@:native("SetTrainState")
	static function setTrainState(train:Dynamic, state:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetTextJustification")
	static function setTextJustification(justifyType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetWeatherCycleEntry")
	static function setWeatherCycleEntry(index:Int, typeName:String, timeMult:Int):Bool;

	/**
	 * Shuts down the `loadingScreen` NUI frame, similarly to `SHUTDOWN_LOADING_SCREEN`.
	 */
	@:native("ShutdownLoadingScreenNui")
	static function shutdownLoadingScreenNui():Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleWheelYRotation")
	static function setVehicleWheelYRotation(vehicle:Dynamic, wheelIndex:Int, value:Float):Dynamic;

	/**
	 * Not sure what this changes, probably determines physical rim size in case the tire is blown.
	 */
	@:native("SetVehicleWheelRimColliderSize")
	static function setVehicleWheelRimColliderSize(vehicle:Dynamic, wheelIndex:Int, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleCurrentRpm")
	static function setVehicleCurrentRpm(vehicle:Dynamic, rpm:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleOilLevel")
	static function setVehicleOilLevel(vehicle:Dynamic, level:Float):Dynamic;

	/**
	 * Sets the player's rich presence detail state for social platform providers to a specified string.
	 */
	@:native("SetRichPresence")
	static function setRichPresence(presenceState:String):Dynamic;

	/**
	 * A setter for the recoil shake amplitude of a weapon.
	 */
	@:native("SetWeaponRecoilShakeAmplitude")
	static function setWeaponRecoilShakeAmplitude(weaponHash:Int, amplitude:Float):Dynamic;

	/**
	 * A setter for the accuracy spread of a weapon.
	 */
	@:native("SetWeaponAccuracySpread")
	static function setWeaponAccuracySpread(weaponHash:Int, spread:Float):Dynamic;

	/**
	 * Sets power being sent to a wheel.

	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("SetVehicleWheelPower")
	static function setVehicleWheelPower(vehicle:Dynamic, wheelIndex:Int, power:Float):Dynamic;

	/**
	 * Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FLOAT`, this might require some experimentation.

	 * Example: `SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
	 */
	@:native("SetVehicleHandlingFloat")
	static function setVehicleHandlingFloat(vehicle:Dynamic, class_:String, fieldName:String, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetNuiFocusKeepInput")
	static function setNuiFocusKeepInput(keepInput:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetWaterQuadIsInvisible")
	static function setWaterQuadIsInvisible(waterQuad:Int, isInvisible:Bool):Bool;

	/**
	 * Sets whether all tags should group (normal game behavior) or should remain independent and above each ped's respective head when in a vehicle.
	 */
	@:native("SetMpGamerTagsUseVehicleBehavior")
	static function setMpGamerTagsUseVehicleBehavior(enabled:Dynamic):Dynamic;

	/**
	 * Adjusts the offset of the specified wheel relative to the wheel's axle center.

	 * Needs to be called every frame in order to function properly, as GTA will reset the offset otherwise.

	 * This function can be especially useful to set the track width of a vehicle, for example:
	 * 
	 * ```
	 * function SetVehicleFrontTrackWidth(vehicle, width)

	 * SetVehicleWheelXOffset(vehicle, 0, -width/2)

	 * SetVehicleWheelXOffset(vehicle, 1, width/2)

	 * end
	 * ```
	 */
	@:native("SetVehicleWheelXOffset")
	static function setVehicleWheelXOffset(vehicle:Dynamic, wheelIndex:Int, offset:Float):Dynamic;

	/**
	 * Set the vehicle's roll bias. Only works on planes.
	 */
	@:native("SetVehicleRollBias")
	static function setVehicleRollBias(vehicle:Dynamic, value:Float):Dynamic;

	/**
	 * Overrides a floating point value from `visualsettings.dat` temporarily.
	 */
	@:native("SetVisualSettingFloat")
	static function setVisualSettingFloat(name:String, value:Float):Dynamic;

	/**
	 * Sets the state of a track junction.
	 */
	@:native("SetTrackJunctionActive")
	static function setTrackJunctionActive(junctionIndex:Int, state:Dynamic):Dynamic;

	/**
	 * Use along with SetVehicleWheelWidth to resize the wheels (this native sets the collider width affecting physics while SetVehicleWheelWidth will change visual width).
	 */
	@:native("SetVehicleWheelTireColliderWidth")
	static function setVehicleWheelTireColliderWidth(vehicle:Dynamic, wheelIndex:Int, value:Float):Dynamic;

	/**
	 * Example script: https://pastebin.com/J6XGbkCW
	 * 
	 * List of known states:
	 * 
	 * ```
	 * 1: Not wheeling.

	 * 65: Vehicle is ready to do wheelie (burnouting).

	 * 129: Vehicle is doing wheelie.
	 * ```
	 */
	@:native("SetVehicleWheelieState")
	static function setVehicleWheelieState(vehicle:Dynamic, state:Int):Dynamic;

	/**
	 * Sets vehicle's wheels' width (width is the same for all the wheels, cannot get/set specific wheel of vehicle).

	 * Only works on non-default wheels.

	 * Returns whether change was successful (can be false if trying to set width for non-default wheels).
	 */
	@:native("SetVehicleWheelWidth")
	static function setVehicleWheelWidth(vehicle:Dynamic, width:Float):Bool;

	/**
	 * Use along with SetVehicleWheelSize to resize the wheels (this native sets the collider size affecting physics while SetVehicleWheelSize will change visual size).
	 */
	@:native("SetVehicleWheelTireColliderSize")
	static function setVehicleWheelTireColliderSize(vehicle:Dynamic, wheelIndex:Int, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetWaterQuadLevel")
	static function setWaterQuadLevel(waterQuad:Int, level:Float):Bool;

	/**
	 * Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_INT`, this might require some experimentation.
	 */
	@:native("SetVehicleHandlingInt")
	static function setVehicleHandlingInt(vehicle:Dynamic, class_:String, fieldName:String, value:Int):Dynamic;

	/**
	 * The backing function for TriggerLatentServerEvent.
	 */
	@:native("TriggerLatentServerEventInternal")
	static function triggerLatentServerEventInternal(eventName:String, eventPayload:String, payloadLength:Int, bps:Int):Dynamic;

	/**
	 * Disables the editor runtime mode, changing game behavior to not track entity metadata.

	 * This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("DisableEditorRuntime")
	static function disableEditorRuntime():Dynamic;

	/**
	 * This native allows you to update the bounds of a specified water quad index.
	 */
	@:native("SetWaterQuadBounds")
	static function setWaterQuadBounds(waterQuad:Int, minX:Int, minY:Int, maxX:Int, maxY:Int):Bool;

	/**
	 * The backing function for TriggerServerEvent.
	 */
	@:native("TriggerServerEventInternal")
	static function triggerServerEventInternal(eventName:String, eventPayload:String, payloadLength:Int):Dynamic;

	/**
	 * This native allows you to update the water quad type.
	 * 
	 * Valid type definitions:
	 * 
	 * *   **0** Square
	 * *   **1** Right triangle where the 90 degree angle is at maxX, minY
	 * *   **2** Right triangle where the 90 degree angle is at minX, minY
	 * *   **3** Right triangle where the 90 degree angle is at minX, maxY
	 * *   **4** Right triangle where the 90 degree angle is at maxY, maxY
	 */
	@:native("SetWaterQuadType")
	static function setWaterQuadType(waterQuad:Int, type:Int):Bool;

	/**
	 * 
	 */
	@:native("SetPlayerMaxStamina")
	static function setPlayerMaxStamina(playerId:Dynamic, maxStamina:Float):Dynamic;

	/**
	 * Sets custom vehicle xenon lights color, allowing to use RGB palette. The game will ignore lights color set by [\_SET_VEHICLE_XENON_LIGHTS_COLOR](#\_0xE41033B25D003A07) when custom color is active. This native is not synced between players. Requires xenon lights mod to be set on vehicle.
	 */
	@:native("SetVehicleXenonLightsCustomColor")
	static function setVehicleXenonLightsCustomColor(vehicle:Dynamic, red:Int, green:Int, blue:Int):Dynamic;

	/**
	 * Returns mapdata's entity matrix. This function supports SDK infrastructure and is not intended to be used directly from your code.
	 * 
	 * This should be used from JavaScript or another language supporting mutable buffers like ArrayBuffer.
	 * 
	 * Matrix layout is as follows:
	 * 
	 * *   Element \[0], \[1] and \[2] should represent the right vector.
	 * *   Element \[4], \[5] and \[6] should represent the forward vector.
	 * *   Element \[8], \[9] and \[10] should represent the up vector.
	 * *   Element \[12], \[13] and \[14] should represent X, Y and Z translation coordinates.
	 * *   All other elements should be \[0, 0, 0, 1].
	 */
	@:native("GetMapdataEntityMatrix")
	static function getMapdataEntityMatrix(mapDataHash:Int, entityInternalIdx:Int, matrixPtr:Int):Bool;

	/**
	 * Sets a ped model's health config.

	 * Takes effect only after setting player model with `SET_PLAYER_MODEL`.
	 */
	@:native("SetPedModelHealthConfig")
	static function setPedModelHealthConfig(modelHash:Int, configName:String):Dynamic;

	/**
	 * Sets the text font for the current text drawing command.
	 */
	@:native("SetTextFontForCurrentCommand")
	static function setTextFontForCurrentCommand(fontId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetWaterQuadNoStencil")
	static function setWaterQuadNoStencil(waterQuad:Int, noStencil:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("SetVehicleXmasSnowFactor")
	static function setVehicleXmasSnowFactor(gripFactor:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleClutch")
	static function setVehicleClutch(vehicle:Dynamic, clutch:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetWaterQuadHasLimitedDepth")
	static function setWaterQuadHasLimitedDepth(waterQuad:Int, hasLimitedDepth:Bool):Bool;

	/**
	 * Sets world clip boundaries for water quads file (water.xml, water_heistisland.xml)

	 * Used internally by LOAD_GLOBAL_WATER_FILE
	 */
	@:native("SetWaterAreaClipRect")
	static function setWaterAreaClipRect(minX:Int, minY:Int, maxX:Int, maxY:Int):Dynamic;

	/**
	 * Sets the traction vector length of a wheel.

	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("SetVehicleWheelTractionVectorLength")
	static function setVehicleWheelTractionVectorLength(vehicle:Dynamic, wheelIndex:Int, length:Float):Dynamic;

	/**
	 * A getter for [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938), but for a specified resource.
	 */
	@:native("GetExternalKvpFloat")
	static function getExternalKvpFloat(resource:String, key:String):Float;

	/**
	 * Retrieves the map data entity handle.

	 * This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("GetMapdataEntityHandle")
	static function getMapdataEntityHandle(mapDataHash:Int, entityInternalIdx:Int, entityHandle:Dynamic):Bool;

	/**
	 * Disables weapons aim blocking due to environment for local player.

	 * For non-player peds [SET_PED_ENABLE_WEAPON_BLOCKING](#\_0x97A790315D3831FD) can be used.
	 */
	@:native("SetWeaponsNoAimBlocking")
	static function setWeaponsNoAimBlocking(state:Bool):Dynamic;

	/**
	 * Disables the game's built-in auto-reloading.
	 */
	@:native("SetWeaponsNoAutoreload")
	static function setWeaponsNoAutoreload(state:Bool):Dynamic;

	/**
	 * Modifies the radius scale used in the simulation of wet cloth physics.

	 * This affects how cloth behaves when wet, changing how it sticks or reacts to movement.
	 */
	@:native("SetWetClothPinRadiusScale")
	static function setWetClothPinRadiusScale(scale:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleSteeringScale")
	static function setVehicleSteeringScale(vehicle:Dynamic, scale:Float):Dynamic;

	/**
	 * This completely disables pedestrian vehicles from reacting to sirens. They will not try to do any maneuver to evade.
	 */
	@:native("SetReactionToVehicleSirenDisabled")
	static function setReactionToVehicleSirenDisabled(state:Bool):Dynamic;

	/**
	 * Will unregister and cleanup a registered NUI callback handler.
	 * 
	 * Use along side the REGISTER_RAW_NUI_CALLBACK native.
	 */
	@:native("UnregisterRawNuiCallback")
	static function unregisterRawNuiCallback(callbackType:String):Dynamic;

	/**
	 * This native allows you to update the bounds of a specified water quad index.
	 */
	@:native("SetWaveQuadBounds")
	static function setWaveQuadBounds(waveQuad:Int, minX:Int, minY:Int, maxX:Int, maxY:Int):Bool;

	/**
	 * Disables autoswapping to another weapon when the current weapon runs out of ammo.
	 */
	@:native("SetWeaponsNoAutoswap")
	static function setWeaponsNoAutoswap(state:Bool):Dynamic;

	/**
	 * Leaves cursor mode. This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("LeaveCursorMode")
	static function leaveCursorMode():Dynamic;

	/**
	 * 
	 */
	@:native("SetWaveQuadAmplitude")
	static function setWaveQuadAmplitude(waveQuad:Int, amplitude:Float):Bool;

	/**
	 * Returns the transient entity index for a specified mapdata/entity pair.

	 * This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("GetEntityIndexFromMapdata")
	static function getEntityIndexFromMapdata(mapdata:Int, entity:Int):Int;

	/**
	 * Sets an entity's matrix. Arguments are in the same order as with GET_ENTITY_MATRIX.
	 */
	@:native("SetEntityMatrix")
	static function setEntityMatrix(entity:Dynamic, forwardX:Float, forwardY:Float, forwardZ:Float, rightX:Float, rightY:Float, rightZ:Float, upX:Float, upY:Float, upZ:Float, atX:Float, atY:Float, atZ:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleFuelLevel")
	static function setVehicleFuelLevel(vehicle:Dynamic, level:Float):Dynamic;

	/**
	 * Enters cursor mode, suppressing mouse movement to the game and displaying a mouse cursor instead. This function supports

	 * SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("EnterCursorMode")
	static function enterCursorMode():Dynamic;

	/**
	 * Sets the flags of a wheel.

	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("SetVehicleWheelFlags")
	static function setVehicleWheelFlags(vehicle:Dynamic, wheelIndex:Int, flags:Int):Dynamic;

	/**
	 * Retrieves the map data and entity handles from a specific entity.

	 * This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("GetEntityMapdataOwner")
	static function getEntityMapdataOwner(entity:Dynamic, mapdataHandle:Dynamic, entityHandle:Dynamic):Bool;

	/**
	 * Sets whether or not the weather should be owned by the network subsystem.
	 * 
	 * To be able to use [\_SET_WEATHER_TYPE_TRANSITION](#\_0x578C752848ECFA0C), this has to be set to false.
	 */
	@:native("SetWeatherOwnedByNetwork")
	static function setWeatherOwnedByNetwork(network:Bool):Dynamic;

	/**
	 * Transiently updates the entity with the specified mapdata index and entity index.

	 * This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("UpdateMapdataEntity")
	static function updateMapdataEntity(mapdata:Int, entity:Int, entityDef:Dynamic):Dynamic;

	/**
	 * Sets the render technique for drawing an entity's outline. This function allows you to specify a technique group name to control how the entity's outline is rendered in the game.
	 * 
	 * List of known technique group's:
	 * 
	 * ```
	 * alt0

	 * alt1

	 * alt2

	 * alt3

	 * alt4

	 * alt5

	 * alt6

	 * alt7

	 * alt8

	 * blit

	 * cube

	 * default

	 * geometry

	 * imposter

	 * imposterdeferred

	 * lightweight0

	 * lightweight0CutOut

	 * lightweight0CutOutTint

	 * lightweight0WaterRefractionAlpha

	 * lightweight4

	 * lightweight4CutOut

	 * lightweight4CutOutTint

	 * lightweight4WaterRefractionAlpha

	 * lightweight8

	 * lightweight8CutOut

	 * lightweight8CutOutTint

	 * lightweight8WaterRefractionAlpha

	 * lightweightHighQuality0

	 * lightweightHighQuality0CutOut

	 * lightweightHighQuality0WaterRefractionAlpha

	 * lightweightHighQuality4

	 * lightweightHighQuality4CutOut

	 * lightweightHighQuality4WaterRefractionAlpha

	 * lightweightHighQuality8

	 * lightweightHighQuality8CutOut

	 * lightweightHighQuality8WaterRefractionAlpha

	 * lightweightNoCapsule4

	 * lightweightNoCapsule8

	 * multilight

	 * tessellate

	 * ui

	 * unlit

	 * waterreflection

	 * waterreflectionalphaclip

	 * waterreflectionalphacliptint

	 * wdcascade
	 * ```
	 */
	@:native("SetEntityDrawOutlineRenderTechnique")
	static function setEntityDrawOutlineRenderTechnique(techniqueGroup:String):Dynamic;

	/**
	 * Enables the editor runtime mode, changing game behavior to track entity metadata.

	 * This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("EnableEditorRuntime")
	static function enableEditorRuntime():Dynamic;

	/**
	 * Draws a gizmo. This function supports SDK infrastructure and is not intended to be used directly from your code.
	 * 
	 * This should be used from JavaScript or another language supporting mutable buffers like ArrayBuffer.
	 * 
	 * Matrix layout is as follows:
	 * 
	 * *   Element \[0], \[1] and \[2] should represent the right vector.
	 * *   Element \[4], \[5] and \[6] should represent the forward vector.
	 * *   Element \[8], \[9] and \[10] should represent the up vector.
	 * *   Element \[12], \[13] and \[14] should represent X, Y and Z translation coordinates.
	 * *   All other elements should be \[0, 0, 0, 1].
	 */
	@:native("DrawGizmo")
	static function drawGizmo(matrixPtr:Int, id:String):Bool;

	/**
	 * Gets the selected entity at the current mouse cursor position, and changes the current selection depth. This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("SelectEntityAtCursor")
	static function selectEntityAtCursor(hitFlags:Int, precise:Bool):Dynamic;

	/**
	 * A getter for [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8), but for a specified resource.
	 */
	@:native("GetExternalKvpInt")
	static function getExternalKvpInt(resource:String, key:String):Int;

	/**
	 * Resets mapdata entity transform matrix to its original state.

	 * This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("ResetMapdataEntityMatrix")
	static function resetMapdataEntityMatrix(mapDataHash:Int, entityInternalIdx:Int):Bool;

	/**
	 * Draws an outline around a given entity. This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("SetEntityDrawOutline")
	static function setEntityDrawOutline(entity:Dynamic, enabled:Bool):Dynamic;

	/**
	 * Sets color for entity outline. `255, 0, 255, 255` by default.
	 */
	@:native("SetEntityDrawOutlineColor")
	static function setEntityDrawOutlineColor(red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * This function undoes changes made by [`SET_ENTITY_DRAW_OUTLINE_RENDER_TECHNIQUE`](#\_0x68DFF2DD), restoring the original outline rendering behavior. The default render technique group is `unlit`.
	 */
	@:native("ResetEntityDrawOutlineRenderTechnique")
	static function resetEntityDrawOutlineRenderTechnique():Dynamic;

	/**
	 * Sets variant of shader that will be used to draw entity outline.
	 * 
	 * Variants are:
	 * 
	 * *   **0**: Default value, gauss shader.
	 * *   **1**: 2px wide solid color outline.
	 * *   **2**: Fullscreen solid color except for entity.
	 */
	@:native("SetEntityDrawOutlineShader")
	static function setEntityDrawOutlineShader(shader:Int):Dynamic;

	/**
	 * Equivalent of [START_FIND_KVP](#\_0xDD379006), but for another resource than the current one.
	 */
	@:native("StartFindExternalKvp")
	static function startFindExternalKvp(resourceName:String, prefix:String):Int;

	/**
	 * Gets the selected entity at the specified mouse cursor position, and changes the current selection depth. This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("SelectEntityAtPos")
	static function selectEntityAtPos(fracX:Float, fracY:Float, hitFlags:Int, precise:Bool):Dynamic;

	/**
	 * Returns the transient map data index for a specified hash.

	 * This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("GetMapdataFromHashKey")
	static function getMapdataFromHashKey(mapdataHandle:Int):Int;

	/**
	 * A getter for [SET_RESOURCE_KVP](#\_0x21C7A35B), but for a specified resource.
	 */
	@:native("GetExternalKvpString")
	static function getExternalKvpString(resource:String, key:String):String;

	/**
	 * Adds a listener for Console Variable changes.
	 * 
	 * The function called expects to match the following signature:
	 * 
	 * ```ts
	 * function ConVarChangeListener(conVarName: string, reserved: any);
	 * ```
	 * 
	 * *   **conVarName**: The ConVar that changed.
	 * *   **reserved**: Currently unused.
	 */
	@:native("AddConvarChangeListener")
	static function addConvarChangeListener(conVarFilter:String, handler:haxe.Constraints.Function):Int;

	/**
	 * Adds a handler for changes to a state bag.
	 * 
	 * The function called expects to match the following signature:
	 * 
	 * ```ts
	 * function StateBagChangeHandler(bagName: string, key: string, value: any, reserved: number, replicated: boolean);
	 * ```
	 * 
	 * *   **bagName**: The internal bag ID for the state bag which changed. This is usually `player:Source`, `entity:NetID`

	 *     or `localEntity:Handle`.
	 * *   **key**: The changed key.
	 * *   **value**: The new value stored at key. The old value is still stored in the state bag at the time this callback executes.
	 * *   **reserved**: Currently unused.
	 * *   **replicated**: Whether the set is meant to be replicated.
	 * 
	 * At this time, the change handler can't opt to reject changes.
	 * 
	 * If bagName refers to an entity, use [GET_ENTITY_FROM_STATE_BAG_NAME](#\_0x4BDF1867) to get the entity handle

	 * If bagName refers to a player, use [GET_PLAYER_FROM_STATE_BAG_NAME](#\_0xA56135E0) to get the player handle
	 */
	@:native("AddStateBagChangeHandler")
	static function addStateBagChangeHandler(keyFilter:String, bagFilter:String, handler:haxe.Constraints.Function):Int;

	/**
	 * 
	 */
	@:native("DoesTrainStopAtStations")
	static function doesTrainStopAtStations(train:Dynamic):Bool;

	/**
	 * Cancels the currently executing event.
	 */
	@:native("CancelEvent")
	static function cancelEvent():Dynamic;

	/**
	 * 
	 */
	@:native("DeleteFunctionReference")
	static function deleteFunctionReference(referenceIdentity:String):Dynamic;

	/**
	 * 
	 */
	@:native("DuplicateFunctionReference")
	static function duplicateFunctionReference(referenceIdentity:String):String;

	/**
	 * Internal function for ensuring an entity has a state bag.
	 */
	@:native("EnsureEntityStateBag")
	static function ensureEntityStateBag(entity:Dynamic):Dynamic;

	/**
	 * Depending on your use case you may need to use `add_acl resource.<your_resource_name> command.<command_name> allow` to use this native in your resource.
	 */
	@:native("ExecuteCommand")
	static function executeCommand(commandString:String):Dynamic;

	/**
	 * Returns the name of the currently executing resource.
	 */
	@:native("GetCurrentResourceName")
	static function getCurrentResourceName():String;

	/**
	 * Can be used to get a console variable of type `char*`, for example a string.
	 */
	@:native("GetConvar")
	static function getConvar(varName:String, default_:String):String;

	/**
	 * ### Supported types
	 * 
	 * *   \[1] : Peds (including animals) and players.
	 * *   \[2] : Vehicles.
	 * *   \[3] : Objects (props), doors, and projectiles.
	 * 
	 * ### Coordinates need to be send unpacked (x,y,z)
	 * 
	 * ```lua
	 * 

	 * -- Define the allowed model hashes

	 * local allowedModelHashes = { GetHashKey("p_crate03x"), GetHashKey("p_crate22x") }

	 * 

	 * -- Get the player's current coordinates

	 * local playerCoords = GetEntityCoords(PlayerPedId())

	 * 

	 * -- Retrieve all entities of type Object (type 3) within a radius of 10.0 units

	 * -- that match the allowed model hashes

	 * -- and sort output entities by distance

	 * local entities = GetEntitiesInRadius(playerCoords.x, playerCoords.y, playerCoords.z, 10.0, 3, true, allowedModelHashes)

	 * 

	 * -- Iterate through the list of entities and print their ids

	 * for i = 1, #entities do

	 *     local entity = entities[i]

	 *     print(entity)

	 * end

	 * 
	 * ```
	 */
	@:native("GetEntitiesInRadius")
	static function getEntitiesInRadius(x:Float, y:Float, z:Float, radius:Float, entityType:Int, sortByDistance:Bool, models:Dynamic):Dynamic;

	/**
	 * Returns the entity handle for the specified state bag name. For use with [ADD_STATE_BAG_CHANGE_HANDLER](#\_0x5BA35AAF).
	 */
	@:native("GetEntityFromStateBagName")
	static function getEntityFromStateBagName(bagName:String):Dynamic;

	/**
	 * Can be used to get a console variable casted back to `bool`.
	 */
	@:native("GetConvarBool")
	static function getConvarBool(varName:String, defaultValue:Bool):Bool;

	/**
	 * Can be used to get a console variable casted back to `int` (an integer value).
	 */
	@:native("GetConvarInt")
	static function getConvarInt(varName:String, default_:Int):Int;

	/**
	 * An internal function for converting a stack trace object to a string.
	 */
	@:native("FormatStackTrace")
	static function formatStackTrace(traceData:Dynamic):String;

	/**
	 * Returns the internal build number of the current game being executed.
	 * 
	 * Possible values:
	 * 
	 * *   FiveM
	 *     *   1604
	 *     *   2060
	 *     *   2189
	 *     *   2372
	 *     *   2545
	 *     *   2612
	 *     *   2699
	 *     *   2802
	 *     *   2944
	 *     *   3095
	 *     *   3258
	 *     *   3323
	 *     *   3407
	 *     *   3570
	 *     *   3751
	 *     *   3788
	 * *   RedM
	 *     *   1311
	 *     *   1355
	 *     *   1436
	 *     *   1491
	 * *   LibertyM
	 *     *   43
	 * *   FXServer
	 *     *   0
	 */
	@:native("GetGameBuildNumber")
	static function getGameBuildNumber():Int;

	/**
	 * This will have floating point inaccuracy.
	 */
	@:native("GetConvarFloat")
	static function getConvarFloat(varName:String, defaultValue:Float):Float;

	/**
	 * Returns the current game being executed.
	 * 
	 * Possible values:
	 * 
	 * | Return value | Meaning                        |

	 * | ------------ | ------------------------------ |

	 * | `fxserver`   | Server-side code ('Duplicity') |

	 * | `fivem`      | FiveM for GTA V                |

	 * | `libertym`   | LibertyM for GTA IV            |

	 * | `redm`       | RedM for Red Dead Redemption 2 |
	 */
	@:native("GetGameName")
	static function getGameName():String;

	/**
	 * Returns a list of entity handles (script GUID) for all entities in the specified pool - the data returned is an array as

	 * follows:
	 * 
	 * ```json
	 * [ 770, 1026, 1282, 1538, 1794, 2050, 2306, 2562, 2818, 3074, 3330, 3586, 3842, 4098, 4354, 4610, ...]
	 * ```
	 * 
	 * ### Supported pools
	 * 
	 * *   `CPed`: Peds (including animals) and players.
	 * *   `CObject`: Objects (props), doors, and projectiles.
	 * *   `CNetObject`: Networked objects
	 * *   `CVehicle`: Vehicles.
	 * *   `CPickup`: Pickups.
	 */
	@:native("GetGamePool")
	static function getGamePool(poolName:String):Dynamic;

	/**
	 * 
	 */
	@:native("GetInvokingResource")
	static function getInvokingResource():String;

	/**
	 * Gets the amount of metadata values with the specified key existing in the specified resource's manifest.

	 * See also: [Resource manifest](https://docs.fivem.net/docs/scripting-reference/resource-manifest/)
	 */
	@:native("GetNumResourceMetadata")
	static function getNumResourceMetadata(resourceName:String, metadataKey:String):Int;

	/**
	 * On the server this will return the players source, on the client it will return the player handle.
	 */
	@:native("GetPlayerFromStateBagName")
	static function getPlayerFromStateBagName(bagName:String):Int;

	/**
	 * 
	 */
	@:native("GetNumResources")
	static function getNumResources():Int;

	/**
	 * 
	 */
	@:native("GetInstanceId")
	static function getInstanceId():Int;

	/**
	 * 
	 */
	@:native("GetResourceByFindIndex")
	static function getResourceByFindIndex(findIndex:Int):String;

	/**
	 * Returns all commands that are registered in the command system.

	 * The data returned adheres to the following layout:
	 * 
	 * ```
	 * [

	 * {

	 * "name": "cmdlist",

	 * "resource": "resource",

	 * "arity" = -1,

	 * },

	 * {

	 * "name": "command1"

	 * "resource": "resource_2",

	 * "arity" = -1,

	 * }

	 * ]
	 * ```
	 */
	@:native("GetRegisteredCommands")
	static function getRegisteredCommands():Dynamic;

	/**
	 * A getter for [SET_PLAYER_WEAPON_DEFENSE_MODIFIER](#\_0x2D83BC011CA14A3C).
	 */
	@:native("GetPlayerWeaponDefenseModifier")
	static function getPlayerWeaponDefenseModifier(playerId:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetTrainState")
	static function getTrainState(train:Dynamic):Int;

	/**
	 * A getter for [SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER](#\_0x4A3DC7ECCC321032).
	 */
	@:native("GetPlayerMeleeWeaponDamageModifier")
	static function getPlayerMeleeWeaponDamageModifier(playerId:Dynamic):Float;

	/**
	 * A getter for [SET_PLAYER_WEAPON_DAMAGE_MODIFIER](#\_0xCE07B9F7817AADA3).
	 */
	@:native("GetPlayerWeaponDamageModifier")
	static function getPlayerWeaponDamageModifier(playerId:Dynamic):Float;

	/**
	 * Returns the value of a state bag key.
	 */
	@:native("GetStateBagValue")
	static function getStateBagValue(bagName:String, key:String):Dynamic;

	/**
	 * 
	 */
	@:native("GetTrainTrackIndex")
	static function getTrainTrackIndex(train:Dynamic):Int;

	/**
	 * Returns all commands registered by the specified resource.

	 * The data returned adheres to the following layout:
	 * 
	 * ```
	 * [

	 * {

	 * "name": "cmdlist",

	 * "resource": "example_resource",

	 * "arity" = -1,

	 * },

	 * {

	 * "name": "command1"

	 * "resource": "example_resource2",

	 * "arity" = -1,

	 * }

	 * ]
	 * ```
	 */
	@:native("GetResourceCommands")
	static function getResourceCommands(resource:String):Dynamic;

	/**
	 * A getter for [\_SET_PLAYER_WEAPON_DEFENSE_MODIFIER\_2](#\_0xBCFDE9EDE4CF27DC).
	 */
	@:native("GetPlayerWeaponDefenseModifier_2")
	static function getPlayerWeaponDefenseModifier2(playerId:Dynamic):Float;

	/**
	 * Gets the metadata value at a specified key/index from a resource's manifest.

	 * See also: [Resource manifest](https://docs.fivem.net/docs/scripting-reference/resource-manifest/)
	 */
	@:native("GetResourceMetadata")
	static function getResourceMetadata(resourceName:String, metadataKey:String, index:Int):String;

	/**
	 * Returns the current state of the specified resource.
	 */
	@:native("GetResourceState")
	static function getResourceState(resourceName:String):String;

	/**
	 * 
	 */
	@:native("GetStateBagKeys")
	static function getStateBagKeys(bagName:String):Dynamic;

	/**
	 * Gets the direction the train is facing
	 */
	@:native("GetTrainDirection")
	static function getTrainDirection(train:Dynamic):Bool;

	/**
	 * Returns the type of the passed vehicle.
	 * 
	 * For client scripts, reference the more detailed [GET_VEHICLE_TYPE_RAW](#\_0xDE73BC10) native.
	 * 
	 * ### Vehicle types
	 * 
	 * *   automobile
	 * *   bike
	 * *   boat
	 * *   heli
	 * *   plane
	 * *   submarine
	 * *   trailer
	 * *   train
	 */
	@:native("GetVehicleType")
	static function getVehicleType(vehicle:Dynamic):String;

	/**
	 * Gets the trains desired speed.
	 */
	@:native("GetTrainCruiseSpeed")
	static function getTrainCruiseSpeed(train:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleSteeringAngle")
	static function getVehicleSteeringAngle(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleHandbrake")
	static function getVehicleHandbrake(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsAceAllowed")
	static function isAceAllowed(object:String):Bool;

	/**
	 * A getter for [FREEZE_ENTITY_POSITION](#\_0x428CA6DBD1094446).
	 */
	@:native("IsEntityPositionFrozen")
	static function isEntityPositionFrozen(entity:Dynamic):Dynamic;

	/**
	 * Gets whether or not this is the CitizenFX server.
	 */
	@:native("IsDuplicityVersion")
	static function isDuplicityVersion():Bool;

	/**
	 * 
	 */
	@:native("IsVehicleEngineStarting")
	static function isVehicleEngineStarting(vehicle:Dynamic):Bool;

	/**
	 * Reads the contents of a text file in a specified resource.

	 * If executed on the client, this file has to be included in `files` in the resource manifest.

	 * Example: `local data = LoadResourceFile("devtools", "data.json")`
	 */
	@:native("LoadResourceFile")
	static function loadResourceFile(resourceName:String, fileName:String):String;

	/**
	 * 
	 */
	@:native("IsPrincipalAceAllowed")
	static function isPrincipalAceAllowed(principal:String, object:String):Bool;

	/**
	 * Scope exit for profiler.
	 */
	@:native("ProfilerExitScope")
	static function profilerExitScope():Dynamic;

	/**
	 * 
	 */
	@:native("RemoveConvarChangeListener")
	static function removeConvarChangeListener(cookie:Int):Dynamic;

	/**
	 * Registered commands can be executed by entering them in the client console (this works for client side and server side registered commands). Or by entering them in the server console/through an RCON client (only works for server side registered commands). Or if you use a supported chat resource, like the default one provided in the cfx-server-data repository, then you can enter the command in chat by prefixing it with a `/`.
	 * 
	 * Commands registered using this function can also be executed by resources, using the [`ExecuteCommand` native](#\_0x561C060B).
	 * 
	 * The restricted bool is not used on the client side. Permissions can only be checked on the server side, so if you want to limit your command with an ace permission automatically, make it a server command (by registering it in a server script).
	 * 
	 * **Example result**:
	 * 
	 * ![](https://i.imgur.com/TaCnG09.png)
	 */
	@:native("RegisterCommand")
	static function registerCommand(commandName:String, handler:haxe.Constraints.Function, restricted:Bool):Dynamic;

	/**
	 * Returns the owner ID of the specified entity.
	 */
	@:native("NetworkGetEntityOwner")
	static function networkGetEntityOwner(entity:Dynamic):Int;

	/**
	 * Returns true if the profiler is active.
	 */
	@:native("ProfilerIsRecording")
	static function profilerIsRecording():Bool;

	/**
	 * Scope entry for profiler.
	 */
	@:native("ProfilerEnterScope")
	static function profilerEnterScope(scopeName:String):Dynamic;

	/**
	 * An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
	 */
	@:native("RegisterResourceAsEventHandler")
	static function registerResourceAsEventHandler(eventName:String):Dynamic;

	/**
	 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
	 * 
	 * Removes a handler for changes to a state bag.
	 */
	@:native("RemoveStateBagChangeHandler")
	static function removeStateBagChangeHandler(cookie:Int):Dynamic;

	/**
	 * Internal function for setting a state bag value.
	 */
	@:native("SetStateBagValue")
	static function setStateBagValue(bagName:String, keyName:String, valueData:String, valueLength:Int, replicated:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("StateBagHasKey")
	static function stateBagHasKey(bagName:String, key:String):Dynamic;

	/**
	 * The backing function for TriggerEvent.
	 */
	@:native("TriggerEventInternal")
	static function triggerEventInternal(eventName:String, eventPayload:String, payloadLength:Int):Dynamic;

	/**
	 * Returns whether or not the currently executing event was canceled.
	 */
	@:native("WasEventCanceled")
	static function wasEventCanceled():Bool;

	/**
	 * Nonsynchronous [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
	 */
	@:native("SetResourceKvpFloatNoSync")
	static function setResourceKvpFloatNoSync(key:String, value:Float):Dynamic;

	/**
	 * A getter for [SET_RESOURCE_KVP](#\_0x21C7A35B).
	 */
	@:native("GetResourceKvpString")
	static function getResourceKvpString(key:String):String;

	/**
	 * Nonsynchronous [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
	 */
	@:native("SetResourceKvpIntNoSync")
	static function setResourceKvpIntNoSync(key:String, value:Int):Dynamic;

	/**
	 * A setter for [GET_RESOURCE_KVP_STRING](#\_0x5240DA5A).
	 */
	@:native("SetResourceKvp")
	static function setResourceKvp(key:String, value:String):Dynamic;

	/**
	 * 
	 */
	@:native("EndFindKvp")
	static function endFindKvp(handle:Int):Dynamic;

	/**
	 * A getter for [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938).
	 */
	@:native("GetResourceKvpFloat")
	static function getResourceKvpFloat(key:String):Float;

	/**
	 * 
	 */
	@:native("DeleteResourceKvp")
	static function deleteResourceKvp(key:String):Dynamic;

	/**
	 * 
	 */
	@:native("FindKvp")
	static function findKvp(handle:Int):String;

	/**
	 * A setter for [GET_RESOURCE_KVP_FLOAT](#\_0x35BDCEEA).
	 */
	@:native("SetResourceKvpFloat")
	static function setResourceKvpFloat(key:String, value:Float):Dynamic;

	/**
	 * Nonsynchronous [SET_RESOURCE_KVP](#\_0x21C7A35B) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
	 */
	@:native("SetResourceKvpNoSync")
	static function setResourceKvpNoSync(key:String, value:String):Dynamic;

	/**
	 * Nonsynchronous [DELETE_RESOURCE_KVP](#\_0x7389B5DF) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
	 */
	@:native("DeleteResourceKvpNoSync")
	static function deleteResourceKvpNoSync(key:String):Dynamic;

	/**
	 * 
	 */
	@:native("StartFindKvp")
	static function startFindKvp(prefix:String):Int;

	/**
	 * A getter for [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8).
	 */
	@:native("GetResourceKvpInt")
	static function getResourceKvpInt(key:String):Int;

	/**
	 * A setter for [GET_RESOURCE_KVP_INT](#\_0x557B586A).
	 */
	@:native("SetResourceKvpInt")
	static function setResourceKvpInt(key:String, value:Int):Dynamic;

}
