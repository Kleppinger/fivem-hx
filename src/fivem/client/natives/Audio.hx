package fivem.client.natives;

@:native("_G")
extern class Audio {
	/**
	 * ```cpp
	 * enum eAudibility {
	 * 	AUD_AUDIBILITY_NORMAL = 0,
	 * 	AUD_AUDIBILITY_CLEAR = 1,
	 * 	AUD_AUDIBILITY_CRITICAL = 2,
	 * 	AUD_AUDIBILITY_LEAD_IN = 3
	 * }
	 * ```
	 */
	@:native("AddLineToConversation")
	static function addLineToConversation(speakerConversationIndex:Int, context:String, subtitle:String, listenerNumber:Int, volumeType:Int, isRandom:Bool, interruptible:Bool, ducksRadio:Bool, ducksScore:Bool, audibility:Int, headset:Bool, dontInterruptForSpecialAbility:Bool, isPadSpeakerRoute:Bool):Dynamic;

	/**
	 * ```
	 * All found occurrences in b678d:
	 * pastebin.com/ceu67jz8
	 * ```
	 */
	@:native("AddEntityToAudioMixGroup")
	static function addEntityToAudioMixGroup(entity:Dynamic, groupName:String, fadeIn:Float):Dynamic;

	/**
	 * Below is a list of modes and their respective hashes.
	 * 
	 * | Mode (string)               | Hash               |
	 * |-----------------------------|--------------------|
	 * | SLOWMO_BIG_SCORE_JUMP       | 0x2B981B0C         |
	 * | JSH_EXIT_TUNNEL_SLOWMO      | 0x2562AA6          |
	 * | SLOW_MO_METH_HOUSE_RAYFIRE  | 0xDB9E1909         |
	 * | SLOWMO_FIB4\_TRUCK_SMASH     | 0x9E144347         |
	 * | SLOWMO_PROLOGUE_VAULT       | 0xEA2E68E1         |
	 * | SLOWMO_T1\_RAYFIRE_EXPLOSION | 0xD6D358F3         |
	 * | SLOWMO_T1\_TRAILER_SMASH     | 0xBE607345         |
	 * | BARRY\_01\_SLOWMO             | 0xD59540D4         |
	 * | BARRY\_02\_SLOWMO             | 0x12F140B3         |
	 * | SLOWMO_EXTREME\_04           | 0xF562EA50         |
	 * | NIGEL\_02\_SLOWMO_SETTING     | 0x384689B0         |
	 */
	@:native("ActivateAudioSlowmoMode")
	static function activateAudioSlowmoMode(mode:String):Dynamic;

	/**
	 * Blocks *all* speech playing on the given ped, including speech triggered by natives such as [PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE](#\_0x3523634255FC3318)
	 * 
	 * The flag itself is not synced, it must be called on each machine that wishes to suppress the speech.
	 * 
	 * The `SuppressOutgoingNetworkSpeech` flag can be set to `false` if you want speech triggered locally through `PLAY_PED_AMBIENT_SPEECH_*` related native calls to still be audible on remote machines, even though it was blocked on the local one.
	 */
	@:native("BlockAllSpeechFromPed")
	static function blockAllSpeechFromPed(ped:Dynamic, shouldBlock:Bool, suppressOutgoingNetworkSpeech:Bool):Dynamic;

	/**
	 * Plays a siren blip from the vehicle when you double press the horn key.
	 * 
	 * This only works on vehicles with sirens.
	 */
	@:native("BlipSiren")
	static function blipSiren(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("AudioIsScriptedMusicPlaying")
	static function audioIsScriptedMusicPlaying():Bool;

	/**
	 * 
	 */
	@:native("AddPedToConversation")
	static function addPedToConversation(speakerConversationIndex:Int, ped:Dynamic, voiceName:String):Dynamic;

	/**
	 * 
	 */
	@:native("CancelAllPoliceReports")
	static function cancelAllPoliceReports():Dynamic;

	/**
	 * ```cpp
	 * enum eAudContextBlockTarget {
	 * 	AUD_CONTEXT_BLOCK_PLAYER = 0,
	 * 	AUD_CONTEXT_BLOCK_NPCS = 1,
	 * 	AUD_CONTEXT_BLOCK_BUDDYS = 2,
	 * 	AUD_CONTEXT_BLOCK_EVERYONE = 3,
	 * 
	 * 	AUD_CONTEXT_BLOCK_TARGETS_TOTAL
	 * }
	 * ```
	 * 
	 * Stop a certain group of peds from using a certain group of speech contexts.
	 * 
	 * Note that the block will be automatically removed when the calling script finishes
	 */
	@:native("BlockSpeechContextGroup")
	static function blockSpeechContextGroup(groupName:String, contextBlockTarget:Int):Dynamic;

	/**
	 * 
	 */
	@:native("CanVehicleReceiveCbRadio")
	static function canVehicleReceiveCbRadio(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("BlockDeathJingle")
	static function blockDeathJingle(blocked:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ClearAllBrokenGlass")
	static function clearAllBrokenGlass():Dynamic;

	/**
	 * Resets the list of ambients zones enabled/disabled status to its value before it was modified by this script.
	 * 
	 * Default behaviour is that any state change only gets applied once the player leaves the zone.
	 */
	@:native("ClearAmbientZoneListState")
	static function clearAmbientZoneListState(zoneListName:String, forceUpdate:Bool):Dynamic;

	/**
	 * ```
	 * All music event names found in the b617d scripts: pastebin.com/GnYt0R3P
	 * ```
	 */
	@:native("CancelMusicEvent")
	static function cancelMusicEvent(eventName:String):Bool;

	/**
	 * Resets the ambient zone enabled/disabled status to its value before it was modified by this script
	 * 
	 * Default behaviour is that any state change only gets applied once the player leaves the zone.
	 */
	@:native("ClearAmbientZoneState")
	static function clearAmbientZoneState(zoneName:String, forceUpdate:Bool):Dynamic;

	/**
	 * Clears the previously queued custom track lost for the given radio station.
	 */
	@:native("ClearCustomRadioTrackList")
	static function clearCustomRadioTrackList(radioStation:String):Dynamic;

	/**
	 * 
	 */
	@:native("DisablePedPainAudio")
	static function disablePedPainAudio(ped:Dynamic, shouldDisable:Bool):Dynamic;

	/**
	 * Deactivates the named slowmo mode.
	 */
	@:native("DeactivateAudioSlowmoMode")
	static function deactivateAudioSlowmoMode(mode:String):Dynamic;

	/**
	 * Toggles fake distant siren sounds
	 */
	@:native("DistantCopCarSirens")
	static function distantCopCarSirens(shouldPlay:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DoesPlayerVehHaveRadio")
	static function doesPlayerVehHaveRadio():Bool;

	/**
	 * 
	 */
	@:native("CreateNewScriptedConversation")
	static function createNewScriptedConversation():Dynamic;

	/**
	 * Checks if the context exists for the ped, searching through the voices in its PedVoiceGroup.
	 * 
	 * The final argument can be set to true to allow searching in backup PVGs
	 */
	@:native("DoesContextExistForThisPed")
	static function doesContextExistForThisPed(ped:Dynamic, speechName:String, allowBackupPVGs:Bool):Bool;

	/**
	 * Enable or disable the plane stall warning sounds
	 */
	@:native("EnableStallWarningSounds")
	static function enableStallWarningSounds(vehicle:Dynamic, enable:Bool):Dynamic;

	/**
	 * Enable the stunt jump audio detection code
	 * 
	 * This native is meant to be called per-frame for as long as detection is wanted.
	 */
	@:native("EnableStuntJumpAudio")
	static function enableStuntJumpAudio():Dynamic;

	/**
	 * 
	 */
	@:native("EnableVehicleFanbeltDamage")
	static function enableVehicleFanbeltDamage(vehicle:Dynamic, enableFanbeltDamage:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("FindRadioStationIndex")
	static function findRadioStationIndex(stationNameHash:Int):Int;

	/**
	 * Forces the ambient peds into their panic walla state
	 */
	@:native("ForcePedPanicWalla")
	static function forcePedPanicWalla():Dynamic;

	/**
	 * Enable or disable exhaust pops on the given vehicle.
	 */
	@:native("EnableVehicleExhaustPops")
	static function enableVehicleExhaustPops(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Forces the chosen station to paly the given music track list. All other music track lists will be locked.
	 */
	@:native("ForceMusicTrackList")
	static function forceMusicTrackList(radioStation:String, trackListName:String, timeOffsetMilliseconds:Int):Dynamic;

	/**
	 * This native sets the audio to the specific vehicle hash's audioNameHash.
	 */
	@:native("ForceUseAudioGameObject")
	static function forceUseAudioGameObject(vehicle:Dynamic, gameObjectName:String):Dynamic;

	/**
	 * Allows script to freeze the microphone for a single frame, mantaining its current transform/settings.
	 * This native should be called every frame you want to keep the microphone frozen, when you stop calling it it will automatically unfreeze
	 */
	@:native("FreezeMicrophone")
	static function freezeMicrophone():Dynamic;

	/**
	 * 
	 */
	@:native("GetCurrentTrackSoundName")
	static function getCurrentTrackSoundName(radioStationName:String):Int;

	/**
	 * This native is used alongside with [`SET_VEHICLE_TYRE_BURST`](#\_0xEC6A202EE4960385).
	 * 
	 * ```
	 * NativeDB Introduced: v3258
	 * ```
	 */
	@:native("ForceVehicleEngineSynth")
	static function ForceVehicleEngineSynth(vehicle:Dynamic, force:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("FreezeRadioStation")
	static function freezeRadioStation(radioStation:String):Dynamic;

	/**
	 * 
	 */
	@:native("GetAudibleMusicTrackTextId")
	static function getAudibleMusicTrackTextId():Int;

	/**
	 * 
	 */
	@:native("GetCurrentScriptedConversationLine")
	static function getCurrentScriptedConversationLine():Int;

	/**
	 * 
	 */
	@:native("GetIsPreloadedConversationReady")
	static function getIsPreloadedConversationReady():Bool;

	/**
	 * 
	 */
	@:native("GetAmbientVoiceNameHash")
	static function getAmbientVoiceNameHash(ped:Dynamic):Int;

	/**
	 * ```
	 * Return the playback time (in milliseconds) of the radio stations current track. 
	 * 
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("GetCurrentRadioTrackPlaybackTime")
	static function GetCurrentRadioTrackPlaybackTime(radioStationName:String):Int;

	/**
	 * 
	 */
	@:native("GetMusicPlaytime")
	static function getMusicPlaytime():Int;

	/**
	 * 
	 */
	@:native("GetNetworkIdFromSoundId")
	static function getNetworkIdFromSoundId(soundId:Int):Int;

	/**
	 * 
	 */
	@:native("GetMusicVolSlider")
	static function getMusicVolSlider():Int;

	/**
	 * 
	 */
	@:native("GetNextAudibleBeat")
	static function getNextAudibleBeat(timeInSeconds:Dynamic, bpm:Dynamic, beatNum:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetNumUnlockedRadioStations")
	static function getNumUnlockedRadioStations():Int;

	/**
	 * 
	 */
	@:native("GetPlayerRadioStationIndex")
	static function getPlayerRadioStationIndex():Int;

	/**
	 * 
	 */
	@:native("GetPlayerRadioStationGenre")
	static function getPlayerRadioStationGenre():Int;

	/**
	 * 
	 */
	@:native("GetPlayerRadioStationName")
	static function getPlayerRadioStationName():String;

	/**
	 * If a playback function has a soundId field but the sound doesn't need to be altered after triggering then pass a value of -1 for fire-and-forget playback, rather than getting a soundId.
	 * 
	 * SoundId's can be reused, without needing to release them and grab a new one.
	 * 
	 * If a sound's finished playing, you can reuse its SoundId to kick off another one.
	 * 
	 * If the sound's not finished playing, it'll be stopped first (fading out or whatever is set up in RAVE by the sound designer), and the new one kicked off; usually it is safer to just get a new SoundId.
	 * 
	 * SoundId's are not automatically cleaned up, you must use [RELEASE_SOUND_ID](#\_0x353FC880830B88FA) after you've finished using them to allow the engine to recycle the sound id.
	 */
	@:native("GetSoundId")
	static function getSoundId():Int;

	/**
	 * 
	 */
	@:native("GetRadioStationName")
	static function getRadioStationName(stationIndex:Int):String;

	/**
	 * Counterpart: [`GET_NETWORK_ID_FROM_SOUND_ID`](#\_0x2DE3F0A134FFBC0D).
	 */
	@:native("GetSoundIdFromNetworkId")
	static function getSoundIdFromNetworkId(netId:Int):Int;

	/**
	 * 
	 */
	@:native("GetVariationChosenForScriptedLine")
	static function getVariationChosenForScriptedLine(textLabel:String):Int;

	/**
	 * 
	 */
	@:native("GetVehicleDefaultHorn")
	static function getVehicleDefaultHorn(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetStreamPlayTime")
	static function getStreamPlayTime():Int;

	/**
	 * 
	 */
	@:native("HasLoadedMpDataSet")
	static function hasLoadedMpDataSet():Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1365
	 * ```
	 */
	@:native("GetVehicleHornSoundIndex")
	static function getVehicleHornSoundIndex(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleDefaultHornIgnoreMods")
	static function getVehicleDefaultHornIgnoreMods(vehicle:Dynamic):Int;

	/**
	 * This native is marked as a deprecated native internally, use [HINT_SCRIPT_AUDIO_BANK](#\_0xFB380A29641EC31A) instead
	 */
	@:native("HintAmbientAudioBank")
	static function hintAmbientAudioBank(bankName:String, bOverNetwork:Bool):Bool;

	/**
	 * Hints that this bank would be good to load if there are free slots.
	 * Does not guarentee loading of the bank, [REQUEST_SCRIPT_AUDIO_BANK](#\_0xFE02FFBED8CA9D99) MUST be used as normal before triggering sounds"
	 * 
	 * This native has a new argument on newer game builds:
	 * 
	 * *   **playerBits**: likely used to specifiy players to sync to as a bit mask (1 << (0-128))
	 */
	@:native("HintScriptAudioBank")
	static function hintScriptAudioBank(bankName:String, bOverNetwork:Bool):Bool;

	/**
	 * 
	 */
	@:native("HasSoundFinished")
	static function hasSoundFinished(soundId:Int):Bool;

	/**
	 * 
	 */
	@:native("HasLoadedSpDataSet")
	static function hasLoadedSpDataSet():Bool;

	/**
	 * 
	 */
	@:native("InitSynchSceneAudioWithPosition")
	static function initSynchSceneAudioWithPosition(audioName:String, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("InitSynchSceneAudioWithEntity")
	static function initSynchSceneAudioWithEntity(audioName:String, entity:Dynamic):Dynamic;

	/**
	 * Handles conversation interrupts, using the code-side system for improved timing and to minimize unfriendly logic interactions.
	 */
	@:native("InterruptConversation")
	static function interruptConversation(interrupterPed:Dynamic, context:String, voiceName:String):Dynamic;

	/**
	 * This is marked as a deprecated function internally, please use [HINT_SCRIPT_AUDIO_BANK](#\_0xFB380A29641EC31A) instead.
	 */
	@:native("HintMissionAudioBank")
	static function hintMissionAudioBank(bankName:String, bOverNetwork:Bool, playerBits:Int):Bool;

	/**
	 * 
	 */
	@:native("IsAlarmPlaying")
	static function isAlarmPlaying(alarmName:String):Bool;

	/**
	 * 
	 */
	@:native("IsAmbientSpeechDisabled")
	static function isAmbientSpeechDisabled(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsAmbientSpeechPlaying")
	static function isAmbientSpeechPlaying(ped:Dynamic):Bool;

	/**
	 * Handles conversation interrupts and pauses, using the code-side system for improved timing and to minimize unfriendly logic interactions.
	 */
	@:native("InterruptConversationAndPause")
	static function interruptConversationAndPause(interrupterPed:Dynamic, context:String, voiceName:String):Dynamic;

	/**
	 * 
	 */
	@:native("IsAnimalVocalizationPlaying")
	static function isAnimalVocalizationPlaying(pedHandle:Dynamic):Bool;

	/**
	 * Determines if any ped-independent, positionally-based scripted speech is currently active. This typically includes speech events triggered using [`PLAY_AMBIENT_SPEECH_FROM_POSITION_NATIVE`](#\_0xED640017ED337E45).
	 * 
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("IsAnyPositionalSpeechPlaying")
	static function isAnyPositionalSpeechPlaying():Bool;

	/**
	 * 
	 */
	@:native("IsAudioSceneActive")
	static function isAudioSceneActive(scene:String):Bool;

	/**
	 * 
	 */
	@:native("IsAmbientZoneEnabled")
	static function isAmbientZoneEnabled(ambientZone:String):Bool;

	/**
	 * 
	 */
	@:native("IsAnySpeechPlaying")
	static function isAnySpeechPlaying(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsMissionNewsStoryUnlocked")
	static function isMissionNewsStoryUnlocked(newsStory:Int):Bool;

	/**
	 * 
	 */
	@:native("IsMissionCompletePlaying")
	static function isMissionCompletePlaying():Bool;

	/**
	 * ```
	 * Hardcoded to return 1  
	 * ```
	 */
	@:native("IsGameInControlOfMusic")
	static function isGameInControlOfMusic():Bool;

	/**
	 * 
	 */
	@:native("IsHornActive")
	static function isHornActive(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsMobilePhoneCallOngoing")
	static function isMobilePhoneCallOngoing():Bool;

	/**
	 * 
	 */
	@:native("IsMobileInterferenceActive")
	static function isMobileInterferenceActive():Bool;

	/**
	 * 
	 */
	@:native("IsPedInCurrentConversation")
	static function isPedInCurrentConversation(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsMissionCompleteReadyForUi")
	static function isMissionCompleteReadyForUi():Bool;

	/**
	 * 
	 */
	@:native("IsPedRingtonePlaying")
	static function isPedRingtonePlaying(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsMobilePhoneRadioActive")
	static function isMobilePhoneRadioActive():Bool;

	/**
	 * 
	 */
	@:native("IsMusicOneshotPlaying")
	static function isMusicOneshotPlaying():Bool;

	/**
	 * 
	 */
	@:native("IsRadioFadedOut")
	static function isRadioFadedOut():Bool;

	/**
	 * 
	 */
	@:native("IsRadioRetuning")
	static function isRadioRetuning():Bool;

	/**
	 * 
	 */
	@:native("IsRadioStationFavourited")
	static function isRadioStationFavourited(radioStation:String):Bool;

	/**
	 * 
	 */
	@:native("IsPlayerVehRadioEnable")
	static function isPlayerVehRadioEnable():Bool;

	/**
	 * 
	 */
	@:native("IsScriptedConversationOngoing")
	static function isScriptedConversationOngoing():Bool;

	/**
	 * 
	 */
	@:native("IsScriptedConversationLoaded")
	static function isScriptedConversationLoaded():Bool;

	/**
	 * 
	 */
	@:native("IsScriptedSpeechPlaying")
	static function isScriptedSpeechPlaying(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleAudiblyDamaged")
	static function isVehicleAudiblyDamaged(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsStreamPlaying")
	static function isStreamPlaying():Bool;

	/**
	 * Load in named stream. Optionally can specify a sound set which contains the sound specified by name.
	 * 
	 * Names for the streams can be found [here](https://gist.github.com/4mmonium/2bd2c9c54d6ca5cbdb7b156a82a3a85a), the list will be updated as more are found.
	 */
	@:native("LoadStream")
	static function loadStream(streamName:String, soundSet:String):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleRadioOn")
	static function isVehicleRadioOn(vehicle:Dynamic):Bool;

	/**
	 * Links a static emitter to the given entity
	 */
	@:native("LinkStaticEmitterToEntity")
	static function linkStaticEmitterToEntity(emitterName:String, entity:Dynamic):Dynamic;

	/**
	 * Load in named stream. Optionally can specify a sound set which contains the sound specified by name.
	 */
	@:native("LoadStreamWithStartOffset")
	static function loadStreamWithStartOffset(streamName:String, startOffset:Int, soundSet:String):Bool;

	/**
	 * 
	 */
	@:native("LockRadioStationTrackList")
	static function lockRadioStationTrackList(radioStation:String, trackListName:String):Dynamic;

	/**
	 * This disables the radio station completely - it won't be selectable on the radio wheel or ever be heard coming from a vehicle/ambient emitter
	 * 
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("LockRadioStation")
	static function lockRadioStation(radioStationName:String, toggle:Bool):Dynamic;

	/**
	 * Sets audio flag "OverrideMicrophoneSettings"
	 * 
	 * Allows the script to ovverride the current microphone settings
	 */
	@:native("OverrideMicrophoneSettings")
	static function overrideMicrophoneSettings(hash:Int, toggle:Bool):Dynamic;

	/**
	 * Sets the footstep tuning modes
	 */
	@:native("OverridePlayerGroundMaterial")
	static function overridePlayerGroundMaterial(overriddenMaterialHash:Int, scriptOverrides:Bool):Dynamic;

	/**
	 * This native enables the audio flag "TrevorRageIsOverridden" and sets the voice effect to `voiceEffect`
	 * 
	 * To clear the override use [RESET_TREVOR_RAGE](#\_0xE78503B10C4314E0)
	 */
	@:native("OverrideTrevorRage")
	static function overrideTrevorRage(voiceEffect:String):Dynamic;

	/**
	 * This native allows a scripter to override the current underwater stream.
	 * It needs to be called before going into the water
	 * 
	 * It needs to also be called with OVERRIDE_UNDERWATER_STREAM("", false) in order to stop overriding.
	 */
	@:native("OverrideUnderwaterStream")
	static function overrideUnderwaterStream(streamName:String, override_:Bool):Dynamic;

	/**
	 * Overrides the vehicle's horn hash.
	 * 
	 * When changing this hash on a vehicle, [`_GET_VEHICLE_HORN_HASH`](#\_0xACB5DCCA1EC76840) will **not** return the 'overwritten' hash. It will still always return the default horn hash (same as [`GET_VEHICLE_DEFAULT_HORN`](#\_0x02165D55000219AC)).
	 * 
	 * List of possible hashes (found in decompiled scripts):
	 * 
	 * |        signed |     unsigned |      hex     |
	 * |--------------:|-------------:|:------------:|
	 * |  `1604822495` | `1604822495` | `0x5FA7A5DF` |
	 * | `-1262465009` | `3032502287` | `0xB4C0500F` |
	 * |  `-889553789` | `3405413507` | `0xCAFA7C83` |
	 * | `-1557943086` | `2737024210` | `0xA323ACD2` |
	 * | `-1318696617` | `2976270679` | `0xB1664957` |
	 * |    `-7740003` | `4287227293` | `0xFF89E59D` |
	 * | `-1815146967` | `2479820329` | `0x93CF0E29` |
	 * |  `-339919356` | `3955047940` | `0xEBBD3E04` |
	 */
	@:native("OverrideVehHorn")
	static function overrideVehHorn(vehicle:Dynamic, override_:Bool, hornHash:Int):Dynamic;

	/**
	 * To resume the conversation use [RESTART_SCRIPTED_CONVERSATION](#\_0x9AEB285D1818C9AC)
	 */
	@:native("PauseScriptedConversation")
	static function pauseScriptedConversation(finishCurrentLine:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("PlayDeferredSoundFrontend")
	static function playDeferredSoundFrontend(soundName:String, soundsetName:String):Dynamic;

	/**
	 * ```cpp
	 * enum eAudAnimalType {
	 * 	AUD_ANIMAL_NONE = -1,
	 * 	AUD_ANIMAL_BOAR = 0,
	 * 	AUD_ANIMAL_CHICKEN = 1,
	 * 	AUD_ANIMAL_DOG = 2,
	 * 	AUD_ANIMAL_DOG_ROTTWEILER = 3,
	 * 	AUD_ANIMAL_HORSE = 4,
	 * 	AUD_NUM_ANIMALS = 5
	 * }
	 * ```
	 */
	@:native("PlayAnimalVocalization")
	static function playAnimalVocalization(pedHandle:Dynamic, animalType:Int, speechName:String):Dynamic;

	/**
	 * 
	 */
	@:native("PlayAmbientSpeechFromPositionNative")
	static function playAmbientSpeechFromPositionNative(speechName:String, voiceName:String, x:Float, y:Float, z:Float, speechParam:String):Dynamic;

	/**
	 * ```
	 * Called 38 times in the scripts. There are 5 different audioNames used.
	 *  One unknown removed below.
	 * AUDIO::PLAY_MISSION_COMPLETE_AUDIO("DEAD");
	 * AUDIO::PLAY_MISSION_COMPLETE_AUDIO("FRANKLIN_BIG_01");
	 * AUDIO::PLAY_MISSION_COMPLETE_AUDIO("GENERIC_FAILED");
	 * AUDIO::PLAY_MISSION_COMPLETE_AUDIO("TREVOR_SMALL_01");
	 * ```
	 */
	@:native("PlayMissionCompleteAudio")
	static function playMissionCompleteAudio(audioName:String):Dynamic;

	/**
	 * 
	 */
	@:native("PlayEndCreditsMusic")
	static function playEndCreditsMusic(bActive:Bool):Dynamic;

	/**
	 * ```
	 * This is the same as PLAY_PED_AMBIENT_SPEECH_NATIVE and PLAY_PED_AMBIENT_SPEECH_AND_CLONE_NATIVE but it will allow you to play a speech file from a specific voice file. It works on players and all peds, even animals.
	 * EX (C#):
	 * GTA.Native.Function.Call(Hash._0x3523634255FC3318, Game.Player.Character, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0);
	 * The first param is the ped you want to play it on, the second is the speech name, the third is the voice name, the fourth is the speech param, and the last param is usually always 0.
	 * ```
	 */
	@:native("PlayPedAmbientSpeechWithVoiceNative")
	static function playPedAmbientSpeechWithVoiceNative(ped:Dynamic, speechName:String, voiceName:String, speechParam:String, p4:Bool):Dynamic;

	/**
	 * See [`PLAY_PED_AMBIENT_SPEECH_NATIVE`](#\_0x8E04FEDD28D42462) for parameter specifications.
	 * 
	 * ```
	 * NativeDB Added Parameter 4: Any p3
	 * ```
	 */
	@:native("PlayPedAmbientSpeechAndCloneNative")
	static function playPedAmbientSpeechAndCloneNative(ped:Dynamic, speechName:String, speechParam:String):Dynamic;

	/**
	 * Plays ambient speech; see also [`PLAY_PED_AMBIENT_SPEECH_AND_CLONE_NATIVE`](#\_0xC6941B4A3A8FBBB9).
	 * 
	 * ```
	 * speechParam: Can be one of the following:
	 * SPEECH_PARAMS_STANDARD
	 * SPEECH_PARAMS_ALLOW_REPEAT
	 * SPEECH_PARAMS_BEAT
	 * SPEECH_PARAMS_FORCE
	 * SPEECH_PARAMS_FORCE_FRONTEND
	 * SPEECH_PARAMS_FORCE_NO_REPEAT_FRONTEND
	 * SPEECH_PARAMS_FORCE_NORMAL
	 * SPEECH_PARAMS_FORCE_NORMAL_CLEAR
	 * SPEECH_PARAMS_FORCE_NORMAL_CRITICAL
	 * SPEECH_PARAMS_FORCE_SHOUTED
	 * SPEECH_PARAMS_FORCE_SHOUTED_CLEAR
	 * SPEECH_PARAMS_FORCE_SHOUTED_CRITICAL
	 * SPEECH_PARAMS_FORCE_PRELOAD_ONLY
	 * SPEECH_PARAMS_MEGAPHONE
	 * SPEECH_PARAMS_HELI
	 * SPEECH_PARAMS_FORCE_MEGAPHONE
	 * SPEECH_PARAMS_FORCE_HELI
	 * SPEECH_PARAMS_INTERRUPT
	 * SPEECH_PARAMS_INTERRUPT_SHOUTED
	 * SPEECH_PARAMS_INTERRUPT_SHOUTED_CLEAR
	 * SPEECH_PARAMS_INTERRUPT_SHOUTED_CRITICAL
	 * SPEECH_PARAMS_INTERRUPT_NO_FORCE
	 * SPEECH_PARAMS_INTERRUPT_FRONTEND
	 * SPEECH_PARAMS_INTERRUPT_NO_FORCE_FRONTEND
	 * SPEECH_PARAMS_ADD_BLIP
	 * SPEECH_PARAMS_ADD_BLIP_ALLOW_REPEAT
	 * SPEECH_PARAMS_ADD_BLIP_FORCE
	 * SPEECH_PARAMS_ADD_BLIP_SHOUTED
	 * SPEECH_PARAMS_ADD_BLIP_SHOUTED_FORCE
	 * SPEECH_PARAMS_ADD_BLIP_INTERRUPT
	 * SPEECH_PARAMS_ADD_BLIP_INTERRUPT_FORCE
	 * SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED
	 * SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED_CLEAR
	 * SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED_CRITICAL
	 * SPEECH_PARAMS_SHOUTED
	 * SPEECH_PARAMS_SHOUTED_CLEAR
	 * SPEECH_PARAMS_SHOUTED_CRITICAL
	 * Note: A list of Name and Parameters can be found here pastebin.com/1GZS5dCL
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 4: Any p3
	 * ```
	 */
	@:native("PlayPedAmbientSpeechNative")
	static function playPedAmbientSpeechNative(ped:Dynamic, speechName:String, speechParam:String):Dynamic;

	/**
	 * ```
	 * Plays the given police radio message.
	 * All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/GBnsQ5hr
	 * ```
	 */
	@:native("PlayPoliceReport")
	static function playPoliceReport(name:String, p1:Float):Int;

	/**
	 * This native had a 4th parameter added in newer game builds
	 * `syncOverNetwork` creates a `CPedPlayPainEvent` when set to true, by default this variable is false.
	 * 
	 * You won't be able to use this for clones (remote pedestrians that are not owned by you) or migrating peds if `syncOverNetwork` is set to true; it simply won't execute.
	 * 
	 * The `ped` should also have speech for this to work.
	 * 
	 * ```cpp
	 * enum eAudDamageReason {
	 * 	AUD_DAMAGE_REASON_DEFAULT = 0,
	 * 	AUD_DAMAGE_REASON_FALLING = 1,
	 * 	AUD_DAMAGE_REASON_SUPER_FALLING = 2,
	 * 	AUD_DAMAGE_REASON_SCREAM_PANIC = 3,
	 * 	AUD_DAMAGE_REASON_SCREAM_PANIC_SHORT = 4,
	 * 	AUD_DAMAGE_REASON_SCREAM_SCARED = 5,
	 * 	AUD_DAMAGE_REASON_SCREAM_SHOCKED = 6,
	 * 	AUD_DAMAGE_REASON_SCREAM_TERROR = 7,
	 * 	AUD_DAMAGE_REASON_ON_FIRE = 8,
	 * 	AUD_DAMAGE_REASON_DROWNING = 9,
	 * 	// drowning on the surface of water, after we time out
	 * 	AUD_DAMAGE_REASON_SURFACE_DROWNING = 10,
	 * 	AUD_DAMAGE_REASON_INHALE = 11,
	 * 	AUD_DAMAGE_REASON_EXHALE = 12,
	 * 	AUD_DAMAGE_REASON_POST_FALL_GRUNT = 13,
	 * 	AUD_DAMAGE_REASON_ENTERING_RAGDOLL_DEATH = 14,
	 * 	AUD_DAMAGE_REASON_EXPLOSION = 15,
	 * 	AUD_DAMAGE_REASON_MELEE = 16,
	 * 	AUD_DAMAGE_REASON_SHOVE = 17,
	 * 	AUD_DAMAGE_REASON_WHEEZE = 18,
	 * 	AUD_DAMAGE_REASON_COUGH = 19,
	 * 	AUD_DAMAGE_REASON_TAZER = 20,
	 * 	AUD_DAMAGE_REASON_EXHAUSTION = 21,
	 * 	AUD_DAMAGE_REASON_CLIMB_LARGE = 22,
	 * 	AUD_DAMAGE_REASON_CLIMB_SMALL = 23,
	 * 	AUD_DAMAGE_REASON_JUMP = 24,
	 * 	AUD_DAMAGE_REASON_COWER = 25,
	 * 	AUD_DAMAGE_REASON_WHIMPER = 26,
	 * 	AUD_DAMAGE_REASON_DYING_MOAN = 27,
	 * 	AUD_DAMAGE_REASON_CYCLING_EXHALE = 28,
	 * 	AUD_DAMAGE_REASON_PAIN_RAPIDS = 29,
	 * 	AUD_DAMAGE_REASON_SNEEZE = 30,
	 * 	AUD_DAMAGE_REASON_MELEE_SMALL_GRUNT = 31,
	 * 	AUD_DAMAGE_REASON_MELEE_LARGE_GRUNT = 32,
	 * 	AUD_DAMAGE_REASON_POST_FALL_GRUNT_LOW = 33
	 * }
	 * ```
	 */
	@:native("PlayPain")
	static function playPain(ped:Dynamic, damageReason:Int, rawDamage:Float):Dynamic;

	/**
	 * ```
	 * All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/f2A7vTj0   
	 * No changes made in b678d.  
	 * gtaforums.com/topic/795622-audio-for-mods  
	 * ```
	 */
	@:native("PlaySoundFromEntity")
	static function playSoundFromEntity(soundId:Int, audioName:String, entity:Dynamic, audioRef:String, isNetwork:Bool, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/RFb4GTny  
	 * AUDIO::PLAY_PED_RINGTONE("Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);  
	 * AUDIO::PLAY_PED_RINGTONE("Dial_and_Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);  
	 * ```
	 */
	@:native("PlayPedRingtone")
	static function playPedRingtone(ringtoneName:String, ped:Dynamic, p2:Bool):Dynamic;

	/**
	 * ```
	 * All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/A8Ny8AHZ  
	 * ```
	 */
	@:native("PlaySound")
	static function playSound(soundId:Int, audioName:String, audioRef:String, p3:Bool, p4:Dynamic, p5:Bool):Dynamic;

	/**
	 * ```
	 * All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/eeFc5DiW  
	 * gtaforums.com/topic/795622-audio-for-mods  
	 * ```
	 */
	@:native("PlaySoundFromCoord")
	static function playSoundFromCoord(soundId:Int, audioName:String, x:Float, y:Float, z:Float, audioRef:String, isNetwork:Bool, range:Int, p8:Bool):Dynamic;

	/**
	 * ```
	 * List: https://pastebin.com/DCeRiaLJ
	 * All occurrences as of Cayo Perico Heist DLC (b2189), sorted alphabetically and identical lines removed: https://git.io/JtLxM
	 * ```
	 */
	@:native("PlaySoundFrontend")
	static function playSoundFrontend(soundId:Int, audioName:String, audioRef:String, p3:Bool):Dynamic;

	/**
	 * Plays a preloaded stream back from the specified Vector3.
	 */
	@:native("PlayStreamFromPosition")
	static function playStreamFromPosition(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * Plays a preloaded stream back from the specified object.
	 */
	@:native("PlayStreamFromObject")
	static function playStreamFromObject(object:Dynamic):Dynamic;

	/**
	 * Plays a preloaded stream back from the specified ped vehicle
	 */
	@:native("PlayStreamFromVehicle")
	static function playStreamFromVehicle(vehicle:Dynamic):Dynamic;

	/**
	 * Plays a preloaded stream back from the specified ped.
	 */
	@:native("PlayStreamFromPed")
	static function playStreamFromPed(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PlaySynchronizedAudioEvent")
	static function playSynchronizedAudioEvent(sceneId:Int):Bool;

	/**
	 * 
	 */
	@:native("PlayVehicleDoorOpenSound")
	static function playVehicleDoorOpenSound(vehicle:Dynamic, doorIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PlayVehicleDoorCloseSound")
	static function playVehicleDoorCloseSound(vehicle:Dynamic, doorIndex:Int):Dynamic;

	/**
	 * Prepares any banks required to play the given alarm
	 */
	@:native("PrepareAlarm")
	static function prepareAlarm(alarmName:String):Bool;

	/**
	 * 
	 */
	@:native("PlayStreamFrontend")
	static function playStreamFrontend():Dynamic;

	/**
	 * Similar to [START_SCRIPT_CONVERSATION](#\_0x6B17C62C9635D2DC), except that is starts the conversation off paused.
	 * 
	 * A scripter can then kick off the conversation by calling [START_PRELOADED_CONVERSATION](#\_0x23641AFE870AF385).
	 * 
	 * If they want to check that the conversation is done preloading, they can use [GET_IS_PRELOADED_CONVERSATION_READY](#\_0xE73364DB90778FFA)
	 */
	@:native("PreloadScriptConversation")
	static function preloadScriptConversation(displaySubtitles:Bool, addToBriefScreen:Bool, cloneConversation:Bool, interruptible:Bool):Dynamic;

	/**
	 * Request that we preload the required audio bank for a given vehicle model.
	 * 
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("PreloadVehicleAudioBank")
	static function preloadVehicleAudioBank(model:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PreloadScriptPhoneConversation")
	static function preloadScriptPhoneConversation(displaySubtitles:Bool, addToBriefScreen:Bool):Dynamic;

	/**
	 * Creates a broken glass area
	 */
	@:native("RecordBrokenGlass")
	static function recordBrokenGlass(x:Float, y:Float, z:Float, radius:Float):Dynamic;

	/**
	 * 
	 */
	@:native("PrepareSynchronizedAudioEventForScene")
	static function prepareSynchronizedAudioEventForScene(sceneId:Int, audioEvent:String):Bool;

	/**
	 * This native has been marked as deprecated internally, please use [RELEASE_SCRIPT_AUDIO_BANK](#\_0x7A2D8AD0A9EB9C3F) instead.
	 */
	@:native("ReleaseAmbientAudioBank")
	static function releaseAmbientAudioBank():Dynamic;

	/**
	 * Prepares the specified music event. Preparing it in advance will preload any required data so that it's ready to play immediately.
	 */
	@:native("PrepareMusicEvent")
	static function prepareMusicEvent(eventName:String):Bool;

	/**
	 * 
	 */
	@:native("PrepareSynchronizedAudioEvent")
	static function prepareSynchronizedAudioEvent(audioEvent:String, startOffsetMs:Int):Bool;

	/**
	 * Refreshes the closest shoreline using the nearest road position.
	 */
	@:native("RefreshClosestOceanShoreline")
	static function refreshClosestOceanShoreline():Dynamic;

	/**
	 * Unloads the specified audioBank
	 */
	@:native("ReleaseNamedScriptAudioBank")
	static function releaseNamedScriptAudioBank(audioBank:String):Dynamic;

	/**
	 * This native has been marked as deprecated internally, please use [RELEASE_SCRIPT_AUDIO_BANK](#\_0x7A2D8AD0A9EB9C3F) instead.
	 */
	@:native("ReleaseMissionAudioBank")
	static function releaseMissionAudioBank():Dynamic;

	/**
	 * **This native does absolutely nothing, just a nullsub**
	 */
	@:native("RegisterScriptWithAudio")
	static function registerScriptWithAudio(inChargeOfAudio:Bool):Dynamic;

	/**
	 * This should be called once a sound has finished being manipulated by the script so that its SoundId can be released and re-used.
	 */
	@:native("ReleaseSoundId")
	static function releaseSoundId(soundId:Int):Dynamic;

	/**
	 * ```
	 *  Found in the b617d scripts, duplicates removed:
	 *  AUDIO::_B4BBFD9CD8B3922B("V_CARSHOWROOM_PS_WINDOW_UNBROKEN");
	 *  AUDIO::_B4BBFD9CD8B3922B("V_CIA_PS_WINDOW_UNBROKEN");
	 *  AUDIO::_B4BBFD9CD8B3922B("V_DLC_HEIST_APARTMENT_DOOR_CLOSED");
	 *  AUDIO::_B4BBFD9CD8B3922B("V_FINALEBANK_PS_VAULT_INTACT");
	 *  AUDIO::_B4BBFD9CD8B3922B("V_MICHAEL_PS_BATHROOM_WITH_WINDOW");
	 * ```
	 * 
	 * For events like cars driving through windows, allows script to unocclude that window
	 */
	@:native("RemovePortalSettingsOverride")
	static function removePortalSettingsOverride(portalSettingsName:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("ReleaseWeaponAudio")
	static function releaseWeaponAudio():Dynamic;

	/**
	 * Unloads all audio banks requested by this script.
	 */
	@:native("ReleaseScriptAudioBank")
	static function releaseScriptAudioBank():Dynamic;

	/**
	 * This native is marked as deprecated internally, please use [REQUEST_SCRIPT_AUDIO_BANK](#\_0x2F844A8B08D76685)
	 * 
	 * This native has a new argument on newer game builds:
	 * 
	 * *   **playerBits**:
	 */
	@:native("RequestAmbientAudioBank")
	static function requestAmbientAudioBank(bankName:String, bOverNetwork:Bool):Bool;

	/**
	 * Removes an entity from its current mix group.
	 */
	@:native("RemoveEntityFromAudioMixGroup")
	static function removeEntityFromAudioMixGroup(entity:Dynamic, fadeOut:Float):Dynamic;

	/**
	 * This native is marked as deprecated internally, please use [REQUEST_SCRIPT_AUDIO_BANK](#\_0x2F844A8B08D76685)
	 * 
	 * This native has a new argument on newer game builds:
	 * 
	 * *   **playerBits**:
	 */
	@:native("RequestMissionAudioBank")
	static function requestMissionAudioBank(bankName:String, bOverNetwork:Bool):Bool;

	/**
	 * 
	 */
	@:native("ResetPedAudioFlags")
	static function resetPedAudioFlags(ped:Dynamic):Dynamic;

	/**
	 * This native has a new argument on newer game builds:
	 * 
	 * *   **playerBits**:
	 */
	@:native("RequestScriptAudioBank")
	static function requestScriptAudioBank(bankName:String, bOverNetwork:Bool):Bool;

	/**
	 * Resets the override for [SET_VEHICLE_STARTUP_REV_SOUND](#\_0xF1F8157B8C3F171C)
	 */
	@:native("ResetVehicleStartupRevSound")
	static function resetVehicleStartupRevSound(vehicle:Dynamic):Dynamic;

	/**
	 * Loads the tennis vocalization banks into a couple animal slots.
	 */
	@:native("RequestTennisBanks")
	static function requestTennisBanks(opponentPed:Dynamic):Dynamic;

	/**
	 * Clears the override set by [OVERRIDE_TREVOR_RAGE](#\_0x13AD665062541A7E)
	 */
	@:native("ResetTrevorRage")
	static function resetTrevorRage():Dynamic;

	/**
	 * Overrides wind elevation sounds
	 */
	@:native("ScriptOverridesWindElevation")
	static function scriptOverridesWindElevation(override_:Bool, windElevationHashName:Int):Dynamic;

	/**
	 * Restarts a conversation that was previously paused with [PAUSE_SCRIPTED_CONVERSATION](#\_0x8530AD776CD72B12)
	 */
	@:native("RestartScriptedConversation")
	static function restartScriptedConversation():Dynamic;

	/**
	 * Makes pedestrians sound their horn longer, faster and more agressive when they use their horn.
	 */
	@:native("SetAggressiveHorns")
	static function setAggressiveHorns(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetAmbientZoneStatePersistent")
	static function setAmbientZoneStatePersistent(zoneName:String, enabled:Bool, forceUpdate:Bool):Dynamic;

	/**
	 * Sets the specified ped to use a specific voice different to the one associated with their model.
	 */
	@:native("SetAmbientVoiceName")
	static function setAmbientVoiceName(ped:Dynamic, voiceName:String):Dynamic;

	/**
	 * Sets the specified ped to use a specific voice different to the one associated with their model.
	 */
	@:native("SetAmbientVoiceNameHash")
	static function setAmbientVoiceNameHash(ped:Dynamic, hash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetAmbientZoneListStatePersistent")
	static function setAmbientZoneListStatePersistent(ambientZone:String, enabled:Bool, forceUpdate:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetAmbientZoneListState")
	static function setAmbientZoneListState(zoneListName:String, enabled:Bool, forceUpdate:Bool):Dynamic;

	/**
	 * Needs to be called every frame.
	 * 
	 * ```cpp
	 * enum eAudSpecialEffectMode
	 * {
	 * 	kSpecialEffectModeNormal = 0,
	 * 	kSpecialEffectModeUnderwater = 1,
	 * 	kSpecialEffectModeStoned = 2,
	 * 	kSpecialEffectModePauseMenu = 3,
	 * 	kSpecialEffectModeSlowMotion = 4,
	 * 	kSpecialEffectModeDrunkStage01 = 5,
	 * 	kSpecialEffectModeDrunkStage02 = 6,
	 * 	kSpecialEffectModeDrunkStage03 = 7,
	 * 	NUM_AUDSPECIALEFFECTMODE
	 * };
	 * ```
	 */
	@:native("SetAudioSpecialEffectMode")
	static function setAudioSpecialEffectMode(mode:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetAmbientZoneState")
	static function setAmbientZoneState(zoneName:String, enabled:Bool, forceUpdate:Bool):Dynamic;

	/**
	 * Sets the priority for the given vehicle. This is a hint for the audio system as to what LOD the
	 * vehicle should use.
	 * 
	 * 'High' priority will bump up the activation range significantly and prevent it
	 * from dropping when the vehicle is not within the view frustrum.
	 * 
	 * 'Max' will attempt to keep the vehicle at maximum LOD regardless of how far it is from the listener or what it is currently doing. Be careful with this!
	 * 
	 * There is a hard limit of 5 simulataneous granular cars (including the player) so we are quite limited on the number
	 * we can play at once, so setting vehicles to max priority will reduce the number of engines availble for regular NPC vehicles
	 * 
	 * ```cpp
	 * enum eAudVehiclePriority {
	 * 	AUDIO_VEHICLE_PRIORITY_NORMAL = 0,
	 * 	AUDIO_VEHICLE_PRIORITY_MEDIUM = 1,
	 * 	AUDIO_VEHICLE_PRIORITY_MAX = 2,
	 * 	AUDIO_VEHICLE_PRIORITY_HIGH = 3,
	 * }
	 * ```
	 */
	@:native("SetAudioVehiclePriority")
	static function setAudioVehiclePriority(vehicle:Dynamic, priority:Int):Dynamic;

	/**
	 * ```cpp
	 * enum eAudAnimalMood {
	 * 	AUD_ANIMAL_MOOD_ANGRY = 0,
	 * 	AUD_ANIMAL_MOOD_PLAYFUL = 1,
	 * 
	 * 	AUD_ANIMAL_MOOD_NUM_MOODS = 2
	 * }
	 * ```
	 */
	@:native("SetAnimalMood")
	static function setAnimalMood(animal:Dynamic, mood:Int):Dynamic;

	/**
	 * Generic interface to toggle audio functionality, with auto-reset on script termination and support for multiple script threads
	 * 
	 * Flags used in game scripts:
	 * | Flag Name | Description of Usage |
	 * | ----- | -------- |
	 * | ActivateSwitchWheelAudio | |
	 * | AllowAmbientSpeechInSlowMo | |
	 * | AllowCutsceneOverScreenFade | |
	 * | AllowForceRadioAfterRetune | |
	 * | AllowPainAndAmbientSpeechToPlayDuringCutscene | |
	 * | AllowPlayerAIOnMission | |
	 * | AllowPoliceScannerWhenPlayerHasNoControl | |
	 * | AllowRadioDuringSwitch | |
	 * | AllowRadioOverScreenFade | |
	 * | AllowScoreAndRadio | |
	 * | AllowScriptedSpeechInSlowMo | |
	 * | AvoidMissionCompleteDelay | |
	 * | DisableAbortConversationForDeathAndInjury | |
	 * | DisableAbortConversationForRagdoll | |
	 * | DisableBarks | |
	 * | DisableFlightMusic | |
	 * | DisableNPCHeadsetSpeechAttenuation | |
	 * | DisableReplayScriptStreamRecording | |
	 * | EnableHeadsetBeep | |
	 * | EnableMissileLockWarningForAllVehicles | |
	 * | ForceConversationInterrupt | |
	 * | ForceSeamlessRadioSwitch | |
	 * | ForceSniperAudio | |
	 * | FrontendRadioDisabled | |
	 * | HoldMissionCompleteWhenPrepared | |
	 * | IsDirectorModeActive |  Allows you to play speech infinitely without any pauses like in Director Mode. |
	 * | IsPlayerOnMissionForSpeech | |
	 * | ListenerReverbDisabled | |
	 * | LoadMPData | |
	 * | MobileRadioInGame | |
	 * | OnlyAllowScriptTriggerPoliceScanner | |
	 * | PlayerOnDLCHeist4Island | |
	 * | PlayMenuMusic | |
	 * | PoliceScannerDisabled | |
	 * | ScriptedConvListenerMaySpeak | |
	 * | SpeechDucksScore | |
	 * | SuppressPlayerScubaBreathing | |
	 * | UseQuietSceneSoftVersion | |
	 * | WantedMusicDisabled | |
	 * | WantedMusicOnMission | |
	 * 
	 * ```
	 * All flag IDs and hashes:
	 * ID: 01 | Hash: 0x20A7858F
	 * ID: 02 | Hash: 0xA11C2259
	 * ID: 03 | Hash: 0x08DE4700
	 * ID: 04 | Hash: 0x989F652F
	 * ID: 05 | Hash: 0x3C9E76BA
	 * ID: 06 | Hash: 0xA805FEB0
	 * ID: 07 | Hash: 0x4B94EA26
	 * ID: 08 | Hash: 0x803ACD34
	 * ID: 09 | Hash: 0x7C741226
	 * ID: 10 | Hash: 0x31DB9EBD
	 * ID: 11 | Hash: 0xDF386F18
	 * ID: 12 | Hash: 0x669CED42
	 * ID: 13 | Hash: 0x51F22743
	 * ID: 14 | Hash: 0x2052B35C
	 * ID: 15 | Hash: 0x071472DC
	 * ID: 16 | Hash: 0xF9928BCC
	 * ID: 17 | Hash: 0x7ADBDD48
	 * ID: 18 | Hash: 0xA959BA1A
	 * ID: 19 | Hash: 0xBBE89B60
	 * ID: 20 | Hash: 0x87A08871
	 * ID: 21 | Hash: 0xED1057CE
	 * ID: 22 | Hash: 0x1584AD7A
	 * ID: 23 | Hash: 0x8582CFCB
	 * ID: 24 | Hash: 0x7E5E2FB0
	 * ID: 25 | Hash: 0xAE4F72DB
	 * ID: 26 | Hash: 0x5D16D1FA
	 * ID: 27 | Hash: 0x06B2F4B8
	 * ID: 28 | Hash: 0x5D4CDC96
	 * ID: 29 | Hash: 0x8B5A48BA
	 * ID: 30 | Hash: 0x98FBD539
	 * ID: 31 | Hash: 0xD8CB0473
	 * ID: 32 | Hash: 0x5CBB4874
	 * ID: 33 | Hash: 0x2E9F93A9
	 * ID: 34 | Hash: 0xD93BEA86
	 * ID: 35 | Hash: 0x92109B7D
	 * ID: 36 | Hash: 0xB7EC9E4D
	 * ID: 37 | Hash: 0xCABDBB1D
	 * ID: 38 | Hash: 0xB3FD4A52
	 * ID: 39 | Hash: 0x370D94E5
	 * ID: 40 | Hash: 0xA0F7938F
	 * ID: 41 | Hash: 0xCBE1CE81
	 * ID: 42 | Hash: 0xC27F1271
	 * ID: 43 | Hash: 0x9E3258EB
	 * ID: 44 | Hash: 0x551CDA5B
	 * ID: 45 | Hash: 0xCB6D663C
	 * ID: 46 | Hash: 0x7DACE87F
	 * ID: 47 | Hash: 0xF9DE416F
	 * ID: 48 | Hash: 0x882E6E9E
	 * ID: 49 | Hash: 0x16B447E7
	 * ID: 50 | Hash: 0xBD867739
	 * ID: 51 | Hash: 0xA3A58604
	 * ID: 52 | Hash: 0x7E046BBC
	 * ID: 53 | Hash: 0xD95FDB98
	 * ID: 54 | Hash: 0x5842C0ED
	 * ID: 55 | Hash: 0x285FECC6
	 * ID: 56 | Hash: 0x9351AC43
	 * ID: 57 | Hash: 0x50032E75
	 * ID: 58 | Hash: 0xAE6D0D59
	 * ID: 59 | Hash: 0xD6351785
	 * ID: 60 | Hash: 0xD25D71BC
	 * ID: 61 | Hash: 0x1F7F6423
	 * ID: 62 | Hash: 0xE24C3AA6
	 * ID: 63 | Hash: 0xBFFDD2B7
	 * ```
	 */
	@:native("SetAudioFlag")
	static function setAudioFlag(flagName:String, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetAudioSceneVariable")
	static function setAudioSceneVariable(scene:String, variableName:String, value:Float):Dynamic;

	/**
	 * Set a delay in milliseconds for the audio to be cleaned up when the script finishes.
	 */
	@:native("SetAudioScriptCleanupTime")
	static function setAudioScriptCleanupTime(timeMs:Int):Dynamic;

	/**
	 * Retunes a named static emitter to the specified station
	 */
	@:native("SetEmitterRadioStation")
	static function setEmitterRadioStation(emitterName:String, radioStation:String):Dynamic;

	/**
	 * ```
	 * All occurrences found in b617d, sorted alphabetically and identical lines removed:
	 * AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_AK");
	 * AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_CUSTOM");
	 * AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_TOOTHLESS");
	 * ```
	 * 
	 * Add a suffix to the cutscene audio name. Call before loading the cutscene.
	 */
	@:native("SetCutsceneAudioOverride")
	static function setCutsceneAudioOverride(name:String):Dynamic;

	/**
	 * Allows the radio to be played in the frontend.
	 */
	@:native("SetFrontendRadioActive")
	static function setFrontendRadioActive(active:Bool):Dynamic;

	/**
	 * Sets whether or not scripted conversation flow should be controlled by anim triggers
	 */
	@:native("SetConversationAudioControlledByAnim")
	static function setConversationAudioControlledByAnim(enable:Bool):Dynamic;

	/**
	 * Used to determine whether conversation should use robot speech or not
	 */
	@:native("SetConversationAudioPlaceholder")
	static function setConversationAudioPlaceholder(isPlaceHolder:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetInitialPlayerStation")
	static function setInitialPlayerStation(radioStation:String):Dynamic;

	/**
	 * Queues up a custom track list on the specified radio station. The content in the track list will be played as soon as possible.
	 * The station does not have to be frozen.
	 */
	@:native("SetCustomRadioTrackList")
	static function setCustomRadioTrackList(radioStation:String, trackListName:String, forceNow:Bool):Dynamic;

	/**
	 * Sets the global radio signal level, lower value will cause radio static.
	 * Used only a handful of times in scripts.
	 */
	@:native("SetGlobalRadioSignalLevel")
	static function setGlobalRadioSignalLevel(signalLevel:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetEntityForNullConvPed")
	static function setEntityForNullConvPed(speakerConversationIndex:Int, entity:Dynamic):Dynamic;

	/**
	 * ```
	 * Enables/disables ped's "loud" footstep sound.
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("SetPedAudioFootstepLoud")
	static function SetPedAudioFootstepLoud(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetGpsActive")
	static function setGpsActive(active:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetMobilePhoneRadioState")
	static function setMobilePhoneRadioState(state:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetHornEnabled")
	static function setHornEnabled(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * If this is the correct name, what microphone? I know your TV isn't going to reach out and adjust your headset so..  
	 * ```
	 */
	@:native("SetMicrophonePosition")
	static function setMicrophonePosition(p0:Bool, x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, x3:Float, y3:Float, z3:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("SetPedClothEventsEnabled")
	static function setPedClothEventsEnabled(ped:Dynamic, enabled:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetMobileRadioEnabledDuringGameplay")
	static function setMobileRadioEnabledDuringGameplay(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedRaceAndVoiceGroup")
	static function setPedRaceAndVoiceGroup(ped:Dynamic, pedRace:Int, pvgHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetPedAudioGender")
	static function SetPedAudioGender(ped:Dynamic, p1:Bool):Dynamic;

	/**
	 * Sets the ped so they sound drunk
	 */
	@:native("SetPedIsDrunk")
	static function setPedIsDrunk(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * From the scripts:
	 * AUDIO::_SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("PAIGE_PVG"));
	 * AUDIO::_SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("TALINA_PVG"));
	 * AUDIO::_SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("FEMALE_LOST_BLACK_PVG"));
	 * AUDIO::_SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("FEMALE_LOST_WHITE_PVG"));
	 * ```
	 */
	@:native("SetPedVoiceGroup")
	static function SetPedVoiceGroup(ped:Dynamic, voiceGroupHash:Int):Dynamic;

	/**
	 * Overrides the calculated ped density that is used to modulate the ambient ped walla sounds (in exteriors only)
	 * 
	 * If you want to use this for interiors, use [SET_PED_INTERIOR_WALLA_DENSITY](#\_0x8BF907833BE275DE)
	 */
	@:native("SetPedWallaDensity")
	static function setPedWallaDensity(density:Float, applyValue:Float):Dynamic;

	/**
	 * Calls the same internal function [`_SET_PED_VOICE_GROUP`](#\_0x7CDC8C3B89F661B3) calls, but passes `voiceGroupHash` (defined as a parameter in the referenced native) as `0`.
	 */
	@:native("SetPedVoiceFull")
	static function setPedVoiceFull(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * Dat151RelType == 29
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("SetPedVoiceGroupRace")
	static function SetPedVoiceGroupRace(ped:Dynamic, voiceGroupHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetPortalSettingsOverride")
	static function setPortalSettingsOverride(oldPortalSettingsName:String, newPortalSettingsName:String):Dynamic;

	/**
	 * 
	 */
	@:native("SetPositionForNullConvPed")
	static function setPositionForNullConvPed(speakerConversationIndex:Int, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetPositionedPlayerVehicleRadioEmitterEnabled")
	static function setPositionedPlayerVehicleRadioEmitterEnabled(enabled:Bool):Dynamic;

	/**
	 * Sets a player ped to use his ANGRY speech contexts
	 */
	@:native("SetPlayerAngry")
	static function setPlayerAngry(ped:Dynamic, isAngry:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetRadioAutoUnfreeze")
	static function setRadioAutoUnfreeze(toggle:Bool):Dynamic;

	/**
	 * Enable player vehicle specific alarm disarm/arm sound triggering
	 */
	@:native("SetPlayerVehicleAlarmAudioActive")
	static function setPlayerVehicleAlarmAudioActive(vehicle:Dynamic, active:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetRadioFrontendFadeTime")
	static function setRadioFrontendFadeTime(fadeTime:Float):Dynamic;

	/**
	 * Find the radio station list [here](https://gist.github.com/4mmonium/b47d6512a2d992cbf4eea15d9038b581)
	 */
	@:native("SetRadioToStationName")
	static function setRadioToStationName(stationName:String):Dynamic;

	/**
	 * ```
	 * 6 calls in the b617d scripts, removed identical lines:
	 * AUDIO::SET_RADIO_STATION_MUSIC_ONLY("RADIO_01_CLASS_ROCK", 1);
	 * AUDIO::SET_RADIO_STATION_MUSIC_ONLY(AUDIO::GET_RADIO_STATION_NAME(10), 0);
	 * AUDIO::SET_RADIO_STATION_MUSIC_ONLY(AUDIO::GET_RADIO_STATION_NAME(10), 1);
	 * ```
	 */
	@:native("SetRadioStationMusicOnly")
	static function setRadioStationMusicOnly(radioStation:String, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sets radio station by index.  
	 * ```
	 */
	@:native("SetRadioToStationIndex")
	static function setRadioToStationIndex(radioStation:Int):Dynamic;

	/**
	 * Doesn't have an effect in Story Mode.
	 * 
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("SetRadioStationIsVisible")
	static function SetRadioStationIsVisible(radioStation:String, toggle:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("SetSirenKeepOn")
	static function SetSirenKeepOn(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetScriptUpdateDoorAudio")
	static function setScriptUpdateDoorAudio(doorHash:Int, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Only found this one in the decompiled scripts:  
	 * AUDIO::SET_RADIO_TRACK("RADIO_03_HIPHOP_NEW", "ARM1_RADIO_STARTS");  
	 * ```
	 */
	@:native("SetRadioTrack")
	static function setRadioTrack(radioStation:String, radioTrack:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("SetRadioTrackMix")
	static function SetRadioTrackMix(radioStationName:String, mixName:String, p2:Int):Dynamic;

	/**
	 * ```
	 * Example:
	 * AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_01_STAGE", false);    AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM", false);    AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM", false);
	 * This turns off surrounding sounds not connected directly to peds.
	 * ```
	 */
	@:native("SetStaticEmitterEnabled")
	static function setStaticEmitterEnabled(emitterName:String, toggle:Bool):Dynamic;

	/**
	 * ```
	 * From the scripts, p0:  
	 * "ArmWrestlingIntensity",  
	 * "INOUT",  
	 * "Monkey_Stream",  
	 * "ZoomLevel"  
	 * ```
	 */
	@:native("SetVariableOnStream")
	static function setVariableOnStream(p0:String, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetSirenWithNoDriver")
	static function setSirenWithNoDriver(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetUserRadioControlEnabled")
	static function setUserRadioControlEnabled(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetVariableOnSound")
	static function setVariableOnSound(soundId:Int, variableName:String, value:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("SetVehHasRadioOverride")
	static function SetVehHasRadioOverride(vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * SET_VARIABLE_ON_*
	 * ```
	 */
	@:native("SetVariableOnCutsceneAudio")
	static function SetVariableOnCutsceneAudio(variableName:String, value:Float):Dynamic;

	/**
	 * Find the radio station list [here](https://gist.github.com/4mmonium/b47d6512a2d992cbf4eea15d9038b581)
	 */
	@:native("SetVehRadioStation")
	static function setVehRadioStation(vehicle:Dynamic, radioStation:String):Dynamic;

	/**
	 * ```
	 * AUDIO::SET_VARIABLE_ON_UNDER_WATER_STREAM("inTunnel", 1.0);
	 * AUDIO::SET_VARIABLE_ON_UNDER_WATER_STREAM("inTunnel", 0.0);
	 * ```
	 */
	@:native("SetVariableOnUnderWaterStream")
	static function setVariableOnUnderWaterStream(variableName:String, value:Float):Dynamic;

	/**
	 * Vehicle will make a 'rattling' noise when decelerating
	 */
	@:native("SetVehicleAudioBodyDamageFactor")
	static function setVehicleAudioBodyDamageFactor(vehicle:Dynamic, intensity:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleAudioEngineDamageFactor")
	static function setVehicleAudioEngineDamageFactor(vehicle:Dynamic, damageFactor:Float):Dynamic;

	/**
	 * ```
	 * SET_VEHICLE_BOOST_ACTIVE(vehicle, 1, 0);  
	 * SET_VEHICLE_BOOST_ACTIVE(vehicle, 0, 0);   
	 * Will give a boost-soundeffect.  
	 * ```
	 */
	@:native("SetVehicleBoostActive")
	static function setVehicleBoostActive(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1365
	 * ```
	 */
	@:native("SetVehicleHornVariation")
	static function SetVehicleHornVariation(vehicle:Dynamic, value:Int):Dynamic;

	/**
	 * ```
	 * can't seem to enable radio on cop cars etc  
	 * ```
	 */
	@:native("SetVehicleRadioEnabled")
	static function setVehicleRadioEnabled(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Overrides the vehicle's startup engine rev sound.
	 * 
	 * You can reset this with [RESET_VEHICLE_STARTUP_REV_SOUND](#\_0xD2DCCD8E16E20997)
	 */
	@:native("SetVehicleStartupRevSound")
	static function setVehicleStartupRevSound(vehicle:Dynamic, soundName:String, setName:String):Dynamic;

	/**
	 * 
	 */
	@:native("SetVehicleRadioLoud")
	static function setVehicleRadioLoud(vehicle:Dynamic, loud:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SkipToNextScriptedConversationLine")
	static function skipToNextScriptedConversationLine():Dynamic;

	/**
	 * You should call [PREPARE_ALARM](#\_0x9D74AE343DB65533) and wait for its value to be true before using this
	 */
	@:native("StartAlarm")
	static function startAlarm(alarmName:String, skipStartup:Bool):Dynamic;

	/**
	 * For use with [PRELOAD_SCRIPT_CONVERSATION](#\_0x3B3CAD6166916D87) and [GET_IS_PRELOADED_CONVERSATION_READY](#\_0xE73364DB90778FFA)
	 */
	@:native("StartPreloadedConversation")
	static function startPreloadedConversation():Dynamic;

	/**
	 * 
	 */
	@:native("SkipRadioForward")
	static function skipRadioForward():Dynamic;

	/**
	 * ```
	 * SET_*
	 * ```
	 */
	@:native("SoundVehicleHornThisFrame")
	static function SoundVehicleHornThisFrame(vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * Used to prepare a scene where the surrounding sound is muted or a bit changed. This does not play any sound.  
	 * List of all usable scene names found in b617d. Sorted alphabetically and identical names removed: pastebin.com/MtM9N9CC  
	 * ```
	 */
	@:native("StartAudioScene")
	static function startAudioScene(scene:String):Bool;

	/**
	 * 
	 */
	@:native("StopAlarm")
	static function stopAlarm(alarmName:String, instantStop:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("StopAllAlarms")
	static function stopAllAlarms(instantStop:Bool):Dynamic;

	/**
	 * Stops currently playing ambient speech.
	 */
	@:native("StopCurrentPlayingAmbientSpeech")
	static function stopCurrentPlayingAmbientSpeech(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("StartScriptPhoneConversation")
	static function startScriptPhoneConversation(displaySubtitles:Bool, addToBriefScreen:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("StartScriptConversation")
	static function startScriptConversation(displaySubtitles:Bool, addToBriefScreen:Bool, cloneConversation:Bool, interruptible:Bool):Dynamic;

	/**
	 * Stops all mixed scenes which were previously started by this script
	 */
	@:native("StopAudioScenes")
	static function stopAudioScenes():Dynamic;

	/**
	 * Stops currently playing speech (Pain, ambient, scripted, breathing).
	 */
	@:native("StopCurrentPlayingSpeech")
	static function stopCurrentPlayingSpeech(ped:Dynamic):Dynamic;

	/**
	 * Stops the named mixing scene (which was previously started by this script)
	 */
	@:native("StopAudioScene")
	static function stopAudioScene(sceneName:String):Dynamic;

	/**
	 * Stops audio for the current cutscene.
	 */
	@:native("StopCutsceneAudio")
	static function stopCutsceneAudio():Dynamic;

	/**
	 * Stops a ped's ringtone from playing
	 */
	@:native("StopPedRingtone")
	static function stopPedRingtone(ped:Dynamic):Dynamic;

	/**
	 * This doesn't stop a piece of dialogue that has been triggered.
	 * 
	 * This stops the ability to force ambient dialogue if set to true - however setting it to false, then triggering a context, then setting it to true again will allow this.
	 * 
	 * Nb. This does not sync over the network, it will only affect peds locally. Use [STOP_PED_SPEAKING_SYNCED](#\_0xAB6781A5F3101470) if you need to affect peds on other machines too.
	 */
	@:native("StopPedSpeaking")
	static function stopPedSpeaking(ped:Dynamic, shouldDisable:Bool):Dynamic;

	/**
	 * ```
	 * List of all usable event names found in b617d used with this native. Sorted alphabetically and identical names removed: pastebin.com/RzDFmB1W  
	 * All music event names found in the b617d scripts: pastebin.com/GnYt0R3P  
	 * ```
	 */
	@:native("TriggerMusicEvent")
	static function triggerMusicEvent(eventName:String):Bool;

	/**
	 * 
	 */
	@:native("StopScriptedConversation")
	static function stopScriptedConversation(finishCurrentLine:Bool):Int;

	/**
	 * This doesn't stop a piece of dialogue that has been triggered.
	 * 
	 * This stops the ability to force ambient dialogue if set to true - however setting it to false, then triggering a context, then setting it to true again will allow this.
	 * 
	 * The ped will also be prevented from speaking on remote machines. Use [STOP_PED_SPEAKING](#\_0x9D64D7405520E3D3) if you just want to affect the local machine.
	 */
	@:native("StopPedSpeakingSynced")
	static function stopPedSpeakingSynced(ped:Dynamic, shouldDisable:Bool):Dynamic;

	/**
	 * Stops all smoke grenade sounds
	 */
	@:native("StopSmokeGrenadeExplosionSounds")
	static function stopSmokeGrenadeExplosionSounds():Dynamic;

	/**
	 * Stops the sound from currently playing, there isn't a way to resume a sound
	 * after stopping it.
	 */
	@:native("StopSound")
	static function stopSound(soundId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("UnlockMissionNewsStory")
	static function unlockMissionNewsStory(newsStory:Int):Dynamic;

	/**
	 * 
	 */
	@:native("StopStream")
	static function stopStream():Dynamic;

	/**
	 * 
	 */
	@:native("UnfreezeRadioStation")
	static function unfreezeRadioStation(radioStation:String):Dynamic;

	/**
	 * 
	 */
	@:native("StopSynchronizedAudioEvent")
	static function stopSynchronizedAudioEvent(p0:Dynamic):Bool;

	/**
	 * ... When not in a vehicle
	 * 
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("TriggerSiren")
	static function TriggerSiren(vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * AUDIO::UNLOCK_RADIO_STATION_TRACK_LIST("RADIO_16_SILVERLAKE", "MIRRORPARK_LOCKED");
	 * ```
	 */
	@:native("UnlockRadioStationTrackList")
	static function unlockRadioStationTrackList(radioStation:String, trackListName:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 * 
	 * Removes all instances of a given context block.
	 */
	@:native("UnblockSpeechContextGroup")
	static function unblockSpeechContextGroup(groupName:String):Dynamic;

	/**
	 * Unloads tennis vocalization banks loaded with [`REQUEST_TENNIS_BANKS`](#\_0x4ADA3F19BE4A6047).
	 */
	@:native("UnrequestTennisBanks")
	static function unrequestTennisBanks():Dynamic;

	/**
	 * Updates a playing sounds absolute position.
	 */
	@:native("UpdateSoundCoord")
	static function updateSoundCoord(soundId:Int, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * **This native does absolutely nothing, just a nullsub**
	 * 
	 * ```
	 * On last-gen this just runs blr and this func is called by several other functions other then the native's table.  
	 * ```
	 */
	@:native("UnregisterScriptWithAudio")
	static function unregisterScriptWithAudio():Dynamic;

	/**
	 * Unlocks any available DJ radio tracks based on the tuneable status
	 * 
	 * ```
	 * NativeDB Introduced: v1493	
	 * ```
	 */
	@:native("UpdateUnlockableDjRadioTracks")
	static function updateUnlockableDjRadioTracks(allowTrackReprioritization:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("UseSirenAsHorn")
	static function useSirenAsHorn(vehicle:Dynamic, sirenAsHorn:Bool):Dynamic;

	/**
	 * Allows script to trigger a sweetener footstep sound
	 */
	@:native("UseFootstepScriptSweeteners")
	static function useFootstepScriptSweeteners(ped:Dynamic, useSweetner:Bool, soundSetHash:Int):Dynamic;

}
