package fivem.client.natives;

@:native("_G")
extern class Cfx {
	/**
	 * Loads a minimap overlay from a GFx file in the current resource.
	 */
	@:native("ADD_MINIMAP_OVERLAY_WITH_DEPTH")
	static function addMinimapOverlayWithDepth(name:String, depth:Int):Int;

	/**
	 * This is similar to the PushScaleformMovieFunction natives, except it calls in the `TIMELINE` of a minimap overlay.
	 */
	@:native("CALL_MINIMAP_SCALEFORM_FUNCTION")
	static function callMinimapScaleformFunction(miniMap:Int, fnName:String):Bool;

	/**
	 * Adds the given model name hash to the list of valid models for the player ped's parachute pack.
	 */
	@:native("ADD_AUTHORIZED_PARACHUTE_PACK_MODEL")
	static function addAuthorizedParachutePackModel(modelNameHash:Int):Dynamic;

	/**
	 * Loads a minimap overlay from a GFx file in the current resource.
	 * 
	 * If you need to control the depth of overlay use [`ADD_MINIMAP_OVERLAY_WITH_DEPTH`](#\_0xED0935B5).
	 */
	@:native("ADD_MINIMAP_OVERLAY")
	static function addMinimapOverlay(name:String):Int;

	/**
	 * 
	 */
	@:native("ADD_TEXT_ENTRY_BY_HASH")
	static function addTextEntryByHash(entryKey:Int, entryText:String):Dynamic;

	/**
	 * Experimental natives, please do not use in a live environment.
	 */
	@:native("ADD_REPLACE_TEXTURE")
	static function addReplaceTexture(origTxd:String, origTxn:String, newTxd:String, newTxn:String):Dynamic;

	/**
	 * Break off vehicle wheel by index. The `leaveDebrisTrail` flag requires `putOnFire` to be true.
	 */
	@:native("BREAK_OFF_VEHICLE_WHEEL")
	static function breakOffVehicleWheel(vehicle:Dynamic, wheelIndex:Int, leaveDebrisTrail:Bool, deleteWheel:Bool, unknownFlag:Bool, putOnFire:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CLONE_TIMECYCLE_MODIFIER")
	static function cloneTimecycleModifier(sourceModifierName:String, clonedModifierName:String):Int;

	/**
	 * 
	 */
	@:native("APPLY_WEATHER_CYCLES")
	static function applyWeatherCycles(numEntries:Int, msPerCycle:Int):Bool;

	/**
	 * Creates a runtime texture from the specified file in the current resource or a base64 data URL.
	 */
	@:native("CREATE_RUNTIME_TEXTURE_FROM_IMAGE")
	static function createRuntimeTextureFromImage(txd:Int, txn:String, fileName:String):Int;

	/**
	 * Destroys a DUI browser.
	 */
	@:native("DESTROY_DUI")
	static function destroyDui(duiObject:Int):Dynamic;

	/**
	 * Creates a runtime texture dictionary with the specified name.
	 * Example:
	 * 
	 * ```lua
	 * local txd = CreateRuntimeTxd('meow')
	 * ```
	 */
	@:native("CREATE_RUNTIME_TXD")
	static function createRuntimeTxd(name:String):Int;

	/**
	 * Create a clean timecycle modifier. See [`SET_TIMECYCLE_MODIFIER_VAR`](#\_0x6E0A422B) to add variables.
	 */
	@:native("CREATE_TIMECYCLE_MODIFIER")
	static function createTimecycleModifier(modifierName:String):Int;

	/**
	 * Activates built-in timecycle editing tool.
	 */
	@:native("ACTIVATE_TIMECYCLE_EDITOR")
	static function activateTimecycleEditor():Dynamic;

	/**
	 * 
	 */
	@:native("ADD_TEXT_ENTRY")
	static function addTextEntry(entryKey:String, entryText:String):Dynamic;

	/**
	 * Removes vehicle xenon lights custom RGB color.
	 */
	@:native("CLEAR_VEHICLE_XENON_LIGHTS_CUSTOM_COLOR")
	static function clearVehicleXenonLightsCustomColor(vehicle:Dynamic):Dynamic;

	/**
	 * Creates a volume where water effects do not apply.
	 * Useful for preventing water collisions from flooding areas underneath them.
	 * This has no effect on waterquads, only water created from drawables and collisions.
	 * Don't create volumes when your local ped is swimming (e.g. use IS_PED_SWIMMING in your scripts before you call this)
	 */
	@:native("CREATE_DRY_VOLUME")
	static function createDryVolume(xMin:Float, yMin:Float, zMin:Float, xMax:Float, yMax:Float, zMax:Float):Int;

	/**
	 * Creates a runtime texture from a DUI handle.
	 */
	@:native("CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE")
	static function createRuntimeTextureFromDuiHandle(txd:Int, txn:String, duiHandle:String):Int;

	/**
	 * Checks whether the vehicle consumes fuel. The check is done based on petrol tank volume and vehicle type. Bicycles and vehicles with petrol tank volume equal to zero (only bicycles by default) do not use fuel. All other vehicles do.
	 * 
	 * You can customize petrol tank volume using [`SET_HANDLING_FLOAT`](#\_0x90DD01C)/[`SET_VEHICLE_HANDLING_FLOAT`](#\_0x488C86D2) natives with `fieldName` equal to `fPetrolTankVolume`.
	 */
	@:native("DOES_VEHICLE_USE_FUEL")
	static function doesVehicleUseFuel(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("DOES_TIMECYCLE_MODIFIER_HAS_VAR")
	static function doesTimecycleModifierHasVar(modifierName:String, varName:String):Bool;

	/**
	 * Resets the screen's draw-origin which was changed by the function [`SET_DRAW_ORIGIN`](#\_0xE10198D5) back to `x=0, y=0`. See [`SET_DRAW_ORIGIN`](#\_0xE10198D5) for further information.
	 */
	@:native("CLEAR_DRAW_ORIGIN")
	static function clearDrawOrigin():Dynamic;

	/**
	 * Adds the given model name hash to the list of valid models for the player ped's parachute.
	 */
	@:native("ADD_AUTHORIZED_PARACHUTE_MODEL")
	static function addAuthorizedParachuteModel(modelNameHash:Int):Dynamic;

	/**
	 * Commits the backing pixels to the specified runtime texture.
	 */
	@:native("COMMIT_RUNTIME_TEXTURE")
	static function commitRuntimeTexture(tex:Int):Dynamic;

	/**
	 * Adds an output for the specified audio submix.
	 */
	@:native("ADD_AUDIO_SUBMIX_OUTPUT")
	static function addAudioSubmixOutput(submixId:Int, outputSubmixId:Int):Dynamic;

	/**
	 * Adds new health config.
	 */
	@:native("ADD_HEALTH_CONFIG")
	static function addHealthConfig(configName:String, defaultHealth:Float, defaultArmor:Float, defaultEndurance:Float, fatiguedHealthThreshold:Float, injuredHealthThreshold:Float, dyingHealthThreshold:Float, hurtHealthThreshold:Float, dogTakedownThreshold:Float, writheFromBulletThreshold:Float, meleeCardinalFatalAttack:Bool, invincible:Bool):Dynamic;

	/**
	 * Disables the specified `rawKeyIndex`, making it not trigger the regular `IS_RAW_KEY_*` natives.
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("DISABLE_RAW_KEY_THIS_FRAME")
	static function disableRawKeyThisFrame(rawKeyIndex:Int):Bool;

	/**
	 * Creates a DUI browser. This can be used to draw on a runtime texture using CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
	 */
	@:native("CREATE_DUI")
	static function createDui(url:String, width:Int, height:Int):Int;

	/**
	 * Disables the game's afk camera that starts panning around after 30 seconds of inactivity.
	 */
	@:native("DISABLE_IDLE_CAMERA")
	static function disableIdleCamera(state:Bool):Dynamic;

	/**
	 * In compare to `0x31DC8D3F216D8509` return true if texture its created when `0x31DC8D3F216D8509` return true if you put there any id in valid range
	 */
	@:native("DOES_TEXTURE_EXIST")
	static function doesTextureExist(textureId:Int):Dynamic;

	/**
	 * Disables the game's afk camera that starts panning around after 30 seconds of inactivity(While riding in a car as a passenger)
	 */
	@:native("DISABLE_VEHICLE_PASSENGER_IDLE_CAMERA")
	static function disableVehiclePassengerIdleCamera(state:Bool):Dynamic;

	/**
	 * Creates an audio submix with the specified name, or gets the existing audio submix by that name.
	 */
	@:native("CREATE_AUDIO_SUBMIX")
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
	@:native("DOOR_SYSTEM_GET_ACTIVE")
	static function doorSystemGetActive():Dynamic;

	/**
	 * Creates a blank runtime texture.
	 */
	@:native("CREATE_RUNTIME_TEXTURE")
	static function createRuntimeTexture(txd:Int, txn:String, width:Int, height:Int):Int;

	/**
	 * DRAW_RECT, but with a rotation. Seems to be broken.
	 */
	@:native("DRAW_RECT_ROTATED")
	static function drawRectRotated(x:Float, y:Float, width:Float, height:Float, rotation:Float, r:Int, g:Int, b:Int, a:Int):Dynamic;

	/**
	 * 
	 */
	@:native("END_FIND_PICKUP")
	static function endFindPickup(findHandle:Int):Dynamic;

	/**
	 * Allows drawing advanced light effects, known as coronas, which support flares, volumetric lighting, and customizable glow properties.
	 */
	@:native("DRAW_CORONA")
	static function drawCorona(posX:Float, posY:Float, posZ:Float, size:Float, alpha:Int, red:Int, green:Int, blue:Int, intensity:Float, zBias:Float, dirX:Float, dirY:Float, dirZ:Float, viewThreshold:Float, innerAngle:Float, outerAngle:Float, flags:Int):Dynamic;

	/**
	 * Draw a glow sphere this frame. Up to 256 per single frame.
	 */
	@:native("DRAW_GLOW_SPHERE")
	static function drawGlowSphere(posX:Float, posY:Float, posZ:Float, radius:Float, colorR:Int, colorG:Int, colorB:Int, intensity:Float, invert:Bool, marker:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DRAW_POLY")
	static function drawPoly(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, x3:Float, y3:Float, z3:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * Draw the prepared light.
	 */
	@:native("DRAW_LIGHT")
	static function drawLight():Dynamic;

	/**
	 * Disables the game's world horizon lods rendering (see `farlods.#dd`).
	 * Using the island hopper natives might also affect this state.
	 */
	@:native("DISABLE_WORLDHORIZON_RENDERING")
	static function disableWorldhorizonRendering(state:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DRAW_LINE")
	static function drawLine(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * 
	 */
	@:native("FIND_NEXT_OBJECT")
	static function findNextObject(findHandle:Int, outEntity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("FIND_NEXT_PED")
	static function findNextPed(findHandle:Int, outEntity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("END_FIND_PED")
	static function endFindPed(findHandle:Int):Dynamic;

	/**
	 * This native is not implemented.
	 */
	@:native("EXPERIMENTAL_LOAD_CLONE_SYNC")
	static function experimentalLoadCloneSync(entity:Dynamic, data:String):Dynamic;

	/**
	 * 
	 */
	@:native("END_FIND_OBJECT")
	static function endFindObject(findHandle:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DRAW_BOX")
	static function drawBox(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * This native is not implemented.
	 */
	@:native("EXPERIMENTAL_LOAD_CLONE_CREATE")
	static function experimentalLoadCloneCreate(data:String, objectId:Int, tree:String):Dynamic;

	/**
	 * 
	 */
	@:native("FIND_FIRST_PED")
	static function findFirstPed(outEntity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("DOOR_SYSTEM_GET_SIZE")
	static function doorSystemGetSize():Int;

	/**
	 * 
	 */
	@:native("FIND_NEXT_PICKUP")
	static function findNextPickup(findHandle:Int, outEntity:Dynamic):Bool;

	/**
	 * Like DRAW_RECT, but it's a line.
	 */
	@:native("DRAW_LINE_2D")
	static function drawLine2D(x1:Float, y1:Float, x2:Float, y2:Float, width:Float, r:Int, g:Int, b:Int, a:Int):Dynamic;

	/**
	 * This native is not implemented.
	 */
	@:native("EXPERIMENTAL_SAVE_CLONE_CREATE")
	static function experimentalSaveCloneCreate(entity:Dynamic):String;

	/**
	 * 
	 */
	@:native("FIND_FIRST_OBJECT")
	static function findFirstObject(outEntity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("FIND_FIRST_PICKUP")
	static function findFirstPickup(outEntity:Dynamic):Int;

	/**
	 * A getter for [SET_AMBIENT_VEHICLE_RANGE_MULTIPLIER_THIS_FRAME](#\_0x90B6DA738A9A25DA).
	 */
	@:native("GET_AMBIENT_VEHICLE_RANGE_MULTIPLIER")
	static function getAmbientVehicleRangeMultiplier():Float;

	/**
	 * 
	 */
	@:native("GET_CALMING_QUAD_COUNT")
	static function getCalmingQuadCount():Int;

	/**
	 * 
	 */
	@:native("FIND_FIRST_VEHICLE")
	static function findFirstVehicle(outEntity:Dynamic):Int;

	/**
	 * Returns all rope handles. The data returned adheres to the following layout:
	 * 
	 * ```
	 * [ 770, 1026, 1282, 1538, 1794, 2050, 2306, 2562, 2818, 3074, 3330, 3586, 3842, 4098, 4354, 4610, ...]
	 * ```
	 */
	@:native("GET_ALL_ROPES")
	static function getAllRopes():Dynamic;

	/**
	 * 
	 */
	@:native("FIND_NEXT_VEHICLE")
	static function findNextVehicle(findHandle:Int, outEntity:Dynamic):Bool;

	/**
	 * Forces the game snow pass to render.
	 */
	@:native("FORCE_SNOW_PASS")
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
	@:native("GET_ALL_VEHICLE_MODELS")
	static function getAllVehicleModels():Dynamic;

	/**
	 * Gets the current aspect ratio
	 * 
	 * ```lua
	 * local ratio = GetAspectRatio()
	 * print(string.format("%.2f", ratio))
	 * ```
	 */
	@:native("GET_ASPECT_RATIO")
	static function getAspectRatio():Float;

	/**
	 * This native is not implemented.
	 */
	@:native("EXPERIMENTAL_SAVE_CLONE_SYNC")
	static function experimentalSaveCloneSync(entity:Dynamic):String;

	/**
	 * Returns all player indices for 'active' physical players known to the client.
	 * The data returned adheres to the following layout:
	 * 
	 * ```
	 * [127, 42, 13, 37]
	 * ```
	 */
	@:native("GET_ACTIVE_PLAYERS")
	static function getActivePlayers():Dynamic;

	/**
	 * 
	 */
	@:native("END_FIND_VEHICLE")
	static function endFindVehicle(findHandle:Int):Dynamic;

	/**
	 * Get all track nodes and their track ids within the radius of the specified coordinates.
	 */
	@:native("GET_CLOSEST_TRACK_NODES")
	static function getClosestTrackNodes(position:Dynamic, radius:Float):Dynamic;

	/**
	 * A getter for [SET_AMBIENT_PED_RANGE_MULTIPLIER_THIS_FRAME](#\_0x0B919E1FB47CC4E0).
	 */
	@:native("GET_AMBIENT_PED_RANGE_MULTIPLIER")
	static function getAmbientPedRangeMultiplier():Float;

	/**
	 * 
	 */
	@:native("GET_CALMING_QUAD_DAMPENING")
	static function getCalmingQuadDampening(waterQuad:Int, calmingQuadDampening:Dynamic):Bool;

	/**
	 * This native returns the index of a calming quad if the given point is inside its bounds.
	 */
	@:native("GET_CALMING_QUAD_AT_COORDS")
	static function getCalmingQuadAtCoords(x:Float, y:Float):Int;

	/**
	 * Returns all track junctions on the client
	 * The data returned adheres to the following structure:
	 * 
	 * ```
	 * [1, 2, 4, 6, 69, 420]
	 * ```
	 */
	@:native("GET_ALL_TRACK_JUNCTIONS")
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
	@:native("GET_CURRENT_SCREEN_RESOLUTION")
	static function getCurrentScreenResolution(width:Dynamic, height:Dynamic):Dynamic;

	/**
	 * A getter for [SET_FALL_DAMAGE_LAND_ON_FOOT_MULTIPLIER](#\_0x164A08C9).
	 */
	@:native("GET_FALL_DAMAGE_LAND_ON_FOOT_MULTIPLIER")
	static function getFallDamageLandOnFootMultiplier():Float;

	/**
	 * 
	 */
	@:native("GET_CALMING_QUAD_BOUNDS")
	static function getCalmingQuadBounds(waterQuad:Int, minX:Dynamic, minY:Dynamic, maxX:Dynamic, maxY:Dynamic):Bool;

	/**
	 * Returns whether a specific client configuration flag is currently enabled.
	 * You can find a list of configuration flags in [`SET_CLIENT_CONFIG_BOOL`](#\_0xD174EF7E).
	 */
	@:native("GET_CLIENT_CONFIG_BOOL")
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
	@:native("GET_MINIMAP_TYPE")
	static function getMinimapType():Int;

	/**
	 * 
	 */
	@:native("GET_HUD_COMPONENT_SIZE")
	static function getHudComponentSize(id:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_ENTITIES_EXTENTS")
	static function getInteriorEntitiesExtents(interiorId:Int, bbMinX:Dynamic, bbMinY:Dynamic, bbMinZ:Dynamic, bbMaxX:Dynamic, bbMaxY:Dynamic, bbMaxZ:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_FUEL_CONSUMPTION_STATE")
	static function getFuelConsumptionState():Bool;

	/**
	 * This native returns the currently used game's name.
	 */
	@:native("GET_CURRENT_GAME_NAME")
	static function getCurrentGameName():String;

	/**
	 * An alternative to [GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS](#\_0xA6E7F1CEB523E171) that uses local collection indexing instead of the global one.
	 */
	@:native("GET_NUMBER_OF_PED_COLLECTION_PROP_TEXTURE_VARIATIONS")
	static function getNumberOfPedCollectionPropTextureVariations(ped:Dynamic, anchorPoint:Int, collection:String, propIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_PORTAL_ENTITY_ARCHETYPE")
	static function getInteriorPortalEntityArchetype(interiorId:Int, portalIndex:Int, entityIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_PORTAL_CORNER_POSITION")
	static function getInteriorPortalCornerPosition(interiorId:Int, portalIndex:Int, cornerIndex:Int, posX:Dynamic, posY:Dynamic, posZ:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_ROOM_TIMECYCLE")
	static function getInteriorRoomTimecycle(interiorId:Int, roomIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_PORTAL_ROOM_TO")
	static function getInteriorPortalRoomTo(interiorId:Int, portalIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_PORTAL_ENTITY_COUNT")
	static function getInteriorPortalEntityCount(interiorId:Int, portalIndex:Int):Int;

	/**
	 * A getter for [SET_PED_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x95E3D6257B166CF2).
	 */
	@:native("GET_PED_DENSITY_MULTIPLIER")
	static function getPedDensityMultiplier():Float;

	/**
	 * Returns the peer address of the remote game server that the user is currently connected to.
	 */
	@:native("GET_CURRENT_SERVER_ENDPOINT")
	static function getCurrentServerEndpoint():String;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_ROOM_EXTENTS")
	static function getInteriorRoomExtents(interiorId:Int, roomIndex:Int, bbMinX:Dynamic, bbMinY:Dynamic, bbMinZ:Dynamic, bbMaxX:Dynamic, bbMaxY:Dynamic, bbMaxZ:Dynamic):Dynamic;

	/**
	 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
	 * 
	 * Returns the memory address of an entity.
	 * 
	 * This native is intended for singleplayer debugging, and may not be available during multiplayer.
	 */
	@:native("GET_ENTITY_ADDRESS")
	static function getEntityAddress(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_ROOM_NAME")
	static function getInteriorRoomName(interiorId:Int, roomIndex:Int):String;

	/**
	 * 
	 */
	@:native("GET_FUEL_CONSUMPTION_RATE_MULTIPLIER")
	static function getFuelConsumptionRateMultiplier():Float;

	/**
	 * Returns the NUI window handle for a specified DUI browser object.
	 */
	@:native("GET_DUI_HANDLE")
	static function getDuiHandle(duiObject:Int):String;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_PORTAL_ENTITY_FLAG")
	static function getInteriorPortalEntityFlag(interiorId:Int, portalIndex:Int, entityIndex:Int):Int;

	/**
	 * Returns the zoom level data by index from mapzoomdata.meta file.
	 */
	@:native("GET_MAP_ZOOM_DATA_LEVEL")
	static function getMapZoomDataLevel(index:Int, zoomScale:Dynamic, zoomSpeed:Dynamic, scrollSpeed:Dynamic, tilesX:Dynamic, tilesY:Dynamic):Bool;

	/**
	 * A getter for [SET_FALL_DAMAGE_MULTIPLIER](#\_0xF2E1A531).
	 */
	@:native("GET_FALL_DAMAGE_MULTIPLIER")
	static function getFallDamageMultiplier():Float;

	/**
	 * An analogue of [GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS](#\_0x27561561732A7842) that returns number of drawable variations inside a single collection instead of the total number across all collections.
	 */
	@:native("GET_NUMBER_OF_PED_COLLECTION_DRAWABLE_VARIATIONS")
	static function getNumberOfPedCollectionDrawableVariations(ped:Dynamic, componentId:Int, collection:String):Int;

	/**
	 * Returns the world matrix of the specified camera. To turn this into a view matrix, calculate the inverse.
	 */
	@:native("GET_CAM_MATRIX")
	static function getCamMatrix(camera:Dynamic, rightVector:Dynamic, forwardVector:Dynamic, upVector:Dynamic, position:Dynamic):Dynamic;

	/**
	 * An analogue to [GET_PED_PROP_INDEX](#\_0x898CC20EA75BACD8) that returns collection name instead of the global drawable index.
	 * 
	 * Should be used together with [GET_PED_PROP_COLLECTION_LOCAL_INDEX](#\_0xCD420AD1).
	 */
	@:native("GET_PED_PROP_COLLECTION_NAME")
	static function getPedPropCollectionName(ped:Dynamic, anchorPoint:Int):String;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_ROTATION")
	static function getInteriorRotation(interiorId:Int, rotx:Dynamic, rotY:Dynamic, rotZ:Dynamic, rotW:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_NUI_CURSOR_POSITION")
	static function getNuiCursorPosition(x:Dynamic, y:Dynamic):Dynamic;

	/**
	 * A getter for [SET_GLOBAL_PASSENGER_MASS_MULTIPLIER](#\_0x3422291C).
	 */
	@:native("GET_GLOBAL_PASSENGER_MASS_MULTIPLIER")
	static function getGlobalPassengerMassMultiplier():Float;

	/**
	 * Returns global drawable index based on the local one. Is it a reverse to [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) natives.
	 * 
	 * Drawables are stored inside collections. Each collection usually corresponds to a certain DCL or the base game.
	 * 
	 * If all drawables from all collections are placed into one continuous array - the global index will correspond to the index of drawable in such array. Local index is index of drawable in this array relative to the start of the given collection.
	 */
	@:native("GET_PED_DRAWABLE_GLOBAL_INDEX_FROM_COLLECTION")
	static function getPedDrawableGlobalIndexFromCollection(ped:Dynamic, componentId:Int, collection:String, drawableId:Int):Int;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_PORTAL_ENTITY_ROTATION")
	static function getInteriorPortalEntityRotation(interiorId:Int, portalIndex:Int, entityIndex:Int, rotX:Dynamic, rotY:Dynamic, rotZ:Dynamic, rotW:Dynamic):Dynamic;

	/**
	 * Returns the world position the pointer is hovering on the pause map.
	 */
	@:native("GET_PAUSE_MAP_POINTER_WORLD_POSITION")
	static function getPauseMapPointerWorldPosition():Dynamic;

	/**
	 * See [SET_SCRIPT_GFX_ALIGN](#\_0xB8A850F20A067EB6) for details about how gfx align works.
	 */
	@:native("GET_HUD_COMPONENT_ALIGN")
	static function getHudComponentAlign(id:Int, horizontalAlign:Dynamic, verticalAlign:Dynamic):Dynamic;

	/**
	 * Gets local index inside a collection (which can be obtained using [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B)) for the given global drawable ID. The collection name and index are used in functions like [SET_PED_COLLECTION_COMPONENT_VARIATION](#\_0x88711BBA).
	 */
	@:native("GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE")
	static function getPedCollectionLocalIndexFromDrawable(ped:Dynamic, componentId:Int, drawableId:Int):Int;

	/**
	 * 
	 */
	@:native("GET_HUD_COMPONENT_NAME")
	static function getHudComponentName(id:Int):String;

	/**
	 * An alternative to [GET_NUMBER_OF_PED_TEXTURE_VARIATIONS](#\_0x8F7156A3142A6BAD) that uses local collection indexing instead of the global one.
	 */
	@:native("GET_NUMBER_OF_PED_COLLECTION_TEXTURE_VARIATIONS")
	static function getNumberOfPedCollectionTextureVariations(ped:Dynamic, componentId:Int, collection:String, drawableId:Int):Int;

	/**
	 * Returns global prop index based on the local one. Is it a reverse to [GET_PED_COLLECTION_NAME_FROM_PROP](#\_0x8ED0C17) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_PROP](#\_0xFBDB885F) natives.
	 * 
	 * Props are stored inside collections. Each collection usually corresponds to a certain DCL or the base game.
	 * 
	 * If all props from all collections are placed into one continuous array - the global index will correspond to the index of the prop in such array. Local index is index of the prop in this array relative to the start of the given collection.
	 */
	@:native("GET_PED_PROP_GLOBAL_INDEX_FROM_COLLECTION")
	static function getPedPropGlobalIndexFromCollection(ped:Dynamic, anchorPoint:Int, collection:String, propIndex:Int):Int;

	/**
	 * Returns entity's archetype name, if available.
	 */
	@:native("GET_ENTITY_ARCHETYPE_NAME")
	static function getEntityArchetypeName(entity:Dynamic):String;

	/**
	 * Returns the bone matrix of the specified bone id. usefull for entity attachment
	 */
	@:native("GET_PED_BONE_MATRIX")
	static function getPedBoneMatrix(ped:Dynamic, boneId:Int, forwardVector:Dynamic, rightVector:Dynamic, upVector:Dynamic, position:Dynamic):Dynamic;

	/**
	 * Gets local index inside a collection (which can be obtained using [GET_PED_COLLECTION_NAME_FROM_PROP](#\_0x8ED0C17)) for the given global prop index. The collection name and index are used in functions like [SET_PED_COLLECTION_PROP_INDEX](#\_0x75240BCB).
	 */
	@:native("GET_PED_COLLECTION_LOCAL_INDEX_FROM_PROP")
	static function getPedCollectionLocalIndexFromProp(ped:Dynamic, anchorPoint:Int, propIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_POSITION")
	static function getInteriorPosition(interiorId:Int, posX:Dynamic, posY:Dynamic, posZ:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_PORTAL_FLAG")
	static function getInteriorPortalFlag(interiorId:Int, portalIndex:Int):Int;

	/**
	 * Gets collection name for the given global prop index. Together with [GET_PED_COLLECTION_LOCAL_INDEX_FROM_PROP](#\_0xFBDB885F) is used to get collection and local index (inside the given collection) of the prop. The collection name and index are used in functions like [SET_PED_COLLECTION_PROP_INDEX](#\_0x75240BCB).
	 */
	@:native("GET_PED_COLLECTION_NAME_FROM_PROP")
	static function getPedCollectionNameFromProp(ped:Dynamic, anchorPoint:Int, propIndex:Int):String;

	/**
	 * Unlike [GET_PLAYER_INVINCIBLE](#\_0xB721981B2B939E07) this native gets both [SET_PLAYER_INVINCIBLE_KEEP_RAGDOLL_ENABLED](#\_0x6BC97F4F4BB3C04B) and [SET_PLAYER_INVINCIBLE](#\_0x239528EACDC3E7DE) invincibility state.
	 */
	@:native("GET_PLAYER_INVINCIBLE_2")
	static function getPlayerInvincible2(player:Dynamic):Bool;

	/**
	 * A getter for [\_SET_PED_FACE_FEATURE](#\_0x71A5C1DBA060049E). Returns 0.0 if fails to get.
	 */
	@:native("GET_PED_FACE_FEATURE")
	static function getPedFaceFeature(ped:Dynamic, index:Int):Float;

	/**
	 * 
	 */
	@:native("GET_PED_MOVEMENT_CLIPSET")
	static function getPedMovementClipset(ped:Dynamic):Int;

	/**
	 * A getter for [\_SET_PED_HAIR_COLOR](#\_0x4CFFC65454C93A49). Returns -1 if fails to get.
	 */
	@:native("GET_PED_HAIR_HIGHLIGHT_COLOR")
	static function getPedHairHighlightColor(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_ROOM_INDEX_BY_HASH")
	static function getInteriorRoomIndexByHash(interiorId:Int, roomHash:Int):Int;

	/**
	 * An analogue to [GET_PED_DRAWABLE_VARIATION](#\_0x67F3780DD425D4FC) that returns collection local drawable index (inside [GET_PED_DRAWABLE_VARIATION_COLLECTION_NAME](#\_0xBCE0AB63) collection) instead of the global drawable index.
	 */
	@:native("GET_PED_DRAWABLE_VARIATION_COLLECTION_LOCAL_INDEX")
	static function getPedDrawableVariationCollectionLocalIndex(ped:Dynamic, componentId:Int):Int;

	/**
	 * A getter for [SET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER](#\_0xAE540335B4ABC4E2).
	 */
	@:native("GET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER")
	static function getPlayerMeleeWeaponDefenseModifier(playerId:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_ROOM_FLAG")
	static function getInteriorRoomFlag(interiorId:Int, roomIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GET_PED_SCALE")
	static function getPedScale(ped:Dynamic):Float;

	/**
	 * A getter for [SET_KILL_FALL_HEIGHT](#\_0x7E8D83E4).
	 */
	@:native("GET_KILL_FALL_HEIGHT")
	static function getKillFallHeight():Float;

	/**
	 * 
	 */
	@:native("GET_NETWORK_WALK_MODE")
	static function getNetworkWalkMode():Dynamic;

	/**
	 * A getter for [\_SET_PED_HAIR_COLOR](#\_0x4CFFC65454C93A49). Returns -1 if fails to get.
	 */
	@:native("GET_PED_HAIR_COLOR")
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
	@:native("GET_PED_DECORATIONS")
	static function getPedDecorations(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_ROPE_TIME_MULTIPLIER")
	static function getRopeTimeMultiplier(rope:Int):Float;

	/**
	 * Returns number of variation collections available for the given Ped.
	 * 
	 * Collections are groups of drawable components or props available for the given Ped. Usually collection corresponds to a certain DLC or the base game. See [SET_PED_COLLECTION_COMPONENT_VARIATION](#\_0x88711BBA), [SET_PED_COLLECTION_PROP_INDEX](#\_0x75240BCB), [GET_NUMBER_OF_PED_COLLECTION_DRAWABLE_VARIATIONS](#\_0x310D0271) etc natives for more details on how to work with collections.
	 * 
	 * `GET_PED_COLLECTIONS_COUNT` can be used together with [GET_PED_COLLECTION_NAME](#\_0xFED5D83A) to list all collections attached to Ped.
	 */
	@:native("GET_PED_COLLECTIONS_COUNT")
	static function getPedCollectionsCount(ped:Dynamic):Int;

	/**
	 * A getter for [SET_PED_HEAD_OVERLAY](#\_0x48F44967FA05CC1E) and [\_SET_PED_HEAD_OVERLAY_COLOR](#\_0x497BF74A7B9CB952) natives.
	 */
	@:native("GET_PED_HEAD_OVERLAY_DATA")
	static function getPedHeadOverlayData(ped:Dynamic, index:Int, overlayValue:Dynamic, colourType:Dynamic, firstColour:Dynamic, secondColour:Dynamic, overlayOpacity:Dynamic):Bool;

	/**
	 * An analogue to [GET_PED_DRAWABLE_VARIATION](#\_0x67F3780DD425D4FC) that returns collection name instead of the global drawable index.
	 * 
	 * Should be used together with [GET_PED_DRAWABLE_VARIATION_COLLECTION_LOCAL_INDEX](#\_0x9970386F).
	 */
	@:native("GET_PED_DRAWABLE_VARIATION_COLLECTION_NAME")
	static function getPedDrawableVariationCollectionName(ped:Dynamic, componentId:Int):String;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_PORTAL_COUNT")
	static function getInteriorPortalCount(interiorId:Int):Int;

	/**
	 * Gets a ped model's health config.
	 */
	@:native("GET_PED_MODEL_HEALTH_CONFIG")
	static function getPedModelHealthConfig(modelHash:Int):Int;

	/**
	 * Gets the coordinates of a specific track node.
	 */
	@:native("GET_TRACK_NODE_COORDS")
	static function getTrackNodeCoords(trackIndex:Int, trackNode:Int, coords:Dynamic):Dynamic;

	/**
	 * A getter for [SET_RANDOM_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0xB3B3359379FE77D3).
	 * Same as vehicle density multiplier.
	 */
	@:native("GET_RANDOM_VEHICLE_DENSITY_MULTIPLIER")
	static function getRandomVehicleDensityMultiplier():Float;

	/**
	 * 
	 */
	@:native("GET_PED_WETNESS_HEIGHT")
	static function getPedWetnessHeight(ped:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_PORTAL_ROOM_FROM")
	static function getInteriorPortalRoomFrom(interiorId:Int, portalIndex:Int):Int;

	/**
	 * Gets the ratio that a door is open for on a train.
	 */
	@:native("GET_TRAIN_DOOR_OPEN_RATIO")
	static function getTrainDoorOpenRatio(train:Dynamic, doorIndex:Int):Float;

	/**
	 * 
	 */
	@:native("GET_PLAYER_STAMINA")
	static function getPlayerStamina(playerId:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_PORTAL_ENTITY_POSITION")
	static function getInteriorPortalEntityPosition(interiorId:Int, portalIndex:Int, entityIndex:Int, posX:Dynamic, posY:Dynamic, posZ:Dynamic):Dynamic;

	/**
	 * An analogue of [GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS](#\_0x5FAF9754E789FB47) that returns number of prop variations inside a single collection instead of the total number across all collections.
	 */
	@:native("GET_NUMBER_OF_PED_COLLECTION_PROP_DRAWABLE_VARIATIONS")
	static function getNumberOfPedCollectionPropDrawableVariations(ped:Dynamic, anchorPoint:Int, collection:String):Int;

	/**
	 * 
	 */
	@:native("GET_INTERIOR_ROOM_COUNT")
	static function getInteriorRoomCount(interiorId:Int):Int;

	/**
	 * Returns name of collection under given index for the given Ped.
	 * 
	 * Collections are groups of drawable components or props available for the given Ped. Usually collection corresponds to a certain DLC or the base game. See [SET_PED_COLLECTION_COMPONENT_VARIATION](#\_0x88711BBA), [SET_PED_COLLECTION_PROP_INDEX](#\_0x75240BCB), [GET_NUMBER_OF_PED_COLLECTION_DRAWABLE_VARIATIONS](#\_0x310D0271) etc natives for more details on how to work with collections.
	 * 
	 * `GET_PED_COLLECTION_NAME` can be used together with [GET_PED_COLLECTIONS_COUNT](#\_0x45946359) to list all collections attached to Ped.
	 */
	@:native("GET_PED_COLLECTION_NAME")
	static function getPedCollectionName(ped:Dynamic, index:Int):String;

	/**
	 * 
	 */
	@:native("GET_ROPE_UPDATE_ORDER")
	static function getRopeUpdateOrder(rope:Int):Int;

	/**
	 * 
	 */
	@:native("GET_PLAYER_SERVER_ID")
	static function getPlayerServerId(player:Dynamic):Int;

	/**
	 * A getter for [SET_PARKED_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0xEAE6DCC7EEE3DB1D).
	 */
	@:native("GET_PARKED_VEHICLE_DENSITY_MULTIPLIER")
	static function getParkedVehicleDensityMultiplier():Float;

	/**
	 * Gets collection name for the given global drawable ID. Together with [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) is used to get collection and local index (inside the given collection) of the drawable. The collection name and index are used in functions like [SET_PED_COLLECTION_COMPONENT_VARIATION](#\_0x88711BBA).
	 */
	@:native("GET_PED_COLLECTION_NAME_FROM_DRAWABLE")
	static function getPedCollectionNameFromDrawable(ped:Dynamic, componentId:Int, drawableId:Int):String;

	/**
	 * Gets the row pitch of the specified runtime texture, for use when creating data for `SET_RUNTIME_TEXTURE_ARGB_DATA`.
	 */
	@:native("GET_RUNTIME_TEXTURE_PITCH")
	static function getRuntimeTexturePitch(tex:Int):Int;

	/**
	 * Gets a ped model's personality type.
	 */
	@:native("GET_PED_MODEL_PERSONALITY")
	static function getPedModelPersonality(modelHash:Int):Int;

	/**
	 * A getter for [SET_PED_SWEAT](#\_0x27B0405F59637D1F).
	 */
	@:native("GET_PED_SWEAT")
	static function getPedSweat(ped:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_TRACK_BRAKING_DISTANCE")
	static function getTrackBrakingDistance(track:Int):Float;

	/**
	 * Returns the amount of variables available to be applied on timecycle modifiers.
	 */
	@:native("GET_TIMECYCLE_VAR_COUNT")
	static function getTimecycleVarCount():Int;

	/**
	 * 
	 */
	@:native("GET_PLAYER_MAX_STAMINA")
	static function getPlayerMaxStamina(playerId:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_ROPE_LENGTH_CHANGE_RATE")
	static function getRopeLengthChangeRate(rope:Int):Float;

	/**
	 * 
	 */
	@:native("GET_TIMECYCLE_MODIFIER_VAR_COUNT")
	static function getTimecycleModifierVarCount(modifierName:String):Int;

	/**
	 * An analogue to [GET_PED_PROP_INDEX](#\_0x898CC20EA75BACD8) that returns collection local prop index (inside [GET_PED_PROP_COLLECTION_NAME](#\_0x6B5653E4) collection) instead of the global prop index.
	 */
	@:native("GET_PED_PROP_COLLECTION_LOCAL_INDEX")
	static function getPedPropCollectionLocalIndex(ped:Dynamic, anchorPoint:Int):Int;

	/**
	 * A getter for [\_SET_PED_EYE_COLOR](#\_0x50B56988B170AFDF). Returns -1 if fails to get.
	 */
	@:native("GET_PED_EYE_COLOR")
	static function getPedEyeColor(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_TRACK_MAX_SPEED")
	static function getTrackMaxSpeed(track:Int):Float;

	/**
	 * 
	 */
	@:native("GET_TIMECYCLE_MODIFIER_VAR_NAME_BY_INDEX")
	static function getTimecycleModifierVarNameByIndex(modifierName:String, modifierVarIndex:Int):String;

	/**
	 * 
	 */
	@:native("GET_PED_WETNESS")
	static function getPedWetness(ped:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_DASHBOARD_OIL_PRESSURE")
	static function getVehicleDashboardOilPressure():Float;

	/**
	 * A getter for [SET_VEHICLE_CHEAT_POWER_INCREASE](#\_0xB59E4BD37AE292DB).
	 */
	@:native("GET_VEHICLE_CHEAT_POWER_INCREASE")
	static function getVehicleCheatPowerIncrease(vehicle:Dynamic):Float;

	/**
	 * A getter for [SET_PLAYER_KILL_FALL_HEIGHT](#\_0xAEF2C6A4).
	 */
	@:native("GET_PLAYER_KILL_FALL_HEIGHT")
	static function getPlayerKillFallHeight():Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_CURRENT_RPM")
	static function getVehicleCurrentRpm(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_TIMECYCLE_MODIFIER_NAME_BY_INDEX")
	static function getTimecycleModifierNameByIndex(modifierIndex:Int):String;

	/**
	 * Returns the result of a shape test, also returning the material of any touched surface.
	 * 
	 * When used with an asynchronous shape test, this native should be looped until returning 0 or 2, after which the handle is invalidated.
	 * 
	 * Unless the return value is 2, the other return values are undefined.
	 */
	@:native("GET_SHAPE_TEST_RESULT_INCLUDING_MATERIAL")
	static function getShapeTestResultIncludingMaterial(shapeTestHandle:Int, hit:Dynamic, endCoords:Dynamic, surfaceNormal:Dynamic, materialHash:Dynamic, entityHit:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_TIMECYCLE_MODIFIER_COUNT")
	static function getTimecycleModifierCount():Int;

	/**
	 * Gets a local client's Player ID from its server ID counterpart, assuming the passed `serverId` exists on the client.
	 * 
	 * If no matching client is found, or an invalid value is passed over as the `serverId` native's parameter, the native result will be `-1`.
	 * 
	 * It's worth noting that this native method can only retrieve information about clients that are culled to the connected client.
	 */
	@:native("GET_PLAYER_FROM_SERVER_ID")
	static function getPlayerFromServerId(serverId:Int):Dynamic;

	/**
	 * A getter for [SET_PLAYER_VEHICLE_DEFENSE_MODIFIER](#\_0x4C60E6EFDAFF2462).
	 */
	@:native("GET_PLAYER_VEHICLE_DEFENSE_MODIFIER")
	static function getPlayerVehicleDefenseModifier(playerId:Dynamic):Float;

	/**
	 * Gets the specified tracks node count.
	 */
	@:native("GET_TRACK_NODE_COUNT")
	static function getTrackNodeCount(trackIndex:Int):Int;

	/**
	 * A getter for [SET_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x245A6883D966D537).
	 */
	@:native("GET_VEHICLE_DENSITY_MULTIPLIER")
	static function getVehicleDensityMultiplier():Float;

	/**
	 * A getter for [SET_PLAYER_VEHICLE_DAMAGE_MODIFIER](#\_0xA50E117CDDF82F0C).
	 */
	@:native("GET_PLAYER_VEHICLE_DAMAGE_MODIFIER")
	static function getPlayerVehicleDamageModifier(playerId:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_DASHBOARD_RPM")
	static function getVehicleDashboardRpm():Float;

	/**
	 * 
	 */
	@:native("GET_TIMECYCLE_MODIFIER_VAR")
	static function getTimecycleModifierVar(modifierName:String, varName:String, value1:Dynamic, value2:Dynamic):Bool;

	/**
	 * Gets the width of the specified runtime texture.
	 */
	@:native("GET_RUNTIME_TEXTURE_WIDTH")
	static function getRuntimeTextureWidth(tex:Int):Int;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_DASHBOARD_VACUUM")
	static function getVehicleDashboardVacuum():Float;

	/**
	 * A getter for [SET_SCENARIO_PED_DENSITY_MULTIPLIER_THIS_FRAME](#\_0x7A556143A1C03898).
	 */
	@:native("GET_SCENARIO_PED_DENSITY_MULTIPLIER")
	static function getScenarioPedDensityMultiplier():Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_CLUTCH")
	static function getVehicleClutch(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_DASHBOARD_FUEL")
	static function getVehicleDashboardFuel():Float;

	/**
	 * See [GET_TIMECYCLE_VAR_COUNT](#\_0x838B34D8).
	 */
	@:native("GET_TIMECYCLE_VAR_DEFAULT_VALUE_BY_INDEX")
	static function getTimecycleVarDefaultValueByIndex(varIndex:Int):Float;

	/**
	 * Gets the door count for the specified train.
	 */
	@:native("GET_TRAIN_DOOR_COUNT")
	static function getTrainDoorCount(train:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_TIMECYCLE_MODIFIER_INDEX_BY_NAME")
	static function getTimecycleModifierIndexByName(modifierName:String):Int;

	/**
	 * 
	 */
	@:native("GET_TRAIN_CURRENT_TRACK_NODE")
	static function getTrainCurrentTrackNode(train:Dynamic):Int;

	/**
	 * A getter for [SET_TIMECYCLE_MODIFIER_STRENGTH](#\_0x82E7FFCD5B2326B3).
	 */
	@:native("GET_TIMECYCLE_MODIFIER_STRENGTH")
	static function getTimecycleModifierStrength():Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_DASHBOARD_SPEED")
	static function getVehicleDashboardSpeed(vehicle:Dynamic):Float;

	/**
	 * **Note**: Flags are not the same based on your `gamebuild`. Please see [here](https://docs.fivem.net/docs/game-references/vehicle-references/vehicle-flags) to see a complete list of all vehicle flags.
	 * 
	 * Get vehicle.meta flag by index. Useful examples include `FLAG_LAW_ENFORCEMENT` (31), `FLAG_RICH_CAR` (36), `FLAG_IS_ELECTRIC` (43), `FLAG_IS_OFFROAD_VEHICLE` (48).
	 */
	@:native("GET_VEHICLE_HAS_FLAG")
	static function getVehicleHasFlag(vehicle:Dynamic, flagIndex:Int):Dynamic;

	/**
	 * Gets the speed the train is currently going.
	 */
	@:native("GET_TRAIN_SPEED")
	static function getTrainSpeed(train:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_WHEEL_TIRE_COLLIDER_WIDTH")
	static function getVehicleWheelTireColliderWidth(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_TURBO_PRESSURE")
	static function getVehicleTurboPressure(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_CURRENT_GEAR")
	static function getVehicleCurrentGear(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_ALARM_TIME_LEFT")
	static function getVehicleAlarmTimeLeft(vehicle:Dynamic):Int;

	/**
	 * Gets the height of the specified runtime texture.
	 */
	@:native("GET_RUNTIME_TEXTURE_HEIGHT")
	static function getRuntimeTextureHeight(tex:Int):Int;

	/**
	 * Gets whether the wheel is powered.
	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 * This is a shortcut to a flag in GET_VEHICLE_WHEEL_FLAGS.
	 */
	@:native("GET_VEHICLE_WHEEL_IS_POWERED")
	static function getVehicleWheelIsPowered(vehicle:Dynamic, wheelIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_FUEL_LEVEL")
	static function getVehicleFuelLevel(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_ENGINE_TEMPERATURE")
	static function getVehicleEngineTemperature(vehicle:Dynamic):Float;

	/**
	 * Gets vehicles gear ratio on choosen gear.
	 */
	@:native("GET_VEHICLE_GEAR_RATIO")
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
	@:native("GET_VEHICLE_DASHBOARD_LIGHTS")
	static function getVehicleDashboardLights():Int;

	/**
	 * Gets a vehicle's multiplier used with a wheel's GET_VEHICLE_WHEEL_STEERING_ANGLE to determine the angle the wheel is rendered.
	 */
	@:native("GET_VEHICLE_DRAWN_WHEEL_ANGLE_MULT")
	static function getVehicleDrawnWheelAngleMult(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_DASHBOARD_OIL_TEMP")
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
	@:native("GET_ROPE_FLAGS")
	static function getRopeFlags(rope:Int):Int;

	/**
	 * See [GET_TIMECYCLE_VAR_COUNT](#\_0x838B34D8).
	 */
	@:native("GET_TIMECYCLE_VAR_NAME_BY_INDEX")
	static function getTimecycleVarNameByIndex(varIndex:Int):String;

	/**
	 * Gets the traction vector length of a wheel.
	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("GET_VEHICLE_WHEEL_TRACTION_VECTOR_LENGTH")
	static function getVehicleWheelTractionVectorLength(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_WHEEL_Y_ROTATION")
	static function getVehicleWheelYRotation(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * Returns the effective handling data of a vehicle as a vector value.
	 * Example: `local inertiaMultiplier = GetVehicleHandlingVector(vehicle, 'CHandlingData', 'vecInertiaMultiplier')`
	 */
	@:native("GET_VEHICLE_HANDLING_VECTOR")
	static function getVehicleHandlingVector(vehicle:Dynamic, class_:String, fieldName:String):Dynamic;

	/**
	 * Gets power being sent to a wheel.
	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("GET_VEHICLE_WHEEL_POWER")
	static function getVehicleWheelPower(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * Gets speed of a wheel at the tyre.
	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("GET_VEHICLE_WHEEL_SPEED")
	static function getVehicleWheelSpeed(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_DASHBOARD_TEMP")
	static function getVehicleDashboardTemp():Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_HIGH_GEAR")
	static function getVehicleHighGear(vehicle:Dynamic):Int;

	/**
	 * Gets the rotation speed of a wheel.
	 * This is used internally to calcuate GET_VEHICLE_WHEEL_SPEED.
	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("GET_VEHICLE_WHEEL_ROTATION_SPEED")
	static function getVehicleWheelRotationSpeed(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * This alternative implementation of [`GetWaterQuadAtCoords`](#\_0x17321452) also checks the height of the water level.
	 */
	@:native("GET_WATER_QUAD_AT_COORDS_3D")
	static function getWaterQuadAtCoords3D(x:Float, y:Float, z:Float):Int;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_WHEEL_HEALTH")
	static function getVehicleWheelHealth(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_DASHBOARD_BOOST")
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
	@:native("GET_VEHICLE_WHEELIE_STATE")
	static function getVehicleWheelieState(vehicle:Dynamic):Int;

	/**
	 * Gets the current suspension compression of a wheel.
	 * Returns a positive value. 0 means the suspension is fully extended, the wheel is off the ground.
	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("GET_VEHICLE_WHEEL_SUSPENSION_COMPRESSION")
	static function getVehicleWheelSuspensionCompression(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_NEXT_GEAR")
	static function getVehicleNextGear(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_WATER_QUAD_HAS_LIMITED_DEPTH")
	static function getWaterQuadHasLimitedDepth(waterQuad:Int, hasLimitedDepth:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_WHEEL_SURFACE_MATERIAL")
	static function getVehicleWheelSurfaceMaterial(vehicle:Dynamic, wheelIndex:Int):Int;

	/**
	 * Returns the effective handling data of a vehicle as a floating-point value.
	 * Example: `local fSteeringLock = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock')`
	 */
	@:native("GET_VEHICLE_HANDLING_FLOAT")
	static function getVehicleHandlingFloat(vehicle:Dynamic, class_:String, fieldName:String):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_GRAVITY_AMOUNT")
	static function getVehicleGravityAmount(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_STEERING_SCALE")
	static function getVehicleSteeringScale(vehicle:Dynamic):Float;

	/**
	 * *level is defined as "z" in water.xml*
	 */
	@:native("GET_WATER_QUAD_LEVEL")
	static function getWaterQuadLevel(waterQuad:Int, waterQuadLevel:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_THROTTLE_OFFSET")
	static function getVehicleThrottleOffset(vehicle:Dynamic):Float;

	/**
	 * Returns vehicle xenon lights custom RGB color values. Do note this native doesn't return non-RGB colors that was set with [\_SET_VEHICLE_XENON_LIGHTS_COLOR](#\_0xE41033B25D003A07).
	 */
	@:native("GET_VEHICLE_XENON_LIGHTS_CUSTOM_COLOR")
	static function getVehicleXenonLightsCustomColor(vehicle:Dynamic, red:Dynamic, green:Dynamic, blue:Dynamic):Bool;

	/**
	 * A getter for `CWeaponFallOffModifier` damage modifier value in a weapon component.
	 */
	@:native("GET_WEAPON_COMPONENT_RANGE_DAMAGE_MODIFIER")
	static function getWeaponComponentRangeDamageModifier(componentHash:Int):Float;

	/**
	 * Gets steering angle of a wheel.
	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("GET_VEHICLE_WHEEL_STEERING_ANGLE")
	static function getVehicleWheelSteeringAngle(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * A getter for `CWeaponFallOffModifier` range modifier value in a weapon component.
	 */
	@:native("GET_WEAPON_COMPONENT_RANGE_MODIFIER")
	static function getWeaponComponentRangeModifier(componentHash:Int):Float;

	/**
	 * Returns the effective handling data of a vehicle as an integer value.
	 * Example: `local modelFlags = GetVehicleHandlingInt(vehicle, 'CHandlingData', 'strModelFlags')`
	 */
	@:native("GET_VEHICLE_HANDLING_INT")
	static function getVehicleHandlingInt(vehicle:Dynamic, class_:String, fieldName:String):Int;

	/**
	 * 
	 */
	@:native("GET_WAVE_QUAD_AMPLITUDE")
	static function getWaveQuadAmplitude(waveQuad:Int, waveQuadAmplitude:Dynamic):Bool;

	/**
	 * Returns whether or not the specific minimap overlay has loaded.
	 */
	@:native("HAS_MINIMAP_OVERLAY_LOADED")
	static function hasMinimapOverlayLoaded(id:Int):Bool;

	/**
	 * This native returns the index of a water quad if the given point is inside its bounds.
	 * 
	 * *If you also want to check for water level, check out [`GetWaterQuadAtCoords_3d`](#\_0xF8E03DB8)*
	 */
	@:native("GET_WATER_QUAD_AT_COORDS")
	static function getWaterQuadAtCoords(x:Float, y:Float):Int;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_LIGHT_MULTIPLIER")
	static function getVehicleLightMultiplier(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_WATER_QUAD_NO_STENCIL")
	static function getWaterQuadNoStencil(waterQuad:Int, noStencil:Dynamic):Bool;

	/**
	 * Returns the offset of the specified wheel relative to the wheel's axle center.
	 */
	@:native("GET_VEHICLE_WHEEL_X_OFFSET")
	static function getVehicleWheelXOffset(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * Retrieves the current gear displayed on the dashboard of the vehicle the player is in, returned as a float. This value represents the gear shown in the instrument cluster, such as "R" (0.0) or positive values (e.g., 1.0, 2.0, etc.) for drive gears.
	 */
	@:native("GET_VEHICLE_DASHBOARD_CURRENT_GEAR")
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
	@:native("GET_VEHICLE_TYPE_RAW")
	static function getVehicleTypeRaw(vehicle:Dynamic):Int;

	/**
	 * Gets brake pressure of a wheel.
	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 * Normal values around 1.0f when braking.
	 */
	@:native("GET_VEHICLE_WHEEL_BRAKE_PRESSURE")
	static function getVehicleWheelBrakePressure(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * A getter for [MODIFY_VEHICLE_TOP_SPEED](#\_0x93A3996368C94158). Returns -1.0 if a modifier is not set.
	 */
	@:native("GET_VEHICLE_TOP_SPEED_MODIFIER")
	static function getVehicleTopSpeedModifier(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_OIL_LEVEL")
	static function getVehicleOilLevel(vehicle:Dynamic):Float;

	/**
	 * A getter for `ClipSize` in a weapon component.
	 */
	@:native("GET_WEAPON_COMPONENT_CLIP_SIZE")
	static function getWeaponComponentClipSize(componentHash:Int):Int;

	/**
	 * A getter for [SET_VEHICLE_XMAS_SNOW_FACTOR](#\_0x80CC4C9E).
	 */
	@:native("GET_VEHICLE_XMAS_SNOW_FACTOR")
	static function getVehicleXmasSnowFactor():Float;

	/**
	 * A getter for the accuracy spread of a weapon.
	 */
	@:native("GET_WEAPON_ACCURACY_SPREAD")
	static function getWeaponAccuracySpread(weaponHash:Int):Float;

	/**
	 * 
	 */
	@:native("GET_WATER_QUAD_COUNT")
	static function getWaterQuadCount():Int;

	/**
	 * A getter for [SET_VISUAL_SETTING_FLOAT](#\_0xD1D31681).
	 */
	@:native("GET_VISUAL_SETTING_FLOAT")
	static function getVisualSettingFloat(name:String):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_WHEEL_RIM_COLLIDER_SIZE")
	static function getVehicleWheelRimColliderSize(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * 
	 */
	@:native("IS_BIGMAP_FULL")
	static function isBigmapFull():Bool;

	/**
	 * A getter for `ReticuleHash` in a weapon scope component.
	 */
	@:native("GET_WEAPON_COMPONENT_RETICULE_HASH")
	static function getWeaponComponentReticuleHash(componentHash:Int):Int;

	/**
	 * Gets the flags of a wheel.
	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("GET_VEHICLE_WHEEL_FLAGS")
	static function getVehicleWheelFlags(vehicle:Dynamic, wheelIndex:Int):Int;

	/**
	 * This native returns the index of a wave quad if the given point is inside its bounds.
	 */
	@:native("GET_WAVE_QUAD_AT_COORDS")
	static function getWaveQuadAtCoords(x:Float, y:Float):Int;

	/**
	 * Gets if the specified `rawKeyIndex` is pressed, even if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014).
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("IS_DISABLED_RAW_KEY_PRESSED")
	static function isDisabledRawKeyPressed(rawKeyIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("GET_WATER_QUAD_IS_INVISIBLE")
	static function getWaterQuadIsInvisible(waterQuad:Int, isInvisible:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GET_WATER_QUAD_ALPHA")
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
	@:native("GET_WATER_QUAD_TYPE")
	static function getWaterQuadType(waterQuad:Int, waterType:Dynamic):Bool;

	/**
	 * Gets if the specified `rawKeyIndex` is up, even if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014).
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("IS_DISABLED_RAW_KEY_UP")
	static function isDisabledRawKeyUp(rawKeyIndex:Int):Bool;

	/**
	 * A getter for `CameraHash` in a weapon scope component.
	 */
	@:native("GET_WEAPON_COMPONENT_CAMERA_HASH")
	static function getWeaponComponentCameraHash(componentHash:Int):Int;

	/**
	 * 
	 */
	@:native("IS_VEHICLE_ALARM_SET")
	static function isVehicleAlarmSet(vehicle:Dynamic):Bool;

	/**
	 * Gets the vehicle indicator light state. 0 = off, 1 = left, 2 = right, 3 = both
	 */
	@:native("GET_VEHICLE_INDICATOR_LIGHTS")
	static function getVehicleIndicatorLights(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_WAVE_QUAD_BOUNDS")
	static function getWaveQuadBounds(waveQuad:Int, minX:Dynamic, minY:Dynamic, maxX:Dynamic, maxY:Dynamic):Bool;

	/**
	 * A getter for `CWeaponDamageModifier` in a weapon component.
	 */
	@:native("GET_WEAPON_COMPONENT_DAMAGE_MODIFIER")
	static function getWeaponComponentDamageModifier(componentHash:Int):Float;

	/**
	 * Gets if the specified `rawKeyIndex` is pressed down, even if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014).
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("IS_DISABLED_RAW_KEY_DOWN")
	static function isDisabledRawKeyDown(rawKeyIndex:Int):Bool;

	/**
	 * Returns vehicle's wheels' size (size is the same for all the wheels, cannot get/set specific wheel of vehicle).
	 * Only works on non-default wheels (returns 0 in case of default wheels).
	 */
	@:native("GET_VEHICLE_WHEEL_SIZE")
	static function getVehicleWheelSize(vehicle:Dynamic):Float;

	/**
	 * Checks if keyboard input is enabled during NUI focus using `SET_NUI_FOCUS_KEEP_INPUT`.
	 */
	@:native("IS_NUI_FOCUS_KEEPING_INPUT")
	static function isNuiFocusKeepingInput():Bool;

	/**
	 * Returns true if the minimap is currently expanded. False if it's the normal minimap state.
	 * Use [`IsBigmapFull`](#\_0x66EE14B2) to check if the full map is currently revealed on the minimap.
	 */
	@:native("IS_BIGMAP_ACTIVE")
	static function isBigmapActive():Bool;

	/**
	 * 
	 */
	@:native("GET_WATER_QUAD_BOUNDS")
	static function getWaterQuadBounds(waterQuad:Int, minX:Dynamic, minY:Dynamic, maxX:Dynamic, maxY:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("MUMBLE_CLEAR_VOICE_CHANNEL")
	static function mumbleClearVoiceChannel():Dynamic;

	/**
	 * 
	 */
	@:native("GET_WAVE_QUAD_COUNT")
	static function getWaveQuadCount():Int;

	/**
	 * A getter for the recoil shake amplitude of a weapon.
	 */
	@:native("GET_WEAPON_RECOIL_SHAKE_AMPLITUDE")
	static function getWeaponRecoilShakeAmplitude(weaponHash:Int):Float;

	/**
	 * A getter for `CWeaponAccuracyModifier` in a weapon component.
	 */
	@:native("GET_WEAPON_COMPONENT_ACCURACY_MODIFIER")
	static function getWeaponComponentAccuracyModifier(componentHash:Int):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_WHEEL_TIRE_COLLIDER_SIZE")
	static function getVehicleWheelTireColliderSize(vehicle:Dynamic, wheelIndex:Int):Float;

	/**
	 * A getter for [\_SET_WEAPON_DAMAGE_MODIFIER](#\_0x4757F00BC6323CFE).
	 */
	@:native("GET_WEAPON_DAMAGE_MODIFIER")
	static function getWeaponDamageModifier(weaponHash:Int):Float;

	/**
	 * Gets if the specified `rawKeyIndex` is pressed on the keyboard.
	 * 
	 * This will not be triggered if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014)
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("IS_RAW_KEY_PRESSED")
	static function isRawKeyPressed(rawKeyIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_PED_COMPONENT_VARIATION_GEN9_EXCLUSIVE")
	static function isPedComponentVariationGen9Exclusive(ped:Dynamic, componentId:Int, drawableId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_NUMBER_OF_WHEELS")
	static function getVehicleNumberOfWheels(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("IS_VEHICLE_NEEDS_TO_BE_HOTWIRED")
	static function isVehicleNeedsToBeHotwired(vehicle:Dynamic):Bool;

	/**
	 * A getter for [SET_WEAPON_ANIMATION_OVERRIDE](#\_0x1055AC3A667F09D9).
	 */
	@:native("GET_WEAPON_ANIMATION_OVERRIDE")
	static function getWeaponAnimationOverride(ped:Dynamic):Int;

	/**
	 * Getter for [SWITCH_TRAIN_TRACK](#\_0xFD813BB7DB977F20). Determines if ambient trains are able to spawn on this track.
	 */
	@:native("IS_TRACK_SWITCHED_OFF")
	static function isTrackSwitchedOff(track:Int):Dynamic;

	/**
	 * Converts a screen coordinate into its relative world coordinate.
	 */
	@:native("GET_WORLD_COORD_FROM_SCREEN_COORD")
	static function getWorldCoordFromScreenCoord(screenX:Float, screenY:Float, worldVector:Dynamic, normalVector:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("IS_VEHICLE_WANTED")
	static function isVehicleWanted(vehicle:Dynamic):Bool;

	/**
	 * Returns vehicle's wheels' width (width is the same for all the wheels, cannot get/set specific wheel of vehicle).
	 * Only works on non-default wheels (returns 0 in case of default wheels).
	 */
	@:native("GET_VEHICLE_WHEEL_WIDTH")
	static function getVehicleWheelWidth(vehicle:Dynamic):Float;

	/**
	 * Gets if the specified `rawKeyIndex` was released, even if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014).
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("IS_DISABLED_RAW_KEY_RELEASED")
	static function isDisabledRawKeyReleased(rawKeyIndex:Int):Bool;

	/**
	 * Adds the specified channel to the target list for the specified Mumble voice target ID.
	 */
	@:native("MUMBLE_ADD_VOICE_TARGET_CHANNEL")
	static function mumbleAddVoiceTargetChannel(targetId:Int, channel:Int):Dynamic;

	/**
	 * 
	 */
	@:native("IS_VEHICLE_PREVIOUSLY_OWNED_BY_PLAYER")
	static function isVehiclePreviouslyOwnedByPlayer(vehicle:Dynamic):Bool;

	/**
	 * An alternative to [IS_PED_COMPONENT_VARIATION_VALID](#\_0xE825F6B6CEA7671D) that uses local collection indexing instead of the global one.
	 * 
	 * The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
	 * 
	 * Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) natives.
	 */
	@:native("IS_PED_COLLECTION_COMPONENT_VARIATION_VALID")
	static function isPedCollectionComponentVariationValid(ped:Dynamic, componentId:Int, collection:String, drawableId:Int, textureId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("IS_GAME_ENHANCED_VERSION")
	static function isGameEnhancedVersion():Bool;

	/**
	 * Adds the specified player to the target list for the specified Mumble voice target ID.
	 */
	@:native("MUMBLE_ADD_VOICE_TARGET_PLAYER")
	static function mumbleAddVoiceTargetPlayer(targetId:Int, player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_WAVE_QUAD_DIRECTION")
	static function getWaveQuadDirection(waveQuad:Int, directionX:Dynamic, directionY:Dynamic):Bool;

	/**
	 * An alternative to [IS_PED_COMPONENT_VARIATION_GEN9\_EXCLUSIVE](#\_0xC767B581) that uses local collection indexing instead of the global one.
	 * 
	 * The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
	 * 
	 * Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) natives.
	 */
	@:native("IS_PED_COLLECTION_COMPONENT_VARIATION_GEN9_EXCLUSIVE")
	static function isPedCollectionComponentVariationGen9Exclusive(ped:Dynamic, componentId:Int, collection:String, drawableId:Int):Dynamic;

	/**
	 * Sets the current input distance. The player will be able to talk to other players within this distance.
	 */
	@:native("MUMBLE_SET_AUDIO_INPUT_DISTANCE")
	static function mumbleSetAudioInputDistance(distance:Float):Dynamic;

	/**
	 * Gets if the specified `rawKeyIndex` is up  on the keyboard.
	 * 
	 * This will not be triggered if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014)
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("IS_RAW_KEY_UP")
	static function isRawKeyUp(rawKeyIndex:Int):Bool;

	/**
	 * Returns whether or not a browser is created for a specified DUI browser object.
	 */
	@:native("IS_DUI_AVAILABLE")
	static function isDuiAvailable(duiObject:Int):Bool;

	/**
	 * 
	 */
	@:native("MUMBLE_SET_VOICE_CHANNEL")
	static function mumbleSetVoiceChannel(channel:Int):Dynamic;

	/**
	 * Returns the current NUI focus state previously set with `SET_NUI_FOCUS`.
	 */
	@:native("IS_NUI_FOCUSED")
	static function isNuiFocused():Bool;

	/**
	 * Clears channels from the target list for the specified Mumble voice target ID.
	 */
	@:native("MUMBLE_CLEAR_VOICE_TARGET_CHANNELS")
	static function mumbleClearVoiceTargetChannels(targetId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("MUMBLE_GET_TALKER_PROXIMITY")
	static function mumbleGetTalkerProximity():Float;

	/**
	 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
	 * 
	 * Returns whether an asynchronous streaming file registration completed.
	 */
	@:native("IS_STREAMING_FILE_READY")
	static function isStreamingFileReady(registerAs:String):Bool;

	/**
	 * Clears players from the target list for the specified Mumble voice target ID.
	 */
	@:native("MUMBLE_CLEAR_VOICE_TARGET_PLAYERS")
	static function mumbleClearVoiceTargetPlayers(targetId:Int):Dynamic;

	/**
	 * Starts listening to the specified channel, when available.
	 */
	@:native("MUMBLE_ADD_VOICE_CHANNEL_LISTEN")
	static function mumbleAddVoiceChannelListen(channel:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_DOES_ENTITY_EXIST_WITH_NETWORK_ID")
	static function networkDoesEntityExistWithNetworkId(netId:Int):Bool;

	/**
	 * Gets if the specified `rawKeyIndex` was just released on the keyboard.
	 * 
	 * This will not be triggered if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014)
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("IS_RAW_KEY_RELEASED")
	static function isRawKeyReleased(rawKeyIndex:Int):Bool;

	/**
	 * Removes the specified voice channel from the user's voice targets.
	 * 
	 * Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_CHANNEL](#\_0x4D386C9E)
	 */
	@:native("MUMBLE_REMOVE_VOICE_TARGET_CHANNEL")
	static function mumbleRemoveVoiceTargetChannel(targetId:Int, channel:Int):Dynamic;

	/**
	 * Create a new light with specified type, flags, position, color, and intensity.
	 */
	@:native("PREPARE_LIGHT")
	static function prepareLight(lightType:Int, flags:Int, x:Float, y:Float, z:Float, r:Int, g:Int, b:Int, intensity:Float):Dynamic;

	/**
	 * Getter for [BREAK_OFF_VEHICLE_WHEEL](?\_0xA274CADB).
	 */
	@:native("IS_VEHICLE_WHEEL_BROKEN_OFF")
	static function isVehicleWheelBrokenOff(vehicle:Dynamic, wheelIndex:Int):Bool;

	/**
	 * Gets if the specified `rawKeyIndex` is pressed down on the keyboard.
	 * 
	 * This will not be triggered if the key is disabled with [DISABLE_RAW_KEY_THIS_FRAME](#\_0x8BCF0014)
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("IS_RAW_KEY_DOWN")
	static function isRawKeyDown(rawKeyIndex:Int):Bool;

	/**
	 * Removes the specified player from the user's voice targets.
	 * 
	 * Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_PLAYER_BY_SERVER_ID](#\_0x25F2B65F)
	 */
	@:native("MUMBLE_REMOVE_VOICE_TARGET_PLAYER_BY_SERVER_ID")
	static function mumbleRemoveVoiceTargetPlayerByServerId(targetId:Int, serverId:Int):Dynamic;

	/**
	 * Getter for [SET_TRACK_ENABLED](#\_0x4B41E84C)
	 */
	@:native("IS_TRACK_ENABLED")
	static function isTrackEnabled(track:Int):Dynamic;

	/**
	 * This native will return true if the user succesfully connected to the voice server.
	 * If the user disabled the voice-chat setting it will return false.
	 */
	@:native("MUMBLE_IS_CONNECTED")
	static function mumbleIsConnected():Bool;

	/**
	 * 
	 */
	@:native("MUMBLE_IS_PLAYER_TALKING")
	static function mumbleIsPlayerTalking(player:Dynamic):Bool;

	/**
	 * Check whether specified channel exists on the Mumble server.
	 */
	@:native("MUMBLE_DOES_CHANNEL_EXIST")
	static function mumbleDoesChannelExist(channel:Int):Bool;

	/**
	 * Stops listening to the specified channel.
	 */
	@:native("MUMBLE_REMOVE_VOICE_CHANNEL_LISTEN")
	static function mumbleRemoveVoiceChannelListen(channel:Int):Dynamic;

	/**
	 * Overrides the output volume for a particular player with the specified server id and player name on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.
	 */
	@:native("MUMBLE_SET_VOLUME_OVERRIDE_BY_SERVER_ID")
	static function mumbleSetVolumeOverrideByServerId(serverId:Int, volume:Float):Dynamic;

	/**
	 * 
	 */
	@:native("REGISTER_NUI_CALLBACK")
	static function registerNuiCallback(callbackType:String, callback:haxe.Constraints.Function):Dynamic;

	/**
	 * 
	 */
	@:native("IS_VEHICLE_INTERIOR_LIGHT_ON")
	static function isVehicleInteriorLightOn(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("MUMBLE_SET_ACTIVE")
	static function mumbleSetActive(state:Bool):Dynamic;

	/**
	 * Adds the specified player to the target list for the specified Mumble voice target ID.
	 */
	@:native("MUMBLE_ADD_VOICE_TARGET_PLAYER_BY_SERVER_ID")
	static function mumbleAddVoiceTargetPlayerByServerId(targetId:Int, serverId:Int):Dynamic;

	/**
	 * Sets the current output distance. The player will be able to hear other players talking within this distance.
	 */
	@:native("MUMBLE_SET_AUDIO_OUTPUT_DISTANCE")
	static function mumbleSetAudioOutputDistance(distance:Float):Dynamic;

	/**
	 * Returns the mumble voice channel from a player's server id.
	 */
	@:native("MUMBLE_GET_VOICE_CHANNEL_FROM_SERVER_ID")
	static function mumbleGetVoiceChannelFromServerId(serverId:Int):Int;

	/**
	 * 
	 */
	@:native("MUMBLE_IS_ACTIVE")
	static function mumbleIsActive():Bool;

	/**
	 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
	 * 
	 * Registers a set of archetypes with the game engine. These should match `CBaseArchetypeDef` class information from the game.
	 */
	@:native("REGISTER_ARCHETYPES")
	static function registerArchetypes(factory:haxe.Constraints.Function):Dynamic;

	/**
	 * 
	 */
	@:native("MUMBLE_SET_TALKER_PROXIMITY")
	static function mumbleSetTalkerProximity(value:Float):Dynamic;

	/**
	 * Define the xml in a resources fxmanifest, under the file(s) section.
	 */
	@:native("LOAD_WATER_FROM_PATH")
	static function loadWaterFromPath(resourceName:String, fileName:String):Bool;

	/**
	 * Removes the specified player from the user's voice targets.
	 * 
	 * Performs the opposite operation of [MUMBLE_ADD_VOICE_TARGET_PLAYER](#\_0x32C5355A)
	 */
	@:native("MUMBLE_REMOVE_VOICE_TARGET_PLAYER")
	static function mumbleRemoveVoiceTargetPlayer(targetId:Int, player:Dynamic):Dynamic;

	/**
	 * Overrides the output volume for a particular player on Mumble. This will also bypass 3D audio and distance calculations. -1.0 to reset the override.
	 * 
	 * Set to -1.0 to reset the Volume override.
	 */
	@:native("MUMBLE_SET_VOLUME_OVERRIDE")
	static function mumbleSetVolumeOverride(player:Dynamic, volume:Float):Dynamic;

	/**
	 * Changes the Mumble server address to connect to, and reconnects to the new address.
	 * 
	 * Setting the address to an empty string and the port to -1 will reset to the built in FXServer Mumble Implementation.
	 */
	@:native("MUMBLE_SET_SERVER_ADDRESS")
	static function mumbleSetServerAddress(address:String, port:Int):Dynamic;

	/**
	 * Sets whether peds can stand on top of *all* vehicles without falling off.
	 * 
	 * Note this flag is not replicated automatically, you will have to manually do so.
	 */
	@:native("OVERRIDE_PEDS_CAN_STAND_ON_TOP_FLAG")
	static function overridePedsCanStandOnTopFlag(flag:Bool):Dynamic;

	/**
	 * Clears the target list for the specified Mumble voice target ID.
	 */
	@:native("MUMBLE_CLEAR_VOICE_TARGET")
	static function mumbleClearVoiceTarget(targetId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("REGISTER_NUI_CALLBACK_TYPE")
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
	@:native("OVERRIDE_REACTION_TO_VEHICLE_SIREN")
	static function overrideReactionToVehicleSiren(state:Bool, reaction:Int):Dynamic;

	/**
	 * Allows the bypassing of default game behavior that prevents the use of [SET_PED_DRIVE_BY_CLIPSET_OVERRIDE](#\_0xED34AB6C5CB36520) in certain scenarios to avoid clipping issues (e.g., when there is more than one Ped in a vehicle).
	 * 
	 * Note: This flag and the overridden clipset are not replicated values and require synchronization through user scripts. Additionally, current game behavior also restricts applying this clipset locally when in first-person mode and will require a temporary workaround.
	 */
	@:native("OVERRIDE_PEDS_USE_DEFAULT_DRIVE_BY_CLIPSET")
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
	@:native("MUMBLE_SET_AUDIO_INPUT_INTENT")
	static function mumbleSetAudioInputIntent(intentHash:Int):Dynamic;

	/**
	 * Sets the audio submix ID for a specified player using Mumble 'Native Audio' functionality.
	 */
	@:native("MUMBLE_SET_SUBMIX_FOR_SERVER_ID")
	static function mumbleSetSubmixForServerId(serverId:Int, submixId:Int):Dynamic;

	/**
	 * Replaces the `popgroups` (CPopGroupList) meta file with the file in the specified path.
	 */
	@:native("OVERRIDE_POP_GROUPS")
	static function overridePopGroups(path:String):Dynamic;

	/**
	 * Sets the current Mumble voice target ID to broadcast voice to.
	 */
	@:native("MUMBLE_SET_VOICE_TARGET")
	static function mumbleSetVoiceTarget(targetId:Int):Dynamic;

	/**
	 * Registers a key mapping for the current resource.
	 * 
	 * See the related [cookbook post](https://cookbook.fivem.net/2020/01/06/using-the-new-console-key-bindings/) for more information.
	 * 
	 * Below you can find some examples on how to create these keybindings as well as the alternate keybinding syntax, which is preceded by `~!` to indicate that it's an alternate key.
	 */
	@:native("REGISTER_KEY_MAPPING")
	static function registerKeyMapping(commandString:String, description:String, defaultMapper:String, defaultParameter:String):Dynamic;

	/**
	 * 
	 */
	@:native("REGISTER_RAW_NUI_CALLBACK")
	static function registerRawNuiCallback(callbackType:String, callback:haxe.Constraints.Function):Dynamic;

	/**
	 * Toggles a check that prevents attaching (networked) entities to remotely owned peds. This is disabled by default.
	 */
	@:native("ONESYNC_ENABLE_REMOTE_ATTACHMENT_SANITIZATION")
	static function onesyncEnableRemoteAttachmentSanitization(enable:Bool):Dynamic;

	/**
	 * Removes health config.
	 */
	@:native("REMOVE_HEALTH_CONFIG")
	static function removeHealthConfig(configName:String):Dynamic;

	/**
	 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
	 * 
	 * Registers a KVP value as an asset with the GTA streaming module system. This function currently won't work.
	 */
	@:native("REGISTER_STREAMING_FILE_FROM_KVS")
	static function registerStreamingFileFromKvs(kvsKey:String):Dynamic;

	/**
	 * Injects a 'mouse move' event for a DUI object. Coordinates are in browser space.
	 */
	@:native("SEND_DUI_MOUSE_MOVE")
	static function sendDuiMouseMove(duiObject:Int, x:Int, y:Int):Dynamic;

	/**
	 * Overrides whether or not peds can stand on top of the specified vehicle.
	 * 
	 * Note this flag is not replicated automatically, you will have to manually do so.
	 */
	@:native("OVERRIDE_VEHICLE_PEDS_CAN_STAND_ON_TOP_FLAG")
	static function overrideVehiclePedsCanStandOnTopFlag(vehicle:Dynamic, can:Bool):Dynamic;

	/**
	 * Registers a specified .gfx file as GFx font library.
	 * The .gfx file has to be registered with the streamer already.
	 */
	@:native("REGISTER_FONT_FILE")
	static function registerFontFile(fileName:String):Dynamic;

	/**
	 * Remaps the keymap bound to `keymapName` to `newRawKeyIndex`
	 * 
	 * Virtual key codes can be found [here](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes)
	 */
	@:native("REMAP_RAW_KEYMAP")
	static function remapRawKeymap(keymapName:String, newRawKeyIndex:Int):Dynamic;

	/**
	 * Injects a 'mouse wheel' event for a DUI object.
	 */
	@:native("SEND_DUI_MOUSE_WHEEL")
	static function sendDuiMouseWheel(duiObject:Int, deltaY:Int, deltaX:Int):Dynamic;

	/**
	 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
	 * 
	 * Registers a dynamic streaming asset from the server with the GTA streaming module system.
	 */
	@:native("REGISTER_STREAMING_FILE_FROM_CACHE")
	static function registerStreamingFileFromCache(resourceName:String, fileName:String, cacheString:String):Dynamic;

	/**
	 * Resets values from the zoom level data by index to defaults from mapzoomdata.meta.
	 */
	@:native("RESET_MAP_ZOOM_DATA_LEVEL")
	static function resetMapZoomDataLevel(index:Int):Dynamic;

	/**
	 * Removes the specified track junction.
	 */
	@:native("REMOVE_TRACK_JUNCTION")
	static function removeTrackJunction(junctionIndex:Int):Dynamic;

	/**
	 * Resets parameters which is used by the game for checking is ped needs to fly through windscreen after a crash to default values.
	 */
	@:native("RESET_FLY_THROUGH_WINDSCREEN_PARAMS")
	static function resetFlyThroughWindscreenParams():Dynamic;

	/**
	 * Registers a specified font name for use with text draw commands.
	 */
	@:native("REGISTER_FONT_ID")
	static function registerFontId(fontName:String):Int;

	/**
	 * Registers a track junction that when enabled will cause a train on the defined trackIndex, node and direction to change its current track index and begin traveling on the new node
	 */
	@:native("REGISTER_TRACK_JUNCTION")
	static function registerTrackJunction(trackIndex:Int, trackNode:Int, newIndex:Int, newNode:Int, direction:Dynamic):Int;

	/**
	 * Injects a 'mouse down' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
	 */
	@:native("SEND_DUI_MOUSE_DOWN")
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
	@:native("SET_AUDIO_SUBMIX_EFFECT_RADIO_FX")
	static function setAudioSubmixEffectRadioFx(submixId:Int, effectSlot:Int):Dynamic;

	/**
	 * Registers a custom rope data with the game. For guidance on what these values should be use common:/data/ropedata.xml as a reference.
	 * Returns a rope type which can be passed into [ADD_ROPE](#\_0xE832D760399EB220) to use a custom rope design.
	 * Once a rope data is registered it can be used indefinitely and you should take caution not too register too many as to exceed the games limit.
	 */
	@:native("REGISTER_ROPE_DATA")
	static function registerRopeData(numSections:Int, radius:Float, diffuseTextureName:String, normalMapName:String, distanceMappingScale:Float, uvScaleX:Float, uvScaleY:Float, specularFresnel:Float, specularFalloff:Float, specularIntensity:Float, bumpiness:Float, color:Int):Int;

	/**
	 * 
	 */
	@:native("REMOVE_TIMECYCLE_MODIFIER_VAR")
	static function removeTimecycleModifierVar(modifierName:String, varName:String):Dynamic;

	/**
	 * Removes a dry volume from the game session.
	 * See CREATE_DRY_VOLUME for more info
	 */
	@:native("REMOVE_DRY_VOLUME")
	static function removeDryVolume(handle:Int):Dynamic;

	/**
	 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
	 * 
	 * Registers a file from an URL as a streaming asset in the GTA streaming subsystem. This will asynchronously register the asset, and caching is done based on the URL itself - cache headers are ignored.
	 * 
	 * Use `IS_STREAMING_FILE_READY` to check if the asset has been registered successfully.
	 */
	@:native("REGISTER_STREAMING_FILE_FROM_URL")
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
	@:native("REQUEST_RESOURCE_FILE_SET")
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
	@:native("SET_CLIENT_CONFIG_BOOL")
	static function setClientConfigBool(flagIndex:Int, enabled:Bool):Dynamic;

	/**
	 * Restores an overridden ped model personality type to the default value.
	 */
	@:native("RESET_PED_MODEL_PERSONALITY")
	static function resetPedModelPersonality(modelHash:Int):Dynamic;

	/**
	 * Sets the volumes for the sound channels in a submix effect.
	 * Values can be between 0.0 and 1.0.
	 * Channel 5 and channel 6 are not used in voice chat but are believed to be center and LFE channels.
	 * Output slot starts at 0 for the first ADD_AUDIO_SUBMIX_OUTPUT call then incremented by 1 on each subsequent call.
	 */
	@:native("SET_AUDIO_SUBMIX_OUTPUT_VOLUMES")
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
	@:native("REGISTER_RAW_KEYMAP")
	static function registerRawKeymap(keymapName:String, onKeyDown:haxe.Constraints.Function, onKeyUp:haxe.Constraints.Function, rawKeyIndex:Int, canBeDisabled:Bool):Dynamic;

	/**
	 * A setter for [GET_FALL_DAMAGE_LAND_ON_FOOT_MULTIPLIER](#\_0x3C8A1C92).
	 */
	@:native("SET_FALL_DAMAGE_LAND_ON_FOOT_MULTIPLIER")
	static function setFallDamageLandOnFootMultiplier(multiplier:Float):Dynamic;

	/**
	 * Experimental natives, please do not use in a live environment.
	 */
	@:native("REMOVE_REPLACE_TEXTURE")
	static function removeReplaceTexture(origTxd:String, origTxn:String):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CALMING_QUAD_BOUNDS")
	static function setCalmingQuadBounds(waterQuad:Int, minX:Int, minY:Int, maxX:Int, maxY:Int):Bool;

	/**
	 * Allows Weapon-Flashlight beams to stay visible while moving. Normally it only stays on while aiming.
	 */
	@:native("SET_FLASH_LIGHT_KEEP_ON_WHILE_MOVING")
	static function setFlashLightKeepOnWhileMoving(state:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CURSOR_LOCATION")
	static function setCursorLocation(x:Float, y:Float):Bool;

	/**
	 * Resets the water to the games default water.xml.
	 */
	@:native("RESET_WATER")
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
	@:native("REMOVE_TEXTURE")
	static function removeTexture(textureId:Int):Dynamic;

	/**
	 * Sets an integer parameter for a submix effect.
	 */
	@:native("SET_AUDIO_SUBMIX_EFFECT_PARAM_INT")
	static function setAudioSubmixEffectParamInt(submixId:Int, effectSlot:Int, paramIndex:Int, paramValue:Int):Dynamic;

	/**
	 * Sets a clickable button to be displayed in a player's Discord rich presence.
	 */
	@:native("SET_DISCORD_RICH_PRESENCE_ACTION")
	static function setDiscordRichPresenceAction(index:Int, label:String, url:String):Dynamic;

	/**
	 * Resets whether or not peds can stand on top of the specified vehicle.
	 * 
	 * Note this flag is not replicated automatically, you will have to manually do so.
	 */
	@:native("RESET_VEHICLE_PEDS_CAN_STAND_ON_TOP_FLAG")
	static function resetVehiclePedsCanStandOnTopFlag(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_TIMECYCLE_MODIFIER")
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
	@:native("SET_DEFAULT_VEHICLE_NUMBER_PLATE_TEXT_PATTERN")
	static function setDefaultVehicleNumberPlateTextPattern(plateIndex:Int, pattern:String):Dynamic;

	/**
	 * Injects a 'mouse up' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
	 */
	@:native("SEND_DUI_MOUSE_UP")
	static function sendDuiMouseUp(duiObject:Int, button:String):Dynamic;

	/**
	 * Sends a message to the `loadingScreen` NUI frame, which contains the HTML page referenced in `loadscreen` resources.
	 */
	@:native("SEND_LOADING_SCREEN_MESSAGE")
	static function sendLoadingScreenMessage(jsonString:String):Bool;

	/**
	 * Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
	 */
	@:native("SET_HANDLING_INT")
	static function setHandlingInt(vehicle:String, class_:String, fieldName:String, value:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CALMING_QUAD_DAMPENING")
	static function setCalmingQuadDampening(calmingQuad:Int, dampening:Float):Bool;

	/**
	 * Adds a cooldown between instances of moving and then aiming.
	 * Can be optionally used to hinder 'speedboosting'
	 * To turn off, set value to 0
	 */
	@:native("SET_AIM_COOLDOWN")
	static function setAimCooldown(value:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SEND_NUI_MESSAGE")
	static function sendNuiMessage(jsonString:String):Bool;

	/**
	 * Sets the on-screen drawing origin for draw-functions in world coordinates.
	 * 
	 * The effect can be reset by calling [`CLEAR_DRAW_ORIGIN`](#\_0xDD76B263) and is limited to 32 different origins each frame.
	 */
	@:native("SET_DRAW_ORIGIN")
	static function setDrawOrigin(x:Float, y:Float, z:Float, is2d:Bool):Dynamic;

	/**
	 * This native sets the hover text of the image asset for the discord rich presence implementation.
	 */
	@:native("SET_DISCORD_RICH_PRESENCE_ASSET_TEXT")
	static function setDiscordRichPresenceAssetText(text:String):Dynamic;

	/**
	 * Sets default hurt health threshold value for specific health config.
	 */
	@:native("SET_HEALTH_CONFIG_HURT_THRESHOLD")
	static function setHealthConfigHurtThreshold(configName:String, newValue:Float):Dynamic;

	/**
	 * This native sets the small image asset for the discord rich presence implementation.
	 */
	@:native("SET_DISCORD_RICH_PRESENCE_ASSET_SMALL")
	static function setDiscordRichPresenceAssetSmall(assetName:String):Dynamic;

	/**
	 * This completely disables rendering of fog volumes (vfxfogvolumeinfo.ymt).
	 */
	@:native("SET_FOG_VOLUME_RENDER_DISABLED")
	static function setFogVolumeRenderDisabled(state:Bool):Dynamic;

	/**
	 * Sets default armor value for specific health config.
	 */
	@:native("SET_HEALTH_CONFIG_DEFAULT_ARMOR")
	static function setHealthConfigDefaultArmor(configName:String, newValue:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_INTERIOR_PORTAL_ENTITY_FLAG")
	static function setInteriorPortalEntityFlag(interiorId:Int, portalIndex:Int, entityIndex:Int, flag:Int):Dynamic;

	/**
	 * Sends a message to the specific DUI root page. This is similar to SEND_NUI_MESSAGE.
	 */
	@:native("SEND_DUI_MESSAGE")
	static function sendDuiMessage(duiObject:Int, jsonString:String):Dynamic;

	/**
	 * 
	 */
	@:native("SET_INTERIOR_PORTAL_FLAG")
	static function setInteriorPortalFlag(interiorId:Int, portalIndex:Int, flag:Int):Dynamic;

	/**
	 * A setter for [GET_FALL_DAMAGE_MULTIPLIER](#\_0x2D6A0A83).
	 */
	@:native("SET_FALL_DAMAGE_MULTIPLIER")
	static function setFallDamageMultiplier(multiplier:Float):Dynamic;

	/**
	 * This native sets the hover text of the small image asset for the discord rich presence implementation.
	 */
	@:native("SET_DISCORD_RICH_PRESENCE_ASSET_SMALL_TEXT")
	static function setDiscordRichPresenceAssetSmallText(text:String):Dynamic;

	/**
	 * Sets some in-game parameters which is used for checks is ped needs to fly through windscreen after a crash.
	 */
	@:native("SET_FLY_THROUGH_WINDSCREEN_PARAMS")
	static function setFlyThroughWindscreenParams(vehMinSpeed:Float, unkMinSpeed:Float, unkModifier:Float, minDamage:Float):Bool;

	/**
	 * Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
	 * Example: `SetHandlingField('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
	 */
	@:native("SET_HANDLING_FIELD")
	static function setHandlingField(vehicle:String, class_:String, fieldName:String, value:Dynamic):Dynamic;

	/**
	 * Sets default dying health threshold value for specific health config.
	 */
	@:native("SET_HEALTH_CONFIG_DYING_THRESHOLD")
	static function setHealthConfigDyingThreshold(configName:String, newValue:Float):Dynamic;

	/**
	 * Sets default melee cardinal fatal attack value for specific health config.
	 */
	@:native("SET_HEALTH_CONFIG_MELEE_FATAL_ATTACK")
	static function setHealthConfigMeleeFatalAttack(configName:String, newValue:Bool):Dynamic;

	/**
	 * Sets a floating-point parameter for a submix effect.
	 */
	@:native("SET_AUDIO_SUBMIX_EFFECT_PARAM_FLOAT")
	static function setAudioSubmixEffectParamFloat(submixId:Int, effectSlot:Int, paramIndex:Int, paramValue:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_BACKFACECULLING")
	static function setBackfaceculling(toggle:Bool):Dynamic;

	/**
	 * Toggles the visibility of resource names in the FiveM key mapping page.
	 */
	@:native("SET_KEY_MAPPING_HIDE_RESOURCES")
	static function setKeyMappingHideResources(hide:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SET_GLOBAL_PASSENGER_MASS_MULTIPLIER")
	static function setGlobalPassengerMassMultiplier(massMul:Float):Dynamic;

	/**
	 * Turns on and off fuel consumption in all vehicles operated by a player. NPC operated vehicles will not consume fuel to avoid traffic disruptions.
	 * 
	 * The default Gta5 behaviour is fuel consumption turned off.
	 */
	@:native("SET_FUEL_CONSUMPTION_STATE")
	static function setFuelConsumptionState(state:Bool):Dynamic;

	/**
	 * This native sets the image asset for the discord rich presence implementation.
	 */
	@:native("SET_DISCORD_RICH_PRESENCE_ASSET")
	static function setDiscordRichPresenceAsset(assetName:String):Dynamic;

	/**
	 * Adjust the falloff parameter for an existing light, affecting how light intensity decreases over distance.
	 */
	@:native("SET_LIGHT_FALLOFF")
	static function setLightFalloff(falloff:Float):Dynamic;

	/**
	 * This native sets the app id for the discord rich presence implementation.
	 */
	@:native("SET_DISCORD_APP_ID")
	static function setDiscordAppId(appId:String):Dynamic;

	/**
	 * Navigates the specified DUI browser to a different URL.
	 */
	@:native("SET_DUI_URL")
	static function setDuiUrl(duiObject:Int, url:String):Dynamic;

	/**
	 * Sets whether or not ownership checks should be performed while trying to stow a carriable on a hunting wagon.
	 */
	@:native("SET_IGNORE_VEHICLE_OWNERSHIP_FOR_STOWING")
	static function setIgnoreVehicleOwnershipForStowing(ignore:Bool):Dynamic;

	/**
	 * Sets default injured health threshold value for specific health config.
	 */
	@:native("SET_HEALTH_CONFIG_INJURED_THRESHOLD")
	static function setHealthConfigInjuredThreshold(configName:String, newValue:Float):Dynamic;

	/**
	 * Set the color of a specified light.
	 */
	@:native("SET_LIGHT_COLOR")
	static function setLightColor(r:Int, g:Int, b:Int):Dynamic;

	/**
	 * Allows StaticEmitter's without a linked entity to make use of environment features like occlusion and reverb even if they are located higher than 20.0 units above any static collision inside interiors.
	 * 
	 * This native allows you to extend the probe range up to 150.0 units.
	 */
	@:native("SET_EMITTER_PROBE_LENGTH")
	static function setEmitterProbeLength(probeLength:Float):Dynamic;

	/**
	 * A setter for [GET_KILL_FALL_HEIGHT](#\_0x884C8B5A).
	 */
	@:native("SET_KILL_FALL_HEIGHT")
	static function setKillFallHeight(height:Float):Dynamic;

	/**
	 * Set the clip rectangle for a created light.
	 */
	@:native("SET_LIGHT_CLIP_RECT")
	static function setLightClipRect(x:Int, y:Int, width:Int, height:Int):Dynamic;

	/**
	 * Set the plane parameters for a light.
	 */
	@:native("SET_LIGHT_PLANE")
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
	@:native("SET_INTERIOR_PROBE_LENGTH")
	static function setInteriorProbeLength(probeLength:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_INTERIOR_PORTAL_ROOM_TO")
	static function setInteriorPortalRoomTo(interiorId:Int, portalIndex:Int, roomTo:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_INTERIOR_ROOM_TIMECYCLE")
	static function setInteriorRoomTimecycle(interiorId:Int, roomIndex:Int, timecycleHash:Int):Dynamic;

	/**
	 * Sets default invincible value for specific health config.
	 */
	@:native("SET_HEALTH_CONFIG_INVINCIBLE")
	static function setHealthConfigInvincible(configName:String, newValue:Bool):Dynamic;

	/**
	 * Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
	 * Example: `SetHandlingFloat('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
	 */
	@:native("SET_HANDLING_FLOAT")
	static function setHandlingFloat(vehicle:String, class_:String, fieldName:String, value:Float):Dynamic;

	/**
	 * Set the forward and tangent direction vectors for an existing light, allowing control over its orientation (useful for spotlights and directional lights).
	 */
	@:native("SET_LIGHT_DIRECTION")
	static function setLightDirection(xDir:Float, yDir:Float, zDir:Float, xTanDir:Float, yTanDir:Float, zTanDir:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_INTERIOR_PORTAL_ROOM_FROM")
	static function setInteriorPortalRoomFrom(interiorId:Int, portalIndex:Int, roomFrom:Int):Dynamic;

	/**
	 * Set volumetric light properties for an existing light, enabling custom volumetric effects such as fog-like glow.
	 */
	@:native("SET_LIGHT_VOLUME_DETAILS")
	static function setLightVolumeDetails(volIntensity:Float, volSizeScale:Float, r:Float, g:Float, b:Float, i:Float, outerExponent:Float):Dynamic;

	/**
	 * Set the capsule size of a specified light.
	 */
	@:native("SET_LIGHT_CAPSULE_SIZE")
	static function setLightCapsuleSize(size:Float):Dynamic;

	/**
	 * Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
	 * Example: `SetHandlingVector('AIRTUG', 'CHandlingData', 'vecCentreOfMassOffset', vector3(0.0, 0.0, -5.0))`
	 */
	@:native("SET_HANDLING_VECTOR")
	static function setHandlingVector(vehicle:String, class_:String, fieldName:String, value:Dynamic):Dynamic;

	/**
	 * Sets default dog takedown threshold value for specific health config.
	 */
	@:native("SET_HEALTH_CONFIG_DOG_TAKEDOWN_THRESHOLD")
	static function setHealthConfigDogTakedownThreshold(configName:String, newValue:Float):Dynamic;

	/**
	 * Set ambient occlusion (AO) parameters for a specified light.
	 */
	@:native("SET_LIGHT_AO")
	static function setLightAo(intensity:Float, radius:Float, bias:Float, intensity2:Float):Dynamic;

	/**
	 * Set the shadow details for a created light.
	 */
	@:native("SET_LIGHT_SHADOW_DETAILS")
	static function setLightShadowDetails(shadowFlags:Int, shadowDistance:Float, shadowFade:Float, shadowDepthBiasScale:Float):Dynamic;

	/**
	 * Overrides the minimap component data (from `common:/data/ui/frontend.xml`) for a specified component.
	 */
	@:native("SET_MINIMAP_COMPONENT_POSITION")
	static function setMinimapComponentPosition(name:String, alignX:String, alignY:String, posX:Float, posY:Float, sizeX:Float, sizeY:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_INTERIOR_PORTAL_CORNER_POSITION")
	static function setInteriorPortalCornerPosition(interiorId:Int, portalIndex:Int, cornerIndex:Int, posX:Float, posY:Float, posZ:Float):Dynamic;

	/**
	 * Sets default writhe from bullet threshold value for specific health config.
	 */
	@:native("SET_HEALTH_CONFIG_WRITHE_FROM_BULLET_THRESHOLD")
	static function setHealthConfigWritheFromBulletThreshold(configName:String, newValue:Float):Dynamic;

	/**
	 * Sets default health value for specific health config.
	 */
	@:native("SET_HEALTH_CONFIG_DEFAULT_HEALTH")
	static function setHealthConfigDefaultHealth(configName:String, newValue:Float):Dynamic;

	/**
	 * Set the alpha transparency of the light.
	 */
	@:native("SET_LIGHT_ALPHA")
	static function setLightAlpha(alpha:Float):Dynamic;

	/**
	 * Set the radius of a created light.
	 */
	@:native("SET_LIGHT_RADIUS")
	static function setLightRadius(radius:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_INTERIOR_ROOM_EXTENTS")
	static function setInteriorRoomExtents(interiorId:Int, roomIndex:Int, bbMinX:Float, bbMinY:Float, bbMinZ:Float, bbMaxX:Float, bbMaxY:Float, bbMaxZ:Float):Dynamic;

	/**
	 * Set or update specific flags for a created light to control its behavior or properties.
	 */
	@:native("SET_LIGHT_FLAGS")
	static function setLightFlags(flags:Int):Dynamic;

	/**
	 * Sets values to the zoom level data by index.
	 */
	@:native("SET_MAP_ZOOM_DATA_LEVEL")
	static function setMapZoomDataLevel(index:Int, zoomScale:Float, zoomSpeed:Float, scrollSpeed:Float, tilesX:Float, tilesY:Float):Dynamic;

	/**
	 * Sets the type for the minimap blip clipping object to be either rectangular or rounded.
	 */
	@:native("SET_MINIMAP_CLIP_TYPE")
	static function setMinimapClipType(type:Int):Dynamic;

	/**
	 * Set the inner and outer cone angles of a specified light.
	 */
	@:native("SET_LIGHT_CONE")
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
	@:native("SET_MINIMAP_TYPE")
	static function setMinimapType(type:Int):Dynamic;

	/**
	 * Set the intensity of an existing light.
	 */
	@:native("SET_LIGHT_INTENSITY")
	static function setLightIntensity(intensity:Float):Dynamic;

	/**
	 * Overrides a ped model personality type.
	 */
	@:native("SET_PED_MODEL_PERSONALITY")
	static function setPedModelPersonality(modelHash:Int, personalityHash:Int):Dynamic;

	/**
	 * Sets fuel consumption rate multiplier for all vehicles operated by a player. This is a way to slow down or speed up fuel consumption for all vehicles at a time. If 0 - it practically means that fuel will not be consumed. By default is set to 1.
	 * 
	 * When the multiplier is set to 1 a default 65 litre gas tank car with average fuel consumption can stay idle for ~16.67 hours or run with max RPM for ~2.5 hours.
	 * 
	 * To customize fuel consumption per vehicle / vehicle class use [`SET_HANDLING_FLOAT`](#\_0x90DD01C)/[`SET_VEHICLE_HANDLING_FLOAT`](#\_0x488C86D2) natives with `fieldName` equal to `fPetrolConsumptionRate`. By default it is set to 0.5 for all vehicles.
	 */
	@:native("SET_FUEL_CONSUMPTION_RATE_MULTIPLIER")
	static function setFuelConsumptionRateMultiplier(multiplier:Float):Dynamic;

	/**
	 * Set the z-index of the NUI resource.
	 */
	@:native("SET_NUI_ZINDEX")
	static function setNuiZindex(zIndex:Int):Dynamic;

	/**
	 * An alternative to [SET_PED_PROP_INDEX](#\_0x93376B65A266EB5F) that uses local collection indexing instead of the global one.
	 * 
	 * The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
	 * 
	 * Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_PROP](#\_0x8ED0C17) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_PROP](#\_0xFBDB885F) natives.
	 */
	@:native("SET_PED_COLLECTION_PROP_INDEX")
	static function setPedCollectionPropIndex(ped:Dynamic, anchorPoint:Int, collection:String, propIndex:Int, textureId:Int, attach:Bool):Dynamic;

	/**
	 * A setter for [GET_PLAYER_KILL_FALL_HEIGHT](#\_0x13BC2C63).
	 */
	@:native("SET_PLAYER_KILL_FALL_HEIGHT")
	static function setPlayerKillFallHeight(height:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_NETWORK_WALK_MODE")
	static function setNetworkWalkMode(enabled:Dynamic):Dynamic;

	/**
	 * An alternative to [SET_PED_COMPONENT_VARIATION](#\_0x262B14F48D29DE80) that uses local collection indexing instead of the global one.
	 * 
	 * The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
	 * 
	 * Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) natives.
	 */
	@:native("SET_PED_COLLECTION_COMPONENT_VARIATION")
	static function setPedCollectionComponentVariation(ped:Dynamic, componentId:Int, collection:String, drawableId:Int, textureId:Int, paletteId:Int):Dynamic;

	/**
	 * Set the fade distance for volumetric lightingn.
	 */
	@:native("SET_LIGHT_VOLUMETRIC_FADE_DISTANCE")
	static function setLightVolumetricFadeDistance(volumetricFadeDistance:Int):Dynamic;

	/**
	 * Toggles whether the usage of [ADD_ROPE](#\_0xE832D760399EB220) should create an underlying CNetworkRopeWorldStateData. By default this is set to false.
	 */
	@:native("SET_ROPES_CREATE_NETWORK_WORLD_STATE")
	static function setRopesCreateNetworkWorldState(shouldCreate:Bool):Dynamic;

	/**
	 * Set the fade distance.
	 */
	@:native("SET_LIGHT_FADE_DISTANCE")
	static function setLightFadeDistance(fadeDistance:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_RUNTIME_TEXTURE_ARGB_DATA")
	static function setRuntimeTextureArgbData(tex:Int, buffer:String, length:Int):Bool;

	/**
	 * 
	 */
	@:native("SET_SNAKEOIL_FOR_ENTRY")
	static function setSnakeoilForEntry(name:String, path:String, data:String):Dynamic;

	/**
	 * Sets the maximum distance at which all tags will be visible and which beyond will not be displayed. Distance is measured from the camera position.
	 */
	@:native("SET_MP_GAMER_TAGS_VISIBLE_DISTANCE")
	static function setMpGamerTagsVisibleDistance(distance:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_STAMINA")
	static function setPlayerStamina(playerId:Dynamic, stamina:Float):Dynamic;

	/**
	 * Sets default fatigued health threshold value for specific health config.
	 */
	@:native("SET_HEALTH_CONFIG_FATIGUED_THRESHOLD")
	static function setHealthConfigFatiguedThreshold(configName:String, newValue:Float):Dynamic;

	/**
	 * Sets the max speed for the train tracks. Used by ambient trains and for station calculations
	 */
	@:native("SET_TRACK_MAX_SPEED")
	static function setTrackMaxSpeed(track:Int, newSpeed:Int):Dynamic;

	/**
	 * Set additional configuration flags for an existing light
	 */
	@:native("SET_LIGHT_EXTRAFLAGS")
	static function setLightExtraflags(extraFlags:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_CURRENT_GEAR")
	static function setVehicleCurrentGear(vehicle:Dynamic, gear:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_ENGINE_TEMPERATURE")
	static function setVehicleEngineTemperature(vehicle:Dynamic, temperature:Float):Dynamic;

	/**
	 * An alternative to [SET_PED_PRELOAD_PROP_DATA](#\_0x2B16A3BFF1FBCE49) that uses local collection indexing instead of the global one.
	 * 
	 * The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
	 * 
	 * Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_PROP](#\_0x8ED0C17) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_PROP](#\_0xFBDB885F) natives.
	 */
	@:native("SET_PED_COLLECTION_PRELOAD_PROP_DATA")
	static function setPedCollectionPreloadPropData(ped:Dynamic, anchorPoint:Int, collection:String, propIndex:Int, textureId:Int):Dynamic;

	/**
	 * Set the fade distance for the shadows of a created light.
	 */
	@:native("SET_LIGHT_SHADOW_FADE_DISTANCE")
	static function setLightShadowFadeDistance(fadeDistance:Int):Dynamic;

	/**
	 * Replaces the pixel data in a runtime texture with the image data from a file in the current resource, or a data URL.
	 * 
	 * If the bitmap is a different size compared to the existing texture, it will be resampled.
	 * 
	 * This command may end up executed asynchronously, and only update the texture data at a later time.
	 */
	@:native("SET_RUNTIME_TEXTURE_IMAGE")
	static function setRuntimeTextureImage(tex:Int, fileName:String):Bool;

	/**
	 * Set the world coordinates of a specified light.
	 */
	@:native("SET_LIGHT_COORDS")
	static function setLightCoords(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_TEXT_CHAT_ENABLED")
	static function setTextChatEnabled(enabled:Bool):Bool;

	/**
	 * Set's the ropes length change rate, which is the speed that rope should wind if started.
	 */
	@:native("SET_ROPE_LENGTH_CHANGE_RATE")
	static function setRopeLengthChangeRate(rope:Int, lengthChangeRate:Float):Dynamic;

	/**
	 * **Note**: This native is deprecated and doesn't work anymore. Use [loadscreen_manual_shutdown](https://docs.fivem.net/docs/scripting-reference/resource-manifest/#loadscreen_manual_shutdown) in the fxmanifest.lua instead.
	 */
	@:native("SET_MANUAL_SHUTDOWN_LOADING_SCREEN_NUI")
	static function setManualShutdownLoadingScreenNui(manualShutdown:Bool):Dynamic;

	/**
	 * Sets default endurance value for specific health config.
	 */
	@:native("SET_HEALTH_CONFIG_DEFAULT_ENDURANCE")
	static function setHealthConfigDefaultEndurance(configName:String, newValue:Float):Dynamic;

	/**
	 * Set the specular fade distance for a created light.
	 */
	@:native("SET_LIGHT_SPECULAR_FADE_DISTANCE")
	static function setLightSpecularFadeDistance(fadeDistance:Int):Dynamic;

	/**
	 * Sets the ratio that a door is open for on a train.
	 */
	@:native("SET_TRAIN_DOOR_OPEN_RATIO")
	static function setTrainDoorOpenRatio(train:Dynamic, doorIndex:Int, ratio:Float):Dynamic;

	/**
	 * An alternative to [SET_PED_PRELOAD_VARIATION_DATA](#\_0x39D55A620FCB6A3A) that uses local collection indexing instead of the global one.
	 * 
	 * The local / collection relative indexing is useful because the global index may get shifted after Title Update. While local index will remain the same which simplifies migration to the newer game version.
	 * 
	 * Collection name and local index inside the collection can be obtained from the global index using [GET_PED_COLLECTION_NAME_FROM_DRAWABLE](#\_0xD6BBA48B) and [GET_PED_COLLECTION_LOCAL_INDEX_FROM_DRAWABLE](#\_0x94EB1FE4) natives.
	 */
	@:native("SET_PED_COLLECTION_PRELOAD_VARIATION_DATA")
	static function setPedCollectionPreloadVariationData(ped:Dynamic, componentId:Int, collection:String, drawableId:Int, textureId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_ALARM_TIME_LEFT")
	static function setVehicleAlarmTimeLeft(vehicle:Dynamic, time:Int):Dynamic;

	/**
	 * See [SET_SCRIPT_GFX_ALIGN](#\_0xB8A850F20A067EB6) for details about how gfx align works.
	 */
	@:native("SET_HUD_COMPONENT_ALIGN")
	static function setHudComponentAlign(id:Int, horizontalAlign:Int, verticalAlign:Int):Dynamic;

	/**
	 * Toggles a train's ability to stop at stations
	 */
	@:native("SET_TRAIN_STOP_AT_STATIONS")
	static function setTrainStopAtStations(train:Dynamic, state:Bool):Dynamic;

	/**
	 * Sets the display info for a minimap overlay.
	 */
	@:native("SET_MINIMAP_OVERLAY_DISPLAY")
	static function setMinimapOverlayDisplay(miniMap:Int, x:Float, y:Float, xScale:Float, yScale:Float, alpha:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_TEXT_WRAP")
	static function setTextWrap(start:Float, end:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_HUD_COMPONENT_SIZE")
	static function setHudComponentSize(id:Int, x:Float, y:Float):Dynamic;

	/**
	 * Sets the height of the vehicle's suspension.
	 * This changes the same value set by Suspension in the mod shop.
	 * Negatives values raise the car. Positive values lower the car.
	 * 
	 * This is change is visual only. The collision of the vehicle will not move.
	 */
	@:native("SET_VEHICLE_SUSPENSION_HEIGHT")
	static function setVehicleSuspensionHeight(vehicle:Dynamic, newHeight:Float):Dynamic;

	/**
	 * Sets the braking distance of the track. Used by trains to determine the point to slow down when entering a station.
	 */
	@:native("SET_TRACK_BRAKING_DISTANCE")
	static function setTrackBrakingDistance(track:Int, brakingDistance:Float):Dynamic;

	/**
	 * Set the interior and room where the light should be active.
	 */
	@:native("SET_LIGHT_INTERIOR")
	static function setLightInterior(interiorId:Int, isPortal:Dynamic, roomIndex:Int):Dynamic;

	/**
	 * Sets the maximum distance in which [\_SET_VEHICLE_NITRO_ENABLED](#\_0xC8E9B6B71B8E660D) PTFX are rendered. Distance is measured from the camera position.
	 */
	@:native("SET_VEHICLE_NITRO_PTFX_RANGE")
	static function setVehicleNitroPtfxRange(range:Float):Dynamic;

	/**
	 * Sets the vehicles gear ratio on choosen gear, reverse gear needs to be a negative float and forward moving gear needs to be a positive float. Refer to the examples if confused.
	 */
	@:native("SET_VEHICLE_GEAR_RATIO")
	static function setVehicleGearRatio(vehicle:Dynamic, gear:Int, ratio:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_TURBO_PRESSURE")
	static function setVehicleTurboPressure(vehicle:Dynamic, pressure:Float):Dynamic;

	/**
	 * Assign a texture to an existing light source, allowing custom light shapes or patterns using textures from streaming assets.
	 */
	@:native("SET_LIGHT_TEXTURE")
	static function setLightTexture(textureDict:String, textureHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_NEXT_GEAR")
	static function setVehicleNextGear(vehicle:Dynamic, nextGear:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_INTERIOR_ROOM_FLAG")
	static function setInteriorRoomFlag(interiorId:Int, roomIndex:Int, flag:Int):Dynamic;

	/**
	 * Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_VECTOR`, this might require some experimentation.
	 */
	@:native("SET_VEHICLE_HANDLING_VECTOR")
	static function setVehicleHandlingVector(vehicle:Dynamic, class_:String, fieldName:String, value:Dynamic):Dynamic;

	/**
	 * Disables the vehicle from being repaired when a vehicle extra is enabled.
	 */
	@:native("SET_VEHICLE_AUTO_REPAIR_DISABLED")
	static function setVehicleAutoRepairDisabled(vehicle:Dynamic, value:Bool):Dynamic;

	/**
	 * Sets vehicle's wheels' size (size is the same for all the wheels, cannot get/set specific wheel of vehicle).
	 * Only works on non-default wheels.
	 * Returns whether change was successful (can be false if trying to set size for non-default wheels).
	 */
	@:native("SET_VEHICLE_WHEEL_SIZE")
	static function setVehicleWheelSize(vehicle:Dynamic, size:Float):Bool;

	/**
	 * Toggles the track being active. If disabled mission trains will not be able to spawn on this track and will look for the next closest track to spawn
	 */
	@:native("SET_TRACK_ENABLED")
	static function setTrackEnabled(track:Int, enabled:Dynamic):Dynamic;

	/**
	 * Set the headlight properties of a created light, adjusting its intensity and range.
	 */
	@:native("SET_LIGHT_HEADLIGHT")
	static function setLightHeadlight(intensity:Float, range:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_WHEEL_HEALTH")
	static function setVehicleWheelHealth(vehicle:Dynamic, wheelIndex:Int, health:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_STEERING_ANGLE")
	static function setVehicleSteeringAngle(vehicle:Dynamic, angle:Float):Dynamic;

	/**
	 * the status of default voip system. It affects on `NETWORK_IS_PLAYER_TALKING` and `mp_facial` animation.
	 * This function doesn't need to be called every frame, it works like a switcher.
	 */
	@:native("SET_PLAYER_TALKING_OVERRIDE")
	static function setPlayerTalkingOverride(player:Dynamic, state:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_HIGH_GEAR")
	static function setVehicleHighGear(vehicle:Dynamic, gear:Int):Dynamic;

	/**
	 * This native is a setter for [`GET_VEHICLE_HAS_FLAG`](#\_0xD85C9F57).
	 */
	@:native("SET_VEHICLE_FLAG")
	static function setVehicleFlag(vehicle:Dynamic, flagIndex:Int, value:Dynamic):Dynamic;

	/**
	 * Sets a pixel in the specified runtime texture. This will have to be committed using `COMMIT_RUNTIME_TEXTURE` to have any effect.
	 */
	@:native("SET_RUNTIME_TEXTURE_PIXEL")
	static function setRuntimeTexturePixel(tex:Int, x:Int, y:Int, r:Int, g:Int, b:Int, a:Int):Dynamic;

	/**
	 * Overrides how many real ms are equal to one game minute.
	 * A setter for [`GetMillisecondsPerGameMinute`](#\_0x2F8B4D1C595B11DB).
	 */
	@:native("SET_MILLISECONDS_PER_GAME_MINUTE")
	static function setMillisecondsPerGameMinute(value:Int):Dynamic;

	/**
	 * **This native is deprecated and does nothing!**
	 */
	@:native("SET_MODEL_HEADLIGHT_CONFIGURATION")
	static function setModelHeadlightConfiguration(modelHash:Int, ratePerSecond:Float, headlightRotation:Float, invertRotation:Bool):Dynamic;

	/**
	 * Change the light type of a already created light.
	 * Certain light type needs more configurations to work properly (Like direction, flags or size)
	 */
	@:native("SET_LIGHT_TYPE")
	static function setLightType(lightType:Int):Dynamic;

	/**
	 * Sets whether the wheel is powered.
	 * On all wheel drive cars this works to change which wheels receive power, but if a car's fDriveBiasFront doesn't send power to that wheel, it won't get power anyway. This can be fixed by changing the fDriveBiasFront with SET_VEHICLE_HANDLING_FLOAT.
	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 * This is a shortcut to a flag in SET_VEHICLE_WHEEL_FLAGS.
	 */
	@:native("SET_VEHICLE_WHEEL_IS_POWERED")
	static function setVehicleWheelIsPowered(vehicle:Dynamic, wheelIndex:Int, powered:Bool):Dynamic;

	/**
	 * Override the limits on the number and types of melee combatants. The game is limited to at most ten combatants among the three types: primary, secondary, and observers.
	 * 
	 * This native infers the number of observers based on the primary and secondary counts.
	 */
	@:native("SET_PED_MELEE_COMBAT_LIMITS")
	static function setPedMeleeCombatLimits(primaryCount:Int, secondaryCount:Int, populationPedCount:Int):Dynamic;

	/**
	 * Enables or disables whether train doors should be forced open whilst a player is inside the train. This is enabled by default in multiplayer.
	 */
	@:native("SET_TRAINS_FORCE_DOORS_OPEN")
	static function setTrainsForceDoorsOpen(forceOpen:Dynamic):Dynamic;

	/**
	 * directionX/Y should be constrained between -1.0 and 1.0
	 * A positive value will create the wave starting at min and rolling towards max
	 * A negative value will create the wave starting at max and rolling towards min
	 * Applying both values allows you to make diagonal waves
	 */
	@:native("SET_WAVE_QUAD_DIRECTION")
	static function setWaveQuadDirection(waveQuad:Int, directionX:Float, directionY:Float):Bool;

	/**
	 * Set the vehicle's pitch bias. Only works on planes.
	 */
	@:native("SET_VEHICLE_PITCH_BIAS")
	static function setVehiclePitchBias(vehicle:Dynamic, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_GRAVITY_AMOUNT")
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
	@:native("SET_PED_TURNING_THRESHOLDS")
	static function setPedTurningThresholds(min:Float, max:Float):Dynamic;

	/**
	 * Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FIELD`, this might require some experimentation.
	 * Example: `SetVehicleHandlingField(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
	 */
	@:native("SET_VEHICLE_HANDLING_FIELD")
	static function setVehicleHandlingField(vehicle:Dynamic, class_:String, fieldName:String, value:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SET_NUI_FOCUS")
	static function setNuiFocus(hasFocus:Bool, hasCursor:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_TIMECYCLE_MODIFIER_VAR")
	static function setTimecycleModifierVar(modifierName:String, varName:String, value1:Float, value2:Float):Dynamic;

	/**
	 * Sets the rotation speed of a wheel.
	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("SET_VEHICLE_WHEEL_ROTATION_SPEED")
	static function setVehicleWheelRotationSpeed(vehicle:Dynamic, wheelIndex:Int, speed:Float):Dynamic;

	/**
	 * Sets brake pressure of a wheel.
	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 * Normal values around 1.0f
	 */
	@:native("SET_VEHICLE_WHEEL_BRAKE_PRESSURE")
	static function setVehicleWheelBrakePressure(vehicle:Dynamic, wheelIndex:Int, pressure:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_WATER_QUAD_ALPHA")
	static function setWaterQuadAlpha(waterQuad:Int, a0:Int, a1:Int, a2:Int, a3:Int):Bool;

	/**
	 * 
	 */
	@:native("SET_TRAIN_STATE")
	static function setTrainState(train:Dynamic, state:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_TEXT_JUSTIFICATION")
	static function setTextJustification(justifyType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_WEATHER_CYCLE_ENTRY")
	static function setWeatherCycleEntry(index:Int, typeName:String, timeMult:Int):Bool;

	/**
	 * Shuts down the `loadingScreen` NUI frame, similarly to `SHUTDOWN_LOADING_SCREEN`.
	 */
	@:native("SHUTDOWN_LOADING_SCREEN_NUI")
	static function shutdownLoadingScreenNui():Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_WHEEL_Y_ROTATION")
	static function setVehicleWheelYRotation(vehicle:Dynamic, wheelIndex:Int, value:Float):Dynamic;

	/**
	 * Not sure what this changes, probably determines physical rim size in case the tire is blown.
	 */
	@:native("SET_VEHICLE_WHEEL_RIM_COLLIDER_SIZE")
	static function setVehicleWheelRimColliderSize(vehicle:Dynamic, wheelIndex:Int, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_CURRENT_RPM")
	static function setVehicleCurrentRpm(vehicle:Dynamic, rpm:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_OIL_LEVEL")
	static function setVehicleOilLevel(vehicle:Dynamic, level:Float):Dynamic;

	/**
	 * Sets the player's rich presence detail state for social platform providers to a specified string.
	 */
	@:native("SET_RICH_PRESENCE")
	static function setRichPresence(presenceState:String):Dynamic;

	/**
	 * A setter for the recoil shake amplitude of a weapon.
	 */
	@:native("SET_WEAPON_RECOIL_SHAKE_AMPLITUDE")
	static function setWeaponRecoilShakeAmplitude(weaponHash:Int, amplitude:Float):Dynamic;

	/**
	 * A setter for the accuracy spread of a weapon.
	 */
	@:native("SET_WEAPON_ACCURACY_SPREAD")
	static function setWeaponAccuracySpread(weaponHash:Int, spread:Float):Dynamic;

	/**
	 * Sets power being sent to a wheel.
	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("SET_VEHICLE_WHEEL_POWER")
	static function setVehicleWheelPower(vehicle:Dynamic, wheelIndex:Int, power:Float):Dynamic;

	/**
	 * Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FLOAT`, this might require some experimentation.
	 * Example: `SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
	 */
	@:native("SET_VEHICLE_HANDLING_FLOAT")
	static function setVehicleHandlingFloat(vehicle:Dynamic, class_:String, fieldName:String, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_NUI_FOCUS_KEEP_INPUT")
	static function setNuiFocusKeepInput(keepInput:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_WATER_QUAD_IS_INVISIBLE")
	static function setWaterQuadIsInvisible(waterQuad:Int, isInvisible:Bool):Bool;

	/**
	 * Sets whether all tags should group (normal game behavior) or should remain independent and above each ped's respective head when in a vehicle.
	 */
	@:native("SET_MP_GAMER_TAGS_USE_VEHICLE_BEHAVIOR")
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
	@:native("SET_VEHICLE_WHEEL_X_OFFSET")
	static function setVehicleWheelXOffset(vehicle:Dynamic, wheelIndex:Int, offset:Float):Dynamic;

	/**
	 * Set the vehicle's roll bias. Only works on planes.
	 */
	@:native("SET_VEHICLE_ROLL_BIAS")
	static function setVehicleRollBias(vehicle:Dynamic, value:Float):Dynamic;

	/**
	 * Overrides a floating point value from `visualsettings.dat` temporarily.
	 */
	@:native("SET_VISUAL_SETTING_FLOAT")
	static function setVisualSettingFloat(name:String, value:Float):Dynamic;

	/**
	 * Sets the state of a track junction.
	 */
	@:native("SET_TRACK_JUNCTION_ACTIVE")
	static function setTrackJunctionActive(junctionIndex:Int, state:Dynamic):Dynamic;

	/**
	 * Use along with SetVehicleWheelWidth to resize the wheels (this native sets the collider width affecting physics while SetVehicleWheelWidth will change visual width).
	 */
	@:native("SET_VEHICLE_WHEEL_TIRE_COLLIDER_WIDTH")
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
	@:native("SET_VEHICLE_WHEELIE_STATE")
	static function setVehicleWheelieState(vehicle:Dynamic, state:Int):Dynamic;

	/**
	 * Sets vehicle's wheels' width (width is the same for all the wheels, cannot get/set specific wheel of vehicle).
	 * Only works on non-default wheels.
	 * Returns whether change was successful (can be false if trying to set width for non-default wheels).
	 */
	@:native("SET_VEHICLE_WHEEL_WIDTH")
	static function setVehicleWheelWidth(vehicle:Dynamic, width:Float):Bool;

	/**
	 * Use along with SetVehicleWheelSize to resize the wheels (this native sets the collider size affecting physics while SetVehicleWheelSize will change visual size).
	 */
	@:native("SET_VEHICLE_WHEEL_TIRE_COLLIDER_SIZE")
	static function setVehicleWheelTireColliderSize(vehicle:Dynamic, wheelIndex:Int, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_WATER_QUAD_LEVEL")
	static function setWaterQuadLevel(waterQuad:Int, level:Float):Bool;

	/**
	 * Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_INT`, this might require some experimentation.
	 */
	@:native("SET_VEHICLE_HANDLING_INT")
	static function setVehicleHandlingInt(vehicle:Dynamic, class_:String, fieldName:String, value:Int):Dynamic;

	/**
	 * The backing function for TriggerLatentServerEvent.
	 */
	@:native("TRIGGER_LATENT_SERVER_EVENT_INTERNAL")
	static function triggerLatentServerEventInternal(eventName:String, eventPayload:String, payloadLength:Int, bps:Int):Dynamic;

	/**
	 * Disables the editor runtime mode, changing game behavior to not track entity metadata.
	 * This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("DISABLE_EDITOR_RUNTIME")
	static function disableEditorRuntime():Dynamic;

	/**
	 * This native allows you to update the bounds of a specified water quad index.
	 */
	@:native("SET_WATER_QUAD_BOUNDS")
	static function setWaterQuadBounds(waterQuad:Int, minX:Int, minY:Int, maxX:Int, maxY:Int):Bool;

	/**
	 * The backing function for TriggerServerEvent.
	 */
	@:native("TRIGGER_SERVER_EVENT_INTERNAL")
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
	@:native("SET_WATER_QUAD_TYPE")
	static function setWaterQuadType(waterQuad:Int, type:Int):Bool;

	/**
	 * 
	 */
	@:native("SET_PLAYER_MAX_STAMINA")
	static function setPlayerMaxStamina(playerId:Dynamic, maxStamina:Float):Dynamic;

	/**
	 * Sets custom vehicle xenon lights color, allowing to use RGB palette. The game will ignore lights color set by [\_SET_VEHICLE_XENON_LIGHTS_COLOR](#\_0xE41033B25D003A07) when custom color is active. This native is not synced between players. Requires xenon lights mod to be set on vehicle.
	 */
	@:native("SET_VEHICLE_XENON_LIGHTS_CUSTOM_COLOR")
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
	@:native("GET_MAPDATA_ENTITY_MATRIX")
	static function getMapdataEntityMatrix(mapDataHash:Int, entityInternalIdx:Int, matrixPtr:Int):Bool;

	/**
	 * Sets a ped model's health config.
	 * Takes effect only after setting player model with `SET_PLAYER_MODEL`.
	 */
	@:native("SET_PED_MODEL_HEALTH_CONFIG")
	static function setPedModelHealthConfig(modelHash:Int, configName:String):Dynamic;

	/**
	 * Sets the text font for the current text drawing command.
	 */
	@:native("SET_TEXT_FONT_FOR_CURRENT_COMMAND")
	static function setTextFontForCurrentCommand(fontId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_WATER_QUAD_NO_STENCIL")
	static function setWaterQuadNoStencil(waterQuad:Int, noStencil:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_XMAS_SNOW_FACTOR")
	static function setVehicleXmasSnowFactor(gripFactor:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_CLUTCH")
	static function setVehicleClutch(vehicle:Dynamic, clutch:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_WATER_QUAD_HAS_LIMITED_DEPTH")
	static function setWaterQuadHasLimitedDepth(waterQuad:Int, hasLimitedDepth:Bool):Bool;

	/**
	 * Sets world clip boundaries for water quads file (water.xml, water_heistisland.xml)
	 * Used internally by LOAD_GLOBAL_WATER_FILE
	 */
	@:native("SET_WATER_AREA_CLIP_RECT")
	static function setWaterAreaClipRect(minX:Int, minY:Int, maxX:Int, maxY:Int):Dynamic;

	/**
	 * Sets the traction vector length of a wheel.
	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("SET_VEHICLE_WHEEL_TRACTION_VECTOR_LENGTH")
	static function setVehicleWheelTractionVectorLength(vehicle:Dynamic, wheelIndex:Int, length:Float):Dynamic;

	/**
	 * A getter for [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938), but for a specified resource.
	 */
	@:native("GET_EXTERNAL_KVP_FLOAT")
	static function getExternalKvpFloat(resource:String, key:String):Float;

	/**
	 * Retrieves the map data entity handle.
	 * This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("GET_MAPDATA_ENTITY_HANDLE")
	static function getMapdataEntityHandle(mapDataHash:Int, entityInternalIdx:Int, entityHandle:Dynamic):Bool;

	/**
	 * Disables weapons aim blocking due to environment for local player.
	 * For non-player peds [SET_PED_ENABLE_WEAPON_BLOCKING](#\_0x97A790315D3831FD) can be used.
	 */
	@:native("SET_WEAPONS_NO_AIM_BLOCKING")
	static function setWeaponsNoAimBlocking(state:Bool):Dynamic;

	/**
	 * Disables the game's built-in auto-reloading.
	 */
	@:native("SET_WEAPONS_NO_AUTORELOAD")
	static function setWeaponsNoAutoreload(state:Bool):Dynamic;

	/**
	 * Modifies the radius scale used in the simulation of wet cloth physics.
	 * This affects how cloth behaves when wet, changing how it sticks or reacts to movement.
	 */
	@:native("SET_WET_CLOTH_PIN_RADIUS_SCALE")
	static function setWetClothPinRadiusScale(scale:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_STEERING_SCALE")
	static function setVehicleSteeringScale(vehicle:Dynamic, scale:Float):Dynamic;

	/**
	 * This completely disables pedestrian vehicles from reacting to sirens. They will not try to do any maneuver to evade.
	 */
	@:native("SET_REACTION_TO_VEHICLE_SIREN_DISABLED")
	static function setReactionToVehicleSirenDisabled(state:Bool):Dynamic;

	/**
	 * Will unregister and cleanup a registered NUI callback handler.
	 * 
	 * Use along side the REGISTER_RAW_NUI_CALLBACK native.
	 */
	@:native("UNREGISTER_RAW_NUI_CALLBACK")
	static function unregisterRawNuiCallback(callbackType:String):Dynamic;

	/**
	 * This native allows you to update the bounds of a specified water quad index.
	 */
	@:native("SET_WAVE_QUAD_BOUNDS")
	static function setWaveQuadBounds(waveQuad:Int, minX:Int, minY:Int, maxX:Int, maxY:Int):Bool;

	/**
	 * Disables autoswapping to another weapon when the current weapon runs out of ammo.
	 */
	@:native("SET_WEAPONS_NO_AUTOSWAP")
	static function setWeaponsNoAutoswap(state:Bool):Dynamic;

	/**
	 * Leaves cursor mode. This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("LEAVE_CURSOR_MODE")
	static function leaveCursorMode():Dynamic;

	/**
	 * 
	 */
	@:native("SET_WAVE_QUAD_AMPLITUDE")
	static function setWaveQuadAmplitude(waveQuad:Int, amplitude:Float):Bool;

	/**
	 * Returns the transient entity index for a specified mapdata/entity pair.
	 * This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("GET_ENTITY_INDEX_FROM_MAPDATA")
	static function getEntityIndexFromMapdata(mapdata:Int, entity:Int):Int;

	/**
	 * Sets an entity's matrix. Arguments are in the same order as with GET_ENTITY_MATRIX.
	 */
	@:native("SET_ENTITY_MATRIX")
	static function setEntityMatrix(entity:Dynamic, forwardX:Float, forwardY:Float, forwardZ:Float, rightX:Float, rightY:Float, rightZ:Float, upX:Float, upY:Float, upZ:Float, atX:Float, atY:Float, atZ:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_FUEL_LEVEL")
	static function setVehicleFuelLevel(vehicle:Dynamic, level:Float):Dynamic;

	/**
	 * Enters cursor mode, suppressing mouse movement to the game and displaying a mouse cursor instead. This function supports
	 * SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("ENTER_CURSOR_MODE")
	static function enterCursorMode():Dynamic;

	/**
	 * Sets the flags of a wheel.
	 * Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
	 */
	@:native("SET_VEHICLE_WHEEL_FLAGS")
	static function setVehicleWheelFlags(vehicle:Dynamic, wheelIndex:Int, flags:Int):Dynamic;

	/**
	 * Retrieves the map data and entity handles from a specific entity.
	 * This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("GET_ENTITY_MAPDATA_OWNER")
	static function getEntityMapdataOwner(entity:Dynamic, mapdataHandle:Dynamic, entityHandle:Dynamic):Bool;

	/**
	 * Sets whether or not the weather should be owned by the network subsystem.
	 * 
	 * To be able to use [\_SET_WEATHER_TYPE_TRANSITION](#\_0x578C752848ECFA0C), this has to be set to false.
	 */
	@:native("SET_WEATHER_OWNED_BY_NETWORK")
	static function setWeatherOwnedByNetwork(network:Bool):Dynamic;

	/**
	 * Transiently updates the entity with the specified mapdata index and entity index.
	 * This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("UPDATE_MAPDATA_ENTITY")
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
	@:native("SET_ENTITY_DRAW_OUTLINE_RENDER_TECHNIQUE")
	static function setEntityDrawOutlineRenderTechnique(techniqueGroup:String):Dynamic;

	/**
	 * Enables the editor runtime mode, changing game behavior to track entity metadata.
	 * This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("ENABLE_EDITOR_RUNTIME")
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
	@:native("DRAW_GIZMO")
	static function drawGizmo(matrixPtr:Int, id:String):Bool;

	/**
	 * Gets the selected entity at the current mouse cursor position, and changes the current selection depth. This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("SELECT_ENTITY_AT_CURSOR")
	static function selectEntityAtCursor(hitFlags:Int, precise:Bool):Dynamic;

	/**
	 * A getter for [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8), but for a specified resource.
	 */
	@:native("GET_EXTERNAL_KVP_INT")
	static function getExternalKvpInt(resource:String, key:String):Int;

	/**
	 * Resets mapdata entity transform matrix to its original state.
	 * This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("RESET_MAPDATA_ENTITY_MATRIX")
	static function resetMapdataEntityMatrix(mapDataHash:Int, entityInternalIdx:Int):Bool;

	/**
	 * Draws an outline around a given entity. This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("SET_ENTITY_DRAW_OUTLINE")
	static function setEntityDrawOutline(entity:Dynamic, enabled:Bool):Dynamic;

	/**
	 * Sets color for entity outline. `255, 0, 255, 255` by default.
	 */
	@:native("SET_ENTITY_DRAW_OUTLINE_COLOR")
	static function setEntityDrawOutlineColor(red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * This function undoes changes made by [`SET_ENTITY_DRAW_OUTLINE_RENDER_TECHNIQUE`](#\_0x68DFF2DD), restoring the original outline rendering behavior. The default render technique group is `unlit`.
	 */
	@:native("RESET_ENTITY_DRAW_OUTLINE_RENDER_TECHNIQUE")
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
	@:native("SET_ENTITY_DRAW_OUTLINE_SHADER")
	static function setEntityDrawOutlineShader(shader:Int):Dynamic;

	/**
	 * Equivalent of [START_FIND_KVP](#\_0xDD379006), but for another resource than the current one.
	 */
	@:native("START_FIND_EXTERNAL_KVP")
	static function startFindExternalKvp(resourceName:String, prefix:String):Int;

	/**
	 * Gets the selected entity at the specified mouse cursor position, and changes the current selection depth. This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("SELECT_ENTITY_AT_POS")
	static function selectEntityAtPos(fracX:Float, fracY:Float, hitFlags:Int, precise:Bool):Dynamic;

	/**
	 * Returns the transient map data index for a specified hash.
	 * This function supports SDK infrastructure and is not intended to be used directly from your code.
	 */
	@:native("GET_MAPDATA_FROM_HASH_KEY")
	static function getMapdataFromHashKey(mapdataHandle:Int):Int;

	/**
	 * A getter for [SET_RESOURCE_KVP](#\_0x21C7A35B), but for a specified resource.
	 */
	@:native("GET_EXTERNAL_KVP_STRING")
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
	@:native("ADD_CONVAR_CHANGE_LISTENER")
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
	@:native("ADD_STATE_BAG_CHANGE_HANDLER")
	static function addStateBagChangeHandler(keyFilter:String, bagFilter:String, handler:haxe.Constraints.Function):Int;

	/**
	 * 
	 */
	@:native("DOES_TRAIN_STOP_AT_STATIONS")
	static function doesTrainStopAtStations(train:Dynamic):Bool;

	/**
	 * Cancels the currently executing event.
	 */
	@:native("CANCEL_EVENT")
	static function cancelEvent():Dynamic;

	/**
	 * 
	 */
	@:native("DELETE_FUNCTION_REFERENCE")
	static function deleteFunctionReference(referenceIdentity:String):Dynamic;

	/**
	 * 
	 */
	@:native("DUPLICATE_FUNCTION_REFERENCE")
	static function duplicateFunctionReference(referenceIdentity:String):String;

	/**
	 * Internal function for ensuring an entity has a state bag.
	 */
	@:native("ENSURE_ENTITY_STATE_BAG")
	static function ensureEntityStateBag(entity:Dynamic):Dynamic;

	/**
	 * Depending on your use case you may need to use `add_acl resource.<your_resource_name> command.<command_name> allow` to use this native in your resource.
	 */
	@:native("EXECUTE_COMMAND")
	static function executeCommand(commandString:String):Dynamic;

	/**
	 * Returns the name of the currently executing resource.
	 */
	@:native("GET_CURRENT_RESOURCE_NAME")
	static function getCurrentResourceName():String;

	/**
	 * Can be used to get a console variable of type `char*`, for example a string.
	 */
	@:native("GET_CONVAR")
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
	@:native("GET_ENTITIES_IN_RADIUS")
	static function getEntitiesInRadius(x:Float, y:Float, z:Float, radius:Float, entityType:Int, sortByDistance:Bool, models:Dynamic):Dynamic;

	/**
	 * Returns the entity handle for the specified state bag name. For use with [ADD_STATE_BAG_CHANGE_HANDLER](#\_0x5BA35AAF).
	 */
	@:native("GET_ENTITY_FROM_STATE_BAG_NAME")
	static function getEntityFromStateBagName(bagName:String):Dynamic;

	/**
	 * Can be used to get a console variable casted back to `bool`.
	 */
	@:native("GET_CONVAR_BOOL")
	static function getConvarBool(varName:String, defaultValue:Bool):Bool;

	/**
	 * Can be used to get a console variable casted back to `int` (an integer value).
	 */
	@:native("GET_CONVAR_INT")
	static function getConvarInt(varName:String, default_:Int):Int;

	/**
	 * An internal function for converting a stack trace object to a string.
	 */
	@:native("FORMAT_STACK_TRACE")
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
	@:native("GET_GAME_BUILD_NUMBER")
	static function getGameBuildNumber():Int;

	/**
	 * This will have floating point inaccuracy.
	 */
	@:native("GET_CONVAR_FLOAT")
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
	@:native("GET_GAME_NAME")
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
	@:native("GET_GAME_POOL")
	static function getGamePool(poolName:String):Dynamic;

	/**
	 * 
	 */
	@:native("GET_INVOKING_RESOURCE")
	static function getInvokingResource():String;

	/**
	 * Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
	 * See also: [Resource manifest](https://docs.fivem.net/docs/scripting-reference/resource-manifest/)
	 */
	@:native("GET_NUM_RESOURCE_METADATA")
	static function getNumResourceMetadata(resourceName:String, metadataKey:String):Int;

	/**
	 * On the server this will return the players source, on the client it will return the player handle.
	 */
	@:native("GET_PLAYER_FROM_STATE_BAG_NAME")
	static function getPlayerFromStateBagName(bagName:String):Int;

	/**
	 * 
	 */
	@:native("GET_NUM_RESOURCES")
	static function getNumResources():Int;

	/**
	 * 
	 */
	@:native("GET_INSTANCE_ID")
	static function getInstanceId():Int;

	/**
	 * 
	 */
	@:native("GET_RESOURCE_BY_FIND_INDEX")
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
	@:native("GET_REGISTERED_COMMANDS")
	static function getRegisteredCommands():Dynamic;

	/**
	 * A getter for [SET_PLAYER_WEAPON_DEFENSE_MODIFIER](#\_0x2D83BC011CA14A3C).
	 */
	@:native("GET_PLAYER_WEAPON_DEFENSE_MODIFIER")
	static function getPlayerWeaponDefenseModifier(playerId:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_TRAIN_STATE")
	static function getTrainState(train:Dynamic):Int;

	/**
	 * A getter for [SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER](#\_0x4A3DC7ECCC321032).
	 */
	@:native("GET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER")
	static function getPlayerMeleeWeaponDamageModifier(playerId:Dynamic):Float;

	/**
	 * A getter for [SET_PLAYER_WEAPON_DAMAGE_MODIFIER](#\_0xCE07B9F7817AADA3).
	 */
	@:native("GET_PLAYER_WEAPON_DAMAGE_MODIFIER")
	static function getPlayerWeaponDamageModifier(playerId:Dynamic):Float;

	/**
	 * Returns the value of a state bag key.
	 */
	@:native("GET_STATE_BAG_VALUE")
	static function getStateBagValue(bagName:String, key:String):Dynamic;

	/**
	 * 
	 */
	@:native("GET_TRAIN_TRACK_INDEX")
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
	@:native("GET_RESOURCE_COMMANDS")
	static function getResourceCommands(resource:String):Dynamic;

	/**
	 * A getter for [\_SET_PLAYER_WEAPON_DEFENSE_MODIFIER\_2](#\_0xBCFDE9EDE4CF27DC).
	 */
	@:native("GET_PLAYER_WEAPON_DEFENSE_MODIFIER_2")
	static function getPlayerWeaponDefenseModifier2(playerId:Dynamic):Float;

	/**
	 * Gets the metadata value at a specified key/index from a resource's manifest.
	 * See also: [Resource manifest](https://docs.fivem.net/docs/scripting-reference/resource-manifest/)
	 */
	@:native("GET_RESOURCE_METADATA")
	static function getResourceMetadata(resourceName:String, metadataKey:String, index:Int):String;

	/**
	 * Returns the current state of the specified resource.
	 */
	@:native("GET_RESOURCE_STATE")
	static function getResourceState(resourceName:String):String;

	/**
	 * 
	 */
	@:native("GET_STATE_BAG_KEYS")
	static function getStateBagKeys(bagName:String):Dynamic;

	/**
	 * Gets the direction the train is facing
	 */
	@:native("GET_TRAIN_DIRECTION")
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
	@:native("GET_VEHICLE_TYPE")
	static function getVehicleType(vehicle:Dynamic):String;

	/**
	 * Gets the trains desired speed.
	 */
	@:native("GET_TRAIN_CRUISE_SPEED")
	static function getTrainCruiseSpeed(train:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_STEERING_ANGLE")
	static function getVehicleSteeringAngle(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_HANDBRAKE")
	static function getVehicleHandbrake(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_ACE_ALLOWED")
	static function isAceAllowed(object:String):Bool;

	/**
	 * A getter for [FREEZE_ENTITY_POSITION](#\_0x428CA6DBD1094446).
	 */
	@:native("IS_ENTITY_POSITION_FROZEN")
	static function isEntityPositionFrozen(entity:Dynamic):Dynamic;

	/**
	 * Gets whether or not this is the CitizenFX server.
	 */
	@:native("IS_DUPLICITY_VERSION")
	static function isDuplicityVersion():Bool;

	/**
	 * 
	 */
	@:native("IS_VEHICLE_ENGINE_STARTING")
	static function isVehicleEngineStarting(vehicle:Dynamic):Bool;

	/**
	 * Reads the contents of a text file in a specified resource.
	 * If executed on the client, this file has to be included in `files` in the resource manifest.
	 * Example: `local data = LoadResourceFile("devtools", "data.json")`
	 */
	@:native("LOAD_RESOURCE_FILE")
	static function loadResourceFile(resourceName:String, fileName:String):String;

	/**
	 * 
	 */
	@:native("IS_PRINCIPAL_ACE_ALLOWED")
	static function isPrincipalAceAllowed(principal:String, object:String):Bool;

	/**
	 * Scope exit for profiler.
	 */
	@:native("PROFILER_EXIT_SCOPE")
	static function profilerExitScope():Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_CONVAR_CHANGE_LISTENER")
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
	@:native("REGISTER_COMMAND")
	static function registerCommand(commandName:String, handler:haxe.Constraints.Function, restricted:Bool):Dynamic;

	/**
	 * Returns the owner ID of the specified entity.
	 */
	@:native("NETWORK_GET_ENTITY_OWNER")
	static function networkGetEntityOwner(entity:Dynamic):Int;

	/**
	 * Returns true if the profiler is active.
	 */
	@:native("PROFILER_IS_RECORDING")
	static function profilerIsRecording():Bool;

	/**
	 * Scope entry for profiler.
	 */
	@:native("PROFILER_ENTER_SCOPE")
	static function profilerEnterScope(scopeName:String):Dynamic;

	/**
	 * An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
	 */
	@:native("REGISTER_RESOURCE_AS_EVENT_HANDLER")
	static function registerResourceAsEventHandler(eventName:String):Dynamic;

	/**
	 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
	 * 
	 * Removes a handler for changes to a state bag.
	 */
	@:native("REMOVE_STATE_BAG_CHANGE_HANDLER")
	static function removeStateBagChangeHandler(cookie:Int):Dynamic;

	/**
	 * Internal function for setting a state bag value.
	 */
	@:native("SET_STATE_BAG_VALUE")
	static function setStateBagValue(bagName:String, keyName:String, valueData:String, valueLength:Int, replicated:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("STATE_BAG_HAS_KEY")
	static function stateBagHasKey(bagName:String, key:String):Dynamic;

	/**
	 * The backing function for TriggerEvent.
	 */
	@:native("TRIGGER_EVENT_INTERNAL")
	static function triggerEventInternal(eventName:String, eventPayload:String, payloadLength:Int):Dynamic;

	/**
	 * Returns whether or not the currently executing event was canceled.
	 */
	@:native("WAS_EVENT_CANCELED")
	static function wasEventCanceled():Bool;

	/**
	 * Nonsynchronous [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
	 */
	@:native("SET_RESOURCE_KVP_FLOAT_NO_SYNC")
	static function setResourceKvpFloatNoSync(key:String, value:Float):Dynamic;

	/**
	 * A getter for [SET_RESOURCE_KVP](#\_0x21C7A35B).
	 */
	@:native("GET_RESOURCE_KVP_STRING")
	static function getResourceKvpString(key:String):String;

	/**
	 * Nonsynchronous [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
	 */
	@:native("SET_RESOURCE_KVP_INT_NO_SYNC")
	static function setResourceKvpIntNoSync(key:String, value:Int):Dynamic;

	/**
	 * A setter for [GET_RESOURCE_KVP_STRING](#\_0x5240DA5A).
	 */
	@:native("SET_RESOURCE_KVP")
	static function setResourceKvp(key:String, value:String):Dynamic;

	/**
	 * 
	 */
	@:native("END_FIND_KVP")
	static function endFindKvp(handle:Int):Dynamic;

	/**
	 * A getter for [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938).
	 */
	@:native("GET_RESOURCE_KVP_FLOAT")
	static function getResourceKvpFloat(key:String):Float;

	/**
	 * 
	 */
	@:native("DELETE_RESOURCE_KVP")
	static function deleteResourceKvp(key:String):Dynamic;

	/**
	 * 
	 */
	@:native("FIND_KVP")
	static function findKvp(handle:Int):String;

	/**
	 * A setter for [GET_RESOURCE_KVP_FLOAT](#\_0x35BDCEEA).
	 */
	@:native("SET_RESOURCE_KVP_FLOAT")
	static function setResourceKvpFloat(key:String, value:Float):Dynamic;

	/**
	 * Nonsynchronous [SET_RESOURCE_KVP](#\_0x21C7A35B) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
	 */
	@:native("SET_RESOURCE_KVP_NO_SYNC")
	static function setResourceKvpNoSync(key:String, value:String):Dynamic;

	/**
	 * Nonsynchronous [DELETE_RESOURCE_KVP](#\_0x7389B5DF) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
	 */
	@:native("DELETE_RESOURCE_KVP_NO_SYNC")
	static function deleteResourceKvpNoSync(key:String):Dynamic;

	/**
	 * 
	 */
	@:native("START_FIND_KVP")
	static function startFindKvp(prefix:String):Int;

	/**
	 * A getter for [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8).
	 */
	@:native("GET_RESOURCE_KVP_INT")
	static function getResourceKvpInt(key:String):Int;

	/**
	 * A setter for [GET_RESOURCE_KVP_INT](#\_0x557B586A).
	 */
	@:native("SET_RESOURCE_KVP_INT")
	static function setResourceKvpInt(key:String, value:Int):Dynamic;

}
