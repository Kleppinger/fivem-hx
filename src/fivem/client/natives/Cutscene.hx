package fivem.client.natives;

@:native("_G")
extern class Cutscene {
	/**
	 * Returns when it is safe to start applying changes to cutscene entities.
	 * 
	 * Should always be used for applying components.
	 * 
	 * See [`SET_CUTSCENE_PED_COMPONENT_VARIATION_FROM_PED`](#\_0x2A56C06EBEF2B0D9) and [`REGISTER_ENTITY_FOR_CUTSCENE`](#\_0xE40C1C56DF95C2E8) for an example.
	 * 
	 * This will be true before the cutscene is considered loaded
	 */
	@:native("CanRequestAssetsForCutsceneEntity")
	static function canRequestAssetsForCutsceneEntity():Bool;

	/**
	 * Whether or not it is safe to run functions on the camera,
	 * as the camera is now no longer being used by the cutscene.
	 */
	@:native("CanSetExitStateForCamera")
	static function canSetExitStateForCamera(p0:Bool):Bool;

	/**
	 * 
	 */
	@:native("DoesCutsceneEntityExist")
	static function doesCutsceneEntityExist(cutsceneEntName:String, modelHash:Int):Bool;

	/**
	 * Returns if the script can begin interacting with the registered entity. Primarly used for lead-outs of cutscenes.
	 * Returns on frame after cutscene ends, so you cannot get is while using IsCutsceneActive()
	 * 
	 * Whether it is safe to start doing scripted actions on the entity, like simulating walking out of a cutscene.
	 */
	@:native("CanSetExitStateForRegisteredEntity")
	static function canSetExitStateForRegisteredEntity(cutsceneEntName:String, modelHash:Int):Bool;

	/**
	 * Gets the current time of the cutscene.
	 * 
	 * ```
	 * NativeDB Introduced: v3258
	 * ```
	 */
	@:native("GetCutscenePlayTime")
	static function getCutscenePlayTime():Int;

	/**
	 * ```
	 * modelHash (p1) was always 0 in R* scripts  
	 * ```
	 */
	@:native("CanSetEnterStateForRegisteredEntity")
	static function canSetEnterStateForRegisteredEntity(cutsceneEntName:String, modelHash:Int):Bool;

	/**
	 * Gets the total length of the cutscene irrespective of playback list in milliseconds
	 * To account for sections, see [`_GET_CUTSCENE_END_TIME`](#\_0x971D7B15BCDBEF99)
	 */
	@:native("GetCutsceneTotalDuration")
	static function getCutsceneTotalDuration():Int;

	/**
	 * 
	 */
	@:native("GetCutFileNumSections")
	static function GetCutFileNumSections(cutsceneName:String):Int;

	/**
	 * 
	 */
	@:native("GetCutsceneSectionPlaying")
	static function getCutsceneSectionPlaying():Int;

	/**
	 * ```
	 * Simply checks if the cutscene has loaded and doesn't check via CutSceneManager as opposed to HAS_[THIS]_CUTSCENE_LOADED.
	 * ```
	 */
	@:native("HasCutFileLoaded")
	static function hasCutFileLoaded(cutsceneName:String):Bool;

	/**
	 * 
	 */
	@:native("GetEntityIndexOfRegisteredEntity")
	static function getEntityIndexOfRegisteredEntity(cutsceneEntName:String, modelHash:Int):Dynamic;

	/**
	 * Gets the elapsed time of the current cutscene in
	 */
	@:native("GetCutsceneTime")
	static function getCutsceneTime():Int;

	/**
	 * 
	 */
	@:native("HasCutsceneFinished")
	static function hasCutsceneFinished():Bool;

	/**
	 * Returns the time of the cutscene's end accounting for [`REQUEST_CUTSCENE_WITH_PLAYBACK_LIST`](#\_0xC23DE0E91C30B58C)
	 * 
	 * If a cutscene is laid out with 10 second sections, and section 0 and 1 are enabled then it would be 20000ms.
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("GetCutsceneEndTime")
	static function GetCutsceneEndTime():Int;

	/**
	 * 
	 */
	@:native("HasCutsceneCutThisFrame")
	static function hasCutsceneCutThisFrame():Bool;

	/**
	 * Returns the handle of a cutscene entity, can be ped
	 */
	@:native("GetEntityIndexOfCutsceneEntity")
	static function getEntityIndexOfCutsceneEntity(cutsceneEntName:String, modelHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("IsCutsceneActive")
	static function isCutsceneActive():Bool;

	/**
	 * 
	 */
	@:native("HasThisCutsceneLoaded")
	static function hasThisCutsceneLoaded(cutsceneName:String):Bool;

	/**
	 * 
	 */
	@:native("HasCutsceneLoaded")
	static function hasCutsceneLoaded():Bool;

	/**
	 * 
	 */
	@:native("IsCutscenePlaybackFlagSet")
	static function isCutscenePlaybackFlagSet(flag:Int):Bool;

	/**
	 * 
	 */
	@:native("IsCutscenePlaying")
	static function isCutscenePlaying():Bool;

	/**
	 * This can only be run once [`CAN_REQUEST_ASSETS_FOR_CUTSCENE_ENTITY`](#\_0xB56BBBCC2955D9CB) is true, but can be run before [`HAS_CUTSCENE_LOADED`](#\_0xC59F528E9AB9F339)
	 */
	@:native("RegisterEntityForCutscene")
	static function registerEntityForCutscene(cutsceneEntity:Dynamic, cutsceneEntName:String, p2:Int, modelHash:Int, p4:Int):Dynamic;

	/**
	 * ```
	 * Simply loads the cutscene and doesn't do extra stuff that REQUEST_CUTSCENE does.
	 * ```
	 */
	@:native("RequestCutFile")
	static function requestCutFile(cutsceneName:String):Dynamic;

	/**
	 * Only used twice in armenian1.c
	 */
	@:native("RegisterSynchronisedScriptSpeech")
	static function registerSynchronisedScriptSpeech():Dynamic;

	/**
	 * ```
	 * Simply unloads the cutscene and doesn't do extra stuff that REMOVE_CUTSCENE does.
	 * ```
	 */
	@:native("RemoveCutFile")
	static function removeCutFile(cutsceneName:String):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveCutscene")
	static function removeCutscene():Dynamic;

	/**
	 * 
	 */
	@:native("SetCutsceneCanBeSkipped")
	static function setCutsceneCanBeSkipped(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("RequestCutscene")
	static function requestCutscene(cutsceneName:String, flags:Int):Dynamic;

	/**
	 * ```
	 * playbackFlags: Which scenes should be played.
	 * Example: 0x105 (bit 0, 2 and 8 set) will enable scene 1, 3 and 9.
	 * ```
	 */
	@:native("RequestCutsceneWithPlaybackList")
	static function requestCutsceneWithPlaybackList(cutsceneName:String, playbackFlags:Int, flags:Int):Dynamic;

	/**
	 * See [`SET_PED_COMPONENT_VARIATION`](#\_0x262B14F48D29DE80)
	 */
	@:native("SetCutscenePedComponentVariation")
	static function setCutscenePedComponentVariation(cutsceneEntName:String, componentId:Int, drawableId:Int, textureId:Int, modelHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetCutsceneFadeValues")
	static function setCutsceneFadeValues(p0:Bool, p1:Bool, p2:Bool, p3:Bool):Dynamic;

	/**
	 * Only used in networked environment with MP cutscenes
	 */
	@:native("SetCutsceneEntityStreamingFlags")
	static function setCutsceneEntityStreamingFlags(cutsceneEntName:String, p1:Int, p2:Int):Dynamic;

	/**
	 * ```
	 * Only used twice in R* scripts  
	 * ```
	 */
	@:native("SetCutsceneTriggerArea")
	static function setCutsceneTriggerArea(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float):Dynamic;

	/**
	 * See [`SET_PED_PROP_INDEX`](#\_0x93376B65A266EB5F)
	 */
	@:native("SetCutscenePedPropVariation")
	static function setCutscenePedPropVariation(cutsceneEntName:String, componentId:Int, drawableId:Int, textureId:Int, modelHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("WasCutsceneSkipped")
	static function wasCutsceneSkipped():Bool;

	/**
	 * Sets cutscene location, used for multiplayer apartments/businesses.
	 */
	@:native("SetCutsceneOrigin")
	static function setCutsceneOrigin(x:Float, y:Float, z:Float, heading:Float, p4:Int):Dynamic;

	/**
	 * 
	 */
	@:native("StopCutscene")
	static function stopCutscene(p0:Bool):Dynamic;

	/**
	 * Similar to [`SET_CUTSCENE_ORIGIN`](#\_0xB812B3FD1C01CF27) but without heading and doesn't need [`START_CUTSCENE`](#\_0x186D5CB5E7B0FF7B)
	 */
	@:native("StartCutsceneAtCoords")
	static function startCutsceneAtCoords(x:Float, y:Float, z:Float, flags:Int):Dynamic;

	/**
	 * Stop cutscene instantly, will dump registered entities right where they were when ran.
	 */
	@:native("StopCutsceneImmediately")
	static function stopCutsceneImmediately():Dynamic;

	/**
	 * Sets the components for a cutscene ped, this will take precendence over the cutscene's component overrides. This does not require the entity be registered.
	 * 
	 * See
	 */
	@:native("SetCutscenePedComponentVariationFromPed")
	static function setCutscenePedComponentVariationFromPed(cutsceneEntName:String, ped:Dynamic, modelHash:Int):Dynamic;

	/**
	 * ```
	 * flags: Usually 0.
	 * ```
	 */
	@:native("StartCutscene")
	static function startCutscene(flags:Int):Dynamic;

}
