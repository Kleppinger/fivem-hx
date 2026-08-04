package fivem.client.natives;

@:native("_G")
extern class Misc {
	/**
	 * 
	 */
	@:native("ACOS")
	static function acos(p0:Float):Float;

	/**
	 * To remove, see: [`REMOVE_DISPATCH_SPAWN_BLOCKING_AREA`](#\_0x264AC28B01B353A5).
	 * 
	 * See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
	 */
	@:native("_ADD_DISPATCH_SPAWN_BLOCKING_ANGLED_AREA")
	static function AddDispatchSpawnBlockingAngledArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, width:Float):Dynamic;

	/**
	 * 
	 */
	@:native("ABSF")
	static function absf(value:Float):Float;

	/**
	 * Creates and opens a new activity feed post to start filling in.
	 * 
	 * **Note**: This is a PS4 related native, resulting in a nullsub on the PC platform. This native won't do anything when invoked.
	 */
	@:native("ACTIVITY_FEED_CREATE")
	static function activityFeedCreate(captionString:String, condensedCaptionString:String):Dynamic;

	/**
	 * 
	 */
	@:native("ABSI")
	static function absi(value:Int):Int;

	/**
	 * 
	 */
	@:native("ADD_POLICE_RESTART")
	static function addPoliceRestart(p0:Float, p1:Float, p2:Float, p3:Float, p4:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_ADD_DISPATCH_SPAWN_BLOCKING_AREA")
	static function AddDispatchSpawnBlockingArea(x1:Float, y1:Float, x2:Float, y2:Float):Dynamic;

	/**
	 * ```
	 * Returns the index of the newly created hospital spawn point.  
	 * p3 might be radius?  
	 * ```
	 */
	@:native("ADD_HOSPITAL_RESTART")
	static function addHospitalRestart(x:Float, y:Float, z:Float, p3:Float, p4:Dynamic):Int;

	/**
	 * ```
	 * This native is adding a zone, where you can change density settings. For example, you can add a zone on 0.0, 0.0, 0.0 with radius 900.0 and vehicleMultiplier 0.0, and you will not see any new population vehicle spawned in a radius of 900.0 from 0.0, 0.0, 0.0. Returns the id. You can have only 15 zones at the same time. You can remove zone using REMOVE_POP_MULTIPLIER_SPHERE
	 * ```
	 */
	@:native("ADD_POP_MULTIPLIER_SPHERE")
	static function addPopMultiplierSphere(x:Float, y:Float, z:Float, radius:Float, pedMultiplier:Float, vehicleMultiplier:Float, p6:Bool, p7:Bool):Int;

	/**
	 * 
	 */
	@:native("ADD_REPLAY_STAT_VALUE")
	static function addReplayStatValue(value:Dynamic):Dynamic;

	/**
	 * Creates a new stunt jump.
	 * 
	 * The radius1 and radius2 might actually not be a radius at all, but that's what it seems to me testing them in-game. But they may be 'angle' floats instead, considering this native is named ADD_STUNT_JUMP\_**ANGLED**.
	 * 
	 * Info about the specific 'parameter sections':
	 * 
	 * **x1, y1, z1, x2, y2, z2 and radius1:**
	 * 
	 * First coordinates are for the jump entry area, and the radius that will be checked around that area. So if you're not exactly within the coordinates, but you are within the outter radius limit then it will still register as entering the stunt jump. Note as mentioned above, the radius is just a guess, I'm not really sure about it's exact purpose.
	 * 
	 * **x3, y3, z3, x4, y4, z4 and radius2:**
	 * 
	 * Next part is the landing area, again starting with the left bottom (nearest to the stunt jump entry zone) coordinate, and the second one being the top right furthest away part of the landing area. Followed by another (most likely) radius float, this is usually slightly larger than the entry zone 'radius' float value, just because you have quite a lot of places where you can land (I'm guessing).
	 * 
	 * **camX, camY and camZ:**
	 * 
	 * The final coordinate in this native is the Camera position. Rotation and zoom/FOV is managed by the game itself, you just need to provide the camera location.
	 * 
	 * **unk1, unk2 and unk3:**
	 * 
	 * Not sure what these are for, but they're always `150, 0, 0` in decompiled scripts.
	 * 
	 * Visualized example in-game:
	 * 
	 * ![](https://d.fivem.dev/2019-03-15\_18-24\_c7802\_846.png)
	 * 
	 * Here is a list of almost all of the stunt jumps from GTA V (taken from decompiled scripts): https://pastebin.com/EW1jBPkY
	 */
	@:native("ADD_STUNT_JUMP_ANGLED")
	static function addStuntJumpAngled(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, radius1:Float, x3:Float, y3:Float, z3:Float, x4:Float, y4:Float, z4:Float, radius2:Float, camX:Float, camY:Float, camZ:Float, unk1:Int, unk2:Int, unk3:Int):Int;

	/**
	 * ```
	 * NativeDB Added Parameter 10: BOOL p9
	 * ```
	 */
	@:native("ADD_POP_MULTIPLIER_AREA")
	static function addPopMultiplierArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, p6:Float, p7:Float, p8:Bool):Int;

	/**
	 * ```
	 * Adds a point related to CTacticalAnalysis
	 * ```
	 */
	@:native("_ADD_TACTICAL_ANALYSIS_POINT")
	static function AddTacticalAnalysisPoint(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("ARE_PROFILE_SETTINGS_VALID")
	static function areProfileSettingsValid():Bool;

	/**
	 * 
	 */
	@:native("ALLOW_MISSION_CREATOR_WARP")
	static function allowMissionCreatorWarp(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ASIN")
	static function asin(value:Float):Float;

	/**
	 * See description of [`ADD_STUNT_JUMP_ANGLED`](#\_0xBBE5D803A5360CBF) for detailed info. The only difference really is this one does not have the radius (or angle, not sure) floats parameters for entry and landing zones.
	 */
	@:native("ADD_STUNT_JUMP")
	static function addStuntJump(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, x3:Float, y3:Float, z3:Float, x4:Float, y4:Float, z4:Float, camX:Float, camY:Float, camZ:Float, unk1:Int, unk2:Int, unk3:Int):Int;

	/**
	 * 
	 */
	@:native("ARE_STRINGS_EQUAL")
	static function areStringsEqual(string1:String, string2:String):Bool;

	/**
	 * 
	 */
	@:native("ATAN2")
	static function atan2(p0:Float, p1:Float):Float;

	/**
	 * 
	 */
	@:native("ATAN")
	static function atan(p0:Float):Float;

	/**
	 * 
	 */
	@:native("BLOCK_DISPATCH_SERVICE_RESOURCE_CREATION")
	static function blockDispatchServiceResourceCreation(dispatchService:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CANCEL_STUNT_JUMP")
	static function cancelStuntJump():Dynamic;

	/**
	 * Closes the onscreen keyboard on console versions of the game.
	 * 
	 * **NOTE:** Do not use this native in FiveM/PC, because [`UPDATE_ONSCREEN_KEYBOARD`](#\_0x0CF2B696BBF945AE) value doesn't get cleaned up and stays as `0`.
	 * You should use [`FORCE_CLOSE_TEXT_INPUT_BOX`](#\_0x8817605C2BA76200) instead.
	 */
	@:native("CANCEL_ONSCREEN_KEYBOARD")
	static function cancelOnscreenKeyboard():Dynamic;

	/**
	 * 
	 */
	@:native("BEGIN_REPLAY_STATS")
	static function beginReplayStats(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * Example: CLEAR_AREA(0, 0, 0, 30, true, false, false, false);  
	 * ```
	 */
	@:native("CLEAR_AREA")
	static function clearArea(X:Float, Y:Float, Z:Float, radius:Float, p4:Bool, ignoreCopCars:Bool, ignoreObjects:Bool, p7:Bool):Dynamic;

	/**
	 * ```
	 * I looked through the PC scripts that this site provides you with a link to find. It shows the last param mainly uses, (0, 2, 6, 16, and 17) so I am going to assume it is a type of flag.  
	 * ```
	 */
	@:native("CLEAR_AREA_OF_OBJECTS")
	static function clearAreaOfObjects(x:Float, y:Float, z:Float, radius:Float, flags:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_CLEANUP_ASYNC_INSTALL")
	static function CleanupAsyncInstall():Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 13: Any p12
	 * ```
	 */
	@:native("CLEAR_ANGLED_AREA_OF_VEHICLES")
	static function clearAngledAreaOfVehicles(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, width:Float, p7:Bool, p8:Bool, p9:Bool, p10:Bool, p11:Bool):Dynamic;

	/**
	 * Clears an area of peds at the given coordinates and radius.
	 */
	@:native("CLEAR_AREA_OF_PEDS")
	static function clearAreaOfPeds(x:Float, y:Float, z:Float, radius:Float, createNetEvent:Bool):Dynamic;

	/**
	 * Clears an area of cops at the given coordinates and radius.
	 */
	@:native("CLEAR_AREA_OF_COPS")
	static function clearAreaOfCops(x:Float, y:Float, z:Float, radius:Float, createNetEvent:Bool):Dynamic;

	/**
	 * ```
	 * MISC::_0x957838AAF91BD12D(x, y, z, radius, false, false, false, false); seem to make all objects go away, peds, vehicles etc. All booleans set to true doesn't seem to change anything.
	 * ```
	 */
	@:native("CLEAR_AREA_LEAVE_VEHICLE_HEALTH")
	static function clearAreaLeaveVehicleHealth(x:Float, y:Float, z:Float, radius:Float, p4:Bool, p5:Bool, p6:Bool, p7:Bool):Dynamic;

	/**
	 * Clears an area of projectiles at the given coordinates and radius.
	 */
	@:native("CLEAR_AREA_OF_PROJECTILES")
	static function clearAreaOfProjectiles(x:Float, y:Float, z:Float, radius:Float, createNetEvent:Bool):Dynamic;

	/**
	 * ```
	 * Example: 		CLEAR_AREA_OF_VEHICLES(0, 0, 0, 10000, false, false, false, false, false);  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 10: BOOL p9
	 * ```
	 */
	@:native("CLEAR_AREA_OF_VEHICLES")
	static function clearAreaOfVehicles(x:Float, y:Float, z:Float, radius:Float, p4:Bool, p5:Bool, p6:Bool, p7:Bool, p8:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_CLEAR_TACTICAL_ANALYSIS_POINTS")
	static function ClearTacticalAnalysisPoints():Dynamic;

	/**
	 * ```
	 * This sets bit [offset] of [address] to off.
	 * Example:
	 * MISC::CLEAR_BIT(&bitAddress, 1);
	 * To check if this bit has been enabled:
	 * MISC::IS_BIT_SET(bitAddress, 1); // will return 0 afterwards
	 * ```
	 */
	@:native("CLEAR_BIT")
	static function clearBit(address:Dynamic, offset:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_CLEAR_CLOUD_HAT")
	static function ClearCloudHat():Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_OVERRIDE_WEATHER")
	static function clearOverrideWeather():Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_REPLAY_STATS")
	static function clearReplayStats():Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_WEATHER_TYPE_PERSIST")
	static function clearWeatherTypePersist():Dynamic;

	/**
	 * 
	 */
	@:native("_CLEAR_RESTART_CUSTOM_POSITION")
	static function ClearRestartCustomPosition():Dynamic;

	/**
	 * ```
	 * Compares two strings up to a specified number of characters.
	 * Parameters:
	 * str1 - String to be compared.
	 * str2 - String to be compared.
	 * matchCase - Comparison will be case-sensitive.
	 * maxLength - Maximum number of characters to compare. A value of -1 indicates an infinite length.
	 * Returns:
	 * A value indicating the relationship between the strings:
	 * <0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'A' < 'B', so result = -1)
	 * 0 - The contents of both strings are equal.
	 * >0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'B' > 'A', so result = 1)
	 * Examples:
	 * MISC::COMPARE_STRINGS("STRING", "string", false, -1); // 0; equal
	 * MISC::COMPARE_STRINGS("TESTING", "test", false, 4); // 0; equal
	 * MISC::COMPARE_STRINGS("R2D2", "R2xx", false, 2); // 0; equal
	 * MISC::COMPARE_STRINGS("foo", "bar", false, -1); // 4; 'f' > 'b'
	 * MISC::COMPARE_STRINGS("A", "A", true, 1); // 0; equal
	 * When comparing case-sensitive strings, lower-case characters are greater than upper-case characters:
	 * MISC::COMPARE_STRINGS("A", "a", true, 1); // -1; 'A' < 'a'
	 * MISC::COMPARE_STRINGS("a", "A", true, 1); // 1; 'a' > 'A'
	 * ```
	 */
	@:native("COMPARE_STRINGS")
	static function compareStrings(str1:String, str2:String, matchCase:Bool, maxLength:Int):Int;

	/**
	 * ```
	 * Delete an incident with a given id.  
	 * =======================================================  
	 * Correction, I have change this to int, instead of int*  
	 * as it doesn't use a pointer to the createdIncident.  
	 * If you try it you will crash (or) freeze.  
	 * =======================================================  
	 * ```
	 */
	@:native("DELETE_INCIDENT")
	static function deleteIncident(incidentId:Int):Dynamic;

	/**
	 * Clears the active weather type after a specific amount of time determined by `transitionTimeInMs`.
	 */
	@:native("CLEAR_WEATHER_TYPE_NOW_PERSIST_NETWORK")
	static function clearWeatherTypeNowPersistNetwork(transitionTimeInMs:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_COPY_MEMORY")
	static function CopyMemory(dst:Dynamic, src:Dynamic, size:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 6: Any p5
	 * NativeDB Added Parameter 7: Any p6
	 * ```
	 */
	@:native("CREATE_INCIDENT_WITH_ENTITY")
	static function createIncidentWithEntity(dispatchService:Int, ped:Dynamic, numUnits:Int, radius:Float, outIncidentID:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 8: Any p7
	 * NativeDB Added Parameter 9: Any p8
	 * ```
	 */
	@:native("CREATE_INCIDENT")
	static function createIncident(dispatchService:Int, x:Float, y:Float, z:Float, numUnits:Int, radius:Float, outIncidentID:Dynamic):Bool;

	/**
	 * Displays a text input box.
	 * 
	 * ```cpp
	 * enum eKeyboardType
	 * {
	 *   ONSCREEN_KEYBOARD_ENGLISH = 0,
	 *   ONSCREEN_KEYBOARD_LOCALISED = 1,
	 *   ONSCREEN_KEYBOARD_PASSWORD = 2,
	 *   ONSCREEN_KEYBOARD_GAMERTAG = 3,
	 *   ONSCREEN_KEYBOARD_EMAIL = 4,
	 *   ONSCREEN_KEYBOARD_BASIC_ENGLISH = 5,
	 *   ONSCREEN_KEYBOARD_FILENAME = 6
	 * };
	 * ```
	 */
	@:native("DISPLAY_ONSCREEN_KEYBOARD")
	static function displayOnscreenKeyboard(keyboardType:Int, windowTitle:String, description:String, defaultText:String, defaultConcat1:String, defaultConcat2:String, defaultConcat3:String, maxInputLength:Int):Dynamic;

	/**
	 * ```
	 * Disables the spawn point at the police house on the specified index.
	 * policeIndex: The police house index.
	 * toggle: true to enable the spawn point, false to disable.
	 * - Nacorpio
	 * ```
	 */
	@:native("DISABLE_POLICE_RESTART")
	static function disablePoliceRestart(policeIndex:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DELETE_STUNT_JUMP")
	static function deleteStuntJump(p0:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DO_AUTO_SAVE")
	static function doAutoSave():Dynamic;

	/**
	 * 
	 */
	@:native("DOES_POP_MULTIPLIER_AREA_EXIST")
	static function doesPopMultiplierAreaExist(id:Int):Bool;

	/**
	 * Enables or disables the specified 'dispatch service' type. 'Dispatch services' are used for spawning AI response peds/vehicles for events such as a fire in the street (type 3 - DT_FireDepartment), or gunfire in a gang area (type 11 - DT_Gangs).
	 * 
	 * List of dispatch services:
	 * 
	 * ```cpp
	 * enum eDispatchType
	 * {
	 * 	DT_Invalid = 0,
	 * 	DT_PoliceAutomobile = 1,
	 * 	DT_PoliceHelicopter = 2,
	 * 	DT_FireDepartment = 3,
	 * 	DT_SwatAutomobile = 4,
	 * 	DT_AmbulanceDepartment = 5,
	 * 	DT_PoliceRiders = 6,
	 * 	DT_PoliceVehicleRequest = 7,
	 * 	DT_PoliceRoadBlock = 8,
	 * 	DT_PoliceAutomobileWaitPulledOver = 9,
	 * 	DT_PoliceAutomobileWaitCruising = 10,
	 * 	DT_Gangs = 11,
	 * 	DT_SwatHelicopter = 13,
	 * 	DT_PoliceBoat = 14,
	 * 	DT_ArmyVehicle = 15,
	 * 	DT_BikerBackup = 15
	 * };
	 * ```
	 * 
	 * Note that 'dispatch service' has nothing to do with the police scanner (audio), to toggle that, use [SET_AUDIO_FLAG](#\_0xB9EFD5C25018725A) with `'PoliceScannerDisabled'`.
	 */
	@:native("ENABLE_DISPATCH_SERVICE")
	static function enableDispatchService(dispatchService:Int, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Makes the ped jump around like they're in a tennis match  
	 * ```
	 */
	@:native("ENABLE_TENNIS_MODE")
	static function enableTennisMode(ped:Dynamic, toggle:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * The game by default has 5 hospital respawn points. Disabling them all will cause the player to respawn at the last position they were.
	 * ```
	 */
	@:native("DISABLE_HOSPITAL_RESTART")
	static function disableHospitalRestart(hospitalIndex:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DISABLE_STUNT_JUMP_SET")
	static function disableStuntJumpSet(p0:Int):Dynamic;

	/**
	 * 
	 */
	@:native("END_REPLAY_STATS")
	static function endReplayStats():Dynamic;

	/**
	 * 
	 */
	@:native("DOES_POP_MULTIPLIER_SPHERE_EXIST")
	static function doesPopMultiplierSphereExist(id:Int):Bool;

	/**
	 * Displays the text input box with support for input with 500 characters.
	 */
	@:native("DISPLAY_ONSCREEN_KEYBOARD_WITH_LONGER_INITIAL_STRING")
	static function displayOnscreenKeyboardWithLongerInitialString(keyboardType:Int, windowTitle:String, description:String, defaultText:String, defaultConcat1:String, defaultConcat2:String, defaultConcat3:String, defaultConcat4:String, defaultConcat5:String, defaultConcat6:String, defaultConcat7:String, maxInputLength:Int):Dynamic;

	/**
	 * ```
	 * Sets the localplayer playerinfo state back to playing (State 0)  
	 * States are:  
	 * -1: "Invalid"  
	 * 0: "Playing"  
	 * 1: "Died"  
	 * 2: "Arrested"  
	 * 3: "Failed Mission"  
	 * 4: "Left Game"  
	 * 5: "Respawn"  
	 * 6: "In MP Cutscene"  
	 * ```
	 */
	@:native("FORCE_GAME_STATE_PLAYING")
	static function forceGameStatePlaying():Dynamic;

	/**
	 * 
	 */
	@:native("GET_ALLOCATED_STACK_SIZE")
	static function getAllocatedStackSize():Int;

	/**
	 * 
	 */
	@:native("ENABLE_STUNT_JUMP_SET")
	static function enableStuntJumpSet(p0:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_GET_BASE_ELEMENT_METADATA")
	static function GetBaseElementMetadata(p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Bool):Bool;

	/**
	 * 
	 */
	@:native("_GET_BENCHMARK_TIME")
	static function GetBenchmarkTime():Float;

	/**
	 * ```
	 * Finds a position ahead of the player by predicting the players next actions.  
	 * The positions match path finding node positions.  
	 * When roads diverge, the position may rapidly change between two or more positions. This is due to the engine not being certain of which path the player will take.  
	 * ```
	 */
	@:native("FIND_SPAWN_POINT_IN_DIRECTION")
	static function findSpawnPointInDirection(posX:Float, posY:Float, posZ:Float, dirX:Float, dirY:Float, dirZ:Float, distance:Float, spawnPoint:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_GET_CLOUD_HAT_OPACITY")
	static function GetCloudHatOpacity():Float;

	/**
	 * ```
	 * creates single lightning+thunder at random position  
	 * ```
	 */
	@:native("FORCE_LIGHTNING_FLASH")
	static function forceLightningFlash():Dynamic;

	/**
	 * 
	 */
	@:native("GET_ANGLE_BETWEEN_2D_VECTORS")
	static function getAngleBetween2DVectors(x1:Float, y1:Float, x2:Float, y2:Float):Float;

	/**
	 * 
	 */
	@:native("GET_COORDS_OF_PROJECTILE_TYPE_IN_AREA")
	static function getCoordsOfProjectileTypeInArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, projectileHash:Int, projectilePos:Dynamic, ownedByPlayer:Bool):Bool;

	/**
	 * ```
	 * Returns value of the '-benchmarkPass' command line option.
	 * ```
	 */
	@:native("_GET_BENCHMARK_PASS_FROM_COMMAND_LINE")
	static function GetBenchmarkPassFromCommandLine():Int;

	/**
	 * Gets the number of the current frame being displayed.
	 */
	@:native("GET_FRAME_COUNT")
	static function getFrameCount():Int;

	/**
	 * ```
	 * Returns value of the '-benchmarkIterations' command line option.
	 * ```
	 */
	@:native("_GET_BENCHMARK_ITERATIONS_FROM_COMMAND_LINE")
	static function GetBenchmarkIterationsFromCommandLine():Int;

	/**
	 * 
	 */
	@:native("GET_BITS_IN_RANGE")
	static function getBitsInRange(var_:Int, rangeStart:Int, rangeEnd:Int):Int;

	/**
	 * Returns the distance between two three-dimensional points, optionally ignoring the Z values.
	 * If useZ is false, only the 2D plane (X-Y) will be considered for calculating the distance.
	 * Consider using this faster native instead: SYSTEM::VDIST - DVIST always takes in consideration the 3D coordinates.
	 */
	@:native("GET_DISTANCE_BETWEEN_COORDS")
	static function getDistanceBetweenCoords(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, useZ:Bool):Float;

	/**
	 * ```
	 * Returns pointer to an empty string.
	 * GET_C*
	 * ```
	 */
	@:native("_GET_GLOBAL_CHAR_BUFFER")
	static function GetGlobalCharBuffer():String;

	/**
	 * 
	 */
	@:native("GET_COORDS_OF_PROJECTILE_TYPE_WITHIN_DISTANCE")
	static function getCoordsOfProjectileTypeWithinDistance(ped:Dynamic, weaponHash:Int, distance:Float, outCoords:Dynamic, ownedByPlayer:Bool):Bool;

	/**
	 * Gets the high precision frame time of the last frame in seconds.
	 * 
	 * *note: the example above is way less precise.*
	 */
	@:native("GET_FRAME_TIME")
	static function getFrameTime():Float;

	/**
	 * 
	 */
	@:native("GET_FAKE_WANTED_LEVEL")
	static function getFakeWantedLevel():Int;

	/**
	 * Determines the highest ground Z-coordinate directly below a specified 3D coordinate, excluding any objects at that point. Optionally, water can be considered as ground when determining the highest point.
	 * 
	 * ```
	 * NativeDB Added Parameter 6: BOOL ignoreDistToWaterLevelCheck - If set to true, the distance to the water level will be ignored when checking for water as ground. 
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v505
	 * ```
	 */
	@:native("GET_GROUND_Z_EXCLUDING_OBJECTS_FOR_3D_COORD")
	static function getGroundZExcludingObjectsFor3DCoord(x:Float, y:Float, z:Float, groundZ:Dynamic, waterAsGround:Bool):Bool;

	/**
	 * Attempts to identify the highest ground Z-coordinate and determine the corresponding surface normal directly beneath a specified 3D coordinate.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("GET_GROUND_Z_AND_NORMAL_FOR_3D_COORD")
	static function getGroundZAndNormalFor3DCoord(x:Float, y:Float, z:Float, groundZ:Dynamic, normal:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GET_INDEX_OF_CURRENT_LEVEL")
	static function getIndexOfCurrentLevel():Int;

	/**
	 * ```
	 * dx = x1 - x2
	 * dy = y1 - y2
	 * ```
	 */
	@:native("GET_HEADING_FROM_VECTOR_2D")
	static function getHeadingFromVector2D(dx:Float, dy:Float):Float;

	/**
	 * This native converts its past string to hash. It is hashed using jenkins one at a time method.
	 */
	@:native("GET_HASH_KEY")
	static function getHashKey(string:String):Int;

	/**
	 * 
	 */
	@:native("GET_GAME_TIMER")
	static function getGameTimer():Int;

	/**
	 * 
	 */
	@:native("GET_MISSION_FLAG")
	static function getMissionFlag():Bool;

	/**
	 * Determines whether a line segment intersects a plane and, if so, returns the parameter value at which this intersection occurs.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("GET_LINE_PLANE_INTERSECTION")
	static function getLinePlaneIntersection(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, planeX:Float, planeY:Float, planeZ:Float, planeNormalX:Float, planeNormalY:Float, planeNormalZ:Float, intersectionParameter:Dynamic):Bool;

	/**
	 * ```
	 * Although we don't have a jenkins hash for this one, the name is 100% confirmed.
	 * ```
	 */
	@:native("_GET_IS_PLAYER_IN_ANIMAL_FORM")
	static function GetIsPlayerInAnimalForm():Bool;

	/**
	 * ```
	 * Gets the dimensions of a model.
	 * Calculate (maximum - minimum) to get the size, in which case, Y will be how long the model is.
	 * Example from the scripts: MISC::GET_MODEL_DIMENSIONS(ENTITY::GET_ENTITY_MODEL(PLAYER::PLAYER_PED_ID()), &v_1A, &v_17);
	 * ```
	 */
	@:native("GET_MODEL_DIMENSIONS")
	static function getModelDimensions(modelHash:Int, minimum:Dynamic, maximum:Dynamic):Dynamic;

	/**
	 * This native gets the ground level (ground elevation) and returns the Z coordinate that represents it.
	 * Note: This native can only calculate the elevation when the coordinates are within the render distance of the client.
	 * 
	 * ```
	 * NativeDB Added Parameter 6: BOOL p5
	 * ```
	 */
	@:native("GET_GROUND_Z_FOR_3D_COORD")
	static function getGroundZFor3DCoord(x:Float, y:Float, z:Float, groundZ:Dynamic, includeWater:Bool):Bool;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
	 */
	@:native("GET_NEXT_WEATHER_TYPE_HASH_NAME")
	static function getNextWeatherTypeHashName():Int;

	/**
	 * 
	 */
	@:native("_GET_NUM_DISPATCHED_UNITS_FOR_PLAYER")
	static function GetNumDispatchedUnitsForPlayer(dispatchService:Int):Int;

	/**
	 * ```
	 * Returns duration of how long the game has been in power-saving mode (aka "constrained") in milliseconds.
	 * ```
	 */
	@:native("_GET_POWER_SAVING_MODE_DURATION")
	static function GetPowerSavingModeDuration():Int;

	/**
	 * ```
	 * Returns true if profile setting 208 is equal to 0.
	 * ```
	 */
	@:native("GET_IS_AUTO_SAVE_OFF")
	static function getIsAutoSaveOff():Bool;

	/**
	 * 
	 */
	@:native("GET_NUM_SUCCESSFUL_STUNT_JUMPS")
	static function getNumSuccessfulStuntJumps():Int;

	/**
	 * 
	 */
	@:native("GET_NUMBER_OF_FREE_STACKS_OF_THIS_SIZE")
	static function getNumberOfFreeStacksOfThisSize(stackSize:Int):Int;

	/**
	 * 
	 */
	@:native("GET_PROFILE_SETTING")
	static function getProfileSetting(profileSetting:Int):Int;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
	 */
	@:native("GET_PREV_WEATHER_TYPE_HASH_NAME")
	static function getPrevWeatherTypeHashName():Int;

	/**
	 * ```
	 * Returns NULL unless UPDATE_ONSCREEN_KEYBOARD() returns 1 in the same tick.  
	 * ```
	 */
	@:native("GET_ONSCREEN_KEYBOARD_RESULT")
	static function getOnscreenKeyboardResult():String;

	/**
	 * 
	 */
	@:native("GET_RAIN_LEVEL")
	static function getRainLevel():Float;

	/**
	 * 
	 */
	@:native("_GET_PROJECTILE_NEAR_PED")
	static function GetProjectileNearPed(ped:Dynamic, weaponHash:Int, distance:Float, outCoords:Dynamic, outProjectile:Dynamic, ownedByPlayer:Bool):Bool;

	/**
	 * 
	 */
	@:native("GET_RANDOM_INT_IN_RANGE")
	static function getRandomIntInRange(startRange:Int, endRange:Int):Int;

	/**
	 * 
	 */
	@:native("GET_RANDOM_EVENT_FLAG")
	static function getRandomEventFlag():Bool;

	/**
	 * 
	 */
	@:native("GET_RANDOM_FLOAT_IN_RANGE")
	static function getRandomFloatInRange(startRange:Float, endRange:Float):Float;

	/**
	 * 
	 */
	@:native("GET_SIZE_OF_SAVE_DATA")
	static function getSizeOfSaveData(p0:Bool):Int;

	/**
	 * 
	 */
	@:native("GET_STATUS_OF_MISSION_REPEAT_SAVE")
	static function getStatusOfMissionRepeatSave():Int;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_GET_RANDOM_INT_IN_RANGE_2")
	static function GetRandomIntInRange2(startRange:Int, endRange:Int):Int;

	/**
	 * 
	 */
	@:native("GET_REPLAY_STAT_AT_INDEX")
	static function getReplayStatAtIndex(index:Int):Int;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
	 */
	@:native("_GET_WEATHER_TYPE_TRANSITION")
	static function GetWeatherTypeTransition(weatherType1:Dynamic, weatherType2:Dynamic, percentWeather2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_REPLAY_STAT_MISSION_TYPE")
	static function getReplayStatMissionType():Int;

	/**
	 * 
	 */
	@:native("GET_SNOW_LEVEL")
	static function getSnowLevel():Float;

	/**
	 * 
	 */
	@:native("GET_REPLAY_STAT_COUNT")
	static function getReplayStatCount():Int;

	/**
	 * Used for hunting in singleplayer and for golfing in both sp and online. The [`GET_HEADING_FROM_VECTOR_2D`](#\_0x2FFB6B224F4B2926) native can be used to get the wind heading from the direction.
	 */
	@:native("GET_WIND_DIRECTION")
	static function getWindDirection():Dynamic;

	/**
	 * 
	 */
	@:native("GET_TOTAL_SUCCESSFUL_STUNT_JUMPS")
	static function getTotalSuccessfulStuntJumps():Int;

	/**
	 * 
	 */
	@:native("GET_TENNIS_SWING_ANIM_COMPLETE")
	static function getTennisSwingAnimComplete(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("HAS_BULLET_IMPACTED_IN_BOX")
	static function hasBulletImpactedInBox(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Bool, p7:Bool):Bool;

	/**
	 * ```
	 * p3 - possibly radius?  
	 * ```
	 */
	@:native("HAS_BULLET_IMPACTED_IN_AREA")
	static function hasBulletImpactedInArea(x:Float, y:Float, z:Float, p3:Float, p4:Bool, p5:Bool):Bool;

	/**
	 * ```
	 * Hardcoded to always return true.
	 * ```
	 */
	@:native("_HAS_ASYNC_INSTALL_FINISHED")
	static function HasAsyncInstallFinished():Bool;

	/**
	 * 
	 */
	@:native("GET_WIND_SPEED")
	static function getWindSpeed():Float;

	/**
	 * ```
	 * Get inputted "Cheat code", for example:
	 * while (TRUE)
	 * {
	 *     if (MISC::_557E43C447E700A8(${fugitive}))
	 *     {
	 *        // Do something.
	 *     }
	 *     SYSTEM::WAIT(0);
	 * }
	 * Calling this will also set the last saved string hash to zero.
	 * ```
	 */
	@:native("_HAS_CHEAT_STRING_JUST_BEEN_ENTERED")
	static function HasCheatStringJustBeenEntered(hash:Int):Bool;

	/**
	 * ```
	 * This native appears on the cheat_controller script and tracks a combination of buttons, which may be used to toggle cheats in-game. Credits to ThreeSocks for the info. The hash contains the combination, while the "amount" represents the amount of buttons used in a combination. The following page can be used to make a button combination: gta5offset.com/ts/hash/
	 * INT_SCORES_SCORTED was a hash collision
	 * ```
	 */
	@:native("_HAS_BUTTON_COMBINATION_JUST_BEEN_ENTERED")
	static function HasButtonCombinationJustBeenEntered(hash:Int, amount:Int):Bool;

	/**
	 * ```
	 * Hardcoded to return false.
	 * ```
	 */
	@:native("_HAS_RESUMED_FROM_SUSPEND")
	static function HasResumedFromSuspend():Bool;

	/**
	 * 
	 */
	@:native("HAVE_CREDITS_REACHED_END")
	static function haveCreditsReachedEnd():Bool;

	/**
	 * 
	 */
	@:native("IGNORE_NEXT_RESTART")
	static function ignoreNextRestart(toggle:Bool):Dynamic;

	/**
	 * ```
	 * if (MISC::IS_AUSSIE_VERSION()) {
	 *     sub_127a9(&l_31, 1024); // l_31 |= 1024
	 *     l_129 = 3;
	 *     sub_129d2("AUSSIE VERSION IS TRUE!?!?!"); // DEBUG
	 * }
	 * Used to block some of the prostitute stuff due to laws in Australia.
	 * ```
	 */
	@:native("IS_AUSSIE_VERSION")
	static function isAussieVersion():Bool;

	/**
	 * 
	 */
	@:native("IS_AUTO_SAVE_IN_PROGRESS")
	static function isAutoSaveInProgress():Bool;

	/**
	 * See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
	 * 
	 * For projectiles, see: [`IS_PROJECTILE_TYPE_IN_ANGLED_AREA`](#\_0xF0BC12401061DEA0)
	 */
	@:native("IS_BULLET_IN_ANGLED_AREA")
	static function isBulletInAngledArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, width:Float, ownedByPlayer:Bool):Bool;

	/**
	 * 
	 */
	@:native("IS_BULLET_IN_BOX")
	static function isBulletInBox(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, ownedByPlayer:Bool):Bool;

	/**
	 * 
	 */
	@:native("IS_AREA_OCCUPIED")
	static function isAreaOccupied(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Bool, p7:Bool, p8:Bool, p9:Bool, p10:Bool, p11:Dynamic, p12:Bool):Bool;

	/**
	 * ```
	 * Returns true if command line option '-benchmark' is set.
	 * ```
	 */
	@:native("_IS_COMMAND_LINE_BENCHMARK_VALUE_SET")
	static function IsCommandLineBenchmarkValueSet():Bool;

	/**
	 * ```
	 * Returns bit's boolean state from [offset] of [address].
	 * Example:
	 * MISC::IS_BIT_SET(bitAddress, 1);
	 * To enable and disable bits, see:
	 * MISC::SET_BIT(&bitAddress, 1);   // enable
	 * MISC::CLEAR_BIT(&bitAddress, 1); // disable
	 * ```
	 */
	@:native("IS_BIT_SET")
	static function isBitSet(address:Int, offset:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_BULLET_IN_AREA")
	static function isBulletInArea(x:Float, y:Float, z:Float, radius:Float, ownedByPlayer:Bool):Bool;

	/**
	 * ```
	 * aka "constrained"
	 * ```
	 */
	@:native("_IS_IN_POWER_SAVING_MODE")
	static function IsInPowerSavingMode():Bool;

	/**
	 * ```
	 * This function is hard-coded to always return 0.  
	 * ```
	 */
	@:native("IS_FRONTEND_FADING")
	static function isFrontendFading():Bool;

	/**
	 * ```
	 * =======================================================  
	 * Correction, I have change this to int, instead of int*  
	 * as it doesn't use a pointer to the createdIncident.  
	 * If you try it you will crash (or) freeze.  
	 * =======================================================  
	 * ```
	 */
	@:native("IS_INCIDENT_VALID")
	static function isIncidentValid(incidentId:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_DURANGO_VERSION")
	static function isDurangoVersion():Bool;

	/**
	 * 
	 */
	@:native("IS_MEMORY_CARD_IN_USE")
	static function isMemoryCardInUse():Bool;

	/**
	 * ```
	 * NativeDB Introduced: 2545
	 * ```
	 */
	@:native("IS_JAPANESE_VERSION")
	static function isJapaneseVersion():Bool;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
	 */
	@:native("IS_NEXT_WEATHER_TYPE")
	static function isNextWeatherType(weatherType:String):Bool;

	/**
	 * 
	 */
	@:native("IS_MINIGAME_IN_PROGRESS")
	static function isMinigameInProgress():Bool;

	/**
	 * 
	 */
	@:native("IS_POINT_OBSCURED_BY_A_MISSION_ENTITY")
	static function isPointObscuredByAMissionEntity(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_PC_VERSION")
	static function isPcVersion():Bool;

	/**
	 * 
	 */
	@:native("IS_ORBIS_VERSION")
	static function isOrbisVersion():Bool;

	/**
	 * The BOOL parameters that are documented have not been confirmed. They are just documented from what I've found during testing. They may not work as expected in all cases.
	 */
	@:native("IS_POSITION_OCCUPIED")
	static function isPositionOccupied(x:Float, y:Float, z:Float, range:Float, p4:Bool, checkVehicles:Bool, checkPeds:Bool, p7:Bool, p8:Bool, ignoreEntity:Dynamic, p10:Bool):Bool;

	/**
	 * ```
	 * Determines whether there is a projectile within the specified coordinates. The coordinates form a rectangle.  
	 * ownedByPlayer = only projectiles fired by the player will be detected.  
	 * ```
	 */
	@:native("IS_PROJECTILE_IN_AREA")
	static function isProjectileInArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, ownedByPlayer:Bool):Bool;

	/**
	 * 
	 */
	@:native("IS_PROJECTILE_TYPE_WITHIN_DISTANCE")
	static function isProjectileTypeWithinDistance(x:Float, y:Float, z:Float, projHash:Int, radius:Float, ownedByPlayer:Bool):Bool;

	/**
	 * 
	 */
	@:native("IS_PS3_VERSION")
	static function isPs3Version():Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_IS_POP_MULTIPLIER_AREA_UNK")
	static function IsPopMultiplierAreaUnk(id:Int):Bool;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
	 */
	@:native("IS_PREV_WEATHER_TYPE")
	static function isPrevWeatherType(weatherType:String):Bool;

	/**
	 * 
	 */
	@:native("IS_STRING_NULL")
	static function isStringNull(string:String):Bool;

	/**
	 * See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
	 * 
	 * ```
	 * NativeDB Removed Parameter 7: float p7
	 * ```
	 */
	@:native("IS_PROJECTILE_TYPE_IN_ANGLED_AREA")
	static function isProjectileTypeInAngledArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, width:Float, p7:Float, weaponHash:Int, ownedByPlayer:Bool):Bool;

	/**
	 * 
	 */
	@:native("IS_TENNIS_MODE")
	static function isTennisMode(ped:Dynamic):Bool;

	/**
	 * ```
	 * This function is hard-coded to always return 0.  
	 * ```
	 */
	@:native("IS_SNIPER_INVERTED")
	static function isSniperInverted():Bool;

	/**
	 * ```
	 * Determines whether there is a projectile of a specific type within the specified coordinates. The coordinates form a axis-aligned bounding box.  
	 * ```
	 */
	@:native("IS_PROJECTILE_TYPE_IN_AREA")
	static function isProjectileTypeInArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, type:Int, ownedByPlayer:Bool):Bool;

	/**
	 * ```
	 * Determines whether there is a sniper bullet within the specified coordinates. The coordinates form an axis-aligned bounding box.  
	 * ```
	 */
	@:native("IS_SNIPER_BULLET_IN_AREA")
	static function isSniperBulletInArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float):Bool;

	/**
	 * 
	 */
	@:native("IS_STRING_NULL_OR_EMPTY")
	static function isStringNullOrEmpty(string:String):Bool;

	/**
	 * ```
	 * Returns true if the current frontend menu is FE_MENU_VERSION_LANDING_MENU
	 * ```
	 */
	@:native("_LANDING_MENU_IS_ACTIVE")
	static function LandingMenuIsActive():Bool;

	/**
	 * 
	 */
	@:native("IS_STUNT_JUMP_IN_PROGRESS")
	static function isStuntJumpInProgress():Bool;

	/**
	 * 
	 */
	@:native("IS_THIS_A_MINIGAME_SCRIPT")
	static function isThisAMinigameScript():Bool;

	/**
	 * 
	 */
	@:native("IS_XBOX360_VERSION")
	static function isXbox360Version():Bool;

	/**
	 * ```
	 * NativeDB Introduced: 2545
	 * ```
	 */
	@:native("IS_STEAM_VERSION")
	static function isSteamVersion():Bool;

	/**
	 * 
	 */
	@:native("IS_STUNT_JUMP_MESSAGE_SHOWING")
	static function isStuntJumpMessageShowing():Bool;

	/**
	 * ```
	 * The following cloudhats are useable:
	 * altostratus
	 * Cirrus
	 * cirrocumulus
	 * Clear 01
	 * Cloudy 01
	 * Contrails
	 * Horizon
	 * horizonband1
	 * horizonband2
	 * horizonband3
	 * horsey
	 * Nimbus
	 * Puffs
	 * RAIN
	 * Snowy 01
	 * Stormy 01
	 * stratoscumulus
	 * Stripey
	 * shower
	 * Wispy
	 * ```
	 */
	@:native("LOAD_CLOUD_HAT")
	static function loadCloudHat(name:String, transitionTime:Float):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SET_SCRIPT_IS_SAFE_FOR_NETWORK_GAME")
	static function networkSetScriptIsSafeForNetworkGame():Dynamic;

	/**
	 * ```cpp
	 * enum eFontBitField
	 * {
	 *   FONT_BIT_STANDARD = 1,
	 *   FONT_BIT_CURSIVE = 2,
	 *   FONT_BIT_ROCKSTAR_TAG = 4
	 *   FONT_BIT_LEADERBOARD = 8
	 *   FONT_BIT_CONDENSED = 16
	 *   FONT_BIT_FIXED_WIDTH_NUMBERS = 32
	 *   FONT_BIT_CONDENSED_NOT_GAMERNAME = 64
	 *   FONT_BIT_PRICEDOWN = 128
	 * };
	 * ```
	 */
	@:native("NEXT_ONSCREEN_KEYBOARD_RESULT_WILL_DISPLAY_USING_THESE_FONTS")
	static function nextOnscreenKeyboardResultWillDisplayUsingTheseFonts(fontBitField:Int):Dynamic;

	/**
	 * 
	 */
	@:native("OVERRIDE_SAVE_HOUSE")
	static function overrideSaveHouse(p0:Bool, p1:Float, p2:Float, p3:Float, p4:Float, p5:Bool, p6:Dynamic, p7:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("PAUSE_DEATH_ARREST_RESTART")
	static function pauseDeathArrestRestart(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("PLAY_TENNIS_SWING_ANIM")
	static function playTennisSwingAnim(ped:Dynamic, animDict:String, animName:String, p3:Float, p4:Float, p5:Bool):Dynamic;

	/**
	 * ```
	 * Found in the scripts:
	 * MISC::_11B56FBBF7224868("CONTRAILS");
	 * ```
	 */
	@:native("PRELOAD_CLOUD_HAT")
	static function preloadCloudHat(name:String):Dynamic;

	/**
	 * Shows the screen which is visible before you redo a mission? The game will make a restoration point where you will cameback when the mission is over.
	 */
	@:native("QUEUE_MISSION_REPEAT_SAVE")
	static function queueMissionRepeatSave():Bool;

	/**
	 * 
	 */
	@:native("QUEUE_MISSION_REPEAT_LOAD")
	static function queueMissionRepeatLoad():Bool;

	/**
	 * 
	 */
	@:native("REGISTER_BOOL_TO_SAVE")
	static function registerBoolToSave(p0:Dynamic, name:String):Dynamic;

	/**
	 * 
	 */
	@:native("PLAY_TENNIS_DIVE_ANIM")
	static function playTennisDiveAnim(ped:Dynamic, p1:Int, p2:Float, p3:Float, p4:Float, p5:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("REGISTER_SAVE_HOUSE")
	static function registerSaveHouse(p0:Float, p1:Float, p2:Float, p3:Float, p4:Dynamic, p5:Dynamic, p6:Dynamic):Dynamic;

	/**
	 * Quits the game.
	 */
	@:native("QUIT_GAME")
	static function quitGame():Dynamic;

	/**
	 * 
	 */
	@:native("REGISTER_INT_TO_SAVE")
	static function registerIntToSave(p0:Dynamic, name:String):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_DISPATCH_SPAWN_BLOCKING_AREA")
	static function removeDispatchSpawnBlockingArea(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * spawns a few distant/out-of-sight peds, vehicles, animals etc each time it is called  
	 * ```
	 */
	@:native("POPULATE_NOW")
	static function populateNow():Dynamic;

	/**
	 * 
	 */
	@:native("REGISTER_FLOAT_TO_SAVE")
	static function registerFloatToSave(p0:Dynamic, name:String):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_POP_MULTIPLIER_SPHERE")
	static function removePopMultiplierSphere(id:Int, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("REGISTER_ENUM_TO_SAVE")
	static function registerEnumToSave(p0:Dynamic, name:String):Dynamic;

	/**
	 * 
	 */
	@:native("REGISTER_TEXT_LABEL_TO_SAVE")
	static function registerTextLabelToSave(p0:Dynamic, name:String):Dynamic;

	/**
	 * ```
	 * Appears to remove stealth kill action from memory
	 * ```
	 */
	@:native("_REMOVE_STEALTH_KILL")
	static function RemoveStealthKill(hash:Int, p1:Bool):Dynamic;

	/**
	 * ```
	 * Seems to have the same functionality as REGISTER_TEXT_LABEL_TO_SAVE?
	 * MISC::_6F7794F28C6B2535(&a_0._f1, "tlPlateText");
	 * MISC::_6F7794F28C6B2535(&a_0._f1C, "tlPlateText_pending");
	 * MISC::_6F7794F28C6B2535(&a_0._f10B, "tlCarAppPlateText");
	 * "tl" prefix sounds like "Text Label"
	 * ```
	 */
	@:native("_REGISTER_TEXT_LABEL_TO_SAVE_2")
	static function RegisterTextLabelToSave2(p0:Dynamic, name:String):Dynamic;

	/**
	 * 
	 */
	@:native("_REGISTER_INT64_TO_SAVE")
	static function RegisterInt64ToSave(p0:Dynamic, name:String):Dynamic;

	/**
	 * In singleplayer it does exactly what the name implies. In FiveM / GTA:Online it shows the `Disconnecting from GTA Online` warning screen message and quits the game.
	 * After quitting, the game process is started again (as the name implies).
	 */
	@:native("RESTART_GAME")
	static function restartGame():Dynamic;

	/**
	 * Initializes a script race in GTA:Online and sets up the helper split time system.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SCRIPT_RACE_INIT")
	static function scriptRaceInit(numCheckpoints:Int, numLaps:Int, numPlayers:Int, localPlayer:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("RESET_DISPATCH_SPAWN_BLOCKING_AREAS")
	static function resetDispatchSpawnBlockingAreas():Dynamic;

	/**
	 * 
	 */
	@:native("SCRIPT_RACE_SHUTDOWN")
	static function scriptRaceShutdown():Dynamic;

	/**
	 * ```
	 * Saves the benchmark recording to %USERPROFILE%\Documents\Rockstar Games\GTA V\Benchmarks and submits some metrics.
	 * ```
	 */
	@:native("_SAVE_BENCHMARK_RECORDING")
	static function SaveBenchmarkRecording():Dynamic;

	/**
	 * ```
	 * Begins with RESET_*. Next character in the name is either D or E.
	 * ```
	 */
	@:native("_RESET_BENCHMARK_RECORDING")
	static function ResetBenchmarkRecording():Dynamic;

	/**
	 * Records that a player has successfully passed a checkpoint during a scripted race in GTA:Online. This native should be used after initializing the race with [`SCRIPT_RACE_INIT`](#\_0x0A60017F841A54F2).
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SCRIPT_RACE_PLAYER_HIT_CHECKPOINT")
	static function scriptRacePlayerHitCheckpoint(ped:Dynamic, checkpoint:Int, lap:Int, time:Int):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_POP_MULTIPLIER_AREA")
	static function removePopMultiplierArea(id:Int, p1:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("RESET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS")
	static function resetDispatchTimeBetweenSpawnAttempts(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * This sets bit [offset] of [address] to on.
	 * The offsets used are different bits to be toggled on and off, typically there is only one address used in a script.
	 * Example:
	 * MISC::SET_BIT(&bitAddress, 1);
	 * To check if this bit has been enabled:
	 * MISC::IS_BIT_SET(bitAddress, 1); // will return 1 afterwards
	 * Please note, this method may assign a value to [address] when used.
	 * ```
	 */
	@:native("SET_BIT")
	static function setBit(address:Dynamic, offset:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RESET_DISPATCH_IDEAL_SPAWN_DISTANCE")
	static function resetDispatchIdealSpawnDistance():Dynamic;

	/**
	 * 
	 */
	@:native("SET_DISPATCH_IDEAL_SPAWN_DISTANCE")
	static function setDispatchIdealSpawnDistance(p0:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_BEAST_MODE_ACTIVE")
	static function SetBeastModeActive(player:Dynamic):Dynamic;

	/**
	 * Overrides the cloud settings, which are normally controlled by the weather, with the specified named version. This native allows for custom cloud formations and behaviors that deviate from the default settings associated with the game's current weather conditions.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SET_CLOUD_SETTINGS_OVERRIDE")
	static function setCloudSettingsOverride(overrideSettingsName:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("_RESET_DISPATCH_SPAWN_LOCATION")
	static function ResetDispatchSpawnLocation():Dynamic;

	/**
	 * 
	 */
	@:native("SET_DISPATCH_SPAWN_LOCATION")
	static function setDispatchSpawnLocation(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS")
	static function setDispatchTimeBetweenSpawnAttempts(p0:Dynamic, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_BITS_IN_RANGE")
	static function setBitsInRange(var_:Dynamic, rangeStart:Int, rangeEnd:Int, p3:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SCRIPT_RACE_GET_PLAYER_SPLIT_TIME")
	static function scriptRaceGetPlayerSplitTime(player:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * Allows modification of the cloud opacity. It can also be used in other contexts, such as when the player is in a switch state [`IS_PLAYER_SWITCH_IN_PROGRESS`](#\_0xD9D2CFFF49FAB35F).
	 */
	@:native("SET_CLOUDS_ALPHA")
	static function setCloudsAlpha(opacity:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_EXPLOSIVE_AMMO_THIS_FRAME")
	static function setExplosiveAmmoThisFrame(player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CREDITS_ACTIVE")
	static function setCreditsActive(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_FADE_IN_AFTER_LOAD")
	static function setFadeInAfterLoad(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_EXPLOSIVE_MELEE_THIS_FRAME")
	static function setExplosiveMeleeThisFrame(player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS_MULTIPLIER")
	static function setDispatchTimeBetweenSpawnAttemptsMultiplier(p0:Dynamic, p1:Float):Dynamic;

	/**
	 * ```
	 * Sets whether the game should fade in after the player dies or is arrested.  
	 * ```
	 */
	@:native("SET_FADE_IN_AFTER_DEATH_ARREST")
	static function setFadeInAfterDeathArrest(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sets whether the game should fade out after the player dies.  
	 * ```
	 */
	@:native("SET_FADE_OUT_AFTER_DEATH")
	static function setFadeOutAfterDeath(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sets whether the game should fade out after the player is arrested.  
	 * ```
	 */
	@:native("SET_FADE_OUT_AFTER_ARREST")
	static function setFadeOutAfterArrest(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sets a visually fake wanted level on the user interface. Used by Rockstar's scripts to "override" regular wanted levels and make custom ones while the real wanted level and multipliers are still in effect.
	 * Max is 6, anything above this makes it just 6. Also the mini-map gets the red & blue flashing effect.
	 * ```
	 */
	@:native("SET_FAKE_WANTED_LEVEL")
	static function setFakeWantedLevel(fakeWantedLevel:Int):Dynamic;

	/**
	 * ```cpp
	 * enum eGravityLevel
	 * {
	 *     GRAV_EARTH = 0, // earth gravity 9.8m/s2
	 *     GRAV_MOON = 1, // moon gravity 2.4m/s2
	 *     GRAV_LOW = 2, // very low gravity
	 *     GRAV_ZERO = 3 // zero gravity
	 * }
	 * ```
	 */
	@:native("SET_GRAVITY_LEVEL")
	static function setGravityLevel(level:Int):Dynamic;

	/**
	 * ```
	 * Make sure to call this from the correct thread if you're using multiple threads because all other threads except the one which is calling SET_GAME_PAUSED will be paused which means you will lose control and the game remains in paused mode until you exit GTA5.exe  
	 * ```
	 */
	@:native("SET_GAME_PAUSED")
	static function setGamePaused(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_FIRE_AMMO_THIS_FRAME")
	static function setFireAmmoThisFrame(player:Dynamic):Dynamic;

	/**
	 * ```
	 * Sets an unknown flag used by CScene in determining which entities from CMapData scene nodes to draw, similar to SET_INSTANCE_PRIORITY_MODE.
	 * ```
	 */
	@:native("SET_INSTANCE_PRIORITY_HINT")
	static function setInstancePriorityHint(flag:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("_SET_FORCE_PLAYER_TO_JUMP")
	static function SetForcePlayerToJump(player:Dynamic):Dynamic;

	/**
	 * ```
	 * SET_INCIDENT_*
	 * ```
	 */
	@:native("_SET_INCIDENT_UNK")
	static function SetIncidentUnk(incidentId:Int, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_INCIDENT_REQUESTED_UNITS")
	static function setIncidentRequestedUnits(incidentId:Int, dispatchService:Int, numUnits:Int):Dynamic;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
	 */
	@:native("SET_OVERRIDE_WEATHER")
	static function setOverrideWeather(weatherType:String):Dynamic;

	/**
	 * ```
	 * If the parameter is true, sets the random event flag to true, if the parameter is false, the function does nothing at all.  
	 * Does nothing if the mission flag is set.  
	 * ```
	 */
	@:native("SET_RANDOM_EVENT_FLAG")
	static function setRandomEventFlag(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_MINIGAME_IN_PROGRESS")
	static function setMinigameInProgress(toggle:Bool):Dynamic;

	/**
	 * Sets the maximum prop density and changes a loading screen flag from 'loading story mode' to 'loading GTA Online'. It causes a loading screen to show as it reloads map data.
	 */
	@:native("SET_INSTANCE_PRIORITY_MODE")
	static function setInstancePriorityMode(toggle:Int):Dynamic;

	/**
	 * ```
	 * If true, the player can't save the game.   
	 * If the parameter is true, sets the mission flag to true, if the parameter is false, the function does nothing at all.  
	 * ^ also, if the mission flag is already set, the function does nothing at all  
	 * ```
	 */
	@:native("SET_MISSION_FLAG")
	static function setMissionFlag(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_RANDOM_SEED")
	static function setRandomSeed(seed:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_RESTART_CUSTOM_POSITION")
	static function SetRestartCustomPosition(x:Float, y:Float, z:Float, heading:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_RANDOM_WEATHER_TYPE")
	static function setRandomWeatherType():Dynamic;

	/**
	 * ```
	 * If toggle is true, the ped's head is shown in the pause menu
	 * If toggle is false, the ped's head is not shown in the pause menu
	 * ```
	 */
	@:native("_SET_PLAYER_IS_IN_ANIMAL_FORM")
	static function SetPlayerIsInAnimalForm(toggle:Bool):Dynamic;

	/**
	 * Activates riot mode. All NPCs are being hostile to each other (including player). Also the game will give weapons (pistols, smgs) to random NPCs.
	 */
	@:native("SET_RIOT_MODE_ENABLED")
	static function setRiotModeEnabled(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_SAVE_HOUSE")
	static function setSaveHouse(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * ignoreVehicle - bypasses vehicle check of the local player (it will not open if you are in a vehicle and this is set to false)
	 * ```
	 */
	@:native("SET_SAVE_MENU_ACTIVE")
	static function setSaveMenuActive(ignoreVehicle:Bool):Dynamic;

	/**
	 * ```
	 * SET_PLAYER_*
	 * ```
	 */
	@:native("_SET_PLAYER_ROCKSTAR_EDITOR_DISABLED")
	static function SetPlayerRockstarEditorDisabled(toggle:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("_SET_SNOW_LEVEL")
	static function SetSnowLevel(level:Float):Dynamic;

	/**
	 * Controls rain, rain sounds and the creation of puddles.
	 * 
	 * With an `level` higher than `0.5f`, only the creation of puddles gets faster, rain and rain sound won't increase after that.
	 * 
	 * With an `level` of `0.0f` rain and rain sounds are disabled and there won't be any new puddles.
	 * 
	 * To use the rain level of the current weather, call this native with `-1f` as `level`.
	 */
	@:native("_SET_RAIN_LEVEL")
	static function SetRainLevel(level:Float):Dynamic;

	/**
	 * Allows the player to perform super jumps. This function must be called every frame for it to work.
	 * It basically OR's a flag for a single frame, allowing the ped to perform a super jump only when the flag is set.
	 */
	@:native("SET_SUPER_JUMP_THIS_FRAME")
	static function setSuperJumpThisFrame(player:Dynamic):Dynamic;

	/**
	 * Normally, blips can only be removed by the script or resource that created them. However, this native function allows a script to bypass this logic and remove blips from any script.
	 */
	@:native("SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT")
	static function setThisScriptCanRemoveBlipsCreatedByAnyScript(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_STUNT_JUMPS_CAN_TRIGGER")
	static function setStuntJumpsCanTrigger(toggle:Bool):Dynamic;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
	 */
	@:native("SET_WEATHER_TYPE_OVERTIME_PERSIST")
	static function setWeatherTypeOvertimePersist(weatherType:String, time:Float):Dynamic;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW`](#\_0x29B487C359E19889) for weather types.
	 */
	@:native("SET_WEATHER_TYPE_NOW_PERSIST")
	static function setWeatherTypeNowPersist(weatherType:String):Dynamic;

	/**
	 * Immediately changes the game's weather to the specified type, which will then persist for one cycle before the game resumes its natural weather progression.
	 * 
	 * **Note:** This native is not supported in networked sessions. Please refer to [`SET_OVERRIDE_WEATHER`](#\_0xA43D5C6FE51ADBEF) or [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) if you want to override weather in networked sessions.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 * 
	 * **Weather Types:**
	 * 
	 * *   CLEAR
	 * *   EXTRASUNNY
	 * *   CLOUDS
	 * *   OVERCAST
	 * *   RAIN
	 * *   CLEARING
	 * *   THUNDER
	 * *   SMOG
	 * *   FOGGY
	 * *   XMAS
	 * *   SNOW
	 * *   SNOWLIGHT
	 * *   BLIZZARD
	 * *   HALLOWEEN
	 * *   NEUTRAL
	 */
	@:native("SET_WEATHER_TYPE_NOW")
	static function setWeatherTypeNow(weatherType:String):Dynamic;

	/**
	 * 
	 */
	@:native("SET_THIS_SCRIPT_CAN_BE_PAUSED")
	static function setThisScriptCanBePaused(toggle:Bool):Dynamic;

	/**
	 * Sets the current weather type to persist indefinitely until changed.
	 * 
	 * **Note:** This native is not supported in networked sessions. Please refer to [`SET_OVERRIDE_WEATHER`](#\_0xA43D5C6FE51ADBEF) or [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) if you want to override weather in networked sessions.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SET_WEATHER_TYPE_PERSIST")
	static function setWeatherTypePersist(weatherType:String):Dynamic;

	/**
	 * ```
	 * Maximum value is 1.  
	 * At a value of 0 the game will still run at a minimum time scale.  
	 * Slow Motion 1: 0.6  
	 * Slow Motion 2: 0.4  
	 * Slow Motion 3: 0.2  
	 * ```
	 */
	@:native("SET_TIME_SCALE")
	static function setTimeScale(timeScale:Float):Dynamic;

	/**
	 * Sets the wind direction. The wind direction will stay persistent until it is reset (see examples).
	 */
	@:native("SET_WIND_DIRECTION")
	static function setWindDirection(direction:Float):Dynamic;

	/**
	 * Shoots a bullet from the first vector to the second vector. The weapon used as weaponHash should already be loaded via REQUEST_WEAPON_ASSET, otherwise the bullet may fail to materialise.
	 */
	@:native("SHOOT_SINGLE_BULLET_BETWEEN_COORDS")
	static function shootSingleBulletBetweenCoords(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, damage:Int, pureAccuracy:Bool, weaponHash:Int, ownerPed:Dynamic, isAudible:Bool, isInvisible:Bool, speed:Float):Dynamic;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
	 * 
	 * ```
	 * Mixes two weather types. If percentWeather2 is set to 0.0f, then the weather will be entirely of weatherType1, if it is set to 1.0f it will be entirely of weatherType2. If it's set somewhere in between, there will be a mixture of weather behaviors. To test, try this in the RPH console, and change the float to different values between 0 and 1:  
	 * execute "NativeFunction.Natives.x578C752848ECFA0C(Game.GetHashKey(""RAIN""), Game.GetHashKey(""SMOG""), 0.50f);  
	 * ```
	 */
	@:native("_SET_WEATHER_TYPE_TRANSITION")
	static function SetWeatherTypeTransition(weatherType1:Int, weatherType2:Int, percentWeather2:Float):Dynamic;

	/**
	 * Sets the the raw wind speed value. The wind speed will stay persistent until it is reset (see examples).
	 */
	@:native("SET_WIND")
	static function setWind(speed:Float):Dynamic;

	/**
	 * ```
	 * entity - entity to ignore  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 15: Any p14
	 * ```
	 */
	@:native("SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY")
	static function shootSingleBulletBetweenCoordsIgnoreEntity(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, damage:Int, p7:Bool, weaponHash:Int, ownerPed:Dynamic, isAudible:Bool, isInvisible:Bool, speed:Float, entity:Dynamic):Dynamic;

	/**
	 * Using this native will clamp the wind speed value to a range of 0.0 - 12.0. The wind speed will stay persistent until it is reset (see examples).
	 */
	@:native("SET_WIND_SPEED")
	static function setWindSpeed(speed:Float):Dynamic;

	/**
	 * Returns true if the game is using the metric measurement system (profile setting 227), false if imperial is used.
	 */
	@:native("SHOULD_USE_METRIC_MEASUREMENTS")
	static function shouldUseMetricMeasurements():Bool;

	/**
	 * This native always come right before SET_ENTITY_QUATERNION where its final 4 parameters are SLERP_NEAR_QUATERNION p9 to p12
	 */
	@:native("SLERP_NEAR_QUATERNION")
	static function slerpNearQuaternion(t:Float, x:Float, y:Float, z:Float, w:Float, x1:Float, y1:Float, z1:Float, w1:Float, outX:Dynamic, outY:Dynamic, outZ:Dynamic, outW:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 19: Any p18
	 * NativeDB Added Parameter 20: Any p19
	 * NativeDB Added Parameter 21: Any p20
	 * ```
	 */
	@:native("SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY_NEW")
	static function shootSingleBulletBetweenCoordsIgnoreEntityNew(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, damage:Int, p7:Bool, weaponHash:Int, ownerPed:Dynamic, isAudible:Bool, isInvisible:Bool, speed:Float, entity:Dynamic, p14:Bool, p15:Bool, p16:Bool, p17:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("START_SAVE_DATA")
	static function startSaveData(p0:Dynamic, p1:Dynamic, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("START_SAVE_ARRAY_WITH_SIZE")
	static function startSaveArrayWithSize(p0:Dynamic, size:Int, arrayName:String):Dynamic;

	/**
	 * ```
	 * Begins with START_*. Next character in the name is either D or E.
	 * ```
	 */
	@:native("_START_BENCHMARK_RECORDING")
	static function StartBenchmarkRecording():Dynamic;

	/**
	 * ```
	 * Begins with STOP_*. Next character in the name is either D or E.
	 * ```
	 */
	@:native("_STOP_BENCHMARK_RECORDING")
	static function StopBenchmarkRecording():Dynamic;

	/**
	 * 
	 */
	@:native("STOP_SAVE_DATA")
	static function stopSaveData():Dynamic;

	/**
	 * 
	 */
	@:native("STOP_SAVE_ARRAY")
	static function stopSaveArray():Dynamic;

	/**
	 * 
	 */
	@:native("TAN")
	static function tan(p0:Float):Float;

	/**
	 * 
	 */
	@:native("START_SAVE_STRUCT_WITH_SIZE")
	static function startSaveStructWithSize(p0:Dynamic, size:Int, structName:String):Dynamic;

	/**
	 * For a full list, see [here](https://gist.github.com/4mmonium/f76f3ecef649ed275b260b433ea84494).
	 */
	@:native("TERMINATE_ALL_SCRIPTS_WITH_THIS_NAME")
	static function terminateAllScriptsWithThisName(scriptName:String):Dynamic;

	/**
	 * Suppresses or enables a specific type of random event for the current frame.
	 * 
	 * ```cpp
	 * enum eEventType {
	 *     RC_PED_STEAL_VEHICLE = 0,
	 *     RC_PED_JAY_WALK_LIGHT = 1,
	 *     RC_COP_PURSUE = 2,
	 *     RC_COP_PURSUE_VEHICLE_FLEE_SPAWNED = 3,
	 *     RC_COP_VEHICLE_DRIVING_FAST = 4,
	 *     RC_COP_VEHICLE_DRIVING_SLOW = 5,
	 *     RC_DRIVER_RECKLESS = 6,
	 *     RC_DRIVER_PRO = 7,
	 *     RC_PED_PURSUE_WHEN_HIT_BY_CAR = 8
	 * }
	 * ```
	 */
	@:native("SUPRESS_RANDOM_EVENT_THIS_FRAME")
	static function supressRandomEventThisFrame(eventType:Int, enable:Bool):Dynamic;

	/**
	 * Returns the current state of the text input box.
	 * 
	 * ```cpp
	 * enum eOSKStatus
	 * {
	 *   OSK_INVALID = -1,
	 *   OSK_PENDING = 0,
	 *   OSK_SUCCESS = 1,
	 *   OSK_CANCELLED = 2,
	 *   OSK_FAILED = 3
	 * };
	 * ```
	 */
	@:native("UPDATE_ONSCREEN_KEYBOARD")
	static function updateOnscreenKeyboard():Int;

	/**
	 * 
	 */
	@:native("STOP_SAVE_STRUCT")
	static function stopSaveStruct():Dynamic;

	/**
	 * ```
	 * Returns false if it's a null or empty string or if the string is too long. outInteger will be set to -999 in that case.  
	 * If all checks have passed successfully, the return value will be set to whatever strtol(string, 0i64, 10); returns.  
	 * ```
	 */
	@:native("STRING_TO_INT")
	static function stringToInt(string:String, outInteger:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("WATER_OVERRIDE_SET_OCEANNOISEMINAMPLITUDE")
	static function waterOverrideSetOceannoiseminamplitude(minAmplitude:Float):Dynamic;

	/**
	 * 
	 */
	@:native("USING_MISSION_CREATOR")
	static function usingMissionCreator(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Called 4 times in the b617d scripts:
	 * MISC::_A74802FB8D0B7814("CONTRAILS", 0);
	 * ```
	 */
	@:native("UNLOAD_CLOUD_HAT")
	static function unloadCloudHat(name:String, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WATER_OVERRIDE_FADE_IN")
	static function waterOverrideFadeIn(p0:Float):Dynamic;

	/**
	 * Enable/disable optional stunt camera.
	 * 
	 * ```
	 * NativeDB Introduced: v757
	 * ```
	 */
	@:native("TOGGLE_SHOW_OPTIONAL_STUNT_JUMP_CAMERA")
	static function toggleShowOptionalStuntJumpCamera(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("WATER_OVERRIDE_SET_OCEANWAVEAMPLITUDE")
	static function waterOverrideSetOceanwaveamplitude(amplitude:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WATER_OVERRIDE_SET_RIPPLEBUMPINESS")
	static function waterOverrideSetRipplebumpiness(bumpiness:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WATER_OVERRIDE_SET_OCEANWAVEMINAMPLITUDE")
	static function waterOverrideSetOceanwaveminamplitude(minAmplitude:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WATER_OVERRIDE_SET_OCEANWAVEMAXAMPLITUDE")
	static function waterOverrideSetOceanwavemaxamplitude(maxAmplitude:Float):Dynamic;

	/**
	 * Returns whether the In-Game Pause Menu Launched the Benchmark Tests.
	 */
	@:native("UI_STARTED_END_USER_BENCHMARK")
	static function uiStartedEndUserBenchmark():Bool;

	/**
	 * 
	 */
	@:native("WATER_OVERRIDE_SET_RIPPLEDISTURB")
	static function waterOverrideSetRippledisturb(disturb:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WATER_OVERRIDE_SET_RIPPLEMINBUMPINESS")
	static function waterOverrideSetRippleminbumpiness(minBumpiness:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WATER_OVERRIDE_FADE_OUT")
	static function waterOverrideFadeOut(p0:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WATER_OVERRIDE_SET_SHOREWAVEMAXAMPLITUDE")
	static function waterOverrideSetShorewavemaxamplitude(maxAmplitude:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WATER_OVERRIDE_SET_SHOREWAVEMINAMPLITUDE")
	static function waterOverrideSetShorewaveminamplitude(minAmplitude:Float):Dynamic;

	/**
	 * ```
	 * This seems to edit the water wave, intensity around your current location.  
	 * 0.0f = Normal  
	 * 1.0f = So Calm and Smooth, a boat will stay still.  
	 * 3.0f = Really Intense.  
	 * ```
	 */
	@:native("WATER_OVERRIDE_SET_STRENGTH")
	static function waterOverrideSetStrength(strength:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WATER_OVERRIDE_SET_RIPPLEMAXBUMPINESS")
	static function waterOverrideSetRipplemaxbumpiness(maxBumpiness:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WATER_OVERRIDE_SET_SHOREWAVEAMPLITUDE")
	static function waterOverrideSetShorewaveamplitude(amplitude:Float):Dynamic;

}
