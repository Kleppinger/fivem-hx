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
	@:native("ADD_LINE_TO_CONVERSATION")
	static function addLineToConversation(speakerConversationIndex:Int, context:String, subtitle:String, listenerNumber:Int, volumeType:Int, isRandom:Bool, interruptible:Bool, ducksRadio:Bool, ducksScore:Bool, audibility:Int, headset:Bool, dontInterruptForSpecialAbility:Bool, isPadSpeakerRoute:Bool):Dynamic;

	/**
	 * ```
	 * All found occurrences in b678d:
	 * pastebin.com/ceu67jz8
	 * ```
	 */
	@:native("ADD_ENTITY_TO_AUDIO_MIX_GROUP")
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
	@:native("ACTIVATE_AUDIO_SLOWMO_MODE")
	static function activateAudioSlowmoMode(mode:String):Dynamic;

	/**
	 * Blocks *all* speech playing on the given ped, including speech triggered by natives such as [PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE](#\_0x3523634255FC3318)
	 * 
	 * The flag itself is not synced, it must be called on each machine that wishes to suppress the speech.
	 * 
	 * The `SuppressOutgoingNetworkSpeech` flag can be set to `false` if you want speech triggered locally through `PLAY_PED_AMBIENT_SPEECH_*` related native calls to still be audible on remote machines, even though it was blocked on the local one.
	 */
	@:native("BLOCK_ALL_SPEECH_FROM_PED")
	static function blockAllSpeechFromPed(ped:Dynamic, shouldBlock:Bool, suppressOutgoingNetworkSpeech:Bool):Dynamic;

	/**
	 * Plays a siren blip from the vehicle when you double press the horn key.
	 * 
	 * This only works on vehicles with sirens.
	 */
	@:native("BLIP_SIREN")
	static function blipSiren(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("AUDIO_IS_SCRIPTED_MUSIC_PLAYING")
	static function audioIsScriptedMusicPlaying():Bool;

	/**
	 * 
	 */
	@:native("ADD_PED_TO_CONVERSATION")
	static function addPedToConversation(speakerConversationIndex:Int, ped:Dynamic, voiceName:String):Dynamic;

	/**
	 * 
	 */
	@:native("CANCEL_ALL_POLICE_REPORTS")
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
	@:native("BLOCK_SPEECH_CONTEXT_GROUP")
	static function blockSpeechContextGroup(groupName:String, contextBlockTarget:Int):Dynamic;

	/**
	 * 
	 */
	@:native("CAN_VEHICLE_RECEIVE_CB_RADIO")
	static function canVehicleReceiveCbRadio(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("BLOCK_DEATH_JINGLE")
	static function blockDeathJingle(blocked:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_ALL_BROKEN_GLASS")
	static function clearAllBrokenGlass():Dynamic;

	/**
	 * Resets the list of ambients zones enabled/disabled status to its value before it was modified by this script.
	 * 
	 * Default behaviour is that any state change only gets applied once the player leaves the zone.
	 */
	@:native("CLEAR_AMBIENT_ZONE_LIST_STATE")
	static function clearAmbientZoneListState(zoneListName:String, forceUpdate:Bool):Dynamic;

	/**
	 * ```
	 * All music event names found in the b617d scripts: pastebin.com/GnYt0R3P
	 * ```
	 */
	@:native("CANCEL_MUSIC_EVENT")
	static function cancelMusicEvent(eventName:String):Bool;

	/**
	 * Resets the ambient zone enabled/disabled status to its value before it was modified by this script
	 * 
	 * Default behaviour is that any state change only gets applied once the player leaves the zone.
	 */
	@:native("CLEAR_AMBIENT_ZONE_STATE")
	static function clearAmbientZoneState(zoneName:String, forceUpdate:Bool):Dynamic;

	/**
	 * Clears the previously queued custom track lost for the given radio station.
	 */
	@:native("CLEAR_CUSTOM_RADIO_TRACK_LIST")
	static function clearCustomRadioTrackList(radioStation:String):Dynamic;

	/**
	 * 
	 */
	@:native("DISABLE_PED_PAIN_AUDIO")
	static function disablePedPainAudio(ped:Dynamic, shouldDisable:Bool):Dynamic;

	/**
	 * Deactivates the named slowmo mode.
	 */
	@:native("DEACTIVATE_AUDIO_SLOWMO_MODE")
	static function deactivateAudioSlowmoMode(mode:String):Dynamic;

	/**
	 * Toggles fake distant siren sounds
	 */
	@:native("DISTANT_COP_CAR_SIRENS")
	static function distantCopCarSirens(shouldPlay:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DOES_PLAYER_VEH_HAVE_RADIO")
	static function doesPlayerVehHaveRadio():Bool;

	/**
	 * 
	 */
	@:native("CREATE_NEW_SCRIPTED_CONVERSATION")
	static function createNewScriptedConversation():Dynamic;

	/**
	 * Checks if the context exists for the ped, searching through the voices in its PedVoiceGroup.
	 * 
	 * The final argument can be set to true to allow searching in backup PVGs
	 */
	@:native("DOES_CONTEXT_EXIST_FOR_THIS_PED")
	static function doesContextExistForThisPed(ped:Dynamic, speechName:String, allowBackupPVGs:Bool):Bool;

	/**
	 * Enable or disable the plane stall warning sounds
	 */
	@:native("ENABLE_STALL_WARNING_SOUNDS")
	static function enableStallWarningSounds(vehicle:Dynamic, enable:Bool):Dynamic;

	/**
	 * Enable the stunt jump audio detection code
	 * 
	 * This native is meant to be called per-frame for as long as detection is wanted.
	 */
	@:native("ENABLE_STUNT_JUMP_AUDIO")
	static function enableStuntJumpAudio():Dynamic;

	/**
	 * 
	 */
	@:native("ENABLE_VEHICLE_FANBELT_DAMAGE")
	static function enableVehicleFanbeltDamage(vehicle:Dynamic, enableFanbeltDamage:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("FIND_RADIO_STATION_INDEX")
	static function findRadioStationIndex(stationNameHash:Int):Int;

	/**
	 * Forces the ambient peds into their panic walla state
	 */
	@:native("FORCE_PED_PANIC_WALLA")
	static function forcePedPanicWalla():Dynamic;

	/**
	 * Enable or disable exhaust pops on the given vehicle.
	 */
	@:native("ENABLE_VEHICLE_EXHAUST_POPS")
	static function enableVehicleExhaustPops(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Forces the chosen station to paly the given music track list. All other music track lists will be locked.
	 */
	@:native("FORCE_MUSIC_TRACK_LIST")
	static function forceMusicTrackList(radioStation:String, trackListName:String, timeOffsetMilliseconds:Int):Dynamic;

	/**
	 * This native sets the audio to the specific vehicle hash's audioNameHash.
	 */
	@:native("FORCE_USE_AUDIO_GAME_OBJECT")
	static function forceUseAudioGameObject(vehicle:Dynamic, gameObjectName:String):Dynamic;

	/**
	 * Allows script to freeze the microphone for a single frame, mantaining its current transform/settings.
	 * This native should be called every frame you want to keep the microphone frozen, when you stop calling it it will automatically unfreeze
	 */
	@:native("FREEZE_MICROPHONE")
	static function freezeMicrophone():Dynamic;

	/**
	 * 
	 */
	@:native("GET_CURRENT_TRACK_SOUND_NAME")
	static function getCurrentTrackSoundName(radioStationName:String):Int;

	/**
	 * This native is used alongside with [`SET_VEHICLE_TYRE_BURST`](#\_0xEC6A202EE4960385).
	 * 
	 * ```
	 * NativeDB Introduced: v3258
	 * ```
	 */
	@:native("_FORCE_VEHICLE_ENGINE_SYNTH")
	static function ForceVehicleEngineSynth(vehicle:Dynamic, force:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("FREEZE_RADIO_STATION")
	static function freezeRadioStation(radioStation:String):Dynamic;

	/**
	 * 
	 */
	@:native("GET_AUDIBLE_MUSIC_TRACK_TEXT_ID")
	static function getAudibleMusicTrackTextId():Int;

	/**
	 * 
	 */
	@:native("GET_CURRENT_SCRIPTED_CONVERSATION_LINE")
	static function getCurrentScriptedConversationLine():Int;

	/**
	 * 
	 */
	@:native("GET_IS_PRELOADED_CONVERSATION_READY")
	static function getIsPreloadedConversationReady():Bool;

	/**
	 * 
	 */
	@:native("GET_AMBIENT_VOICE_NAME_HASH")
	static function getAmbientVoiceNameHash(ped:Dynamic):Int;

	/**
	 * ```
	 * Return the playback time (in milliseconds) of the radio stations current track. 
	 * 
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_GET_CURRENT_RADIO_TRACK_PLAYBACK_TIME")
	static function GetCurrentRadioTrackPlaybackTime(radioStationName:String):Int;

	/**
	 * 
	 */
	@:native("GET_MUSIC_PLAYTIME")
	static function getMusicPlaytime():Int;

	/**
	 * 
	 */
	@:native("GET_NETWORK_ID_FROM_SOUND_ID")
	static function getNetworkIdFromSoundId(soundId:Int):Int;

	/**
	 * 
	 */
	@:native("GET_MUSIC_VOL_SLIDER")
	static function getMusicVolSlider():Int;

	/**
	 * 
	 */
	@:native("GET_NEXT_AUDIBLE_BEAT")
	static function getNextAudibleBeat(timeInSeconds:Dynamic, bpm:Dynamic, beatNum:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GET_NUM_UNLOCKED_RADIO_STATIONS")
	static function getNumUnlockedRadioStations():Int;

	/**
	 * 
	 */
	@:native("GET_PLAYER_RADIO_STATION_INDEX")
	static function getPlayerRadioStationIndex():Int;

	/**
	 * 
	 */
	@:native("GET_PLAYER_RADIO_STATION_GENRE")
	static function getPlayerRadioStationGenre():Int;

	/**
	 * 
	 */
	@:native("GET_PLAYER_RADIO_STATION_NAME")
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
	@:native("GET_SOUND_ID")
	static function getSoundId():Int;

	/**
	 * 
	 */
	@:native("GET_RADIO_STATION_NAME")
	static function getRadioStationName(stationIndex:Int):String;

	/**
	 * Counterpart: [`GET_NETWORK_ID_FROM_SOUND_ID`](#\_0x2DE3F0A134FFBC0D).
	 */
	@:native("GET_SOUND_ID_FROM_NETWORK_ID")
	static function getSoundIdFromNetworkId(netId:Int):Int;

	/**
	 * 
	 */
	@:native("GET_VARIATION_CHOSEN_FOR_SCRIPTED_LINE")
	static function getVariationChosenForScriptedLine(textLabel:String):Int;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_DEFAULT_HORN")
	static function getVehicleDefaultHorn(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_STREAM_PLAY_TIME")
	static function getStreamPlayTime():Int;

	/**
	 * 
	 */
	@:native("HAS_LOADED_MP_DATA_SET")
	static function hasLoadedMpDataSet():Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1365
	 * ```
	 */
	@:native("GET_VEHICLE_HORN_SOUND_INDEX")
	static function getVehicleHornSoundIndex(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_DEFAULT_HORN_IGNORE_MODS")
	static function getVehicleDefaultHornIgnoreMods(vehicle:Dynamic):Int;

	/**
	 * This native is marked as a deprecated native internally, use [HINT_SCRIPT_AUDIO_BANK](#\_0xFB380A29641EC31A) instead
	 */
	@:native("HINT_AMBIENT_AUDIO_BANK")
	static function hintAmbientAudioBank(bankName:String, bOverNetwork:Bool):Bool;

	/**
	 * Hints that this bank would be good to load if there are free slots.
	 * Does not guarentee loading of the bank, [REQUEST_SCRIPT_AUDIO_BANK](#\_0xFE02FFBED8CA9D99) MUST be used as normal before triggering sounds"
	 * 
	 * This native has a new argument on newer game builds:
	 * 
	 * *   **playerBits**: likely used to specifiy players to sync to as a bit mask (1 << (0-128))
	 */
	@:native("HINT_SCRIPT_AUDIO_BANK")
	static function hintScriptAudioBank(bankName:String, bOverNetwork:Bool):Bool;

	/**
	 * 
	 */
	@:native("HAS_SOUND_FINISHED")
	static function hasSoundFinished(soundId:Int):Bool;

	/**
	 * 
	 */
	@:native("HAS_LOADED_SP_DATA_SET")
	static function hasLoadedSpDataSet():Bool;

	/**
	 * 
	 */
	@:native("INIT_SYNCH_SCENE_AUDIO_WITH_POSITION")
	static function initSynchSceneAudioWithPosition(audioName:String, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("INIT_SYNCH_SCENE_AUDIO_WITH_ENTITY")
	static function initSynchSceneAudioWithEntity(audioName:String, entity:Dynamic):Dynamic;

	/**
	 * Handles conversation interrupts, using the code-side system for improved timing and to minimize unfriendly logic interactions.
	 */
	@:native("INTERRUPT_CONVERSATION")
	static function interruptConversation(interrupterPed:Dynamic, context:String, voiceName:String):Dynamic;

	/**
	 * This is marked as a deprecated function internally, please use [HINT_SCRIPT_AUDIO_BANK](#\_0xFB380A29641EC31A) instead.
	 */
	@:native("HINT_MISSION_AUDIO_BANK")
	static function hintMissionAudioBank(bankName:String, bOverNetwork:Bool, playerBits:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_ALARM_PLAYING")
	static function isAlarmPlaying(alarmName:String):Bool;

	/**
	 * 
	 */
	@:native("IS_AMBIENT_SPEECH_DISABLED")
	static function isAmbientSpeechDisabled(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_AMBIENT_SPEECH_PLAYING")
	static function isAmbientSpeechPlaying(ped:Dynamic):Bool;

	/**
	 * Handles conversation interrupts and pauses, using the code-side system for improved timing and to minimize unfriendly logic interactions.
	 */
	@:native("INTERRUPT_CONVERSATION_AND_PAUSE")
	static function interruptConversationAndPause(interrupterPed:Dynamic, context:String, voiceName:String):Dynamic;

	/**
	 * 
	 */
	@:native("IS_ANIMAL_VOCALIZATION_PLAYING")
	static function isAnimalVocalizationPlaying(pedHandle:Dynamic):Bool;

	/**
	 * Determines if any ped-independent, positionally-based scripted speech is currently active. This typically includes speech events triggered using [`PLAY_AMBIENT_SPEECH_FROM_POSITION_NATIVE`](#\_0xED640017ED337E45).
	 * 
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("IS_ANY_POSITIONAL_SPEECH_PLAYING")
	static function isAnyPositionalSpeechPlaying():Bool;

	/**
	 * 
	 */
	@:native("IS_AUDIO_SCENE_ACTIVE")
	static function isAudioSceneActive(scene:String):Bool;

	/**
	 * 
	 */
	@:native("IS_AMBIENT_ZONE_ENABLED")
	static function isAmbientZoneEnabled(ambientZone:String):Bool;

	/**
	 * 
	 */
	@:native("IS_ANY_SPEECH_PLAYING")
	static function isAnySpeechPlaying(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_MISSION_NEWS_STORY_UNLOCKED")
	static function isMissionNewsStoryUnlocked(newsStory:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_MISSION_COMPLETE_PLAYING")
	static function isMissionCompletePlaying():Bool;

	/**
	 * ```
	 * Hardcoded to return 1  
	 * ```
	 */
	@:native("IS_GAME_IN_CONTROL_OF_MUSIC")
	static function isGameInControlOfMusic():Bool;

	/**
	 * 
	 */
	@:native("IS_HORN_ACTIVE")
	static function isHornActive(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_MOBILE_PHONE_CALL_ONGOING")
	static function isMobilePhoneCallOngoing():Bool;

	/**
	 * 
	 */
	@:native("IS_MOBILE_INTERFERENCE_ACTIVE")
	static function isMobileInterferenceActive():Bool;

	/**
	 * 
	 */
	@:native("IS_PED_IN_CURRENT_CONVERSATION")
	static function isPedInCurrentConversation(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_MISSION_COMPLETE_READY_FOR_UI")
	static function isMissionCompleteReadyForUi():Bool;

	/**
	 * 
	 */
	@:native("IS_PED_RINGTONE_PLAYING")
	static function isPedRingtonePlaying(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_MOBILE_PHONE_RADIO_ACTIVE")
	static function isMobilePhoneRadioActive():Bool;

	/**
	 * 
	 */
	@:native("IS_MUSIC_ONESHOT_PLAYING")
	static function isMusicOneshotPlaying():Bool;

	/**
	 * 
	 */
	@:native("IS_RADIO_FADED_OUT")
	static function isRadioFadedOut():Bool;

	/**
	 * 
	 */
	@:native("IS_RADIO_RETUNING")
	static function isRadioRetuning():Bool;

	/**
	 * 
	 */
	@:native("IS_RADIO_STATION_FAVOURITED")
	static function isRadioStationFavourited(radioStation:String):Bool;

	/**
	 * 
	 */
	@:native("IS_PLAYER_VEH_RADIO_ENABLE")
	static function isPlayerVehRadioEnable():Bool;

	/**
	 * 
	 */
	@:native("IS_SCRIPTED_CONVERSATION_ONGOING")
	static function isScriptedConversationOngoing():Bool;

	/**
	 * 
	 */
	@:native("IS_SCRIPTED_CONVERSATION_LOADED")
	static function isScriptedConversationLoaded():Bool;

	/**
	 * 
	 */
	@:native("IS_SCRIPTED_SPEECH_PLAYING")
	static function isScriptedSpeechPlaying(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_VEHICLE_AUDIBLY_DAMAGED")
	static function isVehicleAudiblyDamaged(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_STREAM_PLAYING")
	static function isStreamPlaying():Bool;

	/**
	 * Load in named stream. Optionally can specify a sound set which contains the sound specified by name.
	 * 
	 * Names for the streams can be found [here](https://gist.github.com/4mmonium/2bd2c9c54d6ca5cbdb7b156a82a3a85a), the list will be updated as more are found.
	 */
	@:native("LOAD_STREAM")
	static function loadStream(streamName:String, soundSet:String):Bool;

	/**
	 * 
	 */
	@:native("IS_VEHICLE_RADIO_ON")
	static function isVehicleRadioOn(vehicle:Dynamic):Bool;

	/**
	 * Links a static emitter to the given entity
	 */
	@:native("LINK_STATIC_EMITTER_TO_ENTITY")
	static function linkStaticEmitterToEntity(emitterName:String, entity:Dynamic):Dynamic;

	/**
	 * Load in named stream. Optionally can specify a sound set which contains the sound specified by name.
	 */
	@:native("LOAD_STREAM_WITH_START_OFFSET")
	static function loadStreamWithStartOffset(streamName:String, startOffset:Int, soundSet:String):Bool;

	/**
	 * 
	 */
	@:native("LOCK_RADIO_STATION_TRACK_LIST")
	static function lockRadioStationTrackList(radioStation:String, trackListName:String):Dynamic;

	/**
	 * This disables the radio station completely - it won't be selectable on the radio wheel or ever be heard coming from a vehicle/ambient emitter
	 * 
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("LOCK_RADIO_STATION")
	static function lockRadioStation(radioStationName:String, toggle:Bool):Dynamic;

	/**
	 * Sets audio flag "OverrideMicrophoneSettings"
	 * 
	 * Allows the script to ovverride the current microphone settings
	 */
	@:native("OVERRIDE_MICROPHONE_SETTINGS")
	static function overrideMicrophoneSettings(hash:Int, toggle:Bool):Dynamic;

	/**
	 * Sets the footstep tuning modes
	 */
	@:native("OVERRIDE_PLAYER_GROUND_MATERIAL")
	static function overridePlayerGroundMaterial(overriddenMaterialHash:Int, scriptOverrides:Bool):Dynamic;

	/**
	 * This native enables the audio flag "TrevorRageIsOverridden" and sets the voice effect to `voiceEffect`
	 * 
	 * To clear the override use [RESET_TREVOR_RAGE](#\_0xE78503B10C4314E0)
	 */
	@:native("OVERRIDE_TREVOR_RAGE")
	static function overrideTrevorRage(voiceEffect:String):Dynamic;

	/**
	 * This native allows a scripter to override the current underwater stream.
	 * It needs to be called before going into the water
	 * 
	 * It needs to also be called with OVERRIDE_UNDERWATER_STREAM("", false) in order to stop overriding.
	 */
	@:native("OVERRIDE_UNDERWATER_STREAM")
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
	@:native("OVERRIDE_VEH_HORN")
	static function overrideVehHorn(vehicle:Dynamic, override_:Bool, hornHash:Int):Dynamic;

	/**
	 * To resume the conversation use [RESTART_SCRIPTED_CONVERSATION](#\_0x9AEB285D1818C9AC)
	 */
	@:native("PAUSE_SCRIPTED_CONVERSATION")
	static function pauseScriptedConversation(finishCurrentLine:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("PLAY_DEFERRED_SOUND_FRONTEND")
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
	@:native("PLAY_ANIMAL_VOCALIZATION")
	static function playAnimalVocalization(pedHandle:Dynamic, animalType:Int, speechName:String):Dynamic;

	/**
	 * 
	 */
	@:native("PLAY_AMBIENT_SPEECH_FROM_POSITION_NATIVE")
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
	@:native("PLAY_MISSION_COMPLETE_AUDIO")
	static function playMissionCompleteAudio(audioName:String):Dynamic;

	/**
	 * 
	 */
	@:native("PLAY_END_CREDITS_MUSIC")
	static function playEndCreditsMusic(bActive:Bool):Dynamic;

	/**
	 * ```
	 * This is the same as PLAY_PED_AMBIENT_SPEECH_NATIVE and PLAY_PED_AMBIENT_SPEECH_AND_CLONE_NATIVE but it will allow you to play a speech file from a specific voice file. It works on players and all peds, even animals.
	 * EX (C#):
	 * GTA.Native.Function.Call(Hash._0x3523634255FC3318, Game.Player.Character, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0);
	 * The first param is the ped you want to play it on, the second is the speech name, the third is the voice name, the fourth is the speech param, and the last param is usually always 0.
	 * ```
	 */
	@:native("PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE")
	static function playPedAmbientSpeechWithVoiceNative(ped:Dynamic, speechName:String, voiceName:String, speechParam:String, p4:Bool):Dynamic;

	/**
	 * See [`PLAY_PED_AMBIENT_SPEECH_NATIVE`](#\_0x8E04FEDD28D42462) for parameter specifications.
	 * 
	 * ```
	 * NativeDB Added Parameter 4: Any p3
	 * ```
	 */
	@:native("PLAY_PED_AMBIENT_SPEECH_AND_CLONE_NATIVE")
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
	@:native("PLAY_PED_AMBIENT_SPEECH_NATIVE")
	static function playPedAmbientSpeechNative(ped:Dynamic, speechName:String, speechParam:String):Dynamic;

	/**
	 * ```
	 * Plays the given police radio message.
	 * All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/GBnsQ5hr
	 * ```
	 */
	@:native("PLAY_POLICE_REPORT")
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
	@:native("PLAY_PAIN")
	static function playPain(ped:Dynamic, damageReason:Int, rawDamage:Float):Dynamic;

	/**
	 * ```
	 * All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/f2A7vTj0   
	 * No changes made in b678d.  
	 * gtaforums.com/topic/795622-audio-for-mods  
	 * ```
	 */
	@:native("PLAY_SOUND_FROM_ENTITY")
	static function playSoundFromEntity(soundId:Int, audioName:String, entity:Dynamic, audioRef:String, isNetwork:Bool, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/RFb4GTny  
	 * AUDIO::PLAY_PED_RINGTONE("Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);  
	 * AUDIO::PLAY_PED_RINGTONE("Dial_and_Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);  
	 * ```
	 */
	@:native("PLAY_PED_RINGTONE")
	static function playPedRingtone(ringtoneName:String, ped:Dynamic, p2:Bool):Dynamic;

	/**
	 * ```
	 * All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/A8Ny8AHZ  
	 * ```
	 */
	@:native("PLAY_SOUND")
	static function playSound(soundId:Int, audioName:String, audioRef:String, p3:Bool, p4:Dynamic, p5:Bool):Dynamic;

	/**
	 * ```
	 * All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/eeFc5DiW  
	 * gtaforums.com/topic/795622-audio-for-mods  
	 * ```
	 */
	@:native("PLAY_SOUND_FROM_COORD")
	static function playSoundFromCoord(soundId:Int, audioName:String, x:Float, y:Float, z:Float, audioRef:String, isNetwork:Bool, range:Int, p8:Bool):Dynamic;

	/**
	 * ```
	 * List: https://pastebin.com/DCeRiaLJ
	 * All occurrences as of Cayo Perico Heist DLC (b2189), sorted alphabetically and identical lines removed: https://git.io/JtLxM
	 * ```
	 */
	@:native("PLAY_SOUND_FRONTEND")
	static function playSoundFrontend(soundId:Int, audioName:String, audioRef:String, p3:Bool):Dynamic;

	/**
	 * Plays a preloaded stream back from the specified Vector3.
	 */
	@:native("PLAY_STREAM_FROM_POSITION")
	static function playStreamFromPosition(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * Plays a preloaded stream back from the specified object.
	 */
	@:native("PLAY_STREAM_FROM_OBJECT")
	static function playStreamFromObject(object:Dynamic):Dynamic;

	/**
	 * Plays a preloaded stream back from the specified ped vehicle
	 */
	@:native("PLAY_STREAM_FROM_VEHICLE")
	static function playStreamFromVehicle(vehicle:Dynamic):Dynamic;

	/**
	 * Plays a preloaded stream back from the specified ped.
	 */
	@:native("PLAY_STREAM_FROM_PED")
	static function playStreamFromPed(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PLAY_SYNCHRONIZED_AUDIO_EVENT")
	static function playSynchronizedAudioEvent(sceneId:Int):Bool;

	/**
	 * 
	 */
	@:native("PLAY_VEHICLE_DOOR_OPEN_SOUND")
	static function playVehicleDoorOpenSound(vehicle:Dynamic, doorIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PLAY_VEHICLE_DOOR_CLOSE_SOUND")
	static function playVehicleDoorCloseSound(vehicle:Dynamic, doorIndex:Int):Dynamic;

	/**
	 * Prepares any banks required to play the given alarm
	 */
	@:native("PREPARE_ALARM")
	static function prepareAlarm(alarmName:String):Bool;

	/**
	 * 
	 */
	@:native("PLAY_STREAM_FRONTEND")
	static function playStreamFrontend():Dynamic;

	/**
	 * Similar to [START_SCRIPT_CONVERSATION](#\_0x6B17C62C9635D2DC), except that is starts the conversation off paused.
	 * 
	 * A scripter can then kick off the conversation by calling [START_PRELOADED_CONVERSATION](#\_0x23641AFE870AF385).
	 * 
	 * If they want to check that the conversation is done preloading, they can use [GET_IS_PRELOADED_CONVERSATION_READY](#\_0xE73364DB90778FFA)
	 */
	@:native("PRELOAD_SCRIPT_CONVERSATION")
	static function preloadScriptConversation(displaySubtitles:Bool, addToBriefScreen:Bool, cloneConversation:Bool, interruptible:Bool):Dynamic;

	/**
	 * Request that we preload the required audio bank for a given vehicle model.
	 * 
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("PRELOAD_VEHICLE_AUDIO_BANK")
	static function preloadVehicleAudioBank(model:Int):Dynamic;

	/**
	 * 
	 */
	@:native("PRELOAD_SCRIPT_PHONE_CONVERSATION")
	static function preloadScriptPhoneConversation(displaySubtitles:Bool, addToBriefScreen:Bool):Dynamic;

	/**
	 * Creates a broken glass area
	 */
	@:native("RECORD_BROKEN_GLASS")
	static function recordBrokenGlass(x:Float, y:Float, z:Float, radius:Float):Dynamic;

	/**
	 * 
	 */
	@:native("PREPARE_SYNCHRONIZED_AUDIO_EVENT_FOR_SCENE")
	static function prepareSynchronizedAudioEventForScene(sceneId:Int, audioEvent:String):Bool;

	/**
	 * This native has been marked as deprecated internally, please use [RELEASE_SCRIPT_AUDIO_BANK](#\_0x7A2D8AD0A9EB9C3F) instead.
	 */
	@:native("RELEASE_AMBIENT_AUDIO_BANK")
	static function releaseAmbientAudioBank():Dynamic;

	/**
	 * Prepares the specified music event. Preparing it in advance will preload any required data so that it's ready to play immediately.
	 */
	@:native("PREPARE_MUSIC_EVENT")
	static function prepareMusicEvent(eventName:String):Bool;

	/**
	 * 
	 */
	@:native("PREPARE_SYNCHRONIZED_AUDIO_EVENT")
	static function prepareSynchronizedAudioEvent(audioEvent:String, startOffsetMs:Int):Bool;

	/**
	 * Refreshes the closest shoreline using the nearest road position.
	 */
	@:native("REFRESH_CLOSEST_OCEAN_SHORELINE")
	static function refreshClosestOceanShoreline():Dynamic;

	/**
	 * Unloads the specified audioBank
	 */
	@:native("RELEASE_NAMED_SCRIPT_AUDIO_BANK")
	static function releaseNamedScriptAudioBank(audioBank:String):Dynamic;

	/**
	 * This native has been marked as deprecated internally, please use [RELEASE_SCRIPT_AUDIO_BANK](#\_0x7A2D8AD0A9EB9C3F) instead.
	 */
	@:native("RELEASE_MISSION_AUDIO_BANK")
	static function releaseMissionAudioBank():Dynamic;

	/**
	 * **This native does absolutely nothing, just a nullsub**
	 */
	@:native("REGISTER_SCRIPT_WITH_AUDIO")
	static function registerScriptWithAudio(inChargeOfAudio:Bool):Dynamic;

	/**
	 * This should be called once a sound has finished being manipulated by the script so that its SoundId can be released and re-used.
	 */
	@:native("RELEASE_SOUND_ID")
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
	@:native("REMOVE_PORTAL_SETTINGS_OVERRIDE")
	static function removePortalSettingsOverride(portalSettingsName:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("RELEASE_WEAPON_AUDIO")
	static function releaseWeaponAudio():Dynamic;

	/**
	 * Unloads all audio banks requested by this script.
	 */
	@:native("RELEASE_SCRIPT_AUDIO_BANK")
	static function releaseScriptAudioBank():Dynamic;

	/**
	 * This native is marked as deprecated internally, please use [REQUEST_SCRIPT_AUDIO_BANK](#\_0x2F844A8B08D76685)
	 * 
	 * This native has a new argument on newer game builds:
	 * 
	 * *   **playerBits**:
	 */
	@:native("REQUEST_AMBIENT_AUDIO_BANK")
	static function requestAmbientAudioBank(bankName:String, bOverNetwork:Bool):Bool;

	/**
	 * Removes an entity from its current mix group.
	 */
	@:native("REMOVE_ENTITY_FROM_AUDIO_MIX_GROUP")
	static function removeEntityFromAudioMixGroup(entity:Dynamic, fadeOut:Float):Dynamic;

	/**
	 * This native is marked as deprecated internally, please use [REQUEST_SCRIPT_AUDIO_BANK](#\_0x2F844A8B08D76685)
	 * 
	 * This native has a new argument on newer game builds:
	 * 
	 * *   **playerBits**:
	 */
	@:native("REQUEST_MISSION_AUDIO_BANK")
	static function requestMissionAudioBank(bankName:String, bOverNetwork:Bool):Bool;

	/**
	 * 
	 */
	@:native("RESET_PED_AUDIO_FLAGS")
	static function resetPedAudioFlags(ped:Dynamic):Dynamic;

	/**
	 * This native has a new argument on newer game builds:
	 * 
	 * *   **playerBits**:
	 */
	@:native("REQUEST_SCRIPT_AUDIO_BANK")
	static function requestScriptAudioBank(bankName:String, bOverNetwork:Bool):Bool;

	/**
	 * Resets the override for [SET_VEHICLE_STARTUP_REV_SOUND](#\_0xF1F8157B8C3F171C)
	 */
	@:native("RESET_VEHICLE_STARTUP_REV_SOUND")
	static function resetVehicleStartupRevSound(vehicle:Dynamic):Dynamic;

	/**
	 * Loads the tennis vocalization banks into a couple animal slots.
	 */
	@:native("REQUEST_TENNIS_BANKS")
	static function requestTennisBanks(opponentPed:Dynamic):Dynamic;

	/**
	 * Clears the override set by [OVERRIDE_TREVOR_RAGE](#\_0x13AD665062541A7E)
	 */
	@:native("RESET_TREVOR_RAGE")
	static function resetTrevorRage():Dynamic;

	/**
	 * Overrides wind elevation sounds
	 */
	@:native("SCRIPT_OVERRIDES_WIND_ELEVATION")
	static function scriptOverridesWindElevation(override_:Bool, windElevationHashName:Int):Dynamic;

	/**
	 * Restarts a conversation that was previously paused with [PAUSE_SCRIPTED_CONVERSATION](#\_0x8530AD776CD72B12)
	 */
	@:native("RESTART_SCRIPTED_CONVERSATION")
	static function restartScriptedConversation():Dynamic;

	/**
	 * Makes pedestrians sound their horn longer, faster and more agressive when they use their horn.
	 */
	@:native("SET_AGGRESSIVE_HORNS")
	static function setAggressiveHorns(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_AMBIENT_ZONE_STATE_PERSISTENT")
	static function setAmbientZoneStatePersistent(zoneName:String, enabled:Bool, forceUpdate:Bool):Dynamic;

	/**
	 * Sets the specified ped to use a specific voice different to the one associated with their model.
	 */
	@:native("SET_AMBIENT_VOICE_NAME")
	static function setAmbientVoiceName(ped:Dynamic, voiceName:String):Dynamic;

	/**
	 * Sets the specified ped to use a specific voice different to the one associated with their model.
	 */
	@:native("SET_AMBIENT_VOICE_NAME_HASH")
	static function setAmbientVoiceNameHash(ped:Dynamic, hash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_AMBIENT_ZONE_LIST_STATE_PERSISTENT")
	static function setAmbientZoneListStatePersistent(ambientZone:String, enabled:Bool, forceUpdate:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_AMBIENT_ZONE_LIST_STATE")
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
	@:native("SET_AUDIO_SPECIAL_EFFECT_MODE")
	static function setAudioSpecialEffectMode(mode:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_AMBIENT_ZONE_STATE")
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
	@:native("SET_AUDIO_VEHICLE_PRIORITY")
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
	@:native("SET_ANIMAL_MOOD")
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
	@:native("SET_AUDIO_FLAG")
	static function setAudioFlag(flagName:String, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_AUDIO_SCENE_VARIABLE")
	static function setAudioSceneVariable(scene:String, variableName:String, value:Float):Dynamic;

	/**
	 * Set a delay in milliseconds for the audio to be cleaned up when the script finishes.
	 */
	@:native("SET_AUDIO_SCRIPT_CLEANUP_TIME")
	static function setAudioScriptCleanupTime(timeMs:Int):Dynamic;

	/**
	 * Retunes a named static emitter to the specified station
	 */
	@:native("SET_EMITTER_RADIO_STATION")
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
	@:native("SET_CUTSCENE_AUDIO_OVERRIDE")
	static function setCutsceneAudioOverride(name:String):Dynamic;

	/**
	 * Allows the radio to be played in the frontend.
	 */
	@:native("SET_FRONTEND_RADIO_ACTIVE")
	static function setFrontendRadioActive(active:Bool):Dynamic;

	/**
	 * Sets whether or not scripted conversation flow should be controlled by anim triggers
	 */
	@:native("SET_CONVERSATION_AUDIO_CONTROLLED_BY_ANIM")
	static function setConversationAudioControlledByAnim(enable:Bool):Dynamic;

	/**
	 * Used to determine whether conversation should use robot speech or not
	 */
	@:native("SET_CONVERSATION_AUDIO_PLACEHOLDER")
	static function setConversationAudioPlaceholder(isPlaceHolder:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_INITIAL_PLAYER_STATION")
	static function setInitialPlayerStation(radioStation:String):Dynamic;

	/**
	 * Queues up a custom track list on the specified radio station. The content in the track list will be played as soon as possible.
	 * The station does not have to be frozen.
	 */
	@:native("SET_CUSTOM_RADIO_TRACK_LIST")
	static function setCustomRadioTrackList(radioStation:String, trackListName:String, forceNow:Bool):Dynamic;

	/**
	 * Sets the global radio signal level, lower value will cause radio static.
	 * Used only a handful of times in scripts.
	 */
	@:native("SET_GLOBAL_RADIO_SIGNAL_LEVEL")
	static function setGlobalRadioSignalLevel(signalLevel:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_FOR_NULL_CONV_PED")
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
	@:native("_SET_PED_AUDIO_FOOTSTEP_LOUD")
	static function SetPedAudioFootstepLoud(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_GPS_ACTIVE")
	static function setGpsActive(active:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_MOBILE_PHONE_RADIO_STATE")
	static function setMobilePhoneRadioState(state:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_HORN_ENABLED")
	static function setHornEnabled(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * If this is the correct name, what microphone? I know your TV isn't going to reach out and adjust your headset so..  
	 * ```
	 */
	@:native("SET_MICROPHONE_POSITION")
	static function setMicrophonePosition(p0:Bool, x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, x3:Float, y3:Float, z3:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("SET_PED_CLOTH_EVENTS_ENABLED")
	static function setPedClothEventsEnabled(ped:Dynamic, enabled:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_MOBILE_RADIO_ENABLED_DURING_GAMEPLAY")
	static function setMobileRadioEnabledDuringGameplay(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PED_RACE_AND_VOICE_GROUP")
	static function setPedRaceAndVoiceGroup(ped:Dynamic, pedRace:Int, pvgHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_PED_AUDIO_GENDER")
	static function SetPedAudioGender(ped:Dynamic, p1:Bool):Dynamic;

	/**
	 * Sets the ped so they sound drunk
	 */
	@:native("SET_PED_IS_DRUNK")
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
	@:native("_SET_PED_VOICE_GROUP")
	static function SetPedVoiceGroup(ped:Dynamic, voiceGroupHash:Int):Dynamic;

	/**
	 * Overrides the calculated ped density that is used to modulate the ambient ped walla sounds (in exteriors only)
	 * 
	 * If you want to use this for interiors, use [SET_PED_INTERIOR_WALLA_DENSITY](#\_0x8BF907833BE275DE)
	 */
	@:native("SET_PED_WALLA_DENSITY")
	static function setPedWallaDensity(density:Float, applyValue:Float):Dynamic;

	/**
	 * Calls the same internal function [`_SET_PED_VOICE_GROUP`](#\_0x7CDC8C3B89F661B3) calls, but passes `voiceGroupHash` (defined as a parameter in the referenced native) as `0`.
	 */
	@:native("SET_PED_VOICE_FULL")
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
	@:native("_SET_PED_VOICE_GROUP_RACE")
	static function SetPedVoiceGroupRace(ped:Dynamic, voiceGroupHash:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PORTAL_SETTINGS_OVERRIDE")
	static function setPortalSettingsOverride(oldPortalSettingsName:String, newPortalSettingsName:String):Dynamic;

	/**
	 * 
	 */
	@:native("SET_POSITION_FOR_NULL_CONV_PED")
	static function setPositionForNullConvPed(speakerConversationIndex:Int, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_POSITIONED_PLAYER_VEHICLE_RADIO_EMITTER_ENABLED")
	static function setPositionedPlayerVehicleRadioEmitterEnabled(enabled:Bool):Dynamic;

	/**
	 * Sets a player ped to use his ANGRY speech contexts
	 */
	@:native("SET_PLAYER_ANGRY")
	static function setPlayerAngry(ped:Dynamic, isAngry:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_RADIO_AUTO_UNFREEZE")
	static function setRadioAutoUnfreeze(toggle:Bool):Dynamic;

	/**
	 * Enable player vehicle specific alarm disarm/arm sound triggering
	 */
	@:native("SET_PLAYER_VEHICLE_ALARM_AUDIO_ACTIVE")
	static function setPlayerVehicleAlarmAudioActive(vehicle:Dynamic, active:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_RADIO_FRONTEND_FADE_TIME")
	static function setRadioFrontendFadeTime(fadeTime:Float):Dynamic;

	/**
	 * Find the radio station list [here](https://gist.github.com/4mmonium/b47d6512a2d992cbf4eea15d9038b581)
	 */
	@:native("SET_RADIO_TO_STATION_NAME")
	static function setRadioToStationName(stationName:String):Dynamic;

	/**
	 * ```
	 * 6 calls in the b617d scripts, removed identical lines:
	 * AUDIO::SET_RADIO_STATION_MUSIC_ONLY("RADIO_01_CLASS_ROCK", 1);
	 * AUDIO::SET_RADIO_STATION_MUSIC_ONLY(AUDIO::GET_RADIO_STATION_NAME(10), 0);
	 * AUDIO::SET_RADIO_STATION_MUSIC_ONLY(AUDIO::GET_RADIO_STATION_NAME(10), 1);
	 * ```
	 */
	@:native("SET_RADIO_STATION_MUSIC_ONLY")
	static function setRadioStationMusicOnly(radioStation:String, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sets radio station by index.  
	 * ```
	 */
	@:native("SET_RADIO_TO_STATION_INDEX")
	static function setRadioToStationIndex(radioStation:Int):Dynamic;

	/**
	 * Doesn't have an effect in Story Mode.
	 * 
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_SET_RADIO_STATION_IS_VISIBLE")
	static function SetRadioStationIsVisible(radioStation:String, toggle:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_SET_SIREN_KEEP_ON")
	static function SetSirenKeepOn(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_SCRIPT_UPDATE_DOOR_AUDIO")
	static function setScriptUpdateDoorAudio(doorHash:Int, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Only found this one in the decompiled scripts:  
	 * AUDIO::SET_RADIO_TRACK("RADIO_03_HIPHOP_NEW", "ARM1_RADIO_STARTS");  
	 * ```
	 */
	@:native("SET_RADIO_TRACK")
	static function setRadioTrack(radioStation:String, radioTrack:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_SET_RADIO_TRACK_MIX")
	static function SetRadioTrackMix(radioStationName:String, mixName:String, p2:Int):Dynamic;

	/**
	 * ```
	 * Example:
	 * AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_01_STAGE", false);    AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM", false);    AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM", false);
	 * This turns off surrounding sounds not connected directly to peds.
	 * ```
	 */
	@:native("SET_STATIC_EMITTER_ENABLED")
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
	@:native("SET_VARIABLE_ON_STREAM")
	static function setVariableOnStream(p0:String, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_SIREN_WITH_NO_DRIVER")
	static function setSirenWithNoDriver(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_USER_RADIO_CONTROL_ENABLED")
	static function setUserRadioControlEnabled(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VARIABLE_ON_SOUND")
	static function setVariableOnSound(soundId:Int, variableName:String, value:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_SET_VEH_HAS_RADIO_OVERRIDE")
	static function SetVehHasRadioOverride(vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * SET_VARIABLE_ON_*
	 * ```
	 */
	@:native("_SET_VARIABLE_ON_CUTSCENE_AUDIO")
	static function SetVariableOnCutsceneAudio(variableName:String, value:Float):Dynamic;

	/**
	 * Find the radio station list [here](https://gist.github.com/4mmonium/b47d6512a2d992cbf4eea15d9038b581)
	 */
	@:native("SET_VEH_RADIO_STATION")
	static function setVehRadioStation(vehicle:Dynamic, radioStation:String):Dynamic;

	/**
	 * ```
	 * AUDIO::SET_VARIABLE_ON_UNDER_WATER_STREAM("inTunnel", 1.0);
	 * AUDIO::SET_VARIABLE_ON_UNDER_WATER_STREAM("inTunnel", 0.0);
	 * ```
	 */
	@:native("SET_VARIABLE_ON_UNDER_WATER_STREAM")
	static function setVariableOnUnderWaterStream(variableName:String, value:Float):Dynamic;

	/**
	 * Vehicle will make a 'rattling' noise when decelerating
	 */
	@:native("SET_VEHICLE_AUDIO_BODY_DAMAGE_FACTOR")
	static function setVehicleAudioBodyDamageFactor(vehicle:Dynamic, intensity:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_AUDIO_ENGINE_DAMAGE_FACTOR")
	static function setVehicleAudioEngineDamageFactor(vehicle:Dynamic, damageFactor:Float):Dynamic;

	/**
	 * ```
	 * SET_VEHICLE_BOOST_ACTIVE(vehicle, 1, 0);  
	 * SET_VEHICLE_BOOST_ACTIVE(vehicle, 0, 0);   
	 * Will give a boost-soundeffect.  
	 * ```
	 */
	@:native("SET_VEHICLE_BOOST_ACTIVE")
	static function setVehicleBoostActive(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1365
	 * ```
	 */
	@:native("_SET_VEHICLE_HORN_VARIATION")
	static function SetVehicleHornVariation(vehicle:Dynamic, value:Int):Dynamic;

	/**
	 * ```
	 * can't seem to enable radio on cop cars etc  
	 * ```
	 */
	@:native("SET_VEHICLE_RADIO_ENABLED")
	static function setVehicleRadioEnabled(vehicle:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Overrides the vehicle's startup engine rev sound.
	 * 
	 * You can reset this with [RESET_VEHICLE_STARTUP_REV_SOUND](#\_0xD2DCCD8E16E20997)
	 */
	@:native("SET_VEHICLE_STARTUP_REV_SOUND")
	static function setVehicleStartupRevSound(vehicle:Dynamic, soundName:String, setName:String):Dynamic;

	/**
	 * 
	 */
	@:native("SET_VEHICLE_RADIO_LOUD")
	static function setVehicleRadioLoud(vehicle:Dynamic, loud:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SKIP_TO_NEXT_SCRIPTED_CONVERSATION_LINE")
	static function skipToNextScriptedConversationLine():Dynamic;

	/**
	 * You should call [PREPARE_ALARM](#\_0x9D74AE343DB65533) and wait for its value to be true before using this
	 */
	@:native("START_ALARM")
	static function startAlarm(alarmName:String, skipStartup:Bool):Dynamic;

	/**
	 * For use with [PRELOAD_SCRIPT_CONVERSATION](#\_0x3B3CAD6166916D87) and [GET_IS_PRELOADED_CONVERSATION_READY](#\_0xE73364DB90778FFA)
	 */
	@:native("START_PRELOADED_CONVERSATION")
	static function startPreloadedConversation():Dynamic;

	/**
	 * 
	 */
	@:native("SKIP_RADIO_FORWARD")
	static function skipRadioForward():Dynamic;

	/**
	 * ```
	 * SET_*
	 * ```
	 */
	@:native("_SOUND_VEHICLE_HORN_THIS_FRAME")
	static function SoundVehicleHornThisFrame(vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * Used to prepare a scene where the surrounding sound is muted or a bit changed. This does not play any sound.  
	 * List of all usable scene names found in b617d. Sorted alphabetically and identical names removed: pastebin.com/MtM9N9CC  
	 * ```
	 */
	@:native("START_AUDIO_SCENE")
	static function startAudioScene(scene:String):Bool;

	/**
	 * 
	 */
	@:native("STOP_ALARM")
	static function stopAlarm(alarmName:String, instantStop:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("STOP_ALL_ALARMS")
	static function stopAllAlarms(instantStop:Bool):Dynamic;

	/**
	 * Stops currently playing ambient speech.
	 */
	@:native("STOP_CURRENT_PLAYING_AMBIENT_SPEECH")
	static function stopCurrentPlayingAmbientSpeech(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("START_SCRIPT_PHONE_CONVERSATION")
	static function startScriptPhoneConversation(displaySubtitles:Bool, addToBriefScreen:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("START_SCRIPT_CONVERSATION")
	static function startScriptConversation(displaySubtitles:Bool, addToBriefScreen:Bool, cloneConversation:Bool, interruptible:Bool):Dynamic;

	/**
	 * Stops all mixed scenes which were previously started by this script
	 */
	@:native("STOP_AUDIO_SCENES")
	static function stopAudioScenes():Dynamic;

	/**
	 * Stops currently playing speech (Pain, ambient, scripted, breathing).
	 */
	@:native("STOP_CURRENT_PLAYING_SPEECH")
	static function stopCurrentPlayingSpeech(ped:Dynamic):Dynamic;

	/**
	 * Stops the named mixing scene (which was previously started by this script)
	 */
	@:native("STOP_AUDIO_SCENE")
	static function stopAudioScene(sceneName:String):Dynamic;

	/**
	 * Stops audio for the current cutscene.
	 */
	@:native("STOP_CUTSCENE_AUDIO")
	static function stopCutsceneAudio():Dynamic;

	/**
	 * Stops a ped's ringtone from playing
	 */
	@:native("STOP_PED_RINGTONE")
	static function stopPedRingtone(ped:Dynamic):Dynamic;

	/**
	 * This doesn't stop a piece of dialogue that has been triggered.
	 * 
	 * This stops the ability to force ambient dialogue if set to true - however setting it to false, then triggering a context, then setting it to true again will allow this.
	 * 
	 * Nb. This does not sync over the network, it will only affect peds locally. Use [STOP_PED_SPEAKING_SYNCED](#\_0xAB6781A5F3101470) if you need to affect peds on other machines too.
	 */
	@:native("STOP_PED_SPEAKING")
	static function stopPedSpeaking(ped:Dynamic, shouldDisable:Bool):Dynamic;

	/**
	 * ```
	 * List of all usable event names found in b617d used with this native. Sorted alphabetically and identical names removed: pastebin.com/RzDFmB1W  
	 * All music event names found in the b617d scripts: pastebin.com/GnYt0R3P  
	 * ```
	 */
	@:native("TRIGGER_MUSIC_EVENT")
	static function triggerMusicEvent(eventName:String):Bool;

	/**
	 * 
	 */
	@:native("STOP_SCRIPTED_CONVERSATION")
	static function stopScriptedConversation(finishCurrentLine:Bool):Int;

	/**
	 * This doesn't stop a piece of dialogue that has been triggered.
	 * 
	 * This stops the ability to force ambient dialogue if set to true - however setting it to false, then triggering a context, then setting it to true again will allow this.
	 * 
	 * The ped will also be prevented from speaking on remote machines. Use [STOP_PED_SPEAKING](#\_0x9D64D7405520E3D3) if you just want to affect the local machine.
	 */
	@:native("STOP_PED_SPEAKING_SYNCED")
	static function stopPedSpeakingSynced(ped:Dynamic, shouldDisable:Bool):Dynamic;

	/**
	 * Stops all smoke grenade sounds
	 */
	@:native("STOP_SMOKE_GRENADE_EXPLOSION_SOUNDS")
	static function stopSmokeGrenadeExplosionSounds():Dynamic;

	/**
	 * Stops the sound from currently playing, there isn't a way to resume a sound
	 * after stopping it.
	 */
	@:native("STOP_SOUND")
	static function stopSound(soundId:Int):Dynamic;

	/**
	 * 
	 */
	@:native("UNLOCK_MISSION_NEWS_STORY")
	static function unlockMissionNewsStory(newsStory:Int):Dynamic;

	/**
	 * 
	 */
	@:native("STOP_STREAM")
	static function stopStream():Dynamic;

	/**
	 * 
	 */
	@:native("UNFREEZE_RADIO_STATION")
	static function unfreezeRadioStation(radioStation:String):Dynamic;

	/**
	 * 
	 */
	@:native("STOP_SYNCHRONIZED_AUDIO_EVENT")
	static function stopSynchronizedAudioEvent(p0:Dynamic):Bool;

	/**
	 * ... When not in a vehicle
	 * 
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_TRIGGER_SIREN")
	static function TriggerSiren(vehicle:Dynamic):Dynamic;

	/**
	 * ```
	 * AUDIO::UNLOCK_RADIO_STATION_TRACK_LIST("RADIO_16_SILVERLAKE", "MIRRORPARK_LOCKED");
	 * ```
	 */
	@:native("UNLOCK_RADIO_STATION_TRACK_LIST")
	static function unlockRadioStationTrackList(radioStation:String, trackListName:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 * 
	 * Removes all instances of a given context block.
	 */
	@:native("UNBLOCK_SPEECH_CONTEXT_GROUP")
	static function unblockSpeechContextGroup(groupName:String):Dynamic;

	/**
	 * Unloads tennis vocalization banks loaded with [`REQUEST_TENNIS_BANKS`](#\_0x4ADA3F19BE4A6047).
	 */
	@:native("UNREQUEST_TENNIS_BANKS")
	static function unrequestTennisBanks():Dynamic;

	/**
	 * Updates a playing sounds absolute position.
	 */
	@:native("UPDATE_SOUND_COORD")
	static function updateSoundCoord(soundId:Int, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * **This native does absolutely nothing, just a nullsub**
	 * 
	 * ```
	 * On last-gen this just runs blr and this func is called by several other functions other then the native's table.  
	 * ```
	 */
	@:native("UNREGISTER_SCRIPT_WITH_AUDIO")
	static function unregisterScriptWithAudio():Dynamic;

	/**
	 * Unlocks any available DJ radio tracks based on the tuneable status
	 * 
	 * ```
	 * NativeDB Introduced: v1493	
	 * ```
	 */
	@:native("UPDATE_UNLOCKABLE_DJ_RADIO_TRACKS")
	static function updateUnlockableDjRadioTracks(allowTrackReprioritization:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("USE_SIREN_AS_HORN")
	static function useSirenAsHorn(vehicle:Dynamic, sirenAsHorn:Bool):Dynamic;

	/**
	 * Allows script to trigger a sweetener footstep sound
	 */
	@:native("USE_FOOTSTEP_SCRIPT_SWEETENERS")
	static function useFootstepScriptSweeteners(ped:Dynamic, useSweetner:Bool, soundSetHash:Int):Dynamic;

}
