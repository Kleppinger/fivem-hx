package fivem.client.natives;

@:native("_G")
extern class Graphics {
	/**
	 * ```
	 * Example:  
	 * GRAPHICS::ADD_ENTITY_ICON(a_0, "MP_Arrow");  
	 * I tried this and nothing happened...  
	 * ```
	 */
	@:native("ADD_ENTITY_ICON")
	static function addEntityIcon(entity:Dynamic, icon:String):Dynamic;

	/**
	 * Places a decal into the world
	 * 
	 * ```cs
	 * public enum DecalTypes  
	 * {  
	 *     splatters_blood = 1010,  
	 *     splatters_blood_dir = 1015,  
	 *     splatters_blood_mist = 1017,  
	 *     splatters_mud = 1020,  
	 *     splatters_paint = 1030,  
	 *     splatters_water = 1040,  
	 *     splatters_water_hydrant = 1050,  
	 *     splatters_blood2 = 1110,  
	 *     weapImpact_metal = 4010,  
	 *     weapImpact_concrete = 4020,  
	 *     weapImpact_mattress = 4030,  
	 *     weapImpact_mud = 4032,  
	 *     weapImpact_wood = 4050,  
	 *     weapImpact_sand = 4053,  
	 *     weapImpact_cardboard = 4040,  
	 *     weapImpact_melee_glass = 4100,  
	 *     weapImpact_glass_blood = 4102,  
	 *     weapImpact_glass_blood2 = 4104,  
	 *     weapImpact_shotgun_paper = 4200,  
	 *     weapImpact_shotgun_mattress,  
	 *     weapImpact_shotgun_metal,  
	 *     weapImpact_shotgun_wood,  
	 *     weapImpact_shotgun_dirt,  
	 *     weapImpact_shotgun_tvscreen,  
	 *     weapImpact_shotgun_tvscreen2,  
	 *     weapImpact_shotgun_tvscreen3,  
	 *     weapImpact_melee_concrete = 4310,  
	 *     weapImpact_melee_wood = 4312,  
	 *     weapImpact_melee_metal = 4314,  
	 *     burn1 = 4421,  
	 *     burn2,  
	 *     burn3,  
	 *     burn4,  
	 *     burn5,  
	 *     bang_concrete_bang = 5000,  
	 *     bang_concrete_bang2,  
	 *     bang_bullet_bang,  
	 *     bang_bullet_bang2 = 5004,  
	 *     bang_glass = 5031,  
	 *     bang_glass2,  
	 *     solidPool_water = 9000,  
	 *     solidPool_blood,  
	 *     solidPool_oil,  
	 *     solidPool_petrol,  
	 *     solidPool_mud,  
	 *     porousPool_water,  
	 *     porousPool_blood,  
	 *     porousPool_oil,  
	 *     porousPool_petrol,  
	 *     porousPool_mud,  
	 *     porousPool_water_ped_drip,  
	 *     liquidTrail_water = 9050  
	 * }  
	 * ```
	 */
	@:native("ADD_DECAL")
	static function addDecal(decalType:Int, posX:Float, posY:Float, posZ:Float, dirX:Float, dirY:Float, dirZ:Float, sideX:Float, sideY:Float, sideZ:Float, width:Float, height:Float, rCoef:Float, gCoef:Float, bCoef:Float, opacity:Float, timeout:Float, isLongRange:Bool, isDynamic:Bool, useComplexColn:Bool):Int;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_ADD_OIL_DECAL")
	static function AddOilDecal(x:Float, y:Float, z:Float, groundLvl:Float, width:Float, transparency:Float):Int;

	/**
	 * 
	 */
	@:native("ADD_TCMODIFIER_OVERRIDE")
	static function addTcmodifierOverride(modifierName1:String, modifierName2:String):Dynamic;

	/**
	 * 
	 */
	@:native("ADD_PETROL_TRAIL_DECAL_INFO")
	static function addPetrolTrailDecalInfo(x:Float, y:Float, z:Float, p3:Float):Dynamic;

	/**
	 * See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724)
	 */
	@:native("_ANIMPOSTFX_GET_UNK")
	static function AnimpostfxGetUnk(effectName:String):Float;

	/**
	 * See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724).
	 */
	@:native("ANIMPOSTFX_IS_RUNNING")
	static function animpostfxIsRunning(effectName:String):Bool;

	/**
	 * 
	 */
	@:native("ADD_PETROL_DECAL")
	static function addPetrolDecal(x:Float, y:Float, z:Float, groundLvl:Float, width:Float, transparency:Float):Int;

	/**
	 * 
	 */
	@:native("ANIMPOSTFX_STOP_ALL")
	static function animpostfxStopAll():Dynamic;

	/**
	 * See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724).
	 */
	@:native("ANIMPOSTFX_STOP")
	static function animpostfxStop(effectName:String):Dynamic;

	/**
	 * Stops the effect and sets a value (bool) in its data (+0x199) to false; See [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724).
	 */
	@:native("_ANIMPOSTFX_STOP_AND_DO_UNK")
	static function AnimpostfxStopAndDoUnk(effectName:String):Dynamic;

	/**
	 * ```
	 * boneIndex is always chassis_dummy in the scripts. The x/y/z params are location relative to the chassis bone.
	 * ```
	 */
	@:native("ADD_VEHICLE_CREW_EMBLEM")
	static function addVehicleCrewEmblem(vehicle:Dynamic, ped:Dynamic, boneIndex:Int, x1:Float, x2:Float, x3:Float, y1:Float, y2:Float, y3:Float, z1:Float, z2:Float, z3:Float, scale:Float, p13:Dynamic, alpha:Int):Bool;

	/**
	 * Starts frontend (pause menu) scaleform movie methods for header options.
	 * 
	 * Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND`](#\_0xAB58C27C2E6123C6) to customize the content inside the frontend menus.
	 */
	@:native("BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER")
	static function beginScaleformMovieMethodOnFrontendHeader(functionName:String):Bool;

	/**
	 * ```
	 * Might be more appropriate in AUDIO?  
	 * ```
	 */
	@:native("ATTACH_TV_AUDIO_TO_ENTITY")
	static function attachTvAudioToEntity(entity:Dynamic):Dynamic;

	/**
	 * ```
	 * Push a function from the Scaleform onto the stack  
	 * ```
	 */
	@:native("BEGIN_SCALEFORM_MOVIE_METHOD")
	static function beginScaleformMovieMethod(scaleform:Int, methodName:String):Bool;

	/**
	 * 
	 */
	@:native("BEGIN_TAKE_MISSION_CREATOR_PHOTO")
	static function beginTakeMissionCreatorPhoto():Bool;

	/**
	 * Starts frontend (pause menu) scaleform movie methods.
	 * This can be used when you want to make custom frontend menus, and customize things like images or text in the menus etc.
	 * 
	 * Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER`](#\_0xB9449845F73F5E9C) for header scaleform functions.
	 */
	@:native("BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND")
	static function beginScaleformMovieMethodOnFrontend(functionName:String):Bool;

	/**
	 * ```
	 * Calls the Scaleform function.  
	 * ```
	 */
	@:native("CALL_SCALEFORM_MOVIE_METHOD")
	static function callScaleformMovieMethod(scaleform:Int, method:String):Dynamic;

	/**
	 * ```
	 * duration - is how long to play the effect for in milliseconds. If 0, it plays the default length
	 * if loop is true, the effect won't stop until you call ANIMPOSTFX_STOP on it. (only loopable effects)
	 * ```
	 */
	@:native("ANIMPOSTFX_PLAY")
	static function animpostfxPlay(effectName:String, duration:Int, looped:Bool):Dynamic;

	/**
	 * ```
	 * Pushes a function from the Hud component Scaleform onto the stack. Same behavior as GRAPHICS::BEGIN_SCALEFORM_MOVIE_METHOD, just a hud component id instead of a Scaleform.
	 * Known components:
	 * 19 - MP_RANK_BAR
	 * 20 - HUD_DIRECTOR_MODE
	 * This native requires more research - all information can be found inside of 'hud.gfx'. Using a decompiler, the different components are located under "scripts\__Packages\com\rockstargames\gtav\hud\hudComponents" and "scripts\__Packages\com\rockstargames\gtav\Multiplayer".
	 * ```
	 */
	@:native("BEGIN_SCALEFORM_SCRIPT_HUD_MOVIE_METHOD")
	static function beginScaleformScriptHudMovieMethod(hudComponent:Int, methodName:String):Bool;

	/**
	 * 
	 */
	@:native("BEGIN_TAKE_HIGH_QUALITY_PHOTO")
	static function beginTakeHighQualityPhoto():Bool;

	/**
	 * ```
	 * Calls the Scaleform function and passes the parameters as strings.  
	 * The number of parameters passed to the function varies, so the end of the parameter list is represented by 0 (NULL).  
	 * ```
	 */
	@:native("CALL_SCALEFORM_MOVIE_METHOD_WITH_STRING")
	static function callScaleformMovieMethodWithString(scaleform:Int, methodName:String, param1:String, param2:String, param3:String, param4:String, param5:String):Dynamic;

	/**
	 * ```
	 * Called prior to adding a text component to the UI. After doing so, GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING is called.
	 * Examples:
	 * GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("NUMBER");
	 * HUD::ADD_TEXT_COMPONENT_INTEGER(MISC::ABSI(a_1));
	 * GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
	 * GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRING");
	 * HUD::_ADD_TEXT_COMPONENT_STRING(a_2);
	 * GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
	 * GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM2");
	 * HUD::_0x17299B63C7683A2B(v_3);
	 * HUD::_0x17299B63C7683A2B(v_4);
	 * GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
	 * GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM1");
	 * HUD::_0x17299B63C7683A2B(v_3);
	 * GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
	 * ```
	 */
	@:native("BEGIN_TEXT_COMMAND_SCALEFORM_STRING")
	static function beginTextCommandScaleformString(textLabel:String):Dynamic;

	/**
	 * ```
	 * Calls the Scaleform function and passes the parameters as floats.  
	 * The number of parameters passed to the function varies, so the end of the parameter list is represented by -1.0.  
	 * ```
	 */
	@:native("CALL_SCALEFORM_MOVIE_METHOD_WITH_NUMBER")
	static function callScaleformMovieMethodWithNumber(scaleform:Int, methodName:String, param1:Float, param2:Float, param3:Float, param4:Float, param5:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_CASCADE_SHADOWS_CLEAR_SHADOW_SAMPLE_TYPE")
	static function CascadeShadowsClearShadowSampleType():Dynamic;

	/**
	 * 
	 */
	@:native("CASCADE_SHADOWS_INIT_SESSION")
	static function cascadeShadowsInitSession():Dynamic;

	/**
	 * ```
	 * Calls the Scaleform function and passes both float and string parameters (in their respective order).  
	 * The number of parameters passed to the function varies, so the end of the float parameters is represented by -1.0, and the end of the string parameters is represented by 0 (NULL).  
	 * NOTE: The order of parameters in the function prototype is important! All float parameters must come first, followed by the string parameters.  
	 * Examples:  
	 * // function MY_FUNCTION(floatParam1, floatParam2, stringParam)  
	 * GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION", 10.0, 20.0, -1.0, -1.0, -1.0, "String param", 0, 0, 0, 0);  
	 * // function MY_FUNCTION_2(floatParam, stringParam1, stringParam2)  
	 * GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION_2", 10.0, -1.0, -1.0, -1.0, -1.0, "String param #1", "String param #2", 0, 0, 0);  
	 * ```
	 */
	@:native("CALL_SCALEFORM_MOVIE_METHOD_WITH_NUMBER_AND_STRING")
	static function callScaleformMovieMethodWithNumberAndString(scaleform:Int, methodName:String, floatParam1:Float, floatParam2:Float, floatParam3:Float, floatParam4:Float, floatParam5:Float, stringParam1:String, stringParam2:String, stringParam3:String, stringParam4:String, stringParam5:String):Dynamic;

	/**
	 * 
	 */
	@:native("CASCADE_SHADOWS_SET_CASCADE_BOUNDS")
	static function cascadeShadowsSetCascadeBounds(p0:Dynamic, p1:Bool, p2:Float, p3:Float, p4:Float, p5:Float, p6:Bool, p7:Float):Dynamic;

	/**
	 * ```
	 * When this is set to ON, shadows only draw as you get nearer.
	 * When OFF, they draw from a further distance.
	 * ```
	 */
	@:native("CASCADE_SHADOWS_ENABLE_ENTITY_TRACKER")
	static function cascadeShadowsEnableEntityTracker(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CASCADE_SHADOWS_SET_DYNAMIC_DEPTH_MODE")
	static function cascadeShadowsSetDynamicDepthMode(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CASCADE_SHADOWS_SET_ENTITY_TRACKER_SCALE")
	static function cascadeShadowsSetEntityTrackerScale(p0:Float):Dynamic;

	/**
	 * 
	 */
	@:native("CASCADE_SHADOWS_SET_CASCADE_BOUNDS_SCALE")
	static function cascadeShadowsSetCascadeBoundsScale(p0:Float):Dynamic;

	/**
	 * 
	 */
	@:native("CASCADE_SHADOWS_SET_AIRCRAFT_MODE")
	static function cascadeShadowsSetAircraftMode(p0:Bool):Dynamic;

	/**
	 * Resets the screen's draw-origin which was changed by the function [`SET_DRAW_ORIGIN`](#\_0xAA0008F3BBB8F416) back to `x=0, y=0`. See [`SET_DRAW_ORIGIN`](#\_0xAA0008F3BBB8F416) for further information.
	 */
	@:native("CLEAR_DRAW_ORIGIN")
	static function clearDrawOrigin():Dynamic;

	/**
	 * ```
	 * Possible values:
	 * "CSM_ST_POINT"
	 * "CSM_ST_LINEAR"
	 * "CSM_ST_TWOTAP"
	 * "CSM_ST_BOX3x3"
	 * "CSM_ST_BOX4x4"
	 * "CSM_ST_DITHER2_LINEAR"
	 * "CSM_ST_CUBIC"
	 * "CSM_ST_DITHER4"
	 * "CSM_ST_DITHER16"
	 * "CSM_ST_SOFT16"
	 * "CSM_ST_DITHER16_RPDB"
	 * "CSM_ST_POISSON16_RPDB_GNORM"
	 * "CSM_ST_HIGHRES_BOX4x4"
	 * "CSM_ST_CLOUDS_SIMPLE"
	 * "CSM_ST_CLOUDS_LINEAR"
	 * "CSM_ST_CLOUDS_TWOTAP"
	 * "CSM_ST_CLOUDS_BOX3x3"
	 * "CSM_ST_CLOUDS_BOX4x4"
	 * "CSM_ST_CLOUDS_DITHER2_LINEAR"
	 * "CSM_ST_CLOUDS_SOFT16"
	 * "CSM_ST_CLOUDS_DITHER16_RPDB"
	 * "CSM_ST_CLOUDS_POISSON16_RPDB_GNORM"
	 * ```
	 */
	@:native("CASCADE_SHADOWS_SET_SHADOW_SAMPLE_TYPE")
	static function cascadeShadowsSetShadowSampleType(type:String):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_TIMECYCLE_MODIFIER")
	static function clearTimecycleModifier():Dynamic;

	/**
	 * ```
	 * Creates a checkpoint. Returns the handle of the checkpoint.  
	 * 20/03/17 : Attention, checkpoints are already handled by the game itself, so you must not loop it like markers.
	 * Parameters:  
	 * * type - The type of checkpoint to create. See below for a list of checkpoint types.  
	 * * pos1 - The position of the checkpoint.  
	 * * pos2 - The position of the next checkpoint to point to.  
	 * * diameter - The diameter of the checkpoint.
	 * * color - The color of the checkpoint.  
	 * * reserved - Special parameter, see below for details. Usually set to 0 in the scripts.  
	 * Checkpoint types (prior to game build 2189):  
	 * 0-4---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
	 * 5-9---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
	 * 10-14-------Ring: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
	 * 15-19-------1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker        
	 * 20-24-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker   
	 * 25-29-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker      
	 * 30-34-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker   
	 * 35-38-------Ring: Airplane Up, Left, Right, UpsideDown  
	 * 39----------?  
	 * 40----------Ring: just a ring  
	 * 41----------?  
	 * 42-44-------Cylinder w/ number (uses 'reserved' parameter)  
	 * 45-47-------Cylinder no arrow or number  
	 * If using type 42-44, reserved sets number / number and shape to display  
	 * 0-99------------Just numbers (0-99)  
	 * 100-109-----------------Arrow (0-9)  
	 * 110-119------------Two arrows (0-9)  
	 * 120-129----------Three arrows (0-9)  
	 * 130-139----------------Circle (0-9)  
	 * 140-149------------CycleArrow (0-9)  
	 * 150-159----------------Circle (0-9)  
	 * 160-169----Circle  w/ pointer (0-9)  
	 * 170-179-------Perforated ring (0-9)  
	 * 180-189----------------Sphere (0-9)  
	 * ```
	 * 
	 * [Checkpoint Types](https://docs.fivem.net/docs/game-references/checkpoints/) as of game build 2189
	 */
	@:native("CREATE_CHECKPOINT")
	static function createCheckpoint(type:Int, posX1:Float, posY1:Float, posZ1:Float, posX2:Float, posY2:Float, posZ2:Float, diameter:Float, red:Int, green:Int, blue:Int, alpha:Int, reserved:Int):Int;

	/**
	 * 
	 */
	@:native("DELETE_CHECKPOINT")
	static function deleteCheckpoint(checkpoint:Int):Dynamic;

	/**
	 * 
	 */
	@:native("CLEAR_TV_CHANNEL_PLAYLIST")
	static function clearTvChannelPlaylist(tvChannel:Int):Dynamic;

	/**
	 * 
	 */
	@:native("CASCADE_SHADOWS_SET_DYNAMIC_DEPTH_VALUE")
	static function cascadeShadowsSetDynamicDepthValue(p0:Float):Dynamic;

	/**
	 * Removes any custom moon cycle overrides that have been configured with [ENABLE_MOON_CYCLE_OVERRIDE](#\_0x2C328AF17210F009)
	 */
	@:native("DISABLE_MOON_CYCLE_OVERRIDE")
	static function disableMoonCycleOverride():Dynamic;

	/**
	 * Clears the secondary timecycle modifier usually set with [`SetExtraTimecycleModifier`](#\_0x5096FD9CCB49056D)
	 */
	@:native("_CLEAR_EXTRA_TIMECYCLE_MODIFIER")
	static function ClearExtraTimecycleModifier():Dynamic;

	/**
	 * 
	 */
	@:native("DESTROY_TRACKED_POINT")
	static function destroyTrackedPoint(point:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DISABLE_SCREENBLUR_FADE")
	static function disableScreenblurFade():Dynamic;

	/**
	 * 
	 */
	@:native("_DISABLE_SCRIPT_AMBIENT_EFFECTS")
	static function DisableScriptAmbientEffects(p0:Dynamic):Dynamic;

	/**
	 * Creates a tracked point: useful for checking the visibility of a 3D point on screen.
	 * 
	 * Tracked points must be manually managed and will not be destroyed on resource stop (they are not an instance of CScriptResource). See [`DESTROY_TRACKED_POINT`](#\_0xB25DC90BAD56CA42) and [onResourceStop](https://docs.fivem.net/docs/scripting-reference/events/list/onResourceStop/).
	 * 
	 * Only 64 points may be tracked at a given time.
	 */
	@:native("CREATE_TRACKED_POINT")
	static function createTrackedPoint():Int;

	/**
	 * 
	 */
	@:native("DOES_PARTICLE_FX_LOOPED_EXIST")
	static function doesParticleFxLoopedExist(ptfxHandle:Int):Bool;

	/**
	 * Used in pi_menu.c. Checks if there is a brief entry for specified value.
	 * Values:
	 * 0 - Dialogue brief
	 * 1 - Help text brief
	 * 2 - Mission Objective brief
	 */
	@:native("DOES_LATEST_BRIEF_STRING_EXIST")
	static function doesLatestBriefStringExist(briefValue:Int):Bool;

	/**
	 * ```
	 * NOTE: Debugging functions are not present in the retail version of the game.  
	 * ```
	 */
	@:native("DRAW_DEBUG_BOX")
	static function drawDebugBox(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, r:Int, g:Int, b:Int, a:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DOES_VEHICLE_HAVE_CREW_EMBLEM")
	static function doesVehicleHaveCrewEmblem(vehicle:Dynamic, p1:Int):Bool;

	/**
	 * 
	 */
	@:native("DISABLE_OCCLUSION_THIS_FRAME")
	static function disableOcclusionThisFrame():Dynamic;

	/**
	 * This native draws a box between two vectors in the game world. It is typically used for visualizing boundaries or areas of interest. The color of the box is specified by the red, green, and blue parameters, with alpha determining its opacity. This native should be called every frame for continuous rendering.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("DRAW_BOX")
	static function drawBox(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DISABLE_VEHICLE_DISTANTLIGHTS")
	static function disableVehicleDistantlights(toggle:Bool):Dynamic;

	/**
	 * Must be called each frame, will play at specified position on screen when called with [`_PLAY_BINK_MOVIE`](#\_0x70D2CC8A542A973C)
	 */
	@:native("_DRAW_BINK_MOVIE")
	static function DrawBinkMovie(binkMovie:Int, posX:Float, posY:Float, scaleX:Float, scaleY:Float, rotation:Float, r:Int, g:Int, b:Int, a:Int):Dynamic;

	/**
	 * ```
	 * NOTE: Debugging functions are not present in the retail version of the game.  
	 * ```
	 */
	@:native("DRAW_DEBUG_LINE")
	static function drawDebugLine(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, r:Int, g:Int, b:Int, a:Int):Dynamic;

	/**
	 * ```
	 * NOTE: Debugging functions are not present in the retail version of the game.  
	 * ```
	 */
	@:native("DRAW_DEBUG_TEXT")
	static function drawDebugText(text:String, x:Float, y:Float, z:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DONT_RENDER_IN_GAME_UI")
	static function dontRenderInGameUi(p0:Bool):Dynamic;

	/**
	 * ```
	 * NOTE: Debugging functions are not present in the retail version of the game.  
	 * ```
	 */
	@:native("DRAW_DEBUG_CROSS")
	static function drawDebugCross(x:Float, y:Float, z:Float, size:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * ```
	 * NOTE: Debugging functions are not present in the retail version of the game.  
	 * ```
	 */
	@:native("DRAW_DEBUG_TEXT_2D")
	static function drawDebugText2D(text:String, x:Float, y:Float, z:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * ```
	 * NOTE: Debugging functions are not present in the retail version of the game.  
	 * ```
	 */
	@:native("DRAW_DEBUG_SPHERE")
	static function drawDebugSphere(x:Float, y:Float, z:Float, radius:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * ```
	 * NOTE: Debugging functions are not present in the retail version of the game.  
	 * ```
	 */
	@:native("DRAW_DEBUG_LINE_WITH_TWO_COLOURS")
	static function drawDebugLineWithTwoColours(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, r1:Int, g1:Int, b1:Int, r2:Int, g2:Int, b2:Int, alpha1:Int, alpha2:Int):Dynamic;

	/**
	 * Similar to [\_DRAW_SPRITE](#\_0xE7FFAE5EBF23D890), but seems to be some kind of "interactive" sprite, at least used by render targets.
	 * These seem to be the only dicts ever requested by this native:
	 * 
	 * ```
	 * prop_screen_biker_laptop
	 * Prop_Screen_GR_Disruption
	 * Prop_Screen_TaleOfUs
	 * prop_screen_nightclub
	 * Prop_Screen_IE_Adhawk
	 * prop_screen_sm_free_trade_shipping
	 * prop_screen_hacker_truck
	 * MPDesktop
	 * Prop_Screen_Nightclub
	 * And a few others
	 * ```
	 */
	@:native("_DRAW_INTERACTIVE_SPRITE")
	static function DrawInteractiveSprite(textureDict:String, textureName:String, screenX:Float, screenY:Float, width:Float, height:Float, heading:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_DRAW_LIGHT_WITH_RANGE_AND_SHADOW")
	static function DrawLightWithRangeAndShadow(x:Float, y:Float, z:Float, r:Int, g:Int, b:Int, range:Float, intensity:Float, shadow:Float):Dynamic;

	/**
	 * ```
	 * x/y/z - Location of a vertex (in world coords), presumably.  
	 * ----------------  
	 * x1, y1, z1     : Coordinates for the first point  
	 * x2, y2, z2     : Coordinates for the second point  
	 * x3, y3, z3     : Coordinates for the third point  
	 * r, g, b, alpha : Color with RGBA-Values  
	 * Keep in mind that only one side of the drawn triangle is visible: It's the side, in which the vector-product of the vectors heads to: (b-a)x(c-a) Or (b-a)x(c-b).  
	 * But be aware: The function seems to work somehow differently. I have trouble having them drawn in rotated orientation. Try it yourself and if you somehow succeed, please edit this and post your solution.  
	 * I recommend using a predefined function to call this.  
	 * [VB.NET]  
	 * Public Sub DrawPoly(a As Vector3, b As Vector3, c As Vector3, col As Color)  
	 *     [Function].Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A)  
	 * End Sub  
	 * [C#]  
	 * public void DrawPoly(Vector3 a, Vector3 b, Vector3 c, Color col)  
	 * {  
	 *     Function.Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A);  
	 * }  
	 * BTW: Intersecting triangles are not supported: They overlap in the order they were called.  
	 * ```
	 */
	@:native("DRAW_POLY")
	static function drawPoly(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, x3:Float, y3:Float, z3:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DRAW_LIGHT_WITH_RANGE")
	static function drawLightWithRange(posX:Float, posY:Float, posZ:Float, colorR:Int, colorG:Int, colorB:Int, range:Float, intensity:Float):Dynamic;

	/**
	 * 
	 */
	@:native("DRAW_LOW_QUALITY_PHOTO_TO_PHONE")
	static function drawLowQualityPhotoToPhone(p0:Bool, p1:Bool):Dynamic;

	/**
	 * This native draws a line between two vectors in the game world. It is typically used for visualizing paths or connections between points. The color of the line is specified by the red, green, and blue parameters, with alpha determining its opacity. This native should be called every frame for continuous rendering.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("DRAW_LINE")
	static function drawLine(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * ```
	 * unk is not used so no need  
	 * ```
	 */
	@:native("DRAW_SCALEFORM_MOVIE_FULLSCREEN")
	static function drawScaleformMovieFullscreen(scaleform:Int, red:Int, green:Int, blue:Int, alpha:Int, unk:Int):Dynamic;

	/**
	 * ```
	 * Draws a rectangle on the screen.  
	 * -x: The relative X point of the center of the rectangle. (0.0-1.0, 0.0 is the left edge of the screen, 1.0 is the right edge of the screen)  
	 * -y: The relative Y point of the center of the rectangle. (0.0-1.0, 0.0 is the top edge of the screen, 1.0 is the bottom edge of the screen)  
	 * -width: The relative width of the rectangle. (0.0-1.0, 1.0 means the whole screen width)  
	 * -height: The relative height of the rectangle. (0.0-1.0, 1.0 means the whole screen height)  
	 * -R: Red part of the color. (0-255)  
	 * -G: Green part of the color. (0-255)  
	 * -B: Blue part of the color. (0-255)  
	 * -A: Alpha part of the color. (0-255, 0 means totally transparent, 255 means totally opaque)  
	 * The total number of rectangles to be drawn in one frame is apparently limited to 399.  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 9: BOOL p8
	 * ```
	 */
	@:native("DRAW_RECT")
	static function drawRect(x:Float, y:Float, width:Float, height:Float, r:Int, g:Int, b:Int, a:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DRAW_SCALEFORM_MOVIE_3D_SOLID")
	static function drawScaleformMovie3DSolid(scaleform:Int, posX:Float, posY:Float, posZ:Float, rotX:Float, rotY:Float, rotZ:Float, p7:Float, p8:Float, p9:Float, scaleX:Float, scaleY:Float, scaleZ:Float, p13:Dynamic):Dynamic;

	/**
	 * Draws a marker with the specified appearance at the target location. This has to be called every frame, e.g. in a `Wait(0)` loop.
	 * 
	 * There's a [list of markers](https://docs.fivem.net/game-references/markers/) on the FiveM documentation site.
	 */
	@:native("DRAW_MARKER")
	static function drawMarker(type:Int, posX:Float, posY:Float, posZ:Float, dirX:Float, dirY:Float, dirZ:Float, rotX:Float, rotY:Float, rotZ:Float, scaleX:Float, scaleY:Float, scaleZ:Float, red:Int, green:Int, blue:Int, alpha:Int, bobUpAndDown:Bool, faceCamera:Bool, p19:Int, rotate:Bool, textureDict:String, textureName:String, drawOnEnts:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 26: BOOL p25
	 * ```
	 */
	@:native("_DRAW_MARKER_2")
	static function DrawMarker2(type:Int, posX:Float, posY:Float, posZ:Float, dirX:Float, dirY:Float, dirZ:Float, rotX:Float, rotY:Float, rotZ:Float, scaleX:Float, scaleY:Float, scaleZ:Float, red:Int, green:Int, blue:Int, alpha:Int, bobUpAndDown:Bool, faceCamera:Bool, p19:Int, rotate:Bool, textureDict:String, textureName:String, drawOnEnts:Bool, p24:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DRAW_SCALEFORM_MOVIE_FULLSCREEN_MASKED")
	static function drawScaleformMovieFullscreenMasked(scaleform1:Int, scaleform2:Int, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * ```
	 * It's called after 0xD3A10FC7FD8D98CD and 0xF1CEA8A4198D8E9A  
	 * p0 was always "CELEBRATION_WINNER"  
	 * ```
	 */
	@:native("_DRAW_SHOWROOM")
	static function DrawShowroom(p0:String, ped:Dynamic, p2:Int, posX:Float, posY:Float, posZ:Float):Bool;

	/**
	 * 
	 */
	@:native("DRAW_SCALEFORM_MOVIE")
	static function drawScaleformMovie(scaleformHandle:Int, x:Float, y:Float, width:Float, height:Float, red:Int, green:Int, blue:Int, alpha:Int, unk:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DRAW_SCALEFORM_MOVIE_3D")
	static function drawScaleformMovie3D(scaleform:Int, posX:Float, posY:Float, posZ:Float, rotX:Float, rotY:Float, rotZ:Float, p7:Float, sharpness:Float, p9:Float, scaleX:Float, scaleY:Float, scaleZ:Float, p13:Dynamic):Dynamic;

	/**
	 * ```
	 * Draws a 2D sprite on the screen.  
	 * Parameters:  
	 * textureDict - Name of texture dictionary to load texture from (e.g. "CommonMenu", "MPWeaponsCommon", etc.)  
	 * textureName - Name of texture to load from texture dictionary (e.g. "last_team_standing_icon", "tennis_icon", etc.)  
	 * screenX/Y - Screen offset (0.5 = center)  
	 * scaleX/Y - Texture scaling. Negative values can be used to flip the texture on that axis. (0.5 = half)  
	 * heading - Texture rotation in degrees (default = 0.0) positive is clockwise, measured in degrees  
	 * red,green,blue - Sprite color (default = 255/255/255)  
	 * alpha - opacity level  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 12: BOOL p11
	 * ```
	 */
	@:native("DRAW_SPRITE")
	static function drawSprite(textureDict:String, textureName:String, screenX:Float, screenY:Float, width:Float, height:Float, heading:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * ```
	 * Parameters:  
	 * * pos - coordinate where the spotlight is located  
	 * * dir - the direction vector the spotlight should aim at from its current position  
	 * * r,g,b - color of the spotlight  
	 * * distance - the maximum distance the light can reach  
	 * * brightness - the brightness of the light  
	 * * roundness - "smoothness" of the circle edge  
	 * * radius - the radius size of the spotlight  
	 * * falloff - the falloff size of the light's edge (example: www.i.imgur.com/DemAWeO.jpg)  
	 * Example in C# (spotlight aims at the closest vehicle):  
	 * Vector3 myPos = Game.Player.Character.Position;  
	 * Vehicle nearest = World.GetClosestVehicle(myPos , 1000f);  
	 * Vector3 destinationCoords = nearest.Position;  
	 * Vector3 dirVector = destinationCoords - myPos;  
	 * dirVector.Normalize();  
	 * Function.Call(Hash.DRAW_SPOT_LIGHT, pos.X, pos.Y, pos.Z, dirVector.X, dirVector.Y, dirVector.Z, 255, 255, 255, 100.0f, 1f, 0.0f, 13.0f, 1f);  
	 * ```
	 */
	@:native("DRAW_SPOT_LIGHT")
	static function drawSpotLight(posX:Float, posY:Float, posZ:Float, dirX:Float, dirY:Float, dirZ:Float, colorR:Int, colorG:Int, colorB:Int, distance:Float, brightness:Float, hardness:Float, radius:Float, falloff:Float):Dynamic;

	/**
	 * Draws a 3D sphere, typically seen in the GTA:O freemode event "Penned In".
	 * 
	 * Example [image](https://imgur.com/nCbtS4H):
	 * 
	 * ```lua
	 * DrawSphere(35.45, 172.66, 126.22, 1.0, 0, 0, 255, 0.2)
	 * ```
	 */
	@:native("_DRAW_SPHERE")
	static function DrawSphere(x:Float, y:Float, z:Float, radius:Float, r:Int, g:Int, b:Int, opacity:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_DRAW_SPOT_LIGHT_WITH_SHADOW")
	static function DrawSpotLightWithShadow(posX:Float, posY:Float, posZ:Float, dirX:Float, dirY:Float, dirZ:Float, colorR:Int, colorG:Int, colorB:Int, distance:Float, brightness:Float, roundness:Float, radius:Float, falloff:Float, shadowId:Int):Dynamic;

	/**
	 * Similar to DRAW_SPRITE, but allows to specify the texture coordinates used to draw the sprite.
	 * u1, v1 - texture coordinates for the top-left corner
	 * u2, v2 - texture coordinates for the bottom-right corner
	 * 
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("_DRAW_SPRITE_UV")
	static function DrawSpriteUv(textureDict:String, textureName:String, x:Float, y:Float, width:Float, height:Float, u1:Float, v1:Float, u2:Float, v2:Float, heading:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * Used for drawling Deadline trailing lights, see deadline.ytd
	 * 
	 * Each vertex has its own colour that is blended/illuminated on the texture. Additionally, the R, G, and B components are floats that are int-casted internally.
	 * 
	 * For UVW mapping (u,v,w parameters), reference your favourite internet resource for more details.
	 */
	@:native("_DRAW_SPRITE_POLY_2")
	static function DrawSpritePoly2(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, x3:Float, y3:Float, z3:Float, red1:Float, green1:Float, blue1:Float, alpha1:Int, red2:Float, green2:Float, blue2:Float, alpha2:Int, red3:Float, green3:Float, blue3:Float, alpha3:Int, textureDict:String, textureName:String, u1:Float, v1:Float, w1:Float, u2:Float, v2:Float, w2:Float, u3:Float, v3:Float, w3:Float):Dynamic;

	/**
	 * This native draws a textured polygon between three vectors in the game world. It's commonly utilized for rendering deadline trailing lights, with additional details available in the `deadline.ytd` file. UVW mapping details (u,v,w parameters) can be found on various internet resources. This native is specifically used for drawing textured polygons on the screen, where UV coordinates define the texture mapping and color/alpha parameters define the appearance of the polygon. This native should be called every frame for continuous rendering.
	 * 
	 * ```
	 * NativeDB Introduced: v877
	 * ```
	 */
	@:native("DRAW_TEXTURED_POLY")
	static function drawTexturedPoly(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, x3:Float, y3:Float, z3:Float, red:Int, green:Int, blue:Int, alpha:Int, textureDict:String, textureName:String, u1:Float, v1:Float, w1:Float, u2:Float, v2:Float, w2:Float, u3:Float, v3:Float, w3:Float):Dynamic;

	/**
	 * If true, this native will create purple explosions upon projectile impact, add comic-like PTFX when firing a weapon, create a sound on bullet impact and have its own "blood effect".
	 * 
	 * If the PTFX asset "scr_rcbarry2" is not requested using ([`RequestNamedPtfxAsset`](#\_0xD821490579791273)) then this native **will not work as intended**.
	 * 
	 * Excerpt from fm_content_drug_lab_work.c:
	 * 
	 * ```
	 * STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_rcbarry2");
	 * if (STREAMING::HAS_NAMED_PTFX_ASSET_LOADED("scr_rcbarry2"))
	 * {
	 *   GRAPHICS::ENABLE_CLOWN_BLOOD_VFX(true);
	 *   AUDIO::START_AUDIO_SCENE("DLC_CM2022_DRUG_TRIP_SPRINKLERS_SCENE");
	 *   func_720(26);
	 * }
	 * ```
	 */
	@:native("ENABLE_CLOWN_BLOOD_VFX")
	static function enableClownBloodVfx(toggle:Bool):Dynamic;

	/**
	 * ```
	 * All calls to this native are preceded by calls to GRAPHICS::_0x61BB1D9B3A95D802 and GRAPHICS::_0xC6372ECD45D73BCD, respectively.
	 * "act_cinema.ysc", line 1483:
	 * HUD::SET_HUD_COMPONENT_POSITION(15, 0.0, -0.0375);
	 * HUD::SET_TEXT_RENDER_ID(l_AE);
	 * GRAPHICS::_0x61BB1D9B3A95D802(4);
	 * GRAPHICS::_0xC6372ECD45D73BCD(1);
	 * if (GRAPHICS::_0x0AD973CA1E077B60(${movie_arthouse})) {
	 *     GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 0.7375, 1.0, 0.0, 255, 255, 255, 255);
	 * } else {
	 *     GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255);
	 * }
	 * "am_mp_property_int.ysc", line 102545:
	 * if (ENTITY::DOES_ENTITY_EXIST(a_2._f3)) {
	 *     if (HUD::IS_NAMED_RENDERTARGET_LINKED(ENTITY::GET_ENTITY_MODEL(a_2._f3))) {
	 *         HUD::SET_TEXT_RENDER_ID(a_2._f1);
	 *         GRAPHICS::_0x61BB1D9B3A95D802(4);
	 *         GRAPHICS::_0xC6372ECD45D73BCD(1);
	 *         GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255);
	 *         if (GRAPHICS::GET_TV_CHANNEL() == -1) {
	 *             sub_a8fa5(a_2, 1);
	 *         } else {
	 *             sub_a8fa5(a_2, 1);
	 *             GRAPHICS::ATTACH_TV_AUDIO_TO_ENTITY(a_2._f3);
	 *         }
	 *         HUD::SET_TEXT_RENDER_ID(HUD::GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID());
	 *     }
	 * }
	 * ```
	 */
	@:native("DRAW_TV_CHANNEL")
	static function drawTvChannel(xPos:Float, yPos:Float, xScale:Float, yScale:Float, rotation:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ENABLE_MOVIE_KEYFRAME_WAIT")
	static function enableMovieKeyframeWait(toggle:Bool):Dynamic;

	/**
	 * Creates a motion-blur sort of effect, this native does not seem to work, however by using the [`ANIMPOSTFX_PLAY`](#\_0x2206BF9A37B7F724) native with `"DrugsMichaelAliensFight"` as the effect parameter, you should be able to get the effect.
	 * 
	 * This native does not seem to work, however by using the [ANIMPOSTFX_PLAY](#\_0x2206BF9A37B7F724) native with "DrugsMichaelAliensFight" as the effect parameter, you should be able to get the effect.
	 */
	@:native("ENABLE_ALIEN_BLOOD_VFX")
	static function enableAlienBloodVfx(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Pops and calls the Scaleform function on the stack  
	 * ```
	 */
	@:native("END_SCALEFORM_MOVIE_METHOD")
	static function endScaleformMovieMethod():Dynamic;

	/**
	 * 
	 */
	@:native("END_TEXT_COMMAND_SCALEFORM_STRING")
	static function endTextCommandScaleformString():Dynamic;

	/**
	 * 
	 */
	@:native("END_PETROL_TRAIL_DECALS")
	static function endPetrolTrailDecals():Dynamic;

	/**
	 * 
	 */
	@:native("FADE_DECALS_IN_RANGE")
	static function fadeDecalsInRange(x:Float, y:Float, z:Float, radius:Float, duration:Float):Dynamic;

	/**
	 * Enable a custom moon cycle, allowing control of which lunar phase the moon is in.
	 * 
	 * Valid values are from `0.0` to `1.0`, with `0.5` representing a full moon.
	 * 
	 * | Value |   Lunar Phase   |
	 * | :---: | :-------------: |
	 * | `0.1` | Waxing Crescent |
	 * | `0.2` |  First Quarter  |
	 * | `0.3` | Waxing Gibbous  |
	 * | `0.5` |    Full Moon    |
	 * | `0.7` | Waning Gibbous  |
	 * | `0.8` |  Third Quarter  |
	 * | `0.9` | Waning Crescent |
	 * 
	 * The moon phase can be disabled with [DISABLE_MOON_CYCLE_OVERRIDE](#\_0x2BF72AD5B41AA739)
	 */
	@:native("ENABLE_MOON_CYCLE_OVERRIDE")
	static function enableMoonCycleOverride(phase:Float):Dynamic;

	/**
	 * 
	 */
	@:native("ENABLE_MOVIE_SUBTITLES")
	static function enableMovieSubtitles(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("FREE_MEMORY_FOR_HIGH_QUALITY_PHOTO")
	static function freeMemoryForHighQualityPhoto():Dynamic;

	/**
	 * 
	 */
	@:native("FORCE_RENDER_IN_GAME_UI")
	static function forceRenderInGameUi(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE")
	static function endScaleformMovieMethodReturnValue():Int;

	/**
	 * Same as END_TEXT_COMMAND_SCALEFORM_STRING but does not perform HTML conversion for text tokens.
	 * Also useful for when you are trying to add blips and inputs in your scaleform (If the scaleform supports it).
	 */
	@:native("END_TEXT_COMMAND_UNPARSED_SCALEFORM_STRING")
	static function endTextCommandUnparsedScaleformString():Dynamic;

	/**
	 * 
	 */
	@:native("FREE_MEMORY_FOR_MISSION_CREATOR_PHOTO")
	static function freeMemoryForMissionCreatorPhoto():Dynamic;

	/**
	 * 
	 */
	@:native("FADE_UP_PED_LIGHT")
	static function fadeUpPedLight(p0:Float):Dynamic;

	/**
	 * 
	 */
	@:native("FREE_MEMORY_FOR_LOW_QUALITY_PHOTO")
	static function freeMemoryForLowQualityPhoto():Dynamic;

	/**
	 * Returns current screen resolution.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("GET_ACTUAL_SCREEN_RESOLUTION")
	static function getActualScreenResolution(x:Dynamic, y:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_DECAL_WASH_LEVEL")
	static function getDecalWashLevel(decal:Int):Float;

	/**
	 * ```
	 * This function is hard-coded to always return 0.
	 * ```
	 */
	@:native("GET_MAXIMUM_NUMBER_OF_PHOTOS")
	static function getMaximumNumberOfPhotos():Int;

	/**
	 * This native retrieves the aspect ratio of the game window. If `physicalAspect` is `true`, it returns the physical aspect ratio of the game window, which is useful for 3x1 modes. Otherwise, it returns the aspect ratio of the main game window, considering any custom overrides from the settings menu.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("GET_ASPECT_RATIO")
	static function getAspectRatio(physicalAspect:Bool):Float;

	/**
	 * In percentage: 0.0 - 100.0
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_GET_BINK_MOVIE_TIME")
	static function GetBinkMovieTime(binkMovie:Int):Float;

	/**
	 * ```
	 * Gets the scale of safe zone. if the safe zone size scale is max, it will return 1.0.  
	 * ```
	 */
	@:native("GET_SAFE_ZONE_SIZE")
	static function getSafeZoneSize():Float;

	/**
	 * See [`GET_TIMECYCLE_MODIFIER_INDEX`](#\_0xFDF3D97C674AFB66) for use, works the same just for the secondary timecycle modifier.
	 */
	@:native("_GET_EXTRA_TIMECYCLE_MODIFIER_INDEX")
	static function GetExtraTimecycleModifierIndex():Int;

	/**
	 * 
	 */
	@:native("GET_CURRENT_NUMBER_OF_CLOUD_PHOTOS")
	static function getCurrentNumberOfCloudPhotos():Int;

	/**
	 * This native indicates whether the game is running in high-definition (HD) resolution. It returns `false` if the resolution is less than `1280x720` and `true` if it's equal to or greater than `1280x720`.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("GET_IS_HIDEF")
	static function getIsHidef():Bool;

	/**
	 * This native retrieves whether the game is running in widescreen mode or not.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("GET_IS_WIDESCREEN")
	static function getIsWidescreen():Bool;

	/**
	 * 
	 */
	@:native("GET_REQUESTINGNIGHTVISION")
	static function getRequestingnightvision():Bool;

	/**
	 * 
	 */
	@:native("GET_IS_PETROL_DECAL_IN_RANGE")
	static function getIsPetrolDecalInRange(xCoord:Float, yCoord:Float, zCoord:Float, radius:Float):Bool;

	/**
	 * Used to get a return value from a scaleform function. Returns a string in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT returns an int.
	 */
	@:native("GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING")
	static function getScaleformMovieMethodReturnValueString(method_return:Int):String;

	/**
	 * Used to get a return value from a scaleform function. Returns an int in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING returns a string.
	 */
	@:native("GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT")
	static function getScaleformMovieMethodReturnValueInt(method_return:Int):Int;

	/**
	 * ```
	 * Convert a world coordinate into its relative screen coordinate.  (WorldToScreen)
	 * Returns a boolean; whether or not the operation was successful. It will return false if the coordinates given are not visible to the rendering camera.
	 * For .NET users...
	 * VB:
	 * Public Shared Function World3DToScreen2d(pos as vector3) As Vector2
	 *         Dim x2dp, y2dp As New Native.OutputArgument
	 *         Native.Function.Call(Of Boolean)(Native.Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.x, pos.y, pos.z, x2dp, y2dp)
	 *         Return New Vector2(x2dp.GetResult(Of Single), y2dp.GetResult(Of Single))
	 * 
	 *     End Function
	 * C#:
	 * Vector2 World3DToScreen2d(Vector3 pos)
	 *     {
	 *         var x2dp = new OutputArgument();
	 *         var y2dp = new OutputArgument();
	 *         Function.Call<bool>(Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.X, pos.Y, pos.Z, x2dp, y2dp);
	 *         return new Vector2(x2dp.GetResult<float>(), y2dp.GetResult<float>());
	 *     }
	 * //USE VERY SMALL VALUES FOR THE SCALE OF RECTS/TEXT because it is dramatically larger on screen than in 3D, e.g '0.05' small.
	 * Used to be called _WORLD3D_TO_SCREEN2D
	 * I thought we lost you from the scene forever. It does seem however that calling SET_DRAW_ORIGIN then your natives, then ending it. Seems to work better for certain things such as keeping boxes around people for a predator missile e.g.
	 * ```
	 */
	@:native("GET_SCREEN_COORD_FROM_WORLD_COORD")
	static function getScreenCoordFromWorldCoord(worldX:Float, worldY:Float, worldZ:Float, screenX:Dynamic, screenY:Dynamic):Bool;

	/**
	 * ```
	 * This function is hard-coded to always return 96.
	 * ```
	 */
	@:native("GET_MAXIMUM_NUMBER_OF_CLOUD_PHOTOS")
	static function getMaximumNumberOfCloudPhotos():Int;

	/**
	 * 
	 */
	@:native("GET_SCREENBLUR_FADE_CURRENT_TIME")
	static function getScreenblurFadeCurrentTime():Float;

	/**
	 * 
	 */
	@:native("GET_STATUS_OF_LOAD_MISSION_CREATOR_PHOTO")
	static function getStatusOfLoadMissionCreatorPhoto(p0:String):Int;

	/**
	 * 
	 */
	@:native("GET_STATUS_OF_TAKE_HIGH_QUALITY_PHOTO")
	static function getStatusOfTakeHighQualityPhoto():Int;

	/**
	 * 
	 */
	@:native("GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_BOOL")
	static function getScaleformMovieMethodReturnValueBool(methodReturn:Int):Bool;

	/**
	 * Hardcoded to always return 1280x720. Use [`_GET_ACTIVE_SCREEN_RESOLUTION`](?\_0x873C9F3104101DD3) to retrieve the correct screen resolution.
	 */
	@:native("GET_SCREEN_RESOLUTION")
	static function getScreenResolution(x:Dynamic, y:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_TIMECYCLE_TRANSITION_MODIFIER_INDEX")
	static function getTimecycleTransitionModifierIndex():Int;

	/**
	 * 
	 */
	@:native("GET_STATUS_OF_SAVE_HIGH_QUALITY_PHOTO")
	static function getStatusOfSaveHighQualityPhoto():Int;

	/**
	 * Calculates the effective X/Y fractions when applying the values set by `SET_SCRIPT_GFX_ALIGN` and
	 * `SET_SCRIPT_GFX_ALIGN_PARAMS`.
	 */
	@:native("_GET_SCRIPT_GFX_POSITION")
	static function GetScriptGfxPosition(x:Float, y:Float, calculatedX:Dynamic, calculatedY:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_TOGGLE_PAUSED_RENDERPHASES_STATUS")
	static function getTogglePausedRenderphasesStatus():Bool;

	/**
	 * 
	 */
	@:native("GET_STATUS_OF_TAKE_MISSION_CREATOR_PHOTO")
	static function getStatusOfTakeMissionCreatorPhoto():Int;

	/**
	 * ```
	 * Returns the texture resolution of the passed texture dict+name.  
	 * Note: Most texture resolutions are doubled compared to the console version of the game.  
	 * ```
	 */
	@:native("GET_TEXTURE_RESOLUTION")
	static function getTextureResolution(textureDict:String, textureName:String):Dynamic;

	/**
	 * 
	 */
	@:native("GOLF_TRAIL_GET_MAX_HEIGHT")
	static function golfTrailGetMaxHeight():Float;

	/**
	 * Returns status of gallery photo fetch, which was requested by [`QUEUE_OPERATION_TO_CREATE_SORTED_LIST_OF_PHOTOS`](#\_0x2A893980E96B659A).
	 */
	@:native("GET_STATUS_OF_SORTED_LIST_OPERATION")
	static function getStatusOfSortedListOperation(scanForSaving:Bool):Int;

	/**
	 * 
	 */
	@:native("GET_USINGNIGHTVISION")
	static function getUsingnightvision():Bool;

	/**
	 * ```
	 * Only use for this in the PC scripts is:
	 * if (GRAPHICS::GET_TIMECYCLE_MODIFIER_INDEX() != -1)
	 * For a full list, see here: pastebin.com/cnk7FTF2
	 * ```
	 */
	@:native("GET_TIMECYCLE_MODIFIER_INDEX")
	static function getTimecycleModifierIndex():Int;

	/**
	 * 
	 */
	@:native("GET_TV_VOLUME")
	static function getTvVolume():Float;

	/**
	 * 
	 */
	@:native("GOLF_TRAIL_SET_ENABLED")
	static function golfTrailSetEnabled(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("GET_USINGSEETHROUGH")
	static function getUsingseethrough():Bool;

	/**
	 * 
	 */
	@:native("GET_TV_CHANNEL")
	static function getTvChannel():Int;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_CREW_EMBLEM_REQUEST_STATE")
	static function getVehicleCrewEmblemRequestState(vehicle:Dynamic, p1:Int):Int;

	/**
	 * 
	 */
	@:native("GOLF_TRAIL_SET_COLOUR")
	static function golfTrailSetColour(p0:Int, p1:Int, p2:Int, p3:Int, p4:Int, p5:Int, p6:Int, p7:Int, p8:Int, p9:Int, p10:Int, p11:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GOLF_TRAIL_GET_VISUAL_CONTROL_POINT")
	static function golfTrailGetVisualControlPoint(p0:Int):Dynamic;

	/**
	 * ```
	 * p8 seems to always be false.  
	 * ```
	 */
	@:native("GOLF_TRAIL_SET_PATH")
	static function golfTrailSetPath(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float, p6:Float, p7:Float, p8:Bool):Dynamic;

	/**
	 * ```
	 * 12 matches across 4 scripts. All 4 scripts were job creators.
	 * type ranged from 0 - 2.
	 * p4 was always 0.2f. Likely scale.
	 * assuming p5 - p8 is RGBA, the graphic is always yellow (255, 255, 0, 255).
	 * Tested but noticed nothing.
	 * ```
	 */
	@:native("GOLF_TRAIL_SET_FIXED_CONTROL_POINT")
	static function golfTrailSetFixedControlPoint(type:Int, xPos:Float, yPos:Float, zPos:Float, p4:Float, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GOLF_TRAIL_SET_RADIUS")
	static function golfTrailSetRadius(p0:Float, p1:Float, p2:Float):Dynamic;

	/**
	 * 
	 */
	@:native("GOLF_TRAIL_SET_FACING")
	static function golfTrailSetFacing(p0:Bool):Dynamic;

	/**
	 * ```
	 * Only appeared in Golf & Golf_mp. Parameters were all ptrs  
	 * ```
	 */
	@:native("GOLF_TRAIL_SET_SHADER_PARAMS")
	static function golfTrailSetShaderParams(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float):Dynamic;

	/**
	 * 
	 */
	@:native("GOLF_TRAIL_SET_TESSELLATION")
	static function golfTrailSetTessellation(p0:Int, p1:Int):Dynamic;

	/**
	 * ```
	 * Only values used in the scripts are:
	 * "heist_mp"
	 * "heistmap_mp"
	 * "instructional_buttons"
	 * "heist_pre"
	 * ```
	 */
	@:native("HAS_SCALEFORM_MOVIE_FILENAME_LOADED")
	static function hasScaleformMovieFilenameLoaded(scaleformName:String):Bool;

	/**
	 * ```
	 * Wraps 0xAAE9BE70EC7C69AB with FLT_MAX as p7, Jenkins: 0x73E96210?
	 * ```
	 */
	@:native("_GRASS_LOD_SHRINK_SCRIPT_AREAS")
	static function GrassLodShrinkScriptAreas(x:Float, y:Float, z:Float, radius:Float, p4:Float, p5:Float, p6:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_GRASS_LOD_RESET_SCRIPT_AREAS")
	static function GrassLodResetScriptAreas():Dynamic;

	/**
	 * 
	 */
	@:native("HAS_SCALEFORM_MOVIE_LOADED")
	static function hasScaleformMovieLoaded(scaleformHandle:Int):Bool;

	/**
	 * 
	 */
	@:native("IS_DECAL_ALIVE")
	static function isDecalAlive(decal:Int):Bool;

	/**
	 * methodReturn: The return value of this native: END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE
	 * Returns true if the return value of a scaleform function is ready to be collected (using GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING or GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT).
	 */
	@:native("IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY")
	static function isScaleformMovieMethodReturnValueReady(method_return:Int):Bool;

	/**
	 * ```
	 * Returns whether screen transition to blur/from blur is running.
	 * ```
	 */
	@:native("IS_SCREENBLUR_FADE_RUNNING")
	static function isScreenblurFadeRunning():Bool;

	/**
	 * 
	 */
	@:native("HAS_SCALEFORM_CONTAINER_MOVIE_LOADED_INTO_PARENT")
	static function hasScaleformContainerMovieLoadedIntoParent(scaleformHandle:Int):Bool;

	/**
	 * 
	 */
	@:native("HAS_SCALEFORM_SCRIPT_HUD_MOVIE_LOADED")
	static function hasScaleformScriptHudMovieLoaded(hudComponent:Int):Bool;

	/**
	 * 
	 */
	@:native("HAS_STREAMED_TEXTURE_DICT_LOADED")
	static function hasStreamedTextureDictLoaded(textureDict:String):Bool;

	/**
	 * 
	 */
	@:native("LOAD_MOVIE_MESH_SET")
	static function loadMovieMeshSet(movieMeshSetName:String):Int;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("IS_SCALEFORM_MOVIE_DELETING")
	static function isScaleformMovieDeleting(scaleformIndex:Int):Bool;

	/**
	 * ```
	 * IS_*
	 * ```
	 */
	@:native("_IS_TV_PLAYLIST_ITEM_PLAYING")
	static function IsTvPlaylistItemPlaying(videoCliphash:Int):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_IS_PLAYLIST_UNK")
	static function IsPlaylistUnk(tvChannel:Int, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("LOAD_MISSION_CREATOR_PHOTO")
	static function loadMissionCreatorPhoto(p0:String, p1:Dynamic, p2:Dynamic, p3:Bool):Bool;

	/**
	 * 
	 */
	@:native("MOVE_VEHICLE_DECALS")
	static function moveVehicleDecals(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("IS_TRACKED_POINT_VISIBLE")
	static function isTrackedPointVisible(point:Int):Bool;

	/**
	 * 
	 */
	@:native("OVERRIDE_INTERIOR_SMOKE_END")
	static function overrideInteriorSmokeEnd():Dynamic;

	/**
	 * 
	 */
	@:native("OVERRIDE_INTERIOR_SMOKE_NAME")
	static function overrideInteriorSmokeName(name:String):Dynamic;

	/**
	 * ```
	 * Overriding ped badge texture to a passed texture. It's synced between players (even custom textures!), don't forget to request used dict on *all* clients to make it sync properly. Can be removed by passing empty strings.
	 * ```
	 */
	@:native("_OVERRIDE_PED_BADGE_TEXTURE")
	static function OverridePedBadgeTexture(ped:Dynamic, txd:String, txn:String):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_PLAY_BINK_MOVIE")
	static function PlayBinkMovie(binkMovie:Int):Dynamic;

	/**
	 * 
	 */
	@:native("POP_TIMECYCLE_MODIFIER")
	static function popTimecycleModifier():Dynamic;

	/**
	 * 
	 */
	@:native("PUSH_TIMECYCLE_MODIFIER")
	static function pushTimecycleModifier():Dynamic;

	/**
	 * ```
	 * Only one match in the scripts:
	 * GRAPHICS::PRESET_INTERIOR_AMBIENT_CACHE("int_carrier_hanger");
	 * ```
	 */
	@:native("PRESET_INTERIOR_AMBIENT_CACHE")
	static function presetInteriorAmbientCache(timecycleModifierName:String):Dynamic;

	/**
	 * 
	 */
	@:native("OVERRIDE_INTERIOR_SMOKE_LEVEL")
	static function overrideInteriorSmokeLevel(level:Float):Dynamic;

	/**
	 * Used with 'NG_filmnoir_BW{01,02}' timecycles and the "NOIR_FILTER_SOUNDS" audioref.
	 */
	@:native("_REGISTER_NOIR_SCREEN_EFFECT_THIS_FRAME")
	static function RegisterNoirScreenEffectThisFrame():Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_RELEASE_BINK_MOVIE")
	static function ReleaseBinkMovie(binkMovie:Int):Dynamic;

	/**
	 * Passes keyboard input to scaleform. You must call this native every frame. Once an input occurs, this native will return true and call `SET_PC_KEY` scaleform movie method with the key that has been inputted.
	 * 
	 * The key parameter which is passed to the scaleform can also be: "BACKSPACE", "ENTER" or "\x1b" (Which is ESC).
	 * This native is only used in `web_browser.c` as of game build 2944.
	 */
	@:native("PASS_KEYBOARD_INPUT_TO_SCALEFORM")
	static function passKeyboardInputToScaleform(scaleformHandle:Int):Bool;

	/**
	 * 
	 */
	@:native("RELEASE_MOVIE_MESH_SET")
	static function releaseMovieMeshSet(movieMeshSet:Int):Dynamic;

	/**
	 * Queues a scan of all gallery photos.
	 * Also see [`GET_STATUS_OF_SORTED_LIST_OPERATION`](#\_0xF5BED327CEA362B1)
	 */
	@:native("QUEUE_OPERATION_TO_CREATE_SORTED_LIST_OF_PHOTOS")
	static function queueOperationToCreateSortedListOfPhotos(scanForSaving:Bool):Bool;

	/**
	 * ```
	 * REQUEST_STREAMED_TEXTURE_DICT("MPOnMissMarkers", false);  
	 * *uParam0.f_809 = add_decal(9120, vParam1, vVar4, vVar7, 2f, 2f, to_float(iVar0) / 255f, to_float(iVar1) / 255f, to_float(iVar2) / 255f, 1f, -1f, 1, 0, 0);  
	 * PATCH_DECAL_DIFFUSE_MAP(9120, "MPOnMissMarkers", "Capture_The_Flag_Base_Icon");  
	 * ```
	 */
	@:native("PATCH_DECAL_DIFFUSE_MAP")
	static function patchDecalDiffuseMap(decalType:Int, textureDict:String, textureName:String):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_DECALS_FROM_OBJECT")
	static function removeDecalsFromObject(obj:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_DECALS_FROM_OBJECT_FACING")
	static function removeDecalsFromObjectFacing(obj:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("QUERY_MOVIE_MESH_SET_STATE")
	static function queryMovieMeshSetState(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * Removes all decals in range from a position, it includes the bullet holes, blood pools, petrol...  
	 * ```
	 */
	@:native("REMOVE_DECALS_IN_RANGE")
	static function removeDecalsInRange(x:Float, y:Float, z:Float, range:Float):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_PARTICLE_FX_IN_RANGE")
	static function removeParticleFxInRange(X:Float, Y:Float, Z:Float, radius:Float):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_DECAL")
	static function removeDecal(decal:Int):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_PARTICLE_FX_FROM_ENTITY")
	static function removeParticleFxFromEntity(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_VEHICLE_CREW_EMBLEM")
	static function removeVehicleCrewEmblem(vehicle:Dynamic, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_PARTICLE_FX")
	static function removeParticleFx(ptfxHandle:Int, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_DECALS_FROM_VEHICLE")
	static function removeDecalsFromVehicle(vehicle:Dynamic):Dynamic;

	/**
	 * Requests a scaleform movie that doesn't render when the game is paused (With [`SET_GAME_PAUSED`](#\_0x577D1284D6873711)).
	 */
	@:native("REQUEST_SCALEFORM_MOVIE_SKIP_RENDER_WHILE_PAUSED")
	static function requestScaleformMovieSkipRenderWhilePaused(scaleformName:String):Int;

	/**
	 * 
	 */
	@:native("REMOVE_TCMODIFIER_OVERRIDE")
	static function removeTcmodifierOverride(p0:String):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_SCALEFORM_SCRIPT_HUD_MOVIE")
	static function removeScaleformScriptHudMovie(hudComponent:Int):Dynamic;

	/**
	 * 
	 */
	@:native("REQUEST_SCALEFORM_MOVIE")
	static function requestScaleformMovie(scaleformName:String):Int;

	/**
	 * Same as [REQUEST_SCALEFORM_MOVIE](#\_0x11FE353CF9733E6F), except it seems to fix stretched scaleforms on ultrawide.
	 */
	@:native("REQUEST_SCALEFORM_MOVIE_INSTANCE")
	static function requestScaleformMovieInstance(scaleformName:String):Int;

	/**
	 * ```
	 * This function can requests texture dictonaries from following RPFs:
	 * scaleform_generic.rpf
	 * scaleform_minigames.rpf
	 * scaleform_minimap.rpf
	 * scaleform_web.rpf
	 * last param isnt a toggle
	 * ```
	 */
	@:native("REQUEST_STREAMED_TEXTURE_DICT")
	static function requestStreamedTextureDict(textureDict:String, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("REQUEST_SCALEFORM_SCRIPT_HUD_MOVIE")
	static function requestScaleformScriptHudMovie(hudComponent:Int):Dynamic;

	/**
	 * This function resets the alignment set using `SET_SCRIPT_GFX_ALIGN` and `SET_SCRIPT_GFX_ALIGN_PARAMS` to the default
	 * values ('I', 'I'; 0, 0, 0, 0). This should be used after having used the aforementioned functions in order to not affect
	 * any other scripts attempting to draw.
	 */
	@:native("RESET_SCRIPT_GFX_ALIGN")
	static function resetScriptGfxAlign():Dynamic;

	/**
	 * ```
	 * Resets the effect of SET_PARTICLE_FX_OVERRIDE
	 * ```
	 */
	@:native("RESET_PARTICLE_FX_OVERRIDE")
	static function resetParticleFxOverride(name:String):Dynamic;

	/**
	 * Requests a scaleform movie, which has no widescreen adjustments while rendering (Useful for when your scaleform doesn't fully draw on the screen and borders are visible).
	 */
	@:native("REQUEST_SCALEFORM_MOVIE_WITH_IGNORE_SUPER_WIDESCREEN")
	static function requestScaleformMovieWithIgnoreSuperWidescreen(scaleformName:String):Int;

	/**
	 * 
	 */
	@:native("_RETURN_TWO")
	static function ReturnTwo(p0:Int):Int;

	/**
	 * ```
	 * Pushes a float for the Scaleform function onto the stack.  
	 * ```
	 */
	@:native("SCALEFORM_MOVIE_METHOD_ADD_PARAM_FLOAT")
	static function scaleformMovieMethodAddParamFloat(value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SAVE_HIGH_QUALITY_PHOTO")
	static function saveHighQualityPhoto(unused:Int):Bool;

	/**
	 * 
	 */
	@:native("RESET_PAUSED_RENDERPHASES")
	static function resetPausedRenderphases():Dynamic;

	/**
	 * Values:
	 * 0 - Dialogue Brief
	 * 1 - Help Text Brief
	 * 2 - Mission Objective Brief
	 */
	@:native("SCALEFORM_MOVIE_METHOD_ADD_PARAM_LATEST_BRIEF_STRING")
	static function scaleformMovieMethodAddParamLatestBriefString(value:Int):Dynamic;

	/**
	 * ```
	 * Pushes an integer for the Scaleform function onto the stack.  
	 * ```
	 */
	@:native("SCALEFORM_MOVIE_METHOD_ADD_PARAM_INT")
	static function scaleformMovieMethodAddParamInt(value:Int):Dynamic;

	/**
	 * Adds a literal string to a scaleform movie method.
	 * There doesn't seem to be any difference between this and other `SCALEFORM_MOVIE_METHOD_ADD_PARAM_*_STRING` natives in game code.
	 */
	@:native("SCALEFORM_MOVIE_METHOD_ADD_PARAM_LITERAL_STRING")
	static function scaleformMovieMethodAddParamLiteralString(string:String):Dynamic;

	/**
	 * ```
	 * Pushes a boolean for the Scaleform function onto the stack.  
	 * ```
	 */
	@:native("SCALEFORM_MOVIE_METHOD_ADD_PARAM_BOOL")
	static function scaleformMovieMethodAddParamBool(value:Bool):Dynamic;

	/**
	 * ```
	 * This method is the equivalent to PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_STRING when using it to add a new button (like "INSTRUCTIONAL_BUTTONS").  
	 * When switching with a controller, the icons update and become the controller's icons.  
	 * ```
	 */
	@:native("SCALEFORM_MOVIE_METHOD_ADD_PARAM_PLAYER_NAME_STRING")
	static function scaleformMovieMethodAddParamPlayerNameString(string:String):Dynamic;

	/**
	 * 
	 */
	@:native("SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING")
	static function scaleformMovieMethodAddParamTextureNameString(string:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_SEETHROUGH_GET_MAX_THICKNESS")
	static function SeethroughGetMaxThickness():Float;

	/**
	 * 
	 */
	@:native("SEETHROUGH_SET_COLOR_NEAR")
	static function seethroughSetColorNear(red:Int, green:Int, blue:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_SEETHROUGH_SET_FADE_END_DISTANCE")
	static function SeethroughSetFadeEndDistance(distance:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SEETHROUGH_RESET")
	static function seethroughReset():Dynamic;

	/**
	 * 
	 */
	@:native("_SEETHROUGH_SET_MAX_THICKNESS")
	static function SeethroughSetMaxThickness(thickness:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_SEETHROUGH_SET_FADE_START_DISTANCE")
	static function SeethroughSetFadeStartDistance(distance:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_SEETHROUGH_SET_HI_LIGHT_INTENSITY")
	static function SeethroughSetHiLightIntensity(intensity:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_SEETHROUGH_SET_NOISE_AMOUNT_MAX")
	static function SeethroughSetNoiseAmountMax(amount:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SEETHROUGH_SET_HEATSCALE")
	static function seethroughSetHeatscale(index:Int, heatScale:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_SEETHROUGH_SET_NOISE_AMOUNT_MIN")
	static function SeethroughSetNoiseAmountMin(amount:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_BACKFACECULLING")
	static function setBackfaceculling(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_SEETHROUGH_SET_HI_LIGHT_NOISE")
	static function SeethroughSetHiLightNoise(noise:Float):Dynamic;

	/**
	 * Does not affect weapons, particles, fire/explosions, flashlights or the sun.
	 * 
	 * When set to true, all emissive textures (including ped components that have light effects), street lights, building lights, vehicle lights, etc will all be turned off.
	 * 
	 * Used in Humane Labs Heist for EMP.
	 */
	@:native("SET_ARTIFICIAL_LIGHTS_STATE")
	static function setArtificialLightsState(state:Bool):Dynamic;

	/**
	 * Creates an integer (usually 1) for a BINK movie to be called with other natives.
	 * [List of all BINK movies (alphabetically ordered) as of b2802](https://gist.github.com/ItsJunction/8046f28c29ea8ff2821e9e4f933f595f)
	 */
	@:native("_SET_BINK_MOVIE")
	static function SetBinkMovie(name:String):Int;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("_SET_BINK_MOVIE_UNK_2")
	static function SetBinkMovieUnk2(binkMovie:Int, p1:Bool):Dynamic;

	/**
	 * If "blackout" is enabled, this native allows you to ignore "blackout" for vehicles.
	 * 
	 * ```
	 * NativeDB Introduced: v2060
	 * ```
	 */
	@:native("_SET_ARTIFICIAL_LIGHTS_STATE_AFFECTS_VEHICLES")
	static function SetArtificialLightsStateAffectsVehicles(toggle:Bool):Dynamic;

	/**
	 * Seeks a BINK movie to a specified position.
	 */
	@:native("_SET_BINK_MOVIE_TIME")
	static function SetBinkMovieTime(binkMovie:Int, progress:Float):Dynamic;

	/**
	 * ```
	 * binkMovie: Is return value from _SET_BINK_MOVIE. Has something to do with bink volume? (audRequestedSettings::SetVolumeCurveScale)
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_SET_BINK_MOVIE_VOLUME")
	static function SetBinkMovieVolume(binkMovie:Int, value:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_SET_BINK_SHOULD_SKIP")
	static function SetBinkShouldSkip(binkMovie:Int, shouldSkip:Bool):Dynamic;

	/**
	 * ```
	 * Sets the cylinder height of the checkpoint.  
	 * Parameters:  
	 * * nearHeight - The height of the checkpoint when inside of the radius.  
	 * * farHeight - The height of the checkpoint when outside of the radius.  
	 * * radius - The radius of the checkpoint.  
	 * ```
	 */
	@:native("SET_CHECKPOINT_CYLINDER_HEIGHT")
	static function setCheckpointCylinderHeight(checkpoint:Int, nearHeight:Float, farHeight:Float, radius:Float):Dynamic;

	/**
	 * ```
	 * Sets the checkpoint color.  
	 * ```
	 */
	@:native("SET_CHECKPOINT_RGBA")
	static function setCheckpointRgba(checkpoint:Int, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_CHECKPOINT_ICON_SCALE")
	static function SetCheckpointIconScale(checkpoint:Int, scale:Float):Dynamic;

	/**
	 * This multiplies the height of the icon inside a checkpoint with the default height of about 2 units above the checkpoint's coordinates.
	 */
	@:native("_SET_CHECKPOINT_ICON_HEIGHT")
	static function SetCheckpointIconHeight(checkpoint:Int, height_multiplier:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CURRENT_PLAYER_TCMODIFIER")
	static function setCurrentPlayerTcmodifier(modifierName:String):Dynamic;

	/**
	 * ```
	 * NOTE: Debugging functions are not present in the retail version of the game.  
	 * ```
	 */
	@:native("SET_DEBUG_LINES_AND_SPHERES_DRAWING_ACTIVE")
	static function setDebugLinesAndSpheresDrawingActive(enabled:Bool):Dynamic;

	/**
	 * ```
	 * Sets the checkpoint icon color.
	 * ```
	 */
	@:native("SET_CHECKPOINT_RGBA2")
	static function setCheckpointRgba2(checkpoint:Int, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * Sets the on-screen drawing origin for draw-functions in world coordinates.
	 * 
	 * The effect can be reset by calling [`CLEAR_DRAW_ORIGIN`](#\_0xFF0B610F6BE0D7AF) and is limited to 32 different origins each frame.
	 */
	@:native("SET_DRAW_ORIGIN")
	static function setDrawOrigin(x:Float, y:Float, z:Float, p3:Dynamic):Dynamic;

	/**
	 * Prevents gas / petrol decals (aka gas / petrol trails and puddles) to be ignited on fire during the frame in which the native is called.
	 * 
	 * **Note**: This native needs to be called every frame to prevent ignition.
	 */
	@:native("SET_DISABLE_PETROL_DECALS_IGNITING_THIS_FRAME")
	static function setDisablePetrolDecalsIgnitingThisFrame():Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_ICON_COLOR")
	static function setEntityIconColor(entity:Dynamic, red:Int, green:Int, blue:Int, alpha:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_DISABLE_DECAL_RENDERING_THIS_FRAME")
	static function setDisableDecalRenderingThisFrame():Dynamic;

	/**
	 * ```
	 * Purpose of p0 and p1 unknown.  
	 * ```
	 */
	@:native("SET_FLASH")
	static function setFlash(p0:Float, p1:Float, fadeIn:Float, duration:Float, fadeOut:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_EXTRA_TIMECYCLE_MODIFIER")
	static function SetExtraTimecycleModifier(modifierName:String):Dynamic;

	/**
	 * ```
	 * Forces footstep tracks on all surfaces.
	 * USE_/USING_*
	 * ```
	 */
	@:native("_SET_FORCE_PED_FOOTSTEPS_TRACKS")
	static function SetForcePedFootstepsTracks(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_HIDOF_OVERRIDE")
	static function setHidofOverride(p0:Bool, p1:Bool, nearplaneOut:Float, nearplaneIn:Float, farplaneOut:Float, farplaneIn:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_NEXT_PLAYER_TCMODIFIER")
	static function setNextPlayerTcmodifier(modifierName:String):Dynamic;

	/**
	 * 
	 */
	@:native("SET_ENTITY_ICON_VISIBILITY")
	static function setEntityIconVisibility(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Forces vehicle trails on all surfaces.
	 * USE_/USING_*
	 * ```
	 */
	@:native("_SET_FORCE_VEHICLE_TRAILS")
	static function SetForceVehicleTrails(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_NOISEOVERIDE")
	static function setNoiseoveride(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_NOISINESSOVERIDE")
	static function setNoisinessoveride(value:Float):Dynamic;

	/**
	 * ```
	 * Enables Night Vision.  
	 * Example:  
	 * C#: Function.Call(Hash.SET_NIGHTVISION, true);  
	 * C++: GRAPHICS::SET_NIGHTVISION(true);  
	 * BOOL toggle:  
	 * true = turns night vision on for your player.  
	 * false = turns night vision off for your player.  
	 * ```
	 */
	@:native("SET_NIGHTVISION")
	static function setNightvision(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PARTICLE_FX_CAM_INSIDE_NONPLAYER_VEHICLE")
	static function setParticleFxCamInsideNonplayerVehicle(vehicle:Dynamic, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PARTICLE_FX_BULLET_IMPACT_SCALE")
	static function setParticleFxBulletImpactScale(scale:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PARTICLE_FX_LOOPED_ALPHA")
	static function setParticleFxLoopedAlpha(ptfxHandle:Int, alpha:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PARTICLE_FX_CAM_INSIDE_VEHICLE")
	static function setParticleFxCamInsideVehicle(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PARTICLE_FX_LOOPED_SCALE")
	static function setParticleFxLoopedScale(ptfxHandle:Int, scale:Float):Dynamic;

	/**
	 * Sets the colour tint of a previously started looped particle effect
	 * 
	 * You can use the [inverse lerp](https://www.gamedev.net/articles/programming/general-and-gameplay-programming/inverse-lerp-a-super-useful-yet-often-overlooked-function-r5230/) method to normalize in a range from 0.0 to 1.0 an rgb
	 */
	@:native("SET_PARTICLE_FX_LOOPED_COLOUR")
	static function setParticleFxLoopedColour(ptfxHandle:Int, r:Float, g:Float, b:Float, bLocalOnly:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PARTICLE_FX_LOOPED_FAR_CLIP_DIST")
	static function setParticleFxLoopedFarClipDist(ptfxHandle:Int, range:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PARTICLE_FX_LOOPED_EVOLUTION")
	static function setParticleFxLoopedEvolution(ptfxHandle:Int, propertyName:String, amount:Float, noNetwork:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_SET_PARTICLE_FX_NON_LOOPED_EMITTER_SCALE")
	static function SetParticleFxNonLoopedEmitterScale(p0:Float, p1:Float, scale:Float):Dynamic;

	/**
	 * ```
	 * Usage example for C#:  
	 * Function.Call(Hash.SET_PARTICLE_FX_NON_LOOPED_ALPHA, new InputArgument[] { 0.1f });  
	 * 		Note: the argument alpha ranges from 0.0f-1.0f !  
	 * ```
	 */
	@:native("SET_PARTICLE_FX_NON_LOOPED_ALPHA")
	static function setParticleFxNonLoopedAlpha(alpha:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PARTICLE_FX_LOOPED_OFFSETS")
	static function setParticleFxLoopedOffsets(ptfxHandle:Int, x:Float, y:Float, z:Float, rotX:Float, rotY:Float, rotZ:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_SCALEFORM_MOVIE_AS_NO_LONGER_NEEDED")
	static function setScaleformMovieAsNoLongerNeeded(scaleformHandle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PARTICLE_FX_OVERRIDE")
	static function setParticleFxOverride(oldAsset:String, newAsset:String):Dynamic;

	/**
	 * Only works on some fx's, while on others it might SEEM to work "properly", but the colors can be "strange" or even completly different from what you've expected. Reason for this is that those fx's might already have colors "baked into them" which then start to act as a "mixing palette", resulting in a different color than expected. A hypothetical example of this would be if the fx itself is already full (bright) red (RGB: 1.0, 0.0, 0.0) and you then set the color to (bright) green (RGB: 0.0, 1.0, 0.0), that it MIGHT result in Yellow (RGB: 1.0, 1.0, 0.0).
	 * 
	 * This doc previously stated that the set color is **NOT** networked, however it does actually turns out to be networked. Tested with all fireworks effects and several other FX effects resulted in colored fx effects on all clients when used in combination with [START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD](#\_0xF56B8137DF10135D).
	 * This might however not be the case for all types of particle fx's, so it's recommended to test this thoroughly with multiple clients before releasing your script for example.
	 */
	@:native("SET_PARTICLE_FX_NON_LOOPED_COLOUR")
	static function setParticleFxNonLoopedColour(r:Float, g:Float, b:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PARTICLE_FX_SHOOTOUT_BOAT")
	static function setParticleFxShootoutBoat(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v573
	 * ```
	 * 
	 * Configures a Scaleform movie to render to a large render target (1280x720), which is useful for ensuring higher quality and clarity in certain display scenarios. Such as displaying the name of an organization (CEO Office) in a visually impactful way for example.
	 */
	@:native("SET_SCALEFORM_MOVIE_TO_USE_LARGE_RT")
	static function setScaleformMovieToUseLargeRt(scaleformMovieId:Int, useLargeRT:Bool):Dynamic;

	/**
	 * Adjusts a scaleform movie's dimensions to fit a large rendertarget. Mostly used in casino scripts.
	 */
	@:native("SET_SCALEFORM_MOVIE_TO_USE_SUPER_LARGE_RT")
	static function setScaleformMovieToUseSuperLargeRt(scaleformHandle:Int, toggle:Bool):Dynamic;

	/**
	 * This function anchors script draws to a side of the safe zone. This needs to be called to make the interface
	 * independent of the player's safe zone configuration.
	 * 
	 * These values are equivalent to `alignX` and `alignY` in `common:/data/ui/frontend.xml`, which can be used as a baseline
	 * for default alignment.
	 * 
	 * Valid values for `horizontalAlign`, from original documentation:
	 * 
	 * *   **C (67)** - Center: DRAW_TEXT starts in the middle of the screen, while DRAW_RECT starts on the right; both move with
	 *     the right side of the screen.
	 * *   **L (76)** - Left: Anchors to the left side, DRAW_RECT starts on the left side of the screen, same as DRAW_TEXT when
	 *     centered.
	 * *   **R (82)** - Right: DRAW_TEXT starts on the left side (normal 0,0), while DRAW_RECT starts some short distance away
	 *     from the right side of the screen, both move with the right side of the screen.
	 * 
	 * Valid values for `verticalAlign`, from original documentation:
	 * 
	 * *   **B (66)** - Bottom: DRAW_RECT starts about as far as the middle of the map from the bottom, while DRAW_TEXT is about
	 *     rather centered.
	 * *   **C (67)** - Center: It starts at a certain distance from the bottom, but the distance is fixed, the distance is
	 *     different from 66.
	 * *   **T (84)** - Top: Anchors to the top, DRAW_RECT starts on the top of the screen, DRAW_TEXT just below it.
	 * 
	 * Using any other value (including 0) will result in the safe zone not being taken into account for this draw. The
	 * canonical value for this is 'I' (73).
	 * 
	 * For example, you can use `SET_SCRIPT_GFX_ALIGN(0, 84)` to only scale on the Y axis (to the top), but not change the X
	 * axis.
	 * 
	 * To reset the value, use `RESET_SCRIPT_GFX_ALIGN`.
	 */
	@:native("SET_SCRIPT_GFX_ALIGN")
	static function setScriptGfxAlign(horizontalAlign:Int, verticalAlign:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_SCALEFORM_MOVIE_TO_USE_SYSTEM_TIME")
	static function setScaleformMovieToUseSystemTime(scaleform:Int, toggle:Bool):Dynamic;

	/**
	 * Sets a flag defining whether or not script draw commands should continue being drawn behind the pause menu. This is usually used for TV channels and other draw commands that are used with a world render target.
	 */
	@:native("SET_SCRIPT_GFX_DRAW_BEHIND_PAUSEMENU")
	static function setScriptGfxDrawBehindPausemenu(flag:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_PLAYER_TCMODIFIER_TRANSITION")
	static function setPlayerTcmodifierTransition(value:Float):Dynamic;

	/**
	 * ```
	 * Loads the specified timecycle modifier. Modifiers are defined separately in another file (e.g. "timecycle_mods_1.xml")
	 * Parameters:
	 * modifierName - The modifier to load (e.g. "V_FIB_IT3", "scanline_cam", etc.)
	 * ```
	 */
	@:native("SET_TIMECYCLE_MODIFIER")
	static function setTimecycleModifier(modifierName:String):Dynamic;

	/**
	 * Sets the draw offset/calculated size for `SET_SCRIPT_GFX_ALIGN`. If using any alignment other than left/top, the game
	 * expects the width/height to be configured using this native in order to get a proper starting position for the draw
	 * command.
	 */
	@:native("SET_SCRIPT_GFX_ALIGN_PARAMS")
	static function setScriptGfxAlignParams(x:Float, y:Float, w:Float, h:Float):Dynamic;

	/**
	 * Sets the draw order for script draw commands.
	 * Examples from decompiled scripts:
	 * GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(7);
	 * GRAPHICS::DRAW_RECT(0.5, 0.5, 3.0, 3.0, v\_4, v\_5, v\_6, a\_0.\_f172, 0);
	 * GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(1);
	 * GRAPHICS::DRAW_RECT(0.5, 0.5, 1.5, 1.5, 0, 0, 0, 255, 0);
	 * 
	 * ```cpp
	 * enum eGfxDrawOrder
	 * {
	 *     GFX_ORDER_BEFORE_HUD_PRIORITY_LOW = 0,
	 *     GFX_ORDER_BEFORE_HUD = 1,
	 *     GFX_ORDER_BEFORE_HUD_PRIORITY_HIGH = 2,
	 *     GFX_ORDER_AFTER_HUD_PRIORITY_LOW = 3,
	 *     GFX_ORDER_AFTER_HUD = 4,
	 *     GFX_ORDER_AFTER_HUD_PRIORITY_HIGH = 5,
	 *     GFX_ORDER_AFTER_FADE_PRIORITY_LOW = 6,
	 *     GFX_ORDER_AFTER_FADE = 7,
	 *     GFX_ORDER_AFTER_FADE_PRIORITY_HIGH = 8,
	 * }
	 * ```
	 */
	@:native("SET_SCRIPT_GFX_DRAW_ORDER")
	static function setScriptGfxDrawOrder(order:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED")
	static function setStreamedTextureDictAsNoLongerNeeded(textureDict:String):Dynamic;

	/**
	 * ```
	 * Probably changes tvs from being a 3d audio to being "global" audio
	 * ```
	 */
	@:native("SET_TV_AUDIO_FRONTEND")
	static function setTvAudioFrontend(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Toggles Heatvision on/off.  
	 * ```
	 */
	@:native("SET_SEETHROUGH")
	static function setSeethrough(toggle:Bool):Dynamic;

	/**
	 * This native doesn't work like [`SetWeatherTypeTransition`](#\_0x578C752848ECFA0C).
	 */
	@:native("SET_TRANSITION_TIMECYCLE_MODIFIER")
	static function setTransitionTimecycleModifier(modifierName:String, transition:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_TIMECYCLE_MODIFIER_STRENGTH")
	static function setTimecycleModifierStrength(strength:Float):Dynamic;

	/**
	 * ```
	 * network fx  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 14: Any p13
	 * NativeDB Added Parameter 15: Any p14
	 * NativeDB Added Parameter 16: Any p15
	 * NativeDB Added Parameter 17: Any p16
	 * ```
	 */
	@:native("START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE")
	static function startNetworkedParticleFxLoopedOnEntityBone(effectName:String, entity:Dynamic, xOffset:Float, yOffset:Float, zOffset:Float, xRot:Float, yRot:Float, zRot:Float, boneIndex:Int, scale:Float, xAxis:Bool, yAxis:Bool, zAxis:Bool):Int;

	/**
	 * 
	 */
	@:native("SET_TRACKED_POINT_INFO")
	static function setTrackedPointInfo(point:Int, x:Float, y:Float, z:Float, radius:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_TV_CHANNEL_PLAYLIST_AT_HOUR")
	static function setTvChannelPlaylistAtHour(tvChannel:Int, playlistName:String, hour:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_TV_CHANNEL")
	static function setTvChannel(channel:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_TV_VOLUME")
	static function setTvVolume(volume:Float):Dynamic;

	/**
	 * 
	 */
	@:native("START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY")
	static function startNetworkedParticleFxNonLoopedOnEntity(effectName:String, entity:Dynamic, offsetX:Float, offsetY:Float, offsetZ:Float, rotX:Float, rotY:Float, rotZ:Float, scale:Float, axisX:Bool, axisY:Bool, axisZ:Bool):Bool;

	/**
	 * NOTE: the [USE_PARTICLE_FX_ASSET](#\_0x6C38AF3693A69A91) needs to be called before EVERY StartNetworkedParticleFxNonLoopedAtCoord(....) call!
	 * 
	 * List with lots of particle effects: https://vespura.com/fivem/particle-list/
	 * 
	 * Note: Not all particles on this list are for non looped and vice versa, neither are all of them suited/meant to have SetParticleFxNonLoopedColour(....) called on them.
	 * 
	 * ```
	 * NativeDB Added Parameter 12: BOOL p11
	 * ```
	 */
	@:native("START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD")
	static function startNetworkedParticleFxNonLoopedAtCoord(effectName:String, xPos:Float, yPos:Float, zPos:Float, xRot:Float, yRot:Float, zRot:Float, scale:Float, xAxis:Bool, yAxis:Bool, zAxis:Bool):Bool;

	/**
	 * Loads specified video sequence into the TV Channel
	 * TV_Channel ranges from 0-2
	 * VideoSequence can be any of the following:
	 * "PL_STD_CNT" CNT Standard Channel
	 * "PL_STD_WZL" Weazel Standard Channel
	 * "PL_LO_CNT"
	 * "PL_LO_WZL"
	 * "PL_SP_WORKOUT"
	 * "PL_SP_INV" - Jay Norris Assassination Mission Fail
	 * "PL_SP_INV_EXP" - Jay Norris Assassination Mission Success
	 * "PL_LO_RS" - Righteous Slaughter Ad
	 * "PL_LO_RS_CUTSCENE" - Righteous Slaughter Cut-scene
	 * "PL_SP_PLSH1\_INTRO"
	 * "PL_LES1\_FAME_OR_SHAME"
	 * "PL_STD_WZL_FOS_EP2"
	 * "PL_MP_WEAZEL" - Weazel Logo on loop
	 * "PL_MP_CCTV" - Generic CCTV loop
	 * Restart:
	 * 0=video sequence continues as normal
	 * 1=sequence restarts from beginning every time that channel is selected
	 * The above playlists work as intended, and are commonly used, but there are many more playlists, as seen in `tvplaylists.xml`. A pastebin below outlines all playlists, they will be surronded by the name tag I.E. (<Name>PL_STD_CNT</Name> = PL_STD_CNT).
	 * https://pastebin.com/zUzGB6h7
	 */
	@:native("SET_TV_CHANNEL_PLAYLIST")
	static function setTvChannelPlaylist(tvChannel:Int, playlistName:String, restart:Bool):Dynamic;

	/**
	 * ```
	 * network fx  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 13: Any p12
	 * NativeDB Added Parameter 14: Any p13
	 * NativeDB Added Parameter 15: Any p14
	 * NativeDB Added Parameter 16: Any p15
	 * ```
	 */
	@:native("START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY")
	static function startNetworkedParticleFxLoopedOnEntity(effectName:String, entity:Dynamic, xOffset:Float, yOffset:Float, zOffset:Float, xRot:Float, yRot:Float, zRot:Float, scale:Float, xAxis:Bool, yAxis:Bool, zAxis:Bool):Int;

	/**
	 * ```
	 * GRAPHICS::START_PARTICLE_FX_LOOPED_AT_COORD("scr_fbi_falling_debris", 93.7743f, -749.4572f, 70.86904f, 0f, 0f, 0f, 0x3F800000, 0, 0, 0, 0)  
	 * p11 seems to be always 0  
	 * ```
	 */
	@:native("START_PARTICLE_FX_LOOPED_AT_COORD")
	static function startParticleFxLoopedAtCoord(effectName:String, x:Float, y:Float, z:Float, xRot:Float, yRot:Float, zRot:Float, scale:Float, xAxis:Bool, yAxis:Bool, zAxis:Bool, p11:Bool):Int;

	/**
	 * 
	 */
	@:native("START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_PED_BONE")
	static function startNetworkedParticleFxNonLoopedOnPedBone(effectName:String, ped:Dynamic, offsetX:Float, offsetY:Float, offsetZ:Float, rotX:Float, rotY:Float, rotZ:Float, boneIndex:Int, scale:Float, axisX:Bool, axisY:Bool, axisZ:Bool):Bool;

	/**
	 * 
	 */
	@:native("START_PARTICLE_FX_LOOPED_ON_ENTITY_BONE")
	static function startParticleFxLoopedOnEntityBone(effectName:String, entity:Dynamic, xOffset:Float, yOffset:Float, zOffset:Float, xRot:Float, yRot:Float, zRot:Float, boneIndex:Int, scale:Float, xAxis:Bool, yAxis:Bool, zAxis:Bool):Int;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("_START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY_BONE")
	static function StartNetworkedParticleFxNonLoopedOnEntityBone(effectName:String, entity:Dynamic, offsetX:Float, offsetY:Float, offsetZ:Float, rotX:Float, rotY:Float, rotZ:Float, boneIndex:Int, scale:Float, axisX:Bool, axisY:Bool, axisZ:Bool):Bool;

	/**
	 * ```
	 * GRAPHICS::START_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_paleto_roof_impact", -140.8576f, 6420.789f, 41.1391f, 0f, 0f, 267.3957f, 0x3F800000, 0, 0, 0);  
	 * Axis - Invert Axis Flags  
	 * list: pastebin.com/N9unUFWY  
	 * -------------------------------------------------------------------  
	 * C#  
	 * Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, = you are calling this function.  
	 * char *effectname = This is an in-game effect name, for e.g. "scr_fbi4_trucks_crash" is used to give the effects when truck crashes etc  
	 * float x, y, z pos = this one is Simple, you just have to declare, where do you want this effect to take place at, so declare the ordinates  
	 * float xrot, yrot, zrot = Again simple? just mention the value in case if you want the effect to rotate.  
	 * float scale = is declare the scale of the effect, this may vary as per the effects for e.g 1.0f  
	 * bool xaxis, yaxis, zaxis = To bool the axis values.  
	 * example:  
	 * Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, "scr_fbi4_trucks_crash", GTA.Game.Player.Character.Position.X, GTA.Game.Player.Character.Position.Y, GTA.Game.Player.Character.Position.Z + 4f, 0, 0, 0, 5.5f, 0, 0, 0);  
	 * ```
	 */
	@:native("START_PARTICLE_FX_NON_LOOPED_AT_COORD")
	static function startParticleFxNonLoopedAtCoord(effectName:String, xPos:Float, yPos:Float, zPos:Float, xRot:Float, yRot:Float, zRot:Float, scale:Float, xAxis:Bool, yAxis:Bool, zAxis:Bool):Int;

	/**
	 * 
	 */
	@:native("START_PETROL_TRAIL_DECALS")
	static function startPetrolTrailDecals(p0:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_STOP_BINK_MOVIE")
	static function StopBinkMovie(binkMovie:Int):Dynamic;

	/**
	 * 
	 */
	@:native("START_PARTICLE_FX_LOOPED_ON_ENTITY")
	static function startParticleFxLoopedOnEntity(effectName:String, entity:Dynamic, xOffset:Float, yOffset:Float, zOffset:Float, xRot:Float, yRot:Float, zRot:Float, scale:Float, xAxis:Bool, yAxis:Bool, zAxis:Bool):Int;

	/**
	 * 
	 */
	@:native("START_PARTICLE_FX_LOOPED_ON_PED_BONE")
	static function startParticleFxLoopedOnPedBone(effectName:String, ped:Dynamic, xOffset:Float, yOffset:Float, zOffset:Float, xRot:Float, yRot:Float, zRot:Float, boneIndex:Int, scale:Float, xAxis:Bool, yAxis:Bool, zAxis:Bool):Int;

	/**
	 * ```
	 * p1 is always 0 in the native scripts  
	 * ```
	 */
	@:native("STOP_PARTICLE_FX_LOOPED")
	static function stopParticleFxLooped(ptfxHandle:Int, p1:Bool):Dynamic;

	/**
	 * ```
	 * Starts a particle effect on an entity for example your player.  
	 * List: pastebin.com/N9unUFWY  
	 * Example:  
	 * C#:  
	 * Function.Call(Hash.REQUEST_NAMED_PTFX_ASSET, "scr_rcbarry2");                     Function.Call(Hash._SET_PTFX_ASSET_NEXT_CALL, "scr_rcbarry2");                             Function.Call(Hash.START_PARTICLE_FX_NON_LOOPED_ON_ENTITY, "scr_clown_appears", Game.Player.Character, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false);  
	 * Internally this calls the same function as GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE  
	 * however it uses -1 for the specified bone index, so it should be possible to start a non looped fx on an entity bone using that native  
	 * ```
	 */
	@:native("START_PARTICLE_FX_NON_LOOPED_ON_ENTITY")
	static function startParticleFxNonLoopedOnEntity(effectName:String, entity:Dynamic, offsetX:Float, offsetY:Float, offsetZ:Float, rotX:Float, rotY:Float, rotZ:Float, scale:Float, axisX:Bool, axisY:Bool, axisZ:Bool):Bool;

	/**
	 * This native enables/disables the gold putting grid display (https://i.imgur.com/TC6cku6.png).
	 * This requires these two natives to be called as well to configure the grid: [`TERRAINGRID_SET_PARAMS`](#\_0x1C4FC5752BCD8E48) and [`TERRAINGRID_SET_COLOURS`](#\_0x5CE62918F8D703C7).
	 */
	@:native("TERRAINGRID_ACTIVATE")
	static function terraingridActivate(toggle:Bool):Dynamic;

	/**
	 * ```
	 * GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE("scr_sh_bong_smoke", PLAYER::PLAYER_PED_ID(), -0.025f, 0.13f, 0f, 0f, 0f, 0f, 31086, 0x3F800000, 0, 0, 0);  
	 * Axis - Invert Axis Flags  
	 * list: pastebin.com/N9unUFWY  
	 * ```
	 */
	@:native("START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE")
	static function startParticleFxNonLoopedOnPedBone(effectName:String, ped:Dynamic, offsetX:Float, offsetY:Float, offsetZ:Float, rotX:Float, rotY:Float, rotZ:Float, boneIndex:Int, scale:Float, axisX:Bool, axisY:Bool, axisZ:Bool):Bool;

	/**
	 * Switches the rendering display to exclude everything except PostFX, resulting in a frozen screen before the UI pass.
	 */
	@:native("TOGGLE_PAUSED_RENDERPHASES")
	static function togglePausedRenderphases(toggle:Bool):Dynamic;

	/**
	 * ```
	 * GRAPHICS::UNPATCH_DECAL_DIFFUSE_MAP(9123);  
	 * GRAPHICS::SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED("MPMissMarkers256");  
	 * ```
	 */
	@:native("UNPATCH_DECAL_DIFFUSE_MAP")
	static function unpatchDecalDiffuseMap(decalType:Int):Dynamic;

	/**
	 * ```
	 * From the b678d decompiled scripts:
	 *  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("FM_Mission_Controler");
	 *  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_apartment_mp");
	 *  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_indep_fireworks");
	 *  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_cig_plane");
	 *  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_creator");
	 *  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_ornate_heist");
	 *  GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_prison_break_heist_station");
	 * ```
	 */
	@:native("USE_PARTICLE_FX_ASSET")
	static function useParticleFxAsset(name:String):Dynamic;

	/**
	 * This native is used along with these two natives: [`TERRAINGRID_ACTIVATE`](#\_0xA356990E161C9E65) and [`TERRAINGRID_SET_PARAMS`](#\_0x1C4FC5752BCD8E48).
	 * This native sets the colors for the golf putting grid. the 'min...' values are for the lower areas that the grid covers, the 'max...' values are for the higher areas that the grid covers, all remaining values are for the 'normal' ground height.
	 * All those natives combined they will output something like this: https://i.imgur.com/TC6cku6.png
	 * 
	 * Old description:
	 * Only called in golf and golf_mp\
	 * parameters used are\
	 * GRAPHICS::\_0x5CE62918F8D703C7(255, 0, 0, 64, 255, 255, 255, 5, 255, 255, 0, 64);
	 */
	@:native("TERRAINGRID_SET_COLOURS")
	static function terraingridSetColours(lowR:Int, lowG:Int, lowB:Int, lowAlpha:Int, R:Int, G:Int, B:Int, Alpha:Int, highR:Int, highG:Int, highB:Int, highAlpha:Int):Dynamic;

	/**
	 * 
	 */
	@:native("WASH_DECALS_IN_RANGE")
	static function washDecalsInRange(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("TRIGGER_SCREENBLUR_FADE_IN")
	static function triggerScreenblurFadeIn(transitionTime:Float):Bool;

	/**
	 * 
	 */
	@:native("UI3DSCENE_IS_AVAILABLE")
	static function ui3dsceneIsAvailable():Bool;

	/**
	 * This native is used along with these two natives: [`TERRAINGRID_ACTIVATE`](#\_0xA356990E161C9E65) and [`TERRAINGRID_SET_COLOURS`](#\_0x5CE62918F8D703C7).
	 * 
	 * This native configures the location, size, rotation, normal height, and the difference ratio between min, normal and max.
	 * 
	 * All those natives combined they will output something like this: https://i.imgur.com/TC6cku6.png
	 */
	@:native("TERRAINGRID_SET_PARAMS")
	static function terraingridSetParams(x:Float, y:Float, z:Float, p3:Float, rotation:Float, p5:Float, width:Float, height:Float, p8:Float, scale:Float, glowIntensity:Float, normalHeight:Float, heightDiff:Float):Dynamic;

	/**
	 * 
	 */
	@:native("TRIGGER_SCREENBLUR_FADE_OUT")
	static function triggerScreenblurFadeOut(transitionTime:Float):Bool;

	/**
	 * 
	 */
	@:native("UPDATE_LIGHTS_ON_ENTITY")
	static function updateLightsOnEntity(entity:Dynamic):Dynamic;

	/**
	 * ```
	 * All presets can be found in common\data\ui\uiscenes.meta
	 * ```
	 */
	@:native("UI3DSCENE_PUSH_PRESET")
	static function ui3dscenePushPreset(presetName:String):Bool;

	/**
	 * 
	 */
	@:native("WASH_DECALS_FROM_VEHICLE")
	static function washDecalsFromVehicle(vehicle:Dynamic, p1:Float):Dynamic;

}
