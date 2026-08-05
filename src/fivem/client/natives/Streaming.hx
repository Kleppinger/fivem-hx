package fivem.client.natives;

@:native("_G")
extern class Streaming {
	/**
	 * 
	 */
	@:native("AddModelToCreatorBudget")
	static function addModelToCreatorBudget(modelHash:Int):Bool;

	/**
	 * 
	 */
	@:native("BeginSrl")
	static function beginSrl():Dynamic;

	/**
	 * 
	 */
	@:native("AllowPlayerSwitchPan")
	static function allowPlayerSwitchPan():Dynamic;

	/**
	 * 
	 */
	@:native("ClearFocus")
	static function clearFocus():Dynamic;

	/**
	 * 
	 */
	@:native("AllowPlayerSwitchDescent")
	static function allowPlayerSwitchDescent():Dynamic;

	/**
	 * 
	 */
	@:native("AllowPlayerSwitchAscent")
	static function allowPlayerSwitchAscent():Dynamic;

	/**
	 * 
	 */
	@:native("DoesAnimDictExist")
	static function doesAnimDictExist(animDict:String):Bool;

	/**
	 * 
	 */
	@:native("ClearHdArea")
	static function clearHdArea():Dynamic;

	/**
	 * 
	 */
	@:native("AllowPlayerSwitchOutro")
	static function allowPlayerSwitchOutro():Dynamic;

	/**
	 * ```
	 * x1, y1, z1 -- Coords of your ped model  
	 * x2, y2, z2 -- Coords of the ped you want to switch to  
	 * ```
	 */
	@:native("GetIdealPlayerSwitchType")
	static function getIdealPlayerSwitchType(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float):Int;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("GetGlobalWaterType")
	static function GetGlobalWaterType():Int;

	/**
	 * 
	 */
	@:native("DisableSwitchOutroFx")
	static function disableSwitchOutroFx():Dynamic;

	/**
	 * Clear the current srl and stop rendering the area selected by PREFETCH_SRL and started with BEGIN_SRL.
	 */
	@:native("EndSrl")
	static function endSrl():Dynamic;

	/**
	 * 
	 */
	@:native("GetPlayerShortSwitchState")
	static function getPlayerShortSwitchState():Int;

	/**
	 * 
	 */
	@:native("EnableSwitchPauseBeforeDescent")
	static function enableSwitchPauseBeforeDescent():Dynamic;

	/**
	 * 
	 */
	@:native("GetPlayerSwitchInterpOutDuration")
	static function getPlayerSwitchInterpOutDuration():Int;

	/**
	 * 
	 */
	@:native("GetLodscale")
	static function getLodscale():Float;

	/**
	 * 
	 */
	@:native("GetPlayerSwitchJumpCutIndex")
	static function getPlayerSwitchJumpCutIndex():Int;

	/**
	 * 
	 */
	@:native("GetPlayerSwitchState")
	static function getPlayerSwitchState():Int;

	/**
	 * 
	 */
	@:native("GetNumberOfStreamingRequests")
	static function getNumberOfStreamingRequests():Int;

	/**
	 * 
	 */
	@:native("GetPlayerSwitchType")
	static function getPlayerSwitchType():Int;

	/**
	 * 
	 */
	@:native("GetPlayerSwitchInterpOutCurrentTime")
	static function getPlayerSwitchInterpOutCurrentTime():Dynamic;

	/**
	 * 
	 */
	@:native("HasCollisionForModelLoaded")
	static function hasCollisionForModelLoaded(model:Int):Bool;

	/**
	 * 
	 */
	@:native("HasAnimDictLoaded")
	static function hasAnimDictLoaded(animDict:String):Bool;

	/**
	 * ```
	 * Alias for HAS_ANIM_SET_LOADED.  
	 * ```
	 */
	@:native("HasClipSetLoaded")
	static function hasClipSetLoaded(clipSet:String):Bool;

	/**
	 * 
	 */
	@:native("HasNamedPtfxAssetLoaded")
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
	@:native("GetUsedCreatorModelMemoryPercentage")
	static function GetUsedCreatorModelMemoryPercentage():Float;

	/**
	 * 
	 */
	@:native("IsIplActive")
	static function isIplActive(iplName:String):Bool;

	/**
	 * 
	 */
	@:native("IsEntityFocus")
	static function isEntityFocus(entity:Dynamic):Bool;

	/**
	 * ```
	 * Returns whether the specified model exists in the game.  
	 * ```
	 */
	@:native("IsModelValid")
	static function isModelValid(model:Int):Bool;

	/**
	 * Gets whether the specified animation set has finished loading. An animation set provides movement animations for a ped.
	 * 
	 * Animation set and clip set are synonymous. See [`SET_PED_MOVEMENT_CLIPSET`](#\_0xAF8A94EDE7712BEF).
	 */
	@:native("HasAnimSetLoaded")
	static function hasAnimSetLoaded(animSet:String):Bool;

	/**
	 * ```
	 * Check if model is in cdimage(rpf)  
	 * ```
	 */
	@:native("IsModelInCdimage")
	static function isModelInCdimage(model:Int):Bool;

	/**
	 * Returns whether the specified model (archetype) is currently loaded.
	 * 
	 * Note that this will return 'true' even if the model has been requested and loaded by something other than the current script, if you're intending to actually use the model in a later frame, you should call REQUEST_MODEL anyway.
	 */
	@:native("HasModelLoaded")
	static function hasModelLoaded(model:Int):Bool;

	/**
	 * 
	 */
	@:native("InitCreatorBudget")
	static function initCreatorBudget():Dynamic;

	/**
	 * 
	 */
	@:native("IsNewLoadSceneLoaded")
	static function isNewLoadSceneLoaded():Bool;

	/**
	 * 
	 */
	@:native("HasPtfxAssetLoaded")
	static function hasPtfxAssetLoaded():Bool;

	/**
	 * 
	 */
	@:native("IsModelAPed")
	static function IsModelAPed(model:Int):Bool;

	/**
	 * Returns true when the srl from BEGIN_SRL is loaded.
	 */
	@:native("IsSrlLoaded")
	static function isSrlLoaded():Bool;

	/**
	 * 
	 */
	@:native("IsNetworkLoadingScene")
	static function isNetworkLoadingScene():Bool;

	/**
	 * ```
	 * Returns whether the specified model represents a vehicle.  
	 * ```
	 */
	@:native("IsModelAVehicle")
	static function isModelAVehicle(model:Int):Bool;

	/**
	 * 
	 */
	@:native("IsStreamvolActive")
	static function isStreamvolActive():Bool;

	/**
	 * 
	 */
	@:native("IsSwitchReadyForDescent")
	static function isSwitchReadyForDescent():Bool;

	/**
	 * 
	 */
	@:native("IsSwitchSkippingDescent")
	static function isSwitchSkippingDescent():Bool;

	/**
	 * 
	 */
	@:native("IsNewLoadSceneActive")
	static function isNewLoadSceneActive():Bool;

	/**
	 * 
	 */
	@:native("LoadAllObjectsNow")
	static function loadAllObjectsNow():Dynamic;

	/**
	 * 0 - default
	 * 1 - HeistIsland
	 * 
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("LoadGlobalWaterType")
	static function LoadGlobalWaterType(waterType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("LoadScene")
	static function loadScene(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * ```
	 * Returns true if the player is currently switching, false otherwise.  
	 * (When the camera is in the sky moving from Trevor to Franklin for example)  
	 * ```
	 */
	@:native("IsPlayerSwitchInProgress")
	static function isPlayerSwitchInProgress():Bool;

	/**
	 * 
	 */
	@:native("NetworkUpdateLoadScene")
	static function networkUpdateLoadScene():Bool;

	/**
	 * 
	 */
	@:native("NetworkStopLoadScene")
	static function networkStopLoadScene():Dynamic;

	/**
	 * ```
	 * `radius` value is usually between `3f` and `7000f` in original 1868 scripts.
	 * `p7` is 0, 1, 2, 3 or 4 used in decompiled scripts, 0 is by far the most common.
	 * Returns True if success, used only 7 times in decompiled scripts of 1868
	 * ```
	 */
	@:native("NewLoadSceneStart")
	static function newLoadSceneStart(posX:Float, posY:Float, posZ:Float, offsetX:Float, offsetY:Float, offsetZ:Float, radius:Float, p7:Int):Bool;

	/**
	 * ```
	 * This allows you to override "extended distance scaling" setting. Needs to be called each frame.
	 * Max scaling seems to be 200.0, normal is 1.0
	 * See https://gfycat.com/DetailedHauntingIncatern
	 * ```
	 */
	@:native("OverrideLodscaleThisFrame")
	static function overrideLodscaleThisFrame(scaling:Float):Dynamic;

	/**
	 * 
	 */
	@:native("NewLoadSceneStop")
	static function newLoadSceneStop():Dynamic;

	/**
	 * Unloads the specified animation set. An animation set provides movement animations for a ped.
	 * 
	 * Animation set and clip set are synonymous. See [`SET_PED_MOVEMENT_CLIPSET`](#\_0xAF8A94EDE7712BEF).
	 */
	@:native("RemoveAnimSet")
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
	@:native("NewLoadSceneStartSphere")
	static function newLoadSceneStartSphere(x:Float, y:Float, z:Float, radius:Float, p4:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("RemoveModelFromCreatorBudget")
	static function removeModelFromCreatorBudget(modelHash:Int):Dynamic;

	/**
	 * ```
	 * Alias for REMOVE_ANIM_SET.  
	 * ```
	 */
	@:native("RemoveClipSet")
	static function removeClipSet(clipSet:String):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveAnimDict")
	static function removeAnimDict(animDict:String):Dynamic;

	/**
	 * 
	 */
	@:native("RemovePtfxAsset")
	static function removePtfxAsset():Dynamic;

	/**
	 * 
	 */
	@:native("RemoveNamedPtfxAsset")
	static function removeNamedPtfxAsset(fxName:String):Dynamic;

	/**
	 * IPL list can be found [here](https://gist.github.com/4mmonium/4c8a076b5f712a7cc64666003009a2e7).
	 */
	@:native("RemoveIpl")
	static function removeIpl(iplName:String):Dynamic;

	/**
	 * This native is used to attribute the SRL that BeginSrl is going to load. This is usually used for 'in-game' cinematics (not cutscenes but camera stuff) instead of SetFocusArea because it loads a specific area of the map which is pretty useful when the camera moves from distant areas.
	 * For instance, GTA:O opening cutscene.
	 * 
	 * https://pastebin.com/2EeKVeLA : a list of SRL found in srllist.meta
	 * https://pastebin.com/zd9XYUWY : here is the content of a SRL file opened with codewalker.
	 */
	@:native("PrefetchSrl")
	static function prefetchSrl(srl:String):Dynamic;

	/**
	 * Starts loading the specified animation set. An animation set provides movement animations for a ped. See [`SET_PED_MOVEMENT_CLIPSET`](#\_0xAF8A94EDE7712BEF).
	 */
	@:native("RequestAnimSet")
	static function requestAnimSet(animSet:String):Dynamic;

	/**
	 * 
	 */
	@:native("RequestClipSet")
	static function requestClipSet(clipSet:String):Dynamic;

	/**
	 * 
	 */
	@:native("RequestAdditionalCollisionAtCoord")
	static function requestAdditionalCollisionAtCoord(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * ```
	 * Exemple: REQUEST_IPL("TrevorsTrailerTrash");
	 * ```
	 */
	@:native("RequestIpl")
	static function requestIpl(iplName:String):Dynamic;

	/**
	 * 
	 */
	@:native("RequestAnimDict")
	static function requestAnimDict(animDict:String):Dynamic;

	/**
	 * 
	 */
	@:native("RequestCollisionAtCoord")
	static function requestCollisionAtCoord(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("RequestMenuPedModel")
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
	@:native("RequestModelsInRoom")
	static function requestModelsInRoom(interior:Int, roomName:String):Dynamic;

	/**
	 * 
	 */
	@:native("RequestCollisionForModel")
	static function requestCollisionForModel(model:Int):Dynamic;

	/**
	 * Request a model (archetype) to be loaded for use by the current script. Use SET_MODEL_AS_NO_LONGER_NEEDED when done using the model in script.
	 */
	@:native("RequestModel")
	static function requestModel(model:Int):Dynamic;

	/**
	 * ```
	 * maps script name (thread + 0xD0) by lookup via scriptfx.dat - does nothing when script name is empty
	 * ```
	 */
	@:native("RequestPtfxAsset")
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
	@:native("RequestNamedPtfxAsset")
	static function requestNamedPtfxAsset(fxName:String):Dynamic;

	/**
	 * ```
	 * Override the area where the camera will render the terrain.
	 * p3, p4 and p5 are usually set to 0.0
	 * ```
	 */
	@:native("SetFocusPosAndVel")
	static function setFocusPosAndVel(x:Float, y:Float, z:Float, offsetX:Float, offsetY:Float, offsetZ:Float):Dynamic;

	/**
	 * ```
	 * It seems to make the entity's coords mark the point from which LOD-distances are measured. In my testing, setting a vehicle as the focus entity and moving that vehicle more than 300 distance units away from the player will make the level of detail around the player go down drastically (shadows disappear, textures go extremely low res, etc). The player seems to be the default focus entity.  
	 * ```
	 */
	@:native("SetFocusEntity")
	static function setFocusEntity(entity:Dynamic):Dynamic;

	/**
	 * Enables the specified island. For more information, see islandhopper.meta
	 * 
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("SetIslandEnabled")
	static function setIslandEnabled(islandName:String, toggle:Bool):Dynamic;

	/**
	 * ```
	 * This is a NOP function. It does nothing at all.  
	 * ```
	 */
	@:native("SetDitchPoliceModels")
	static function setDitchPoliceModels(toggle:Bool):Dynamic;

	/**
	 * ```
	 * All names can be found in playerswitchestablishingshots.meta
	 * ```
	 */
	@:native("SetPlayerSwitchEstablishingShot")
	static function setPlayerSwitchEstablishingShot(name:String):Dynamic;

	/**
	 * 
	 */
	@:native("SetGamePausesForStreaming")
	static function setGamePausesForStreaming(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetHdArea")
	static function setHdArea(x:Float, y:Float, z:Float, radius:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetReduceVehicleModelBudget")
	static function setReduceVehicleModelBudget(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetInteriorActive")
	static function setInteriorActive(interiorID:Int, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Possible p0 values:  
	 * "prologue"  
	 * "Prologue_Main"  
	 * ```
	 */
	@:native("SetMapdatacullboxEnabled")
	static function setMapdatacullboxEnabled(name:String, toggle:Bool):Dynamic;

	/**
	 * Releases the script ownership assigned by REQUEST_MODEL. This command should be used when done using a specific model hash in script.
	 */
	@:native("SetModelAsNoLongerNeeded")
	static function setModelAsNoLongerNeeded(model:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetReducePedModelBudget")
	static function setReducePedModelBudget(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetSrlTime")
	static function setSrlTime(p0:Float):Dynamic;

	/**
	 * Sets the memory budget level for ped population.
	 */
	@:native("SetPedPopulationBudget")
	static function setPedPopulationBudget(budgetLevel:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetPlayerShortSwitchStyle")
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
	@:native("StartPlayerSwitch")
	static function startPlayerSwitch(from:Dynamic, to:Dynamic, flags:Int, switchType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetRenderHdOnly")
	static function setRenderHdOnly(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehiclePopulationBudget")
	static function setVehiclePopulationBudget(p0:Int):Dynamic;

	/**
	 * 
	 */
	@:native("StreamvolIsValid")
	static function streamvolIsValid(unused:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("ShutdownCreatorBudget")
	static function shutdownCreatorBudget():Dynamic;

	/**
	 * 
	 */
	@:native("SetPlayerSwitchOutro")
	static function setPlayerSwitchOutro(cameraCoordX:Float, cameraCoordY:Float, cameraCoordZ:Float, camRotationX:Float, camRotationY:Float, camRotationZ:Float, camFov:Float, camFarClip:Float, rotationOrder:Int):Dynamic;

	/**
	 * 
	 */
	@:native("StopPlayerSwitch")
	static function stopPlayerSwitch():Dynamic;

	/**
	 * 
	 */
	@:native("SetStreaming")
	static function setStreaming(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Always returns zero.
	 * ```
	 */
	@:native("StreamvolCreateFrustum")
	static function streamvolCreateFrustum(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Float, p7:Dynamic, p8:Dynamic):Dynamic;

	/**
	 * ```
	 * Always returns zero.
	 * ```
	 */
	@:native("StreamvolCreateSphere")
	static function streamvolCreateSphere(x:Float, y:Float, z:Float, rad:Float, p4:Dynamic, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * Always returns zero.
	 * ```
	 */
	@:native("StreamvolCreateLine")
	static function streamvolCreateLine(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("StreamvolDelete")
	static function streamvolDelete(unused:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("StreamvolHasLoaded")
	static function streamvolHasLoaded(unused:Dynamic):Bool;

	/**
	 * You can check if the player is in a Switch state with [`IS_PLAYER_SWITCH_IN_PROGRESS`](#\_0xD9D2CFFF49FAB35F).
	 * 
	 * ***Note:** Doesn't act normally when used on Mount Chiliad.*
	 */
	@:native("SwitchToMultiFirstpart")
	static function switchToMultiFirstpart(ped:Dynamic, flags:Int, switchType:Int):Dynamic;

	/**
	 * After using [`SWITCH_TO_MULTI_FIRSTPART`](#\_0xAAB3200ED59016BC) , use this native to smoothly return the camera to the player's character.
	 */
	@:native("SwitchToMultiSecondpart")
	static function switchToMultiSecondpart(ped:Dynamic):Dynamic;

}
