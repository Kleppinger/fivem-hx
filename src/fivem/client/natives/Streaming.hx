package fivem.client.natives;

@:native("_G")
extern class Streaming {
	/**
	 * 
	 */
	@:native("ADD_MODEL_TO_CREATOR_BUDGET")
	static function addModelToCreatorBudget(modelHash:Int):Bool;

	/**
	 * 
	 */
	@:native("BEGIN_SRL")
	static function beginSrl():Dynamic;

	/**
	 * 
	 */
	@:native("ALLOW_PLAYER_SWITCH_PAN")
	static function allowPlayerSwitchPan():Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_FOCUS")
	static function clearFocus():Dynamic;

	/**
	 * 
	 */
	@:native("ALLOW_PLAYER_SWITCH_DESCENT")
	static function allowPlayerSwitchDescent():Dynamic;

	/**
	 * 
	 */
	@:native("ALLOW_PLAYER_SWITCH_ASCENT")
	static function allowPlayerSwitchAscent():Dynamic;

	/**
	 * 
	 */
	@:native("DOES_ANIM_DICT_EXIST")
	static function doesAnimDictExist(animDict:String):Bool;

	/**
	 * 
	 */
	@:native("CLEAR_HD_AREA")
	static function clearHdArea():Dynamic;

	/**
	 * 
	 */
	@:native("ALLOW_PLAYER_SWITCH_OUTRO")
	static function allowPlayerSwitchOutro():Dynamic;

	/**
	 * ```
	 * x1, y1, z1 -- Coords of your ped model  
	 * x2, y2, z2 -- Coords of the ped you want to switch to  
	 * ```
	 */
	@:native("GET_IDEAL_PLAYER_SWITCH_TYPE")
	static function getIdealPlayerSwitchType(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float):Int;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("_GET_GLOBAL_WATER_TYPE")
	static function GetGlobalWaterType():Int;

	/**
	 * 
	 */
	@:native("DISABLE_SWITCH_OUTRO_FX")
	static function disableSwitchOutroFx():Dynamic;

	/**
	 * Clear the current srl and stop rendering the area selected by PREFETCH_SRL and started with BEGIN_SRL.
	 */
	@:native("END_SRL")
	static function endSrl():Dynamic;

	/**
	 * 
	 */
	@:native("GET_PLAYER_SHORT_SWITCH_STATE")
	static function getPlayerShortSwitchState():Int;

	/**
	 * 
	 */
	@:native("ENABLE_SWITCH_PAUSE_BEFORE_DESCENT")
	static function enableSwitchPauseBeforeDescent():Dynamic;

	/**
	 * 
	 */
	@:native("GET_PLAYER_SWITCH_INTERP_OUT_DURATION")
	static function getPlayerSwitchInterpOutDuration():Int;

	/**
	 * 
	 */
	@:native("GET_LODSCALE")
	static function getLodscale():Float;

	/**
	 * 
	 */
	@:native("GET_PLAYER_SWITCH_JUMP_CUT_INDEX")
	static function getPlayerSwitchJumpCutIndex():Int;

	/**
	 * 
	 */
	@:native("GET_PLAYER_SWITCH_STATE")
	static function getPlayerSwitchState():Int;

	/**
	 * 
	 */
	@:native("GET_NUMBER_OF_STREAMING_REQUESTS")
	static function getNumberOfStreamingRequests():Int;

	/**
	 * 
	 */
	@:native("GET_PLAYER_SWITCH_TYPE")
	static function getPlayerSwitchType():Int;

	/**
	 * 
	 */
	@:native("GET_PLAYER_SWITCH_INTERP_OUT_CURRENT_TIME")
	static function getPlayerSwitchInterpOutCurrentTime():Dynamic;

	/**
	 * 
	 */
	@:native("HAS_COLLISION_FOR_MODEL_LOADED")
	static function hasCollisionForModelLoaded(model:Int):Bool;

	/**
	 * 
	 */
	@:native("HAS_ANIM_DICT_LOADED")
	static function hasAnimDictLoaded(animDict:String):Bool;

	/**
	 * ```
	 * Alias for HAS_ANIM_SET_LOADED.  
	 * ```
	 */
	@:native("HAS_CLIP_SET_LOADED")
	static function hasClipSetLoaded(clipSet:String):Bool;

	/**
	 * 
	 */
	@:native("HAS_NAMED_PTFX_ASSET_LOADED")
	static function hasNamedPtfxAssetLoaded(fxName:String):Bool;

	/**
	 * ```
	 * 0.0 = no memory used
	 * 1.0 = all memory used
	 * 
	 * Maximum model memory (as defined in common\data\missioncreatordata.meta) is 100 MiB
	 * 
	 * GET_*
	 * ```
	 */
	@:native("_GET_USED_CREATOR_MODEL_MEMORY_PERCENTAGE")
	static function GetUsedCreatorModelMemoryPercentage():Float;

	/**
	 * 
	 */
	@:native("IS_IPL_ACTIVE")
	static function isIplActive(iplName:String):Bool;

	/**
	 * 
	 */
	@:native("IS_ENTITY_FOCUS")
	static function isEntityFocus(entity:Dynamic):Bool;

	/**
	 * ```
	 * Returns whether the specified model exists in the game.  
	 * ```
	 */
	@:native("IS_MODEL_VALID")
	static function isModelValid(model:Int):Bool;

	/**
	 * Gets whether the specified animation set has finished loading. An animation set provides movement animations for a ped.
	 * 
	 * Animation set and clip set are synonymous. See [`SET_PED_MOVEMENT_CLIPSET`](#\_0xAF8A94EDE7712BEF).
	 */
	@:native("HAS_ANIM_SET_LOADED")
	static function hasAnimSetLoaded(animSet:String):Bool;

	/**
	 * ```
	 * Check if model is in cdimage(rpf)  
	 * ```
	 */
	@:native("IS_MODEL_IN_CDIMAGE")
	static function isModelInCdimage(model:Int):Bool;

	/**
	 * Returns whether the specified model (archetype) is currently loaded.
	 * 
	 * Note that this will return 'true' even if the model has been requested and loaded by something other than the current script, if you're intending to actually use the model in a later frame, you should call REQUEST_MODEL anyway.
	 */
	@:native("HAS_MODEL_LOADED")
	static function hasModelLoaded(model:Int):Bool;

	/**
	 * 
	 */
	@:native("INIT_CREATOR_BUDGET")
	static function initCreatorBudget():Dynamic;

	/**
	 * 
	 */
	@:native("IS_NEW_LOAD_SCENE_LOADED")
	static function isNewLoadSceneLoaded():Bool;

	/**
	 * 
	 */
	@:native("HAS_PTFX_ASSET_LOADED")
	static function hasPtfxAssetLoaded():Bool;

	/**
	 * 
	 */
	@:native("_IS_MODEL_A_PED")
	static function IsModelAPed(model:Int):Bool;

	/**
	 * Returns true when the srl from BEGIN_SRL is loaded.
	 */
	@:native("IS_SRL_LOADED")
	static function isSrlLoaded():Bool;

	/**
	 * 
	 */
	@:native("IS_NETWORK_LOADING_SCENE")
	static function isNetworkLoadingScene():Bool;

	/**
	 * ```
	 * Returns whether the specified model represents a vehicle.  
	 * ```
	 */
	@:native("IS_MODEL_A_VEHICLE")
	static function isModelAVehicle(model:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_STREAMVOL_ACTIVE")
	static function isStreamvolActive():Bool;

	/**
	 * 
	 */
	@:native("IS_SWITCH_READY_FOR_DESCENT")
	static function isSwitchReadyForDescent():Bool;

	/**
	 * 
	 */
	@:native("IS_SWITCH_SKIPPING_DESCENT")
	static function isSwitchSkippingDescent():Bool;

	/**
	 * 
	 */
	@:native("IS_NEW_LOAD_SCENE_ACTIVE")
	static function isNewLoadSceneActive():Bool;

	/**
	 * 
	 */
	@:native("LOAD_ALL_OBJECTS_NOW")
	static function loadAllObjectsNow():Dynamic;

	/**
	 * 0 - default
	 * 1 - HeistIsland
	 * 
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("_LOAD_GLOBAL_WATER_TYPE")
	static function LoadGlobalWaterType(waterType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("LOAD_SCENE")
	static function loadScene(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * ```
	 * Returns true if the player is currently switching, false otherwise.  
	 * (When the camera is in the sky moving from Trevor to Franklin for example)  
	 * ```
	 */
	@:native("IS_PLAYER_SWITCH_IN_PROGRESS")
	static function isPlayerSwitchInProgress():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_UPDATE_LOAD_SCENE")
	static function networkUpdateLoadScene():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_STOP_LOAD_SCENE")
	static function networkStopLoadScene():Dynamic;

	/**
	 * ```
	 * `radius` value is usually between `3f` and `7000f` in original 1868 scripts.
	 * `p7` is 0, 1, 2, 3 or 4 used in decompiled scripts, 0 is by far the most common.
	 * Returns True if success, used only 7 times in decompiled scripts of 1868
	 * ```
	 */
	@:native("NEW_LOAD_SCENE_START")
	static function newLoadSceneStart(posX:Float, posY:Float, posZ:Float, offsetX:Float, offsetY:Float, offsetZ:Float, radius:Float, p7:Int):Bool;

	/**
	 * ```
	 * This allows you to override "extended distance scaling" setting. Needs to be called each frame.
	 * Max scaling seems to be 200.0, normal is 1.0
	 * See https://gfycat.com/DetailedHauntingIncatern
	 * ```
	 */
	@:native("OVERRIDE_LODSCALE_THIS_FRAME")
	static function overrideLodscaleThisFrame(scaling:Float):Dynamic;

	/**
	 * 
	 */
	@:native("NEW_LOAD_SCENE_STOP")
	static function newLoadSceneStop():Dynamic;

	/**
	 * Unloads the specified animation set. An animation set provides movement animations for a ped.
	 * 
	 * Animation set and clip set are synonymous. See [`SET_PED_MOVEMENT_CLIPSET`](#\_0xAF8A94EDE7712BEF).
	 */
	@:native("REMOVE_ANIM_SET")
	static function removeAnimSet(animSet:String):Dynamic;

	/**
	 * ```
	 * if (!sub_8f12("START LOAD SCENE SAFE")) {
	 *     if (CUTSCENE::GET_CUTSCENE_TIME() > 4178) {
	 *         STREAMING::_ACCFB4ACF53551B0(1973.845458984375, 3818.447265625, 32.43629837036133, 15.0, 2);
	 *         sub_8e9e("START LOAD SCENE SAFE", 1);
	 *     }
	 * }
	 * (Previously known as STREAMING::_NEW_LOAD_SCENE_START_SAFE)
	 * ```
	 */
	@:native("NEW_LOAD_SCENE_START_SPHERE")
	static function newLoadSceneStartSphere(x:Float, y:Float, z:Float, radius:Float, p4:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("REMOVE_MODEL_FROM_CREATOR_BUDGET")
	static function removeModelFromCreatorBudget(modelHash:Int):Dynamic;

	/**
	 * ```
	 * Alias for REMOVE_ANIM_SET.  
	 * ```
	 */
	@:native("REMOVE_CLIP_SET")
	static function removeClipSet(clipSet:String):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_ANIM_DICT")
	static function removeAnimDict(animDict:String):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_PTFX_ASSET")
	static function removePtfxAsset():Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_NAMED_PTFX_ASSET")
	static function removeNamedPtfxAsset(fxName:String):Dynamic;

	/**
	 * IPL list can be found [here](https://gist.github.com/4mmonium/4c8a076b5f712a7cc64666003009a2e7).
	 */
	@:native("REMOVE_IPL")
	static function removeIpl(iplName:String):Dynamic;

	/**
	 * This native is used to attribute the SRL that BeginSrl is going to load. This is usually used for 'in-game' cinematics (not cutscenes but camera stuff) instead of SetFocusArea because it loads a specific area of the map which is pretty useful when the camera moves from distant areas.
	 * For instance, GTA:O opening cutscene.
	 * 
	 * https://pastebin.com/2EeKVeLA : a list of SRL found in srllist.meta
	 * https://pastebin.com/zd9XYUWY : here is the content of a SRL file opened with codewalker.
	 */
	@:native("PREFETCH_SRL")
	static function prefetchSrl(srl:String):Dynamic;

	/**
	 * Starts loading the specified animation set. An animation set provides movement animations for a ped. See [`SET_PED_MOVEMENT_CLIPSET`](#\_0xAF8A94EDE7712BEF).
	 */
	@:native("REQUEST_ANIM_SET")
	static function requestAnimSet(animSet:String):Dynamic;

	/**
	 * 
	 */
	@:native("REQUEST_CLIP_SET")
	static function requestClipSet(clipSet:String):Dynamic;

	/**
	 * 
	 */
	@:native("REQUEST_ADDITIONAL_COLLISION_AT_COORD")
	static function requestAdditionalCollisionAtCoord(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * ```
	 * Exemple: REQUEST_IPL("TrevorsTrailerTrash");
	 * ```
	 */
	@:native("REQUEST_IPL")
	static function requestIpl(iplName:String):Dynamic;

	/**
	 * 
	 */
	@:native("REQUEST_ANIM_DICT")
	static function requestAnimDict(animDict:String):Dynamic;

	/**
	 * 
	 */
	@:native("REQUEST_COLLISION_AT_COORD")
	static function requestCollisionAtCoord(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("REQUEST_MENU_PED_MODEL")
	static function requestMenuPedModel(model:Int):Dynamic;

	/**
	 * ```
	 * STREAMING::REQUEST_MODELS_IN_ROOM(l_13BC, "V_FIB01_cur_elev");
	 * STREAMING::REQUEST_MODELS_IN_ROOM(l_13BC, "limbo");
	 * STREAMING::REQUEST_MODELS_IN_ROOM(l_13BB, "V_Office_gnd_lifts");
	 * STREAMING::REQUEST_MODELS_IN_ROOM(l_13BB, "limbo");
	 * STREAMING::REQUEST_MODELS_IN_ROOM(l_13BC, "v_fib01_jan_elev");
	 * STREAMING::REQUEST_MODELS_IN_ROOM(l_13BC, "limbo");
	 * ```
	 */
	@:native("REQUEST_MODELS_IN_ROOM")
	static function requestModelsInRoom(interior:Int, roomName:String):Dynamic;

	/**
	 * 
	 */
	@:native("REQUEST_COLLISION_FOR_MODEL")
	static function requestCollisionForModel(model:Int):Dynamic;

	/**
	 * Request a model (archetype) to be loaded for use by the current script. Use SET_MODEL_AS_NO_LONGER_NEEDED when done using the model in script.
	 */
	@:native("REQUEST_MODEL")
	static function requestModel(model:Int):Dynamic;

	/**
	 * ```
	 * maps script name (thread + 0xD0) by lookup via scriptfx.dat - does nothing when script name is empty
	 * ```
	 */
	@:native("REQUEST_PTFX_ASSET")
	static function requestPtfxAsset():Dynamic;

	/**
	 * ```
	 *  From the b678d decompiled scripts:
	 *  STREAMING::REQUEST_NAMED_PTFX_ASSET("core_snow");
	 *  STREAMING::REQUEST_NAMED_PTFX_ASSET("fm_mission_controler");
	 *  STREAMING::REQUEST_NAMED_PTFX_ASSET("proj_xmas_firework");
	 *  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_apartment_mp");
	 *  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_biolab_heist");
	 *  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_fireworks");
	 *  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_parachute");
	 *  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_wheelsmoke");
	 *  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_cig_plane");
	 *  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_creator");
	 *  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_tankbattle");
	 *  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_ornate_heist");
	 *  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_prison_break_heist_station");
	 * ```
	 */
	@:native("REQUEST_NAMED_PTFX_ASSET")
	static function requestNamedPtfxAsset(fxName:String):Dynamic;

	/**
	 * ```
	 * Override the area where the camera will render the terrain.
	 * p3, p4 and p5 are usually set to 0.0
	 * ```
	 */
	@:native("SET_FOCUS_POS_AND_VEL")
	static function setFocusPosAndVel(x:Float, y:Float, z:Float, offsetX:Float, offsetY:Float, offsetZ:Float):Dynamic;

	/**
	 * ```
	 * It seems to make the entity's coords mark the point from which LOD-distances are measured. In my testing, setting a vehicle as the focus entity and moving that vehicle more than 300 distance units away from the player will make the level of detail around the player go down drastically (shadows disappear, textures go extremely low res, etc). The player seems to be the default focus entity.  
	 * ```
	 */
	@:native("SET_FOCUS_ENTITY")
	static function setFocusEntity(entity:Dynamic):Dynamic;

	/**
	 * Enables the specified island. For more information, see islandhopper.meta
	 * 
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("SET_ISLAND_ENABLED")
	static function setIslandEnabled(islandName:String, toggle:Bool):Dynamic;

	/**
	 * ```
	 * This is a NOP function. It does nothing at all.  
	 * ```
	 */
	@:native("SET_DITCH_POLICE_MODELS")
	static function setDitchPoliceModels(toggle:Bool):Dynamic;

	/**
	 * ```
	 * All names can be found in playerswitchestablishingshots.meta
	 * ```
	 */
	@:native("SET_PLAYER_SWITCH_ESTABLISHING_SHOT")
	static function setPlayerSwitchEstablishingShot(name:String):Dynamic;

	/**
	 * 
	 */
	@:native("SET_GAME_PAUSES_FOR_STREAMING")
	static function setGamePausesForStreaming(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_HD_AREA")
	static function setHdArea(x:Float, y:Float, z:Float, radius:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_REDUCE_VEHICLE_MODEL_BUDGET")
	static function setReduceVehicleModelBudget(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_INTERIOR_ACTIVE")
	static function setInteriorActive(interiorID:Int, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Possible p0 values:  
	 * "prologue"  
	 * "Prologue_Main"  
	 * ```
	 */
	@:native("SET_MAPDATACULLBOX_ENABLED")
	static function setMapdatacullboxEnabled(name:String, toggle:Bool):Dynamic;

	/**
	 * Releases the script ownership assigned by REQUEST_MODEL. This command should be used when done using a specific model hash in script.
	 */
	@:native("SET_MODEL_AS_NO_LONGER_NEEDED")
	static function setModelAsNoLongerNeeded(model:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_REDUCE_PED_MODEL_BUDGET")
	static function setReducePedModelBudget(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_SRL_TIME")
	static function setSrlTime(p0:Float):Dynamic;

	/**
	 * Sets the memory budget level for ped population.
	 */
	@:native("SET_PED_POPULATION_BUDGET")
	static function setPedPopulationBudget(budgetLevel:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_SHORT_SWITCH_STYLE")
	static function setPlayerShortSwitchStyle(style:Int):Dynamic;

	/**
	 * ```cpp
	 * enum ePlayerSwitchType  
	 * {  
	 * 	SWITCH_TYPE_AUTO = 0,
	 * 	SWITCH_TYPE_LONG = 1,
	 * 	SWITCH_TYPE_MEDIUM = 2,
	 * 	SWITCH_TYPE_SHORT = 3
	 * };  
	 * ```
	 * 
	 * ```cpp
	 * enum eSwitchFlags {
	 * 	SKIP_INTRO = 1,
	 * 	SKIP_OUTRO = 2,
	 * 	PAUSE_BEFORE_PAN = 4,
	 * 	PAUSE_BEFORE_OUTRO = 8,
	 * 	SKIP_PAN = 16,
	 * 	UNKNOWN_DEST = 32,
	 * 	DESCENT_ONLY = 64,
	 * 	START_FROM_CAMPOS = 128,
	 * 	PAUSE_BEFORE_ASCENT = 256,
	 * 	PAUSE_BEFORE_DESCENT = 512,
	 * 	ALLOW_SNIPER_AIM_INTRO = 1024,
	 * 	ALLOW_SNIPER_AIM_OUTRO = 2048,
	 * 	SKIP_TOP_DESCENT = 4096,
	 * 	SUPPRESS_OUTRO_FX = 8192,
	 * 	SUPPRESS_INTRO_FX = 16384,
	 * 	DELAY_ASCENT_FX = 32768
	 * }
	 * ```
	 */
	@:native("START_PLAYER_SWITCH")
	static function startPlayerSwitch(from:Dynamic, to:Dynamic, flags:Int, switchType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_RENDER_HD_ONLY")
	static function setRenderHdOnly(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_POPULATION_BUDGET")
	static function setVehiclePopulationBudget(p0:Int):Dynamic;

	/**
	 * 
	 */
	@:native("STREAMVOL_IS_VALID")
	static function streamvolIsValid(unused:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("SHUTDOWN_CREATOR_BUDGET")
	static function shutdownCreatorBudget():Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_SWITCH_OUTRO")
	static function setPlayerSwitchOutro(cameraCoordX:Float, cameraCoordY:Float, cameraCoordZ:Float, camRotationX:Float, camRotationY:Float, camRotationZ:Float, camFov:Float, camFarClip:Float, rotationOrder:Int):Dynamic;

	/**
	 * 
	 */
	@:native("STOP_PLAYER_SWITCH")
	static function stopPlayerSwitch():Dynamic;

	/**
	 * 
	 */
	@:native("SET_STREAMING")
	static function setStreaming(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Always returns zero.
	 * ```
	 */
	@:native("STREAMVOL_CREATE_FRUSTUM")
	static function streamvolCreateFrustum(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Float, p7:Dynamic, p8:Dynamic):Dynamic;

	/**
	 * ```
	 * Always returns zero.
	 * ```
	 */
	@:native("STREAMVOL_CREATE_SPHERE")
	static function streamvolCreateSphere(x:Float, y:Float, z:Float, rad:Float, p4:Dynamic, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * Always returns zero.
	 * ```
	 */
	@:native("STREAMVOL_CREATE_LINE")
	static function streamvolCreateLine(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("STREAMVOL_DELETE")
	static function streamvolDelete(unused:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("STREAMVOL_HAS_LOADED")
	static function streamvolHasLoaded(unused:Dynamic):Bool;

	/**
	 * You can check if the player is in a Switch state with [`IS_PLAYER_SWITCH_IN_PROGRESS`](#\_0xD9D2CFFF49FAB35F).
	 * 
	 * ***Note:** Doesn't act normally when used on Mount Chiliad.*
	 */
	@:native("SWITCH_TO_MULTI_FIRSTPART")
	static function switchToMultiFirstpart(ped:Dynamic, flags:Int, switchType:Int):Dynamic;

	/**
	 * After using [`SWITCH_TO_MULTI_FIRSTPART`](#\_0xAAB3200ED59016BC) , use this native to smoothly return the camera to the player's character.
	 */
	@:native("SWITCH_TO_MULTI_SECONDPART")
	static function switchToMultiSecondpart(ped:Dynamic):Dynamic;

}
