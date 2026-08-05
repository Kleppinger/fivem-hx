package fivem.client.natives;

@:native("_G")
extern class Misc {
	/**
	 * 
	 */
	@:native("Acos")
	static function acos(p0:Float):Float;

	/**
	 * To remove, see: [`REMOVE_DISPATCH_SPAWN_BLOCKING_AREA`](#\_0x264AC28B01B353A5).
	 * 
	 * See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
	 */
	@:native("AddDispatchSpawnBlockingAngledArea")
	static function AddDispatchSpawnBlockingAngledArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, width:Float):Dynamic;

	/**
	 * 
	 */
	@:native("Absf")
	static function absf(value:Float):Float;

	/**
	 * Creates and opens a new activity feed post to start filling in.
	 * 
	 * **Note**: This is a PS4 related native, resulting in a nullsub on the PC platform. This native won't do anything when invoked.
	 */
	@:native("ActivityFeedCreate")
	static function activityFeedCreate(captionString:String, condensedCaptionString:String):Dynamic;

	/**
	 * 
	 */
	@:native("Absi")
	static function absi(value:Int):Int;

	/**
	 * 
	 */
	@:native("AddPoliceRestart")
	static function addPoliceRestart(p0:Float, p1:Float, p2:Float, p3:Float, p4:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("AddDispatchSpawnBlockingArea")
	static function AddDispatchSpawnBlockingArea(x1:Float, y1:Float, x2:Float, y2:Float):Dynamic;

	/**
	 * ```
	 * Returns the index of the newly created hospital spawn point.  
	 * p3 might be radius?  
	 * ```
	 */
	@:native("AddHospitalRestart")
	static function addHospitalRestart(x:Float, y:Float, z:Float, p3:Float, p4:Dynamic):Int;

	/**
	 * ```
	 * This native is adding a zone, where you can change density settings. For example, you can add a zone on 0.0, 0.0, 0.0 with radius 900.0 and vehicleMultiplier 0.0, and you will not see any new population vehicle spawned in a radius of 900.0 from 0.0, 0.0, 0.0. Returns the id. You can have only 15 zones at the same time. You can remove zone using REMOVE_POP_MULTIPLIER_SPHERE
	 * ```
	 */
	@:native("AddPopMultiplierSphere")
	static function addPopMultiplierSphere(x:Float, y:Float, z:Float, radius:Float, pedMultiplier:Float, vehicleMultiplier:Float, p6:Bool, p7:Bool):Int;

	/**
	 * 
	 */
	@:native("AddReplayStatValue")
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
	@:native("AddStuntJumpAngled")
	static function addStuntJumpAngled(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, radius1:Float, x3:Float, y3:Float, z3:Float, x4:Float, y4:Float, z4:Float, radius2:Float, camX:Float, camY:Float, camZ:Float, unk1:Int, unk2:Int, unk3:Int):Int;

	/**
	 * ```
	 * NativeDB Added Parameter 10: BOOL p9
	 * ```
	 */
	@:native("AddPopMultiplierArea")
	static function addPopMultiplierArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, p6:Float, p7:Float, p8:Bool):Int;

	/**
	 * ```
	 * Adds a point related to CTacticalAnalysis
	 * ```
	 */
	@:native("AddTacticalAnalysisPoint")
	static function AddTacticalAnalysisPoint(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("AreProfileSettingsValid")
	static function areProfileSettingsValid():Bool;

	/**
	 * 
	 */
	@:native("AllowMissionCreatorWarp")
	static function allowMissionCreatorWarp(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("Asin")
	static function asin(value:Float):Float;

	/**
	 * See description of [`ADD_STUNT_JUMP_ANGLED`](#\_0xBBE5D803A5360CBF) for detailed info. The only difference really is this one does not have the radius (or angle, not sure) floats parameters for entry and landing zones.
	 */
	@:native("AddStuntJump")
	static function addStuntJump(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, x3:Float, y3:Float, z3:Float, x4:Float, y4:Float, z4:Float, camX:Float, camY:Float, camZ:Float, unk1:Int, unk2:Int, unk3:Int):Int;

	/**
	 * 
	 */
	@:native("AreStringsEqual")
	static function areStringsEqual(string1:String, string2:String):Bool;

	/**
	 * 
	 */
	@:native("Atan2")
	static function atan2(p0:Float, p1:Float):Float;

	/**
	 * 
	 */
	@:native("Atan")
	static function atan(p0:Float):Float;

	/**
	 * 
	 */
	@:native("BlockDispatchServiceResourceCreation")
	static function blockDispatchServiceResourceCreation(dispatchService:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CancelStuntJump")
	static function cancelStuntJump():Dynamic;

	/**
	 * Closes the onscreen keyboard on console versions of the game.
	 * 
	 * **NOTE:** Do not use this native in FiveM/PC, because [`UPDATE_ONSCREEN_KEYBOARD`](#\_0x0CF2B696BBF945AE) value doesn't get cleaned up and stays as `0`.
	 * You should use [`FORCE_CLOSE_TEXT_INPUT_BOX`](#\_0x8817605C2BA76200) instead.
	 */
	@:native("CancelOnscreenKeyboard")
	static function cancelOnscreenKeyboard():Dynamic;

	/**
	 * 
	 */
	@:native("BeginReplayStats")
	static function beginReplayStats(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * Example: CLEAR_AREA(0, 0, 0, 30, true, false, false, false);  
	 * ```
	 */
	@:native("ClearArea")
	static function clearArea(X:Float, Y:Float, Z:Float, radius:Float, p4:Bool, ignoreCopCars:Bool, ignoreObjects:Bool, p7:Bool):Dynamic;

	/**
	 * ```
	 * I looked through the PC scripts that this site provides you with a link to find. It shows the last param mainly uses, (0, 2, 6, 16, and 17) so I am going to assume it is a type of flag.  
	 * ```
	 */
	@:native("ClearAreaOfObjects")
	static function clearAreaOfObjects(x:Float, y:Float, z:Float, radius:Float, flags:Int):Dynamic;

	/**
	 * 
	 */
	@:native("CleanupAsyncInstall")
	static function CleanupAsyncInstall():Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 13: Any p12
	 * ```
	 */
	@:native("ClearAngledAreaOfVehicles")
	static function clearAngledAreaOfVehicles(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, width:Float, p7:Bool, p8:Bool, p9:Bool, p10:Bool, p11:Bool):Dynamic;

	/**
	 * Clears an area of peds at the given coordinates and radius.
	 */
	@:native("ClearAreaOfPeds")
	static function clearAreaOfPeds(x:Float, y:Float, z:Float, radius:Float, createNetEvent:Bool):Dynamic;

	/**
	 * Clears an area of cops at the given coordinates and radius.
	 */
	@:native("ClearAreaOfCops")
	static function clearAreaOfCops(x:Float, y:Float, z:Float, radius:Float, createNetEvent:Bool):Dynamic;

	/**
	 * ```
	 * MISC::_0x957838AAF91BD12D(x, y, z, radius, false, false, false, false); seem to make all objects go away, peds, vehicles etc. All booleans set to true doesn't seem to change anything.
	 * ```
	 */
	@:native("ClearAreaLeaveVehicleHealth")
	static function clearAreaLeaveVehicleHealth(x:Float, y:Float, z:Float, radius:Float, p4:Bool, p5:Bool, p6:Bool, p7:Bool):Dynamic;

	/**
	 * Clears an area of projectiles at the given coordinates and radius.
	 */
	@:native("ClearAreaOfProjectiles")
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
	@:native("ClearAreaOfVehicles")
	static function clearAreaOfVehicles(x:Float, y:Float, z:Float, radius:Float, p4:Bool, p5:Bool, p6:Bool, p7:Bool, p8:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("ClearTacticalAnalysisPoints")
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
	@:native("ClearBit")
	static function clearBit(address:Dynamic, offset:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ClearCloudHat")
	static function ClearCloudHat():Dynamic;

	/**
	 * 
	 */
	@:native("ClearOverrideWeather")
	static function clearOverrideWeather():Dynamic;

	/**
	 * 
	 */
	@:native("ClearReplayStats")
	static function clearReplayStats():Dynamic;

	/**
	 * 
	 */
	@:native("ClearWeatherTypePersist")
	static function clearWeatherTypePersist():Dynamic;

	/**
	 * 
	 */
	@:native("ClearRestartCustomPosition")
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
	@:native("CompareStrings")
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
	@:native("DeleteIncident")
	static function deleteIncident(incidentId:Int):Dynamic;

	/**
	 * Clears the active weather type after a specific amount of time determined by `transitionTimeInMs`.
	 */
	@:native("ClearWeatherTypeNowPersistNetwork")
	static function clearWeatherTypeNowPersistNetwork(transitionTimeInMs:Int):Dynamic;

	/**
	 * 
	 */
	@:native("CopyMemory")
	static function CopyMemory(dst:Dynamic, src:Dynamic, size:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 6: Any p5
	 * NativeDB Added Parameter 7: Any p6
	 * ```
	 */
	@:native("CreateIncidentWithEntity")
	static function createIncidentWithEntity(dispatchService:Int, ped:Dynamic, numUnits:Int, radius:Float, outIncidentID:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 8: Any p7
	 * NativeDB Added Parameter 9: Any p8
	 * ```
	 */
	@:native("CreateIncident")
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
	@:native("DisplayOnscreenKeyboard")
	static function displayOnscreenKeyboard(keyboardType:Int, windowTitle:String, description:String, defaultText:String, defaultConcat1:String, defaultConcat2:String, defaultConcat3:String, maxInputLength:Int):Dynamic;

	/**
	 * ```
	 * Disables the spawn point at the police house on the specified index.
	 * policeIndex: The police house index.
	 * toggle: true to enable the spawn point, false to disable.
	 * - Nacorpio
	 * ```
	 */
	@:native("DisablePoliceRestart")
	static function disablePoliceRestart(policeIndex:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DeleteStuntJump")
	static function deleteStuntJump(p0:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DoAutoSave")
	static function doAutoSave():Dynamic;

	/**
	 * 
	 */
	@:native("DoesPopMultiplierAreaExist")
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
	@:native("EnableDispatchService")
	static function enableDispatchService(dispatchService:Int, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Makes the ped jump around like they're in a tennis match  
	 * ```
	 */
	@:native("EnableTennisMode")
	static function enableTennisMode(ped:Dynamic, toggle:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * The game by default has 5 hospital respawn points. Disabling them all will cause the player to respawn at the last position they were.
	 * ```
	 */
	@:native("DisableHospitalRestart")
	static function disableHospitalRestart(hospitalIndex:Int, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DisableStuntJumpSet")
	static function disableStuntJumpSet(p0:Int):Dynamic;

	/**
	 * 
	 */
	@:native("EndReplayStats")
	static function endReplayStats():Dynamic;

	/**
	 * 
	 */
	@:native("DoesPopMultiplierSphereExist")
	static function doesPopMultiplierSphereExist(id:Int):Bool;

	/**
	 * Displays the text input box with support for input with 500 characters.
	 */
	@:native("DisplayOnscreenKeyboardWithLongerInitialString")
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
	@:native("ForceGameStatePlaying")
	static function forceGameStatePlaying():Dynamic;

	/**
	 * 
	 */
	@:native("GetAllocatedStackSize")
	static function getAllocatedStackSize():Int;

	/**
	 * 
	 */
	@:native("EnableStuntJumpSet")
	static function enableStuntJumpSet(p0:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GetBaseElementMetadata")
	static function GetBaseElementMetadata(p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Bool):Bool;

	/**
	 * 
	 */
	@:native("GetBenchmarkTime")
	static function GetBenchmarkTime():Float;

	/**
	 * ```
	 * Finds a position ahead of the player by predicting the players next actions.  
	 * The positions match path finding node positions.  
	 * When roads diverge, the position may rapidly change between two or more positions. This is due to the engine not being certain of which path the player will take.  
	 * ```
	 */
	@:native("FindSpawnPointInDirection")
	static function findSpawnPointInDirection(posX:Float, posY:Float, posZ:Float, dirX:Float, dirY:Float, dirZ:Float, distance:Float, spawnPoint:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetCloudHatOpacity")
	static function GetCloudHatOpacity():Float;

	/**
	 * ```
	 * creates single lightning+thunder at random position  
	 * ```
	 */
	@:native("ForceLightningFlash")
	static function forceLightningFlash():Dynamic;

	/**
	 * 
	 */
	@:native("GetAngleBetween_2dVectors")
	static function getAngleBetween2DVectors(x1:Float, y1:Float, x2:Float, y2:Float):Float;

	/**
	 * 
	 */
	@:native("GetCoordsOfProjectileTypeInArea")
	static function getCoordsOfProjectileTypeInArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, projectileHash:Int, projectilePos:Dynamic, ownedByPlayer:Bool):Bool;

	/**
	 * ```
	 * Returns value of the '-benchmarkPass' command line option.
	 * ```
	 */
	@:native("GetBenchmarkPassFromCommandLine")
	static function GetBenchmarkPassFromCommandLine():Int;

	/**
	 * Gets the number of the current frame being displayed.
	 */
	@:native("GetFrameCount")
	static function getFrameCount():Int;

	/**
	 * ```
	 * Returns value of the '-benchmarkIterations' command line option.
	 * ```
	 */
	@:native("GetBenchmarkIterationsFromCommandLine")
	static function GetBenchmarkIterationsFromCommandLine():Int;

	/**
	 * 
	 */
	@:native("GetBitsInRange")
	static function getBitsInRange(var_:Int, rangeStart:Int, rangeEnd:Int):Int;

	/**
	 * Returns the distance between two three-dimensional points, optionally ignoring the Z values.
	 * If useZ is false, only the 2D plane (X-Y) will be considered for calculating the distance.
	 * Consider using this faster native instead: SYSTEM::VDIST - DVIST always takes in consideration the 3D coordinates.
	 */
	@:native("GetDistanceBetweenCoords")
	static function getDistanceBetweenCoords(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, useZ:Bool):Float;

	/**
	 * ```
	 * Returns pointer to an empty string.
	 * GET_C*
	 * ```
	 */
	@:native("GetGlobalCharBuffer")
	static function GetGlobalCharBuffer():String;

	/**
	 * 
	 */
	@:native("GetCoordsOfProjectileTypeWithinDistance")
	static function getCoordsOfProjectileTypeWithinDistance(ped:Dynamic, weaponHash:Int, distance:Float, outCoords:Dynamic, ownedByPlayer:Bool):Bool;

	/**
	 * Gets the high precision frame time of the last frame in seconds.
	 * 
	 * *note: the example above is way less precise.*
	 */
	@:native("GetFrameTime")
	static function getFrameTime():Float;

	/**
	 * 
	 */
	@:native("GetFakeWantedLevel")
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
	@:native("GetGroundZExcludingObjectsFor_3dCoord")
	static function getGroundZExcludingObjectsFor3DCoord(x:Float, y:Float, z:Float, groundZ:Dynamic, waterAsGround:Bool):Bool;

	/**
	 * Attempts to identify the highest ground Z-coordinate and determine the corresponding surface normal directly beneath a specified 3D coordinate.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("GetGroundZAndNormalFor_3dCoord")
	static function getGroundZAndNormalFor3DCoord(x:Float, y:Float, z:Float, groundZ:Dynamic, normal:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetIndexOfCurrentLevel")
	static function getIndexOfCurrentLevel():Int;

	/**
	 * ```
	 * dx = x1 - x2
	 * dy = y1 - y2
	 * ```
	 */
	@:native("GetHeadingFromVector_2d")
	static function getHeadingFromVector2D(dx:Float, dy:Float):Float;

	/**
	 * This native converts its past string to hash. It is hashed using jenkins one at a time method.
	 */
	@:native("GetHashKey")
	static function getHashKey(string:String):Int;

	/**
	 * 
	 */
	@:native("GetGameTimer")
	static function getGameTimer():Int;

	/**
	 * 
	 */
	@:native("GetMissionFlag")
	static function getMissionFlag():Bool;

	/**
	 * Determines whether a line segment intersects a plane and, if so, returns the parameter value at which this intersection occurs.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("GetLinePlaneIntersection")
	static function getLinePlaneIntersection(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, planeX:Float, planeY:Float, planeZ:Float, planeNormalX:Float, planeNormalY:Float, planeNormalZ:Float, intersectionParameter:Dynamic):Bool;

	/**
	 * ```
	 * Although we don't have a jenkins hash for this one, the name is 100% confirmed.
	 * ```
	 */
	@:native("GetIsPlayerInAnimalForm")
	static function GetIsPlayerInAnimalForm():Bool;

	/**
	 * ```
	 * Gets the dimensions of a model.
	 * Calculate (maximum - minimum) to get the size, in which case, Y will be how long the model is.
	 * Example from the scripts: MISC::GET_MODEL_DIMENSIONS(ENTITY::GET_ENTITY_MODEL(PLAYER::PLAYER_PED_ID()), &v_1A, &v_17);
	 * ```
	 */
	@:native("GetModelDimensions")
	static function getModelDimensions(modelHash:Int, minimum:Dynamic, maximum:Dynamic):Dynamic;

	/**
	 * This native gets the ground level (ground elevation) and returns the Z coordinate that represents it.
	 * Note: This native can only calculate the elevation when the coordinates are within the render distance of the client.
	 * 
	 * ```
	 * NativeDB Added Parameter 6: BOOL p5
	 * ```
	 */
	@:native("GetGroundZFor_3dCoord")
	static function getGroundZFor3DCoord(x:Float, y:Float, z:Float, groundZ:Dynamic, includeWater:Bool):Bool;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
	 */
	@:native("GetNextWeatherTypeHashName")
	static function getNextWeatherTypeHashName():Int;

	/**
	 * 
	 */
	@:native("GetNumDispatchedUnitsForPlayer")
	static function GetNumDispatchedUnitsForPlayer(dispatchService:Int):Int;

	/**
	 * ```
	 * Returns duration of how long the game has been in power-saving mode (aka "constrained") in milliseconds.
	 * ```
	 */
	@:native("GetPowerSavingModeDuration")
	static function GetPowerSavingModeDuration():Int;

	/**
	 * ```
	 * Returns true if profile setting 208 is equal to 0.
	 * ```
	 */
	@:native("GetIsAutoSaveOff")
	static function getIsAutoSaveOff():Bool;

	/**
	 * 
	 */
	@:native("GetNumSuccessfulStuntJumps")
	static function getNumSuccessfulStuntJumps():Int;

	/**
	 * 
	 */
	@:native("GetNumberOfFreeStacksOfThisSize")
	static function getNumberOfFreeStacksOfThisSize(stackSize:Int):Int;

	/**
	 * 
	 */
	@:native("GetProfileSetting")
	static function getProfileSetting(profileSetting:Int):Int;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
	 */
	@:native("GetPrevWeatherTypeHashName")
	static function getPrevWeatherTypeHashName():Int;

	/**
	 * ```
	 * Returns NULL unless UPDATE_ONSCREEN_KEYBOARD() returns 1 in the same tick.  
	 * ```
	 */
	@:native("GetOnscreenKeyboardResult")
	static function getOnscreenKeyboardResult():String;

	/**
	 * 
	 */
	@:native("GetRainLevel")
	static function getRainLevel():Float;

	/**
	 * 
	 */
	@:native("GetProjectileNearPed")
	static function GetProjectileNearPed(ped:Dynamic, weaponHash:Int, distance:Float, outCoords:Dynamic, outProjectile:Dynamic, ownedByPlayer:Bool):Bool;

	/**
	 * 
	 */
	@:native("GetRandomIntInRange")
	static function getRandomIntInRange(startRange:Int, endRange:Int):Int;

	/**
	 * 
	 */
	@:native("GetRandomEventFlag")
	static function getRandomEventFlag():Bool;

	/**
	 * 
	 */
	@:native("GetRandomFloatInRange")
	static function getRandomFloatInRange(startRange:Float, endRange:Float):Float;

	/**
	 * 
	 */
	@:native("GetSizeOfSaveData")
	static function getSizeOfSaveData(p0:Bool):Int;

	/**
	 * 
	 */
	@:native("GetStatusOfMissionRepeatSave")
	static function getStatusOfMissionRepeatSave():Int;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("GetRandomIntInRange_2")
	static function GetRandomIntInRange2(startRange:Int, endRange:Int):Int;

	/**
	 * 
	 */
	@:native("GetReplayStatAtIndex")
	static function getReplayStatAtIndex(index:Int):Int;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
	 */
	@:native("GetWeatherTypeTransition")
	static function GetWeatherTypeTransition(weatherType1:Dynamic, weatherType2:Dynamic, percentWeather2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetReplayStatMissionType")
	static function getReplayStatMissionType():Int;

	/**
	 * 
	 */
	@:native("GetSnowLevel")
	static function getSnowLevel():Float;

	/**
	 * 
	 */
	@:native("GetReplayStatCount")
	static function getReplayStatCount():Int;

	/**
	 * Used for hunting in singleplayer and for golfing in both sp and online. The [`GET_HEADING_FROM_VECTOR_2D`](#\_0x2FFB6B224F4B2926) native can be used to get the wind heading from the direction.
	 */
	@:native("GetWindDirection")
	static function getWindDirection():Dynamic;

	/**
	 * 
	 */
	@:native("GetTotalSuccessfulStuntJumps")
	static function getTotalSuccessfulStuntJumps():Int;

	/**
	 * 
	 */
	@:native("GetTennisSwingAnimComplete")
	static function getTennisSwingAnimComplete(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("HasBulletImpactedInBox")
	static function hasBulletImpactedInBox(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Bool, p7:Bool):Bool;

	/**
	 * ```
	 * p3 - possibly radius?  
	 * ```
	 */
	@:native("HasBulletImpactedInArea")
	static function hasBulletImpactedInArea(x:Float, y:Float, z:Float, p3:Float, p4:Bool, p5:Bool):Bool;

	/**
	 * ```
	 * Hardcoded to always return true.
	 * ```
	 */
	@:native("HasAsyncInstallFinished")
	static function HasAsyncInstallFinished():Bool;

	/**
	 * 
	 */
	@:native("GetWindSpeed")
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
	@:native("HasCheatStringJustBeenEntered")
	static function HasCheatStringJustBeenEntered(hash:Int):Bool;

	/**
	 * ```
	 * This native appears on the cheat_controller script and tracks a combination of buttons, which may be used to toggle cheats in-game. Credits to ThreeSocks for the info. The hash contains the combination, while the "amount" represents the amount of buttons used in a combination. The following page can be used to make a button combination: gta5offset.com/ts/hash/
	 * INT_SCORES_SCORTED was a hash collision
	 * ```
	 */
	@:native("HasButtonCombinationJustBeenEntered")
	static function HasButtonCombinationJustBeenEntered(hash:Int, amount:Int):Bool;

	/**
	 * ```
	 * Hardcoded to return false.
	 * ```
	 */
	@:native("HasResumedFromSuspend")
	static function HasResumedFromSuspend():Bool;

	/**
	 * 
	 */
	@:native("HaveCreditsReachedEnd")
	static function haveCreditsReachedEnd():Bool;

	/**
	 * 
	 */
	@:native("IgnoreNextRestart")
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
	@:native("IsAussieVersion")
	static function isAussieVersion():Bool;

	/**
	 * 
	 */
	@:native("IsAutoSaveInProgress")
	static function isAutoSaveInProgress():Bool;

	/**
	 * See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
	 * 
	 * For projectiles, see: [`IS_PROJECTILE_TYPE_IN_ANGLED_AREA`](#\_0xF0BC12401061DEA0)
	 */
	@:native("IsBulletInAngledArea")
	static function isBulletInAngledArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, width:Float, ownedByPlayer:Bool):Bool;

	/**
	 * 
	 */
	@:native("IsBulletInBox")
	static function isBulletInBox(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, ownedByPlayer:Bool):Bool;

	/**
	 * 
	 */
	@:native("IsAreaOccupied")
	static function isAreaOccupied(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Bool, p7:Bool, p8:Bool, p9:Bool, p10:Bool, p11:Dynamic, p12:Bool):Bool;

	/**
	 * ```
	 * Returns true if command line option '-benchmark' is set.
	 * ```
	 */
	@:native("IsCommandLineBenchmarkValueSet")
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
	@:native("IsBitSet")
	static function isBitSet(address:Int, offset:Int):Bool;

	/**
	 * 
	 */
	@:native("IsBulletInArea")
	static function isBulletInArea(x:Float, y:Float, z:Float, radius:Float, ownedByPlayer:Bool):Bool;

	/**
	 * ```
	 * aka "constrained"
	 * ```
	 */
	@:native("IsInPowerSavingMode")
	static function IsInPowerSavingMode():Bool;

	/**
	 * ```
	 * This function is hard-coded to always return 0.  
	 * ```
	 */
	@:native("IsFrontendFading")
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
	@:native("IsIncidentValid")
	static function isIncidentValid(incidentId:Int):Bool;

	/**
	 * 
	 */
	@:native("IsDurangoVersion")
	static function isDurangoVersion():Bool;

	/**
	 * 
	 */
	@:native("IsMemoryCardInUse")
	static function isMemoryCardInUse():Bool;

	/**
	 * ```
	 * NativeDB Introduced: 2545
	 * ```
	 */
	@:native("IsJapaneseVersion")
	static function isJapaneseVersion():Bool;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
	 */
	@:native("IsNextWeatherType")
	static function isNextWeatherType(weatherType:String):Bool;

	/**
	 * 
	 */
	@:native("IsMinigameInProgress")
	static function isMinigameInProgress():Bool;

	/**
	 * 
	 */
	@:native("IsPointObscuredByAMissionEntity")
	static function isPointObscuredByAMissionEntity(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsPcVersion")
	static function isPcVersion():Bool;

	/**
	 * 
	 */
	@:native("IsOrbisVersion")
	static function isOrbisVersion():Bool;

	/**
	 * The BOOL parameters that are documented have not been confirmed. They are just documented from what I've found during testing. They may not work as expected in all cases.
	 */
	@:native("IsPositionOccupied")
	static function isPositionOccupied(x:Float, y:Float, z:Float, range:Float, p4:Bool, checkVehicles:Bool, checkPeds:Bool, p7:Bool, p8:Bool, ignoreEntity:Dynamic, p10:Bool):Bool;

	/**
	 * ```
	 * Determines whether there is a projectile within the specified coordinates. The coordinates form a rectangle.  
	 * ownedByPlayer = only projectiles fired by the player will be detected.  
	 * ```
	 */
	@:native("IsProjectileInArea")
	static function isProjectileInArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, ownedByPlayer:Bool):Bool;

	/**
	 * 
	 */
	@:native("IsProjectileTypeWithinDistance")
	static function isProjectileTypeWithinDistance(x:Float, y:Float, z:Float, projHash:Int, radius:Float, ownedByPlayer:Bool):Bool;

	/**
	 * 
	 */
	@:native("IsPs3Version")
	static function isPs3Version():Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("IsPopMultiplierAreaUnk")
	static function IsPopMultiplierAreaUnk(id:Int):Bool;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
	 */
	@:native("IsPrevWeatherType")
	static function isPrevWeatherType(weatherType:String):Bool;

	/**
	 * 
	 */
	@:native("IsStringNull")
	static function isStringNull(string:String):Bool;

	/**
	 * See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
	 * 
	 * ```
	 * NativeDB Removed Parameter 7: float p7
	 * ```
	 */
	@:native("IsProjectileTypeInAngledArea")
	static function isProjectileTypeInAngledArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, width:Float, p7:Float, weaponHash:Int, ownedByPlayer:Bool):Bool;

	/**
	 * 
	 */
	@:native("IsTennisMode")
	static function isTennisMode(ped:Dynamic):Bool;

	/**
	 * ```
	 * This function is hard-coded to always return 0.  
	 * ```
	 */
	@:native("IsSniperInverted")
	static function isSniperInverted():Bool;

	/**
	 * ```
	 * Determines whether there is a projectile of a specific type within the specified coordinates. The coordinates form a axis-aligned bounding box.  
	 * ```
	 */
	@:native("IsProjectileTypeInArea")
	static function isProjectileTypeInArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, type:Int, ownedByPlayer:Bool):Bool;

	/**
	 * ```
	 * Determines whether there is a sniper bullet within the specified coordinates. The coordinates form an axis-aligned bounding box.  
	 * ```
	 */
	@:native("IsSniperBulletInArea")
	static function isSniperBulletInArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float):Bool;

	/**
	 * 
	 */
	@:native("IsStringNullOrEmpty")
	static function isStringNullOrEmpty(string:String):Bool;

	/**
	 * ```
	 * Returns true if the current frontend menu is FE_MENU_VERSION_LANDING_MENU
	 * ```
	 */
	@:native("LandingMenuIsActive")
	static function LandingMenuIsActive():Bool;

	/**
	 * 
	 */
	@:native("IsStuntJumpInProgress")
	static function isStuntJumpInProgress():Bool;

	/**
	 * 
	 */
	@:native("IsThisAMinigameScript")
	static function isThisAMinigameScript():Bool;

	/**
	 * 
	 */
	@:native("IsXbox360Version")
	static function isXbox360Version():Bool;

	/**
	 * ```
	 * NativeDB Introduced: 2545
	 * ```
	 */
	@:native("IsSteamVersion")
	static function isSteamVersion():Bool;

	/**
	 * 
	 */
	@:native("IsStuntJumpMessageShowing")
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
	@:native("LoadCloudHat")
	static function loadCloudHat(name:String, transitionTime:Float):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSetScriptIsSafeForNetworkGame")
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
	@:native("NextOnscreenKeyboardResultWillDisplayUsingTheseFonts")
	static function nextOnscreenKeyboardResultWillDisplayUsingTheseFonts(fontBitField:Int):Dynamic;

	/**
	 * 
	 */
	@:native("OverrideSaveHouse")
	static function overrideSaveHouse(p0:Bool, p1:Float, p2:Float, p3:Float, p4:Float, p5:Bool, p6:Dynamic, p7:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("PauseDeathArrestRestart")
	static function pauseDeathArrestRestart(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("PlayTennisSwingAnim")
	static function playTennisSwingAnim(ped:Dynamic, animDict:String, animName:String, p3:Float, p4:Float, p5:Bool):Dynamic;

	/**
	 * ```
	 * Found in the scripts:
	 * MISC::_11B56FBBF7224868("CONTRAILS");
	 * ```
	 */
	@:native("PreloadCloudHat")
	static function preloadCloudHat(name:String):Dynamic;

	/**
	 * Shows the screen which is visible before you redo a mission? The game will make a restoration point where you will cameback when the mission is over.
	 */
	@:native("QueueMissionRepeatSave")
	static function queueMissionRepeatSave():Bool;

	/**
	 * 
	 */
	@:native("QueueMissionRepeatLoad")
	static function queueMissionRepeatLoad():Bool;

	/**
	 * 
	 */
	@:native("RegisterBoolToSave")
	static function registerBoolToSave(p0:Dynamic, name:String):Dynamic;

	/**
	 * 
	 */
	@:native("PlayTennisDiveAnim")
	static function playTennisDiveAnim(ped:Dynamic, p1:Int, p2:Float, p3:Float, p4:Float, p5:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("RegisterSaveHouse")
	static function registerSaveHouse(p0:Float, p1:Float, p2:Float, p3:Float, p4:Dynamic, p5:Dynamic, p6:Dynamic):Dynamic;

	/**
	 * Quits the game.
	 */
	@:native("QuitGame")
	static function quitGame():Dynamic;

	/**
	 * 
	 */
	@:native("RegisterIntToSave")
	static function registerIntToSave(p0:Dynamic, name:String):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveDispatchSpawnBlockingArea")
	static function removeDispatchSpawnBlockingArea(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * spawns a few distant/out-of-sight peds, vehicles, animals etc each time it is called  
	 * ```
	 */
	@:native("PopulateNow")
	static function populateNow():Dynamic;

	/**
	 * 
	 */
	@:native("RegisterFloatToSave")
	static function registerFloatToSave(p0:Dynamic, name:String):Dynamic;

	/**
	 * 
	 */
	@:native("RemovePopMultiplierSphere")
	static function removePopMultiplierSphere(id:Int, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("RegisterEnumToSave")
	static function registerEnumToSave(p0:Dynamic, name:String):Dynamic;

	/**
	 * 
	 */
	@:native("RegisterTextLabelToSave")
	static function registerTextLabelToSave(p0:Dynamic, name:String):Dynamic;

	/**
	 * ```
	 * Appears to remove stealth kill action from memory
	 * ```
	 */
	@:native("RemoveStealthKill")
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
	@:native("RegisterTextLabelToSave_2")
	static function RegisterTextLabelToSave2(p0:Dynamic, name:String):Dynamic;

	/**
	 * 
	 */
	@:native("RegisterInt64ToSave")
	static function RegisterInt64ToSave(p0:Dynamic, name:String):Dynamic;

	/**
	 * In singleplayer it does exactly what the name implies. In FiveM / GTA:Online it shows the `Disconnecting from GTA Online` warning screen message and quits the game.
	 * After quitting, the game process is started again (as the name implies).
	 */
	@:native("RestartGame")
	static function restartGame():Dynamic;

	/**
	 * Initializes a script race in GTA:Online and sets up the helper split time system.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("ScriptRaceInit")
	static function scriptRaceInit(numCheckpoints:Int, numLaps:Int, numPlayers:Int, localPlayer:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("ResetDispatchSpawnBlockingAreas")
	static function resetDispatchSpawnBlockingAreas():Dynamic;

	/**
	 * 
	 */
	@:native("ScriptRaceShutdown")
	static function scriptRaceShutdown():Dynamic;

	/**
	 * ```
	 * Saves the benchmark recording to %USERPROFILE%\Documents\Rockstar Games\GTA V\Benchmarks and submits some metrics.
	 * ```
	 */
	@:native("SaveBenchmarkRecording")
	static function SaveBenchmarkRecording():Dynamic;

	/**
	 * ```
	 * Begins with RESET_*. Next character in the name is either D or E.
	 * ```
	 */
	@:native("ResetBenchmarkRecording")
	static function ResetBenchmarkRecording():Dynamic;

	/**
	 * Records that a player has successfully passed a checkpoint during a scripted race in GTA:Online. This native should be used after initializing the race with [`SCRIPT_RACE_INIT`](#\_0x0A60017F841A54F2).
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("ScriptRacePlayerHitCheckpoint")
	static function scriptRacePlayerHitCheckpoint(ped:Dynamic, checkpoint:Int, lap:Int, time:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RemovePopMultiplierArea")
	static function removePopMultiplierArea(id:Int, p1:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("ResetDispatchTimeBetweenSpawnAttempts")
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
	@:native("SetBit")
	static function setBit(address:Dynamic, offset:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ResetDispatchIdealSpawnDistance")
	static function resetDispatchIdealSpawnDistance():Dynamic;

	/**
	 * 
	 */
	@:native("SetDispatchIdealSpawnDistance")
	static function setDispatchIdealSpawnDistance(p0:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetBeastModeActive")
	static function SetBeastModeActive(player:Dynamic):Dynamic;

	/**
	 * Overrides the cloud settings, which are normally controlled by the weather, with the specified named version. This native allows for custom cloud formations and behaviors that deviate from the default settings associated with the game's current weather conditions.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SetCloudSettingsOverride")
	static function setCloudSettingsOverride(overrideSettingsName:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("ResetDispatchSpawnLocation")
	static function ResetDispatchSpawnLocation():Dynamic;

	/**
	 * 
	 */
	@:native("SetDispatchSpawnLocation")
	static function setDispatchSpawnLocation(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetDispatchTimeBetweenSpawnAttempts")
	static function setDispatchTimeBetweenSpawnAttempts(p0:Dynamic, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetBitsInRange")
	static function setBitsInRange(var_:Dynamic, rangeStart:Int, rangeEnd:Int, p3:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ScriptRaceGetPlayerSplitTime")
	static function scriptRaceGetPlayerSplitTime(player:Dynamic, p1:Dynamic, p2:Dynamic):Bool;

	/**
	 * Allows modification of the cloud opacity. It can also be used in other contexts, such as when the player is in a switch state [`IS_PLAYER_SWITCH_IN_PROGRESS`](#\_0xD9D2CFFF49FAB35F).
	 */
	@:native("SetCloudsAlpha")
	static function setCloudsAlpha(opacity:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetExplosiveAmmoThisFrame")
	static function setExplosiveAmmoThisFrame(player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SetCreditsActive")
	static function setCreditsActive(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetFadeInAfterLoad")
	static function setFadeInAfterLoad(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetExplosiveMeleeThisFrame")
	static function setExplosiveMeleeThisFrame(player:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SetDispatchTimeBetweenSpawnAttemptsMultiplier")
	static function setDispatchTimeBetweenSpawnAttemptsMultiplier(p0:Dynamic, p1:Float):Dynamic;

	/**
	 * ```
	 * Sets whether the game should fade in after the player dies or is arrested.  
	 * ```
	 */
	@:native("SetFadeInAfterDeathArrest")
	static function setFadeInAfterDeathArrest(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sets whether the game should fade out after the player dies.  
	 * ```
	 */
	@:native("SetFadeOutAfterDeath")
	static function setFadeOutAfterDeath(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sets whether the game should fade out after the player is arrested.  
	 * ```
	 */
	@:native("SetFadeOutAfterArrest")
	static function setFadeOutAfterArrest(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sets a visually fake wanted level on the user interface. Used by Rockstar's scripts to "override" regular wanted levels and make custom ones while the real wanted level and multipliers are still in effect.
	 * Max is 6, anything above this makes it just 6. Also the mini-map gets the red & blue flashing effect.
	 * ```
	 */
	@:native("SetFakeWantedLevel")
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
	@:native("SetGravityLevel")
	static function setGravityLevel(level:Int):Dynamic;

	/**
	 * ```
	 * Make sure to call this from the correct thread if you're using multiple threads because all other threads except the one which is calling SET_GAME_PAUSED will be paused which means you will lose control and the game remains in paused mode until you exit GTA5.exe  
	 * ```
	 */
	@:native("SetGamePaused")
	static function setGamePaused(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetFireAmmoThisFrame")
	static function setFireAmmoThisFrame(player:Dynamic):Dynamic;

	/**
	 * ```
	 * Sets an unknown flag used by CScene in determining which entities from CMapData scene nodes to draw, similar to SET_INSTANCE_PRIORITY_MODE.
	 * ```
	 */
	@:native("SetInstancePriorityHint")
	static function setInstancePriorityHint(flag:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("SetForcePlayerToJump")
	static function SetForcePlayerToJump(player:Dynamic):Dynamic;

	/**
	 * ```
	 * SET_INCIDENT_*
	 * ```
	 */
	@:native("SetIncidentUnk")
	static function SetIncidentUnk(incidentId:Int, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetIncidentRequestedUnits")
	static function setIncidentRequestedUnits(incidentId:Int, dispatchService:Int, numUnits:Int):Dynamic;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
	 */
	@:native("SetOverrideWeather")
	static function setOverrideWeather(weatherType:String):Dynamic;

	/**
	 * ```
	 * If the parameter is true, sets the random event flag to true, if the parameter is false, the function does nothing at all.  
	 * Does nothing if the mission flag is set.  
	 * ```
	 */
	@:native("SetRandomEventFlag")
	static function setRandomEventFlag(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetMinigameInProgress")
	static function setMinigameInProgress(toggle:Bool):Dynamic;

	/**
	 * Sets the maximum prop density and changes a loading screen flag from 'loading story mode' to 'loading GTA Online'. It causes a loading screen to show as it reloads map data.
	 */
	@:native("SetInstancePriorityMode")
	static function setInstancePriorityMode(toggle:Int):Dynamic;

	/**
	 * ```
	 * If true, the player can't save the game.   
	 * If the parameter is true, sets the mission flag to true, if the parameter is false, the function does nothing at all.  
	 * ^ also, if the mission flag is already set, the function does nothing at all  
	 * ```
	 */
	@:native("SetMissionFlag")
	static function setMissionFlag(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetRandomSeed")
	static function setRandomSeed(seed:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SetRestartCustomPosition")
	static function SetRestartCustomPosition(x:Float, y:Float, z:Float, heading:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetRandomWeatherType")
	static function setRandomWeatherType():Dynamic;

	/**
	 * ```
	 * If toggle is true, the ped's head is shown in the pause menu
	 * If toggle is false, the ped's head is not shown in the pause menu
	 * ```
	 */
	@:native("SetPlayerIsInAnimalForm")
	static function SetPlayerIsInAnimalForm(toggle:Bool):Dynamic;

	/**
	 * Activates riot mode. All NPCs are being hostile to each other (including player). Also the game will give weapons (pistols, smgs) to random NPCs.
	 */
	@:native("SetRiotModeEnabled")
	static function setRiotModeEnabled(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetSaveHouse")
	static function setSaveHouse(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * ignoreVehicle - bypasses vehicle check of the local player (it will not open if you are in a vehicle and this is set to false)
	 * ```
	 */
	@:native("SetSaveMenuActive")
	static function setSaveMenuActive(ignoreVehicle:Bool):Dynamic;

	/**
	 * ```
	 * SET_PLAYER_*
	 * ```
	 */
	@:native("SetPlayerRockstarEditorDisabled")
	static function SetPlayerRockstarEditorDisabled(toggle:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("SetSnowLevel")
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
	@:native("SetRainLevel")
	static function SetRainLevel(level:Float):Dynamic;

	/**
	 * Allows the player to perform super jumps. This function must be called every frame for it to work.
	 * It basically OR's a flag for a single frame, allowing the ped to perform a super jump only when the flag is set.
	 */
	@:native("SetSuperJumpThisFrame")
	static function setSuperJumpThisFrame(player:Dynamic):Dynamic;

	/**
	 * Normally, blips can only be removed by the script or resource that created them. However, this native function allows a script to bypass this logic and remove blips from any script.
	 */
	@:native("SetThisScriptCanRemoveBlipsCreatedByAnyScript")
	static function setThisScriptCanRemoveBlipsCreatedByAnyScript(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetStuntJumpsCanTrigger")
	static function setStuntJumpsCanTrigger(toggle:Bool):Dynamic;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
	 */
	@:native("SetWeatherTypeOvertimePersist")
	static function setWeatherTypeOvertimePersist(weatherType:String, time:Float):Dynamic;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW`](#\_0x29B487C359E19889) for weather types.
	 */
	@:native("SetWeatherTypeNowPersist")
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
	@:native("SetWeatherTypeNow")
	static function setWeatherTypeNow(weatherType:String):Dynamic;

	/**
	 * 
	 */
	@:native("SetThisScriptCanBePaused")
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
	@:native("SetWeatherTypePersist")
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
	@:native("SetTimeScale")
	static function setTimeScale(timeScale:Float):Dynamic;

	/**
	 * Sets the wind direction. The wind direction will stay persistent until it is reset (see examples).
	 */
	@:native("SetWindDirection")
	static function setWindDirection(direction:Float):Dynamic;

	/**
	 * Shoots a bullet from the first vector to the second vector. The weapon used as weaponHash should already be loaded via REQUEST_WEAPON_ASSET, otherwise the bullet may fail to materialise.
	 */
	@:native("ShootSingleBulletBetweenCoords")
	static function shootSingleBulletBetweenCoords(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, damage:Int, pureAccuracy:Bool, weaponHash:Int, ownerPed:Dynamic, isAudible:Bool, isInvisible:Bool, speed:Float):Dynamic;

	/**
	 * Refer to [`SET_WEATHER_TYPE_NOW_PERSIST`](#\_0xED712CA327900C8A) for weather types.
	 * 
	 * ```
	 * Mixes two weather types. If percentWeather2 is set to 0.0f, then the weather will be entirely of weatherType1, if it is set to 1.0f it will be entirely of weatherType2. If it's set somewhere in between, there will be a mixture of weather behaviors. To test, try this in the RPH console, and change the float to different values between 0 and 1:  
	 * execute "NativeFunction.Natives.x578C752848ECFA0C(Game.GetHashKey(""RAIN""), Game.GetHashKey(""SMOG""), 0.50f);  
	 * ```
	 */
	@:native("SetWeatherTypeTransition")
	static function SetWeatherTypeTransition(weatherType1:Int, weatherType2:Int, percentWeather2:Float):Dynamic;

	/**
	 * Sets the the raw wind speed value. The wind speed will stay persistent until it is reset (see examples).
	 */
	@:native("SetWind")
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
	@:native("ShootSingleBulletBetweenCoordsIgnoreEntity")
	static function shootSingleBulletBetweenCoordsIgnoreEntity(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, damage:Int, p7:Bool, weaponHash:Int, ownerPed:Dynamic, isAudible:Bool, isInvisible:Bool, speed:Float, entity:Dynamic):Dynamic;

	/**
	 * Using this native will clamp the wind speed value to a range of 0.0 - 12.0. The wind speed will stay persistent until it is reset (see examples).
	 */
	@:native("SetWindSpeed")
	static function setWindSpeed(speed:Float):Dynamic;

	/**
	 * Returns true if the game is using the metric measurement system (profile setting 227), false if imperial is used.
	 */
	@:native("ShouldUseMetricMeasurements")
	static function shouldUseMetricMeasurements():Bool;

	/**
	 * This native always come right before SET_ENTITY_QUATERNION where its final 4 parameters are SLERP_NEAR_QUATERNION p9 to p12
	 */
	@:native("SlerpNearQuaternion")
	static function slerpNearQuaternion(t:Float, x:Float, y:Float, z:Float, w:Float, x1:Float, y1:Float, z1:Float, w1:Float, outX:Dynamic, outY:Dynamic, outZ:Dynamic, outW:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 19: Any p18
	 * NativeDB Added Parameter 20: Any p19
	 * NativeDB Added Parameter 21: Any p20
	 * ```
	 */
	@:native("ShootSingleBulletBetweenCoordsIgnoreEntityNew")
	static function shootSingleBulletBetweenCoordsIgnoreEntityNew(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, damage:Int, p7:Bool, weaponHash:Int, ownerPed:Dynamic, isAudible:Bool, isInvisible:Bool, speed:Float, entity:Dynamic, p14:Bool, p15:Bool, p16:Bool, p17:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("StartSaveData")
	static function startSaveData(p0:Dynamic, p1:Dynamic, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("StartSaveArrayWithSize")
	static function startSaveArrayWithSize(p0:Dynamic, size:Int, arrayName:String):Dynamic;

	/**
	 * ```
	 * Begins with START_*. Next character in the name is either D or E.
	 * ```
	 */
	@:native("StartBenchmarkRecording")
	static function StartBenchmarkRecording():Dynamic;

	/**
	 * ```
	 * Begins with STOP_*. Next character in the name is either D or E.
	 * ```
	 */
	@:native("StopBenchmarkRecording")
	static function StopBenchmarkRecording():Dynamic;

	/**
	 * 
	 */
	@:native("StopSaveData")
	static function stopSaveData():Dynamic;

	/**
	 * 
	 */
	@:native("StopSaveArray")
	static function stopSaveArray():Dynamic;

	/**
	 * 
	 */
	@:native("Tan")
	static function tan(p0:Float):Float;

	/**
	 * 
	 */
	@:native("StartSaveStructWithSize")
	static function startSaveStructWithSize(p0:Dynamic, size:Int, structName:String):Dynamic;

	/**
	 * For a full list, see [here](https://gist.github.com/4mmonium/f76f3ecef649ed275b260b433ea84494).
	 */
	@:native("TerminateAllScriptsWithThisName")
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
	@:native("SupressRandomEventThisFrame")
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
	@:native("UpdateOnscreenKeyboard")
	static function updateOnscreenKeyboard():Int;

	/**
	 * 
	 */
	@:native("StopSaveStruct")
	static function stopSaveStruct():Dynamic;

	/**
	 * ```
	 * Returns false if it's a null or empty string or if the string is too long. outInteger will be set to -999 in that case.  
	 * If all checks have passed successfully, the return value will be set to whatever strtol(string, 0i64, 10); returns.  
	 * ```
	 */
	@:native("StringToInt")
	static function stringToInt(string:String, outInteger:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("WaterOverrideSetOceannoiseminamplitude")
	static function waterOverrideSetOceannoiseminamplitude(minAmplitude:Float):Dynamic;

	/**
	 * 
	 */
	@:native("UsingMissionCreator")
	static function usingMissionCreator(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Called 4 times in the b617d scripts:
	 * MISC::_A74802FB8D0B7814("CONTRAILS", 0);
	 * ```
	 */
	@:native("UnloadCloudHat")
	static function unloadCloudHat(name:String, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WaterOverrideFadeIn")
	static function waterOverrideFadeIn(p0:Float):Dynamic;

	/**
	 * Enable/disable optional stunt camera.
	 * 
	 * ```
	 * NativeDB Introduced: v757
	 * ```
	 */
	@:native("ToggleShowOptionalStuntJumpCamera")
	static function toggleShowOptionalStuntJumpCamera(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("WaterOverrideSetOceanwaveamplitude")
	static function waterOverrideSetOceanwaveamplitude(amplitude:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WaterOverrideSetRipplebumpiness")
	static function waterOverrideSetRipplebumpiness(bumpiness:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WaterOverrideSetOceanwaveminamplitude")
	static function waterOverrideSetOceanwaveminamplitude(minAmplitude:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WaterOverrideSetOceanwavemaxamplitude")
	static function waterOverrideSetOceanwavemaxamplitude(maxAmplitude:Float):Dynamic;

	/**
	 * Returns whether the In-Game Pause Menu Launched the Benchmark Tests.
	 */
	@:native("UiStartedEndUserBenchmark")
	static function uiStartedEndUserBenchmark():Bool;

	/**
	 * 
	 */
	@:native("WaterOverrideSetRippledisturb")
	static function waterOverrideSetRippledisturb(disturb:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WaterOverrideSetRippleminbumpiness")
	static function waterOverrideSetRippleminbumpiness(minBumpiness:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WaterOverrideFadeOut")
	static function waterOverrideFadeOut(p0:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WaterOverrideSetShorewavemaxamplitude")
	static function waterOverrideSetShorewavemaxamplitude(maxAmplitude:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WaterOverrideSetShorewaveminamplitude")
	static function waterOverrideSetShorewaveminamplitude(minAmplitude:Float):Dynamic;

	/**
	 * ```
	 * This seems to edit the water wave, intensity around your current location.  
	 * 0.0f = Normal  
	 * 1.0f = So Calm and Smooth, a boat will stay still.  
	 * 3.0f = Really Intense.  
	 * ```
	 */
	@:native("WaterOverrideSetStrength")
	static function waterOverrideSetStrength(strength:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WaterOverrideSetRipplemaxbumpiness")
	static function waterOverrideSetRipplemaxbumpiness(maxBumpiness:Float):Dynamic;

	/**
	 * 
	 */
	@:native("WaterOverrideSetShorewaveamplitude")
	static function waterOverrideSetShorewaveamplitude(amplitude:Float):Dynamic;

}
