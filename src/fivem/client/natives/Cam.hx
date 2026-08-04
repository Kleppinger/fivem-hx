package fivem.client.natives;

@:native("_G")
extern class Cam {
	/**
	 * Takes a camera and uses the information from it as a camera spline node.
	 */
	@:native("ADD_CAM_SPLINE_NODE_USING_CAMERA")
	static function addCamSplineNodeUsingCamera(cam:Dynamic, cam2:Dynamic, length:Int, p3:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ADD_CAM_SPLINE_NODE_USING_CAMERA_FRAME")
	static function addCamSplineNodeUsingCameraFrame(cam:Dynamic, cam2:Dynamic, p2:Int, p3:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v3258
	 * ```
	 */
	@:native("_ACTIVATE_CAM_WITH_INTERP_AND_FOV_CURVE")
	static function ActivateCamWithInterpAndFovCurve(camTo:Dynamic, camFrom:Dynamic, duration:Int, easeLocation:Int, easeRotation:Int, easeFove:Int):Dynamic;

	/**
	 * 
	 */
	@:native("ADD_CAM_SPLINE_NODE_USING_GAMEPLAY_FRAME")
	static function addCamSplineNodeUsingGameplayFrame(cam:Dynamic, p1:Int, p2:Int):Dynamic;

	/**
	 * ```
	 * CAM::ANIMATED_SHAKE_SCRIPT_GLOBAL("SHAKE_CAM_medium", "medium", "", 0.5f);
	 * ```
	 */
	@:native("ANIMATED_SHAKE_SCRIPT_GLOBAL")
	static function animatedShakeScriptGlobal(p0:String, p1:String, p2:String, p3:Float):Dynamic;

	/**
	 * ```
	 * I filled p1-p6 (the floats) as they are as other natives with 6 floats in a row are similar and I see no other method. So if a test from anyone proves them wrong please correct.  
	 * p7 (length) determines the length of the spline, affects camera path and duration of transition between previous node and this one  
	 * p8 big values ~100 will slow down the camera movement before reaching this node  
	 * p9 != 0 seems to override the rotation/pitch (bool?)  
	 * ```
	 */
	@:native("ADD_CAM_SPLINE_NODE")
	static function addCamSplineNode(camera:Dynamic, x:Float, y:Float, z:Float, xRot:Float, yRot:Float, zRot:Float, length:Int, p8:Int, transitionType:Int):Dynamic;

	/**
	 * This native works with peds only.
	 */
	@:native("ATTACH_CAM_TO_PED_BONE")
	static function attachCamToPedBone(cam:Dynamic, ped:Dynamic, boneIndex:Int, xOffset:Float, yOffset:Float, zOffset:Float, isRelative:Bool):Dynamic;

	/**
	 * ```
	 * Example from michael2 script.  
	 * CAM::ANIMATED_SHAKE_CAM(l_5069, "shake_cam_all@", "light", "", 1f);  
	 * ```
	 */
	@:native("ANIMATED_SHAKE_CAM")
	static function animatedShakeCam(cam:Dynamic, p1:String, p2:String, p3:String, amplitude:Float):Dynamic;

	/**
	 * ```
	 * Seems to animate the gameplay camera zoom.  
	 * Eg. _ANIMATE_GAMEPLAY_CAM_ZOOM(1f, 1000f);  
	 * will animate the camera zooming in from 1000 meters away.  
	 * Game scripts use it like this:  
	 * // Setting this to 1 prevents V key from changing zoom  
	 * PLAYER::SET_PLAYER_FORCED_ZOOM(PLAYER::PLAYER_ID(), 1);  
	 * // These restrict how far you can move cam up/down left/right  
	 * CAM::_CLAMP_GAMEPLAY_CAM_YAW(-20f, 50f);  
	 * CAM::_CLAMP_GAMEPLAY_CAM_PITCH(-60f, 0f);  
	 * CAM::_ANIMATE_GAMEPLAY_CAM_ZOOM(1f, 1f);  
	 * ```
	 */
	@:native("_ANIMATE_GAMEPLAY_CAM_ZOOM")
	static function AnimateGameplayCamZoom(p0:Float, distance:Float):Dynamic;

	/**
	 * ```
	 * minimum: Degrees between -180f and 180f.
	 * maximum: Degrees between -180f and 180f.
	 * Clamps the gameplay camera's current yaw.
	 * Eg. _CLAMP_GAMEPLAY_CAM_YAW(0.0f, 0.0f) will set the horizontal angle directly behind the player.
	 * ```
	 */
	@:native("_CLAMP_GAMEPLAY_CAM_YAW")
	static function ClampGameplayCamYaw(minimum:Float, maximum:Float):Dynamic;

	/**
	 * This native works with vehicles only.
	 * Bone indexes are usually given by this native [GET_ENTITY_BONE_INDEX_BY_NAME](#\_0xFB71170B7E76ACBA).
	 */
	@:native("_ATTACH_CAM_TO_VEHICLE_BONE")
	static function AttachCamToVehicleBone(cam:Dynamic, vehicle:Dynamic, boneIndex:Int, relativeRotation:Bool, rotX:Float, rotY:Float, rotZ:Float, offX:Float, offY:Float, offZ:Float, fixedDirection:Bool):Dynamic;

	/**
	 * ```
	 * Last param determines if its relative to the Entity  
	 * ```
	 */
	@:native("ATTACH_CAM_TO_ENTITY")
	static function attachCamToEntity(cam:Dynamic, entity:Dynamic, xOffset:Float, yOffset:Float, zOffset:Float, isRelative:Bool):Dynamic;

	/**
	 * Creates a camera with the specified camera hash, You can use `SET_CAM_` natives to manipulate the camera.
	 * Make sure to call [RENDER_SCRIPT_CAMS](#\_0x07E5B515DB0636FC) once the camera is created, or this won't have any visible effect.
	 * 
	 * Take a look at [CREATE_CAM](#\_0xC3981DCE61D9E13F) if you would like to see the available camera names.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("CREATE_CAMERA")
	static function createCamera(camHash:Int, active:Bool):Dynamic;

	/**
	 * Create a camera with the specified cam name/type, You can use `SET_CAM_` natives to manipulate the camera.
	 * 
	 * Take a look at [CREATE_CAM](#\_0xC3981DCE61D9E13F) if you would like to see the available camera names.
	 */
	@:native("CREATE_CAM_WITH_PARAMS")
	static function createCamWithParams(camName:String, posX:Float, posY:Float, posZ:Float, rotX:Float, rotY:Float, rotZ:Float, fov:Float, active:Bool, rotationOrder:Int):Dynamic;

	/**
	 * ```
	 * BOOL param indicates whether the cam should be destroyed if it belongs to the calling script.  
	 * ```
	 */
	@:native("DESTROY_ALL_CAMS")
	static function destroyAllCams(bScriptHostCam:Bool):Dynamic;

	/**
	 * ```
	 * minimum: Degrees between -90f and 90f.
	 * maximum: Degrees between -90f and 90f.
	 * Clamps the gameplay camera's current pitch.
	 * Eg. _CLAMP_GAMEPLAY_CAM_PITCH(0.0f, 0.0f) will set the vertical angle directly behind the player.
	 * ```
	 */
	@:native("_CLAMP_GAMEPLAY_CAM_PITCH")
	static function ClampGameplayCamPitch(minimum:Float, maximum:Float):Dynamic;

	/**
	 * Create a camera with the specified camera hash, You can use `SET_CAM_` natives to manipulate the camera.
	 * Make sure to call [RENDER_SCRIPT_CAMS](#\_0x07E5B515DB0636FC) once the camera is created, or this won't have any visible effect.
	 * 
	 * Take a look at [CREATE_CAM](#\_0xC3981DCE61D9E13F) if you would like to see the available camera names.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("CREATE_CAMERA_WITH_PARAMS")
	static function createCameraWithParams(camHash:Int, posX:Float, posY:Float, posZ:Float, rotX:Float, rotY:Float, rotZ:Float, fov:Float, active:Bool, rotationOrder:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DETACH_CAM")
	static function detachCam(cam:Dynamic):Dynamic;

	/**
	 * Creates a camera with the specified cam name, You can use `SET_CAM_` natives to manipulate the camera.\
	 * Make sure to call [RENDER_SCRIPT_CAMS](#\_0x07E5B515DB0636FC) once the camera is created, or this won't have any visible effect.
	 * 
	 * ### Camera names:
	 * 
	 * *   DEFAULT_SCRIPTED_CAMERA
	 * *   DEFAULT_ANIMATED_CAMERA
	 * *   DEFAULT_SPLINE_CAMERA
	 * *   DEFAULT_SCRIPTED_FLY_CAMERA
	 * *   TIMED_SPLINE_CAMERA
	 * *   CUSTOM_TIMED_SPLINE_CAMERA
	 * *   ROUNDED_SPLINE_CAMERA
	 * *   SMOOTHED_SPLINE_CAMERA
	 */
	@:native("CREATE_CAM")
	static function createCam(camName:String, active:Bool):Dynamic;

	/**
	 * ```
	 * some camera effect that is used in the drunk-cheat, and turned off (by setting it to 0.0) along with the shaking effects once the drunk cheat is disabled.  
	 * ```
	 */
	@:native("CUSTOM_MENU_COORDINATES")
	static function customMenuCoordinates(p0:Float):Dynamic;

	/**
	 * ```
	 * BOOL param indicates whether the cam should be destroyed if it belongs to the calling script.  
	 * ```
	 */
	@:native("DESTROY_CAM")
	static function destroyCam(cam:Dynamic, bScriptHostCam:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("CREATE_CINEMATIC_SHOT")
	static function createCinematicShot(p0:Dynamic, p1:Int, p2:Dynamic, entity:Dynamic):Dynamic;

	/**
	 * ```
	 * Disables first person camera for the current frame.  
	 * Found in decompiled scripts:  
	 * GRAPHICS::DRAW_DEBUG_TEXT_2D("Disabling First Person Cam", 0.5, 0.8, 0.0, 0, 0, 255, 255);  
	 * CAM::_DE2EF5DA284CC8DF();  
	 * ```
	 */
	@:native("_DISABLE_FIRST_PERSON_CAM_THIS_FRAME")
	static function DisableFirstPersonCamThisFrame():Dynamic;

	/**
	 * 
	 */
	@:native("DISABLE_CAM_COLLISION_FOR_OBJECT")
	static function disableCamCollisionForObject(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("DISABLE_AIM_CAM_THIS_UPDATE")
	static function disableAimCamThisUpdate():Dynamic;

	/**
	 * ```
	 * Fades the screen in.  
	 * duration: The time the fade should take, in milliseconds.  
	 * ```
	 */
	@:native("DO_SCREEN_FADE_IN")
	static function doScreenFadeIn(duration:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_DISABLE_VEHICLE_FIRST_PERSON_CAM_THIS_FRAME")
	static function DisableVehicleFirstPersonCamThisFrame():Dynamic;

	/**
	 * 
	 */
	@:native("_DISABLE_CAM_COLLISION_FOR_ENTITY")
	static function DisableCamCollisionForEntity(entity:Dynamic):Dynamic;

	/**
	 * ```
	 * Fades the screen out.  
	 * duration: The time the fade should take, in milliseconds.  
	 * ```
	 */
	@:native("DO_SCREEN_FADE_OUT")
	static function doScreenFadeOut(duration:Int):Dynamic;

	/**
	 * Looks up a camera handle in the current camera pool and returns `true` if the handle is found, otherwise it returns `false`.
	 */
	@:native("DOES_CAM_EXIST")
	static function doesCamExist(cam:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("FORCE_CINEMATIC_RENDERING_THIS_UPDATE")
	static function forceCinematicRenderingThisUpdate(p0:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_GET_CAM_DOF_STRENGTH")
	static function GetCamDofStrength(cam:Dynamic):Float;

	/**
	 * Enumerated type defined in camControlHelperMetadataViewModes:
	 * 
	 * ```cpp
	 * enum eContext {
	 *     ON_FOOT = 0, // [G|S]ET_FOLLOW_PED_CAM_*
	 *     IN_VEHICLE = 1, // [G|S]ET_FOLLOW_VEHICLE_CAM_*
	 *     ON_BIKE = 2,
	 *     IN_BOAT = 3,
	 *     IN_AIRCRAFT = 4,
	 *     IN_SUBMARINE = 5,
	 *     IN_HELI = 6,
	 *     IN_TURRET = 7,
	 * }
	 * ```
	 */
	@:native("_GET_CAM_ACTIVE_VIEW_MODE_CONTEXT")
	static function GetCamActiveViewModeContext():Int;

	/**
	 * 
	 */
	@:native("GET_CAM_FOV")
	static function getCamFov(cam:Dynamic):Float;

	/**
	 * ```
	 * Shows the crosshair even if it wouldn't show normally. Only works for one frame, so make sure to call it repeatedly.  
	 * ```
	 */
	@:native("_ENABLE_CROSSHAIR_THIS_FRAME")
	static function EnableCrosshairThisFrame():Dynamic;

	/**
	 * 
	 */
	@:native("GET_CAM_ANIM_CURRENT_PHASE")
	static function getCamAnimCurrentPhase(cam:Dynamic):Float;

	/**
	 * Gets a camera's rotation by handle (`cam`) lookup, outputs a `Vector3` in degrees.
	 */
	@:native("GET_CAM_ROT")
	static function getCamRot(cam:Dynamic, rotationOrder:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GET_CAM_COORD")
	static function getCamCoord(cam:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_CAM_FAR_CLIP")
	static function getCamFarClip(cam:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_CAM_FAR_DOF")
	static function getCamFarDof(cam:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_CAM_NEAR_CLIP")
	static function getCamNearClip(cam:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_CAM_SPLINE_NODE_INDEX")
	static function getCamSplineNodeIndex(cam:Dynamic):Int;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_GET_CAM_NEAR_DOF")
	static function GetCamNearDof(cam:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_FINAL_RENDERED_CAM_COORD")
	static function getFinalRenderedCamCoord():Dynamic;

	/**
	 * ```
	 * I'm pretty sure the parameter is the camera as usual, but I am not certain so I'm going to leave it as is.  
	 * ```
	 */
	@:native("GET_CAM_SPLINE_NODE_PHASE")
	static function getCamSplineNodePhase(cam:Dynamic):Float;

	/**
	 * See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the view mode enum.
	 */
	@:native("GET_CAM_VIEW_MODE_FOR_CONTEXT")
	static function getCamViewModeForContext(context:Int):Int;

	/**
	 * 
	 */
	@:native("GET_FINAL_RENDERED_CAM_FAR_DOF")
	static function getFinalRenderedCamFarDof():Float;

	/**
	 * ```
	 * Can use this with SET_CAM_SPLINE_PHASE to set the float it this native returns.  
	 * (returns 1.0f when no nodes has been added, reached end of non existing spline)  
	 * ```
	 */
	@:native("GET_CAM_SPLINE_PHASE")
	static function getCamSplinePhase(cam:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_FINAL_RENDERED_CAM_FAR_CLIP")
	static function getFinalRenderedCamFarClip():Float;

	/**
	 * 
	 */
	@:native("GET_FINAL_RENDERED_CAM_FOV")
	static function getFinalRenderedCamFov():Float;

	/**
	 * 
	 */
	@:native("GET_FINAL_RENDERED_CAM_NEAR_CLIP")
	static function getFinalRenderedCamNearClip():Float;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_GET_DEBUG_CAMERA")
	static function GetDebugCamera():Dynamic;

	/**
	 * 
	 */
	@:native("GET_FINAL_RENDERED_CAM_MOTION_BLUR_STRENGTH")
	static function getFinalRenderedCamMotionBlurStrength():Float;

	/**
	 * 
	 */
	@:native("GET_FINAL_RENDERED_CAM_ROT")
	static function getFinalRenderedCamRot(rotationOrder:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GET_FIRST_PERSON_AIM_CAM_ZOOM_FACTOR")
	static function getFirstPersonAimCamZoomFactor():Float;

	/**
	 * 
	 */
	@:native("GET_FINAL_RENDERED_CAM_NEAR_DOF")
	static function getFinalRenderedCamNearDof():Float;

	/**
	 * 
	 */
	@:native("GET_FINAL_RENDERED_IN_WHEN_FRIENDLY_ROT")
	static function getFinalRenderedInWhenFriendlyRot(player:Dynamic, rotationOrder:Int):Dynamic;

	/**
	 * See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the follow mode enum.
	 */
	@:native("GET_FOLLOW_PED_CAM_ZOOM_LEVEL")
	static function getFollowPedCamZoomLevel():Int;

	/**
	 * See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the follow mode enum.
	 */
	@:native("GET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL")
	static function getFollowVehicleCamZoomLevel():Int;

	/**
	 * 
	 */
	@:native("GET_FINAL_RENDERED_IN_WHEN_FRIENDLY_FOV")
	static function getFinalRenderedInWhenFriendlyFov(player:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_FOCUS_PED_ON_SCREEN")
	static function getFocusPedOnScreen(p0:Float, p1:Int, p2:Float, p3:Float, p4:Float, p5:Float, p6:Float, p7:Int, p8:Int):Dynamic;

	/**
	 * ```cpp
	 * // view mode enumeration
	 * enum eCamViewMode 
	 * {
	 * 	THIRD_PERSON_NEAR = 0,
	 * 	THIRD_PERSON_MEDIUM = 1,
	 * 	THIRD_PERSON_FAR = 2,
	 * 	CINEMATIC = 3,
	 * 	FIRST_PERSON = 4,
	 * };
	 * ```
	 */
	@:native("GET_FOLLOW_PED_CAM_VIEW_MODE")
	static function getFollowPedCamViewMode():Int;

	/**
	 * 
	 */
	@:native("GET_GAMEPLAY_CAM_COORD")
	static function getGameplayCamCoord():Dynamic;

	/**
	 * See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the follow mode enum.
	 */
	@:native("GET_FOLLOW_VEHICLE_CAM_VIEW_MODE")
	static function getFollowVehicleCamViewMode():Int;

	/**
	 * 
	 */
	@:native("GET_GAMEPLAY_CAM_RELATIVE_HEADING")
	static function getGameplayCamRelativeHeading():Float;

	/**
	 * 
	 */
	@:native("GET_GAMEPLAY_CAM_FOV")
	static function getGameplayCamFov():Float;

	/**
	 * Attaches a camera to a specific bone of a Ped, including full matrix transformations for both rotation and position offsets.
	 * This native works with peds only.
	 * 
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("HARD_ATTACH_CAM_TO_PED_BONE")
	static function hardAttachCamToPedBone(cam:Dynamic, ped:Dynamic, boneIndex:Int, xRot:Float, yRot:Float, zRot:Float, xOffset:Float, yOffset:Float, zOffset:Float, isRelative:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("GET_RENDERING_CAM")
	static function getRenderingCam():Dynamic;

	/**
	 * 
	 */
	@:native("GET_GAMEPLAY_CAM_RELATIVE_PITCH")
	static function getGameplayCamRelativePitch():Float;

	/**
	 * This function takes a rotation order and outputs a `Vector3` in degrees.
	 * 
	 * It first calls a game function to calculate these values given the rotation order and effectively multiplies those values by `180/PI`, hence degrees since the function it calls outputs radians which are then converted to degrees.
	 */
	@:native("GET_GAMEPLAY_CAM_ROT")
	static function getGameplayCamRot(rotationOrder:Int):Dynamic;

	/**
	 * Resets the idle camera timer. Calling that in a loop once every few seconds is enough to disable the idle cinematic camera.
	 */
	@:native("INVALIDATE_IDLE_CAM")
	static function invalidateIdleCam():Dynamic;

	/**
	 * Interpolates the camera to specified parameters over a set duration using various curve types for position, rotation, and fov.
	 * 
	 * ```
	 * NativeDB Introduced: v3258
	 * ```
	 */
	@:native("_INTERPOLATE_CAM_WITH_PARAMS")
	static function InterpolateCamWithParams(camera:Dynamic, camPosX:Float, camPosY:Float, camPosZ:Float, camRotX:Float, camRotY:Float, camRotZ:Float, fov:Float, duration:Int, posCurveType:Int, rotCurveType:Int, rotOrder:Int, fovCurveType:Int):Dynamic;

	/**
	 * Attaches a camera to an entity, including full matrix transformations for both rotation and position offsets.
	 * 
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("HARD_ATTACH_CAM_TO_ENTITY")
	static function hardAttachCamToEntity(cam:Dynamic, entity:Dynamic, xRot:Float, yRot:Float, zRot:Float, xOffset:Float, yOffset:Float, zOffset:Float, isRelative:Bool):Dynamic;

	/**
	 * ```
	 * IS_A*
	 * ```
	 */
	@:native("_IS_AIM_CAM_THIRD_PERSON_ACTIVE")
	static function IsAimCamThirdPersonActive():Bool;

	/**
	 * Resets the vehicle idle camera timer. Calling this in a loop will disable the idle camera.
	 */
	@:native("_INVALIDATE_VEHICLE_IDLE_CAM")
	static function InvalidateVehicleIdleCam():Dynamic;

	/**
	 * 
	 */
	@:native("IS_AIM_CAM_ACTIVE")
	static function isAimCamActive():Bool;

	/**
	 * 
	 */
	@:native("IS_BONNET_CINEMATIC_CAM_RENDERING")
	static function isBonnetCinematicCamRendering():Bool;

	/**
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("IS_CAM_PLAYING_ANIM")
	static function isCamPlayingAnim(cam:Dynamic, animName:String, animDictionary:String):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("IS_CINEMATIC_CAM_INPUT_ACTIVE")
	static function isCinematicCamInputActive():Bool;

	/**
	 * 
	 */
	@:native("IS_CAM_INTERPOLATING")
	static function isCamInterpolating(cam:Dynamic):Bool;

	/**
	 * ```
	 * Returns whether or not the passed camera handle is active.  
	 * ```
	 */
	@:native("IS_CAM_ACTIVE")
	static function isCamActive(cam:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_CINEMATIC_CAM_RENDERING")
	static function isCinematicCamRendering():Bool;

	/**
	 * 
	 */
	@:native("IS_CINEMATIC_CAM_SHAKING")
	static function isCinematicCamShaking():Bool;

	/**
	 * 
	 */
	@:native("IS_CAM_RENDERING")
	static function isCamRendering(cam:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_CINEMATIC_SHOT_ACTIVE")
	static function isCinematicShotActive(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_CAM_SPLINE_PAUSED")
	static function isCamSplinePaused(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_FOLLOW_VEHICLE_CAM_ACTIVE")
	static function isFollowVehicleCamActive():Bool;

	/**
	 * 
	 */
	@:native("IS_FOLLOW_PED_CAM_ACTIVE")
	static function isFollowPedCamActive():Bool;

	/**
	 * 
	 */
	@:native("IS_CAM_SHAKING")
	static function isCamShaking(cam:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_GAMEPLAY_CAM_SHAKING")
	static function isGameplayCamShaking():Bool;

	/**
	 * 
	 */
	@:native("IS_CINEMATIC_IDLE_CAM_RENDERING")
	static function isCinematicIdleCamRendering():Bool;

	/**
	 * 
	 */
	@:native("IS_GAMEPLAY_CAM_LOOKING_BEHIND")
	static function isGameplayCamLookingBehind():Bool;

	/**
	 * 
	 */
	@:native("IS_GAMEPLAY_HINT_ACTIVE")
	static function isGameplayHintActive():Bool;

	/**
	 * 
	 */
	@:native("IS_FIRST_PERSON_AIM_CAM_ACTIVE")
	static function isFirstPersonAimCamActive():Bool;

	/**
	 * ```
	 * Examples when this function will return 0 are:
	 * - During busted screen.
	 * - When player is coming out from a hospital.
	 * - When player is coming out from a police station.
	 * - When player is buying gun from AmmuNation.
	 * ```
	 */
	@:native("IS_GAMEPLAY_CAM_RENDERING")
	static function isGameplayCamRendering():Bool;

	/**
	 * 
	 */
	@:native("IS_SCREEN_FADING_OUT")
	static function isScreenFadingOut():Bool;

	/**
	 * 
	 */
	@:native("IS_SCREEN_FADING_IN")
	static function isScreenFadingIn():Bool;

	/**
	 * 
	 */
	@:native("IS_SCREEN_FADED_OUT")
	static function isScreenFadedOut():Bool;

	/**
	 * 
	 */
	@:native("_IS_IN_VEHICLE_CAM_DISABLED")
	static function IsInVehicleCamDisabled():Bool;

	/**
	 * 
	 */
	@:native("IS_SCREEN_FADED_IN")
	static function isScreenFadedIn():Bool;

	/**
	 * Determines if a global camera shake is currently active. You can stop the currently active global camera shake using [STOP_SCRIPT_GLOBAL_SHAKING](#\_0x1C9D7949FA533490).
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("IS_SCRIPT_GLOBAL_SHAKING")
	static function isScriptGlobalShaking():Bool;

	/**
	 * 
	 */
	@:native("IS_SPHERE_VISIBLE")
	static function isSphereVisible(x:Float, y:Float, z:Float, radius:Float):Bool;

	/**
	 * 
	 */
	@:native("OVERRIDE_CAM_SPLINE_VELOCITY")
	static function overrideCamSplineVelocity(cam:Dynamic, p1:Int, p2:Float, p3:Float):Dynamic;

	/**
	 * ```
	 * Atleast one time in a script for the zRot Rockstar uses GET_ENTITY_HEADING to help fill the parameter.  
	 * p9 is unknown at this time.  
	 * p10 throughout all the X360 Scripts is always 2.  
	 * ```
	 * 
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("PLAY_CAM_ANIM")
	static function playCamAnim(cam:Dynamic, animName:String, animDictionary:String, x:Float, y:Float, z:Float, xRot:Float, yRot:Float, zRot:Float, p9:Bool, p10:Int):Bool;

	/**
	 * ```
	 * Max value for p1 is 15.  
	 * ```
	 */
	@:native("OVERRIDE_CAM_SPLINE_MOTION_BLUR")
	static function overrideCamSplineMotionBlur(cam:Dynamic, p1:Int, p2:Float, p3:Float):Dynamic;

	/**
	 * ```
	 * Examples:  
	 * CAM::PLAY_SYNCHRONIZED_CAM_ANIM(l_2734, NETWORK::_02C40BF885C567B6(l_2739), "PLAYER_EXIT_L_CAM", "mp_doorbell");  
	 * CAM::PLAY_SYNCHRONIZED_CAM_ANIM(l_F0D[7/ *1* /], l_F4D[15/ *1* /], "ah3b_attackheli_cam2", "missheistfbi3b_helicrash");  
	 * ```
	 * 
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 */
	@:native("PLAY_SYNCHRONIZED_CAM_ANIM")
	static function playSynchronizedCamAnim(camera:Dynamic, scene:Int, animName:String, animDictionary:String):Bool;

	/**
	 * 
	 */
	@:native("POINT_CAM_AT_COORD")
	static function pointCamAtCoord(cam:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * Points the camera at the specified entity.
	 * 
	 * Offset works like [GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS](#\_0x1899F328B0E12848).
	 */
	@:native("POINT_CAM_AT_ENTITY")
	static function pointCamAtEntity(cam:Dynamic, entity:Dynamic, offsetX:Float, offsetY:Float, offsetZ:Float, p5:Bool):Dynamic;

	/**
	 * ```
	 * Parameters p0-p5 seems correct. The bool p6 is unknown, but through every X360 script it's always 1. Please correct p0-p5 if any prove to be wrong.  
	 * ```
	 */
	@:native("POINT_CAM_AT_PED_BONE")
	static function pointCamAtPedBone(cam:Dynamic, ped:Dynamic, boneIndex:Int, x:Float, y:Float, z:Float, p6:Bool):Dynamic;

	/**
	 * Renders the camera previously created with [CREATE_CAM](#\_0xC3981DCE61D9E13F) or [CREATE_CAMERA](#\_0x5E3CF89C6BCCA67D)
	 * 
	 * ```
	 * NativeDB Added Parameter 6: Any p5
	 * ```
	 */
	@:native("RENDER_SCRIPT_CAMS")
	static function renderScriptCams(render:Bool, ease:Bool, easeTime:Int, easeCoordsAnim:Bool, p4:Bool):Dynamic;

	/**
	 * ```
	 * Set camera as active/inactive.  
	 * ```
	 */
	@:native("SET_CAM_ACTIVE")
	static function setCamActive(cam:Dynamic, active:Bool):Dynamic;

	/**
	 * ```
	 * Previous declaration void SET_CAM_ACTIVE_WITH_INTERP(Cam camTo, Cam camFrom, int duration, BOOL easeLocation, BOOL easeRotation) is completely wrong. The last two params are integers not BOOLs...  
	 * ```
	 */
	@:native("SET_CAM_ACTIVE_WITH_INTERP")
	static function setCamActiveWithInterp(camTo:Dynamic, camFrom:Dynamic, duration:Int, easeLocation:Int, easeRotation:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_REPLAY_FREE_CAM_GET_MAX_RANGE")
	static function ReplayFreeCamGetMaxRange():Float;

	/**
	 * ```
	 * Allows you to aim and shoot at the direction the camera is facing.  
	 * ```
	 */
	@:native("SET_CAM_AFFECTS_AIMING")
	static function setCamAffectsAiming(cam:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * Sets the position of the cam.  
	 * ```
	 */
	@:native("SET_CAM_COORD")
	static function setCamCoord(cam:Dynamic, posX:Float, posY:Float, posZ:Float):Dynamic;

	/**
	 * ```
	 * This native has a name defined inside its code  
	 * ```
	 */
	@:native("_SET_CAM_DOF_FOCUS_DISTANCE_BIAS")
	static function SetCamDofFocusDistanceBias(camera:Dynamic, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CAM_ANIM_CURRENT_PHASE")
	static function setCamAnimCurrentPhase(cam:Dynamic, phase:Float):Dynamic;

	/**
	 * ```
	 * This native has its name defined inside its codE  
	 * ```
	 */
	@:native("_SET_CAM_DOF_FNUMBER_OF_LENS")
	static function SetCamDofFnumberOfLens(camera:Dynamic, p1:Float):Dynamic;

	/**
	 * Specifies how much the DoF effect should be applied (Set using [`SET_CAM_NEAR_DOF`](#\_0x3FA4BF0A7AB7DE2C), [`SET_CAM_FAR_DOF`](#\_0xEDD91296CD01AEE0), etc.)
	 */
	@:native("SET_CAM_DOF_STRENGTH")
	static function setCamDofStrength(cam:Dynamic, dofStrength:Float):Dynamic;

	/**
	 * Makes the minimap follow a scripted camera's rotation instead of the gameplay cam.
	 */
	@:native("SET_CAM_CONTROLS_MINI_MAP_HEADING")
	static function setCamControlsMiniMapHeading(cam:Dynamic, toggle:Bool):Dynamic;

	/**
	 * ```
	 * NOTE: Debugging functions are not present in the retail version of the game.  
	 * ```
	 */
	@:native("SET_CAM_DEBUG_NAME")
	static function setCamDebugName(camera:Dynamic, name:String):Dynamic;

	/**
	 * ```
	 * This native has a name defined inside its code  
	 * ```
	 */
	@:native("_SET_CAM_DOF_MAX_NEAR_IN_FOCUS_DISTANCE_BLEND_LEVEL")
	static function SetCamDofMaxNearInFocusDistanceBlendLevel(camera:Dynamic, p1:Float):Dynamic;

	/**
	 * Adjusts the field of view (FOV) for a specified camera, allowing for a wider or narrower perspective of the game world. The field of view is measured in degrees and affects how much of the game world is visible at any given moment through the camera.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("SET_CAM_FOV")
	static function setCamFov(cam:Dynamic, fieldOfView:Float):Dynamic;

	/**
	 * ```
	 * This native has a name defined inside its code  
	 * ```
	 */
	@:native("_SET_CAM_DOF_MAX_NEAR_IN_FOCUS_DISTANCE")
	static function SetCamDofMaxNearInFocusDistance(camera:Dynamic, p1:Float):Dynamic;

	/**
	 * ```
	 * if p0 is 0, effect is cancelled  
	 * if p0 is 1, effect zooms in, gradually tilts cam clockwise apx 30 degrees, wobbles slowly. Motion blur is active until cancelled.  
	 * if p0 is 2, effect immediately tilts cam clockwise apx 30 degrees, begins to wobble slowly, then gradually tilts cam back to normal. The wobbling will continue until the effect is cancelled.  
	 * ```
	 */
	@:native("_SET_CAM_EFFECT")
	static function SetCamEffect(p0:Int):Dynamic;

	/**
	 * ```
	 * Native name labeled within its code
	 * ```
	 */
	@:native("_SET_CAM_DOF_FOCAL_LENGTH_MULTIPLIER")
	static function SetCamDofFocalLengthMultiplier(camera:Dynamic, multiplier:Float):Dynamic;

	/**
	 * ```
	 * The native seems to only be called once.  
	 * The native is used as so,  
	 * CAM::SET_CAM_INHERIT_ROLL_VEHICLE(l_544, getElem(2, &l_525, 4));  
	 * In the exile1 script.  
	 * ```
	 */
	@:native("SET_CAM_INHERIT_ROLL_VEHICLE")
	static function setCamInheritRollVehicle(cam:Dynamic, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CAM_DOF_PLANES")
	static function setCamDofPlanes(cam:Dynamic, p1:Float, p2:Float, p3:Float, p4:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CAM_FAR_CLIP")
	static function setCamFarClip(cam:Dynamic, farClip:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CAM_NEAR_CLIP")
	static function setCamNearClip(cam:Dynamic, nearClip:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CAM_MOTION_BLUR_STRENGTH")
	static function setCamMotionBlurStrength(cam:Dynamic, strength:Float):Dynamic;

	/**
	 * Specifies when the camera should stop being in focus. Can be used together with [`SET_USE_HI_DOF`](#\_0xA13B0222F3D94A94), [`SET_CAM_NEAR_DOF`](#\_0x3FA4BF0A7AB7DE2C), [`SET_CAM_USE_SHALLOW_DOF_MODE`](#\_0x16A96863A17552BB), [`SET_CAM_DOF_STRENGTH`](#\_0x5EE29B4D7D5DF897) and other DoF related natives.
	 * 
	 * ### Usage Example
	 * 
	 * A usage example for this native can be found in the following native documentation: [`SET_CAM_DOF_STRENGTH`](#\_0x5EE29B4D7D5DF897).
	 */
	@:native("SET_CAM_FAR_DOF")
	static function setCamFarDof(cam:Dynamic, farDOF:Float):Dynamic;

	/**
	 * Specifies when the camera should start being in focus. Can be used together with [`SET_USE_HI_DOF`](#\_0xA13B0222F3D94A94), [`SET_CAM_FAR_DOF`](#\_0xEDD91296CD01AEE0), [`SET_CAM_USE_SHALLOW_DOF_MODE`](#\_0x16A96863A17552BB), [`SET_CAM_DOF_STRENGTH`](#\_0x5EE29B4D7D5DF897) and other DoF related natives.
	 * 
	 * ### Usage Example
	 * 
	 * A usage example for this native can be found in the following native documentation: [`SET_CAM_DOF_STRENGTH`](#\_0x5EE29B4D7D5DF897).
	 */
	@:native("SET_CAM_NEAR_DOF")
	static function setCamNearDof(cam:Dynamic, nearDOF:Float):Dynamic;

	/**
	 * Sets the rotation of the camera.
	 */
	@:native("SET_CAM_ROT")
	static function setCamRot(cam:Dynamic, rotX:Float, rotY:Float, rotZ:Float, rotationOrder:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CAM_SHAKE_AMPLITUDE")
	static function setCamShakeAmplitude(cam:Dynamic, amplitude:Float):Dynamic;

	/**
	 * ```
	 * I named p1 as timeDuration as it is obvious. I'm assuming tho it is ran in ms(Milliseconds) as usual.  
	 * ```
	 */
	@:native("SET_CAM_SPLINE_DURATION")
	static function setCamSplineDuration(cam:Dynamic, timeDuration:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CAM_SPLINE_PHASE")
	static function setCamSplinePhase(cam:Dynamic, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CAM_PARAMS")
	static function setCamParams(cam:Dynamic, posX:Float, posY:Float, posZ:Float, rotX:Float, rotY:Float, rotZ:Float, fieldOfView:Float, transitionSpeed:Int, p9:Int, p10:Int, rotationOrder:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CINEMATIC_CAM_SHAKE_AMPLITUDE")
	static function setCinematicCamShakeAmplitude(p0:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CAM_SPLINE_NODE_EASE")
	static function setCamSplineNodeEase(cam:Dynamic, p1:Int, p2:Int, p3:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CAM_SPLINE_NODE_EXTRA_FLAGS")
	static function setCamSplineNodeExtraFlags(cam:Dynamic, p1:Int, flags:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_FIRST_PERSON_AIM_CAM_NEAR_CLIP_THIS_UPDATE")
	static function setFirstPersonAimCamNearClipThisUpdate(distance:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CAM_SPLINE_NODE_VELOCITY_SCALE")
	static function setCamSplineNodeVelocityScale(cam:Dynamic, p1:Int, scale:Float):Dynamic;

	/**
	 * Sets the smoothing style for a DEFAULT_SPLINE_CAMERA
	 * Ranges from 0 to 3 in rockstar scripts although there are actually 26
	 * 
	 * ```
	 * 0: No lead-in or lead-out smoothing
	 * 1: Smooth lead-in
	 * 2: Smooth lead-out
	 * 3: Both lead-in and lead-out are smoothed
	 * 4-6: Longer speed up, lead-in, lead-out, and both in order as above. 
	 * 6: see above, but missed a node in testing(?)
	 * 7: Smoothed lead-in, longer smoothed lead-out
	 * 8: Longer lead-in and lead-out than 6, didn't drop node
	 * 9: Constant acceleration
	 * 10: Constant deceleration. Dropped 2 nodes in testing.
	 * 11: Same as 0
	 * 12: 10 but slower lead-in, reaches end node less early
	 * 13: Extremely close to 3, slightly longer lead-in/lead-out
	 * 14: Constant acceleration, dropped last 2 nodes in testing and halted (?)
	 * 15: Very similar to 10, did not drop any nodes.
	 * 16: Long lead-in, dropped 2 nodes in testing, very long leadout.
	 * 17: Constant acceleration, slower speed-up than 9
	 * 18: Same as 17 is to 9, slightly longer lead-out, lingers at end node
	 * 19: Very long lead in and out
	 * 20: Very long, gradual lead-in acceleration at start, gets extremely fast
	 * 21: Same as 20 but for constant deceleration
	 * 22: 20 and 21 combined, long linger at end node. Dropped 2 nodes in testing
	 * 23: Constant acceleration, doesn't complete path before it stops
	 * 24: Same as 23 but with constant deceleration, but completes path
	 * 25: 23 and 24 combined, insanely fast at middle.
	 * 26: No noticable lead-in, misses last 2 nodes in testing
	 * 27+: Alternates between 0 and 26
	 * ```
	 * 
	 * The above is documented and graphed at [Spline Cam Interp Graphs](https://docs.google.com/spreadsheets/d/1ejyiMcEYrhhQOL0mLe8664UN-vU4Oh-SBqQnVcKlFIk/edit?usp=sharing)
	 * 
	 * ```
	 * 
	 * Using 1-3 will result in misalignment from the passed durations for the spline nodes, the overall duration will remain but other nodes will be shortened if smoothing anything.
	 * 
	 * Graph below demonstrates interpolation between 0-1000 and back 10 times.
	 * 
	 * ![](https://i.imgur.com/cixWh7m.png)
	 * 
	 * ## Parameters
	 * * **cam**: The DEFAULT_SPLINE_CAMERA to apply the smoothing to
	 * * **smoothingStyle**: 0 to 3, 0 no additional smoothing, 1 smooth lead-in, 2 smooth lead-out, 3 smooth lead-in & lead-out
	 * ```
	 */
	@:native("SET_CAM_SPLINE_SMOOTHING_STYLE")
	static function setCamSplineSmoothingStyle(cam:Dynamic, smoothingStyle:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_FIRST_PERSON_CAM_PITCH_RANGE")
	static function SetFirstPersonCamPitchRange(minAngle:Float, maxAngle:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CAM_VIEW_MODE_FOR_CONTEXT")
	static function setCamViewModeForContext(context:Int, viewMode:Int):Dynamic;

	/**
	 * Enables or disables the usage of a shallow DOF. Needs to be set to true to use [`SET_CAM_NEAR_DOF`](#\_0x3FA4BF0A7AB7DE2C), [`SET_CAM_FAR_DOF`](#\_0xEDD91296CD01AEE0), etc. Doesn't need to be called every tick.
	 * 
	 * ### Usage Example
	 * 
	 * A usage example for this native can be found in the following native documentation: [`SET_CAM_DOF_STRENGTH`](#\_0x5EE29B4D7D5DF897).
	 */
	@:native("SET_CAM_USE_SHALLOW_DOF_MODE")
	static function setCamUseShallowDofMode(cam:Dynamic, toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CINEMATIC_NEWS_CHANNEL_ACTIVE_THIS_UPDATE")
	static function setCinematicNewsChannelActiveThisUpdate():Dynamic;

	/**
	 * ```
	 * Toggles the vehicle cinematic cam; requires the player ped to be in a vehicle to work.
	 * ```
	 */
	@:native("SET_CINEMATIC_MODE_ACTIVE")
	static function setCinematicModeActive(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_CINEMATIC_BUTTON_ACTIVE")
	static function setCinematicButtonActive(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_FLY_CAM_HORIZONTAL_RESPONSE")
	static function setFlyCamHorizontalResponse(cam:Dynamic, p1:Float, p2:Float, p3:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_FLY_CAM_VERTICAL_SPEED_MULTIPLIER")
	static function SetFlyCamVerticalSpeedMultiplier(cam:Dynamic, p1:Float, p2:Float, p3:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_FIRST_PERSON_AIM_CAM_ZOOM_FACTOR")
	static function setFirstPersonAimCamZoomFactor(zoomFactor:Float):Dynamic;

	/**
	 * Overrides the ped follow camera (not first person camera) with the specified camera. The game loads all camera metadata from `update/update.rpf/x64/data/metadata/cameras.ymt` and `x64a.rpf/data/metadata/cameras.ymt` with the ped follow cameras being of type `camFollowPedCameraMetadata`.
	 * 
	 * | Follow Camera Names                          |
	 * |----------------------------------------------|
	 * | DEFAULT_FOLLOW_PED_CAMERA                    |
	 * | FOLLOW_PED_ATTACHED_TO_ROPE_CAMERA           |
	 * | FOLLOW_PED_ON_EXILE1\_LADDER_CAMERA           |
	 * | FOLLOW_PED_SKY_DIVING_CAMERA                 |
	 * | FOLLOW_PED_SKY_DIVING_FAMILY5\_CAMERA         |
	 * | NIGHTCLUB_FOLLOW_PED_CAMERA                  |
	 * | FOLLOW_PED_INTIMIDATION_CAMERA               |
	 * | FOLLOW_PED_IN_WATER_CAMERA                   |
	 * | FOLLOW_PED_PRONE_CAMERA                      |
	 * | FOLLOW_PED_ON_SEAT_CAMERA                    |
	 * | FOLLOW_PED_HANGING_UPSIDE_DOWN_CAMERA        |
	 * | FOLLOW_PED_ATTACHED_TO_ROPE_CAMERA           |
	 * | CUSTOM_TRANSITION_AFTER_WARP_SKY_DIVE_CAMERA |
	 * | FOLLOW_PED_ON_HORSE_CAMERA                   |
	 * | FOLLOW_PED_ON_LOUNGER_CAMERA                 |
	 * 
	 * Other camera hashes (names not found yet)
	 * 
	 * ```cpp
	 * // 0x5DBBFB6E
	 * // 0xA38DB056
	 * // 0x16B702A3
	 * // 0x41D72A2E
	 * ```
	 */
	@:native("SET_FOLLOW_PED_CAM_THIS_UPDATE")
	static function setFollowPedCamThisUpdate(camName:String, easeTime:Int):Bool;

	/**
	 * 
	 */
	@:native("SET_FLY_CAM_COORD_AND_CONSTRAIN")
	static function setFlyCamCoordAndConstrain(cam:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_FLY_CAM_MAX_HEIGHT")
	static function setFlyCamMaxHeight(cam:Dynamic, height:Float):Dynamic;

	/**
	 * See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the follow mode enum.
	 */
	@:native("SET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL")
	static function setFollowVehicleCamZoomLevel(zoomLevel:Int):Dynamic;

	/**
	 * See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the follow mode enum.
	 */
	@:native("SET_FOLLOW_VEHICLE_CAM_VIEW_MODE")
	static function setFollowVehicleCamViewMode(viewMode:Int):Dynamic;

	/**
	 * See [`GET_FOLLOW_PED_CAM_VIEW_MODE`](#\_0x8D4D46230B2C353A) for the follow mode enum.
	 */
	@:native("SET_FOLLOW_PED_CAM_VIEW_MODE")
	static function setFollowPedCamViewMode(viewMode:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1365
	 * ```
	 */
	@:native("_SET_FOLLOW_TURRET_SEAT_CAM")
	static function SetFollowTurretSeatCam(seatIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_GAMEPLAY_CAM_RAW_PITCH")
	static function SetGameplayCamRawPitch(pitch:Float):Dynamic;

	/**
	 * This native sets the camera's pitch (rotation on the x-axis).
	 */
	@:native("SET_GAMEPLAY_CAM_RELATIVE_PITCH")
	static function setGameplayCamRelativePitch(angle:Float, scalingFactor:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_GAMEPLAY_CAM_FOLLOW_PED_THIS_UPDATE")
	static function setGameplayCamFollowPedThisUpdate(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * Sets gameplay camera to hash
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("_SET_GAMEPLAY_CAM_HASH")
	static function SetGameplayCamHash(camName:String):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_GAMEPLAY_CAM_RELATIVE_ROTATION")
	static function SetGameplayCamRelativeRotation(roll:Float, pitch:Float, yaw:Float):Dynamic;

	/**
	 * ```
	 * Sets the amplitude for the gameplay (i.e. 3rd or 1st) camera to shake. Used in script "drunk_controller.ysc.c4" to simulate making the player drunk.  
	 * ```
	 */
	@:native("SET_GAMEPLAY_CAM_SHAKE_AMPLITUDE")
	static function setGameplayCamShakeAmplitude(amplitude:Float):Dynamic;

	/**
	 * ```
	 * Sets the camera position relative to heading in float from -360 to +360.  
	 * Heading is alwyas 0 in aiming camera.  
	 * ```
	 */
	@:native("SET_GAMEPLAY_CAM_RELATIVE_HEADING")
	static function setGameplayCamRelativeHeading(heading:Float):Dynamic;

	/**
	 * ```
	 * Does nothing  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("_SET_GAMEPLAY_CAM_RAW_YAW")
	static function SetGameplayCamRawYaw(yaw:Float):Dynamic;

	/**
	 * ```
	 * From b617 scripts:
	 * CAM::_21E253A7F8DA5DFB("DINGHY");
	 * CAM::_21E253A7F8DA5DFB("ISSI2");
	 * CAM::_21E253A7F8DA5DFB("SPEEDO");
	 * ```
	 */
	@:native("_SET_GAMEPLAY_CAM_VEHICLE_CAMERA")
	static function SetGameplayCamVehicleCamera(vehicleName:String):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_GAMEPLAY_CAM_VEHICLE_CAMERA_NAME")
	static function SetGameplayCamVehicleCameraName(vehicleModel:Int):Dynamic;

	/**
	 * ```
	 * p6 & p7 - possibly length or time  
	 * ```
	 */
	@:native("SET_GAMEPLAY_ENTITY_HINT")
	static function setGameplayEntityHint(entity:Dynamic, xOffset:Float, yOffset:Float, zOffset:Float, p4:Bool, p5:Int, p6:Int, p7:Int, p8:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SET_GAMEPLAY_COORD_HINT")
	static function setGameplayCoordHint(x:Float, y:Float, z:Float, duration:Int, blendOutDuration:Int, blendInDuration:Int, unk:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_GAMEPLAY_HINT_ANIM_CLOSEUP")
	static function SetGameplayHintAnimCloseup(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SET_GAMEPLAY_HINT_FOLLOW_DISTANCE_SCALAR")
	static function setGameplayHintFollowDistanceScalar(value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_GAMEPLAY_HINT_FOV")
	static function setGameplayHintFov(FOV:Float):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_GAMEPLAY_HINT_ANIM_OFFSETX")
	static function SetGameplayHintAnimOffsetx(xOffset:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_GAMEPLAY_HINT_BASE_ORBIT_PITCH_OFFSET")
	static function setGameplayHintBaseOrbitPitchOffset(value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_GAMEPLAY_PED_HINT")
	static function setGameplayPedHint(p0:Dynamic, x1:Float, y1:Float, z1:Float, p4:Bool, duration:Int, blendOutDuration:Int, blendInDuration:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_SET_GAMEPLAY_HINT_ANIM_OFFSETY")
	static function SetGameplayHintAnimOffsety(yOffset:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SET_GAMEPLAY_OBJECT_HINT")
	static function setGameplayObjectHint(p0:Dynamic, p1:Float, p2:Float, p3:Float, p4:Bool, p5:Dynamic, p6:Dynamic, p7:Dynamic):Dynamic;

	/**
	 * Focuses the camera on the specified vehicle.
	 */
	@:native("SET_GAMEPLAY_VEHICLE_HINT")
	static function setGameplayVehicleHint(vehicle:Dynamic, offsetX:Float, offsetY:Float, offsetZ:Float, p4:Bool, time:Int, easeInTime:Int, easeOutTime:Int):Dynamic;

	/**
	 * 
	 */
	@:native("SET_IN_VEHICLE_CAM_STATE_THIS_UPDATE")
	static function setInVehicleCamStateThisUpdate(p0:Dynamic, p1:Int):Dynamic;

	/**
	 * Override the camera work of the third-person camera to table game for current frame only.
	 * 
	 * |                  HashKey                    |       Hash        |    Game         |
	 * | :---------------------------------: | :-----------:| :-------------:  |
	 * | `CASINO_LUCKY_WHEEL_CAMERA` |   `5891389`   |  Lucky Wheel    |
	 * | `CASINO_SLOT_MACHINE_CAMERA` |  `518572876`  |     Slots       |
	 * | `CASINO_ROULETTE_CAMERA` |   `71681063`  |    Roulette     |
	 * | `CASINO_BLACKJACK_CAMERA` | `-2124244681` |    Blackjack    |
	 * | `CASINO_POKER_CAMERA` | `-1938411241` |   Three Cards   |
	 * | `CASINO_INSIDE_TRACK_CAMERA` | `1929822423` |   Inside Track    |
	 * | `ARCADE_LOVE_PROFESSOR_P1_CAMERA` | `545868034` |   LoveProfessorP1   |
	 * | `ARCADE_LOVE_PROFESSOR_P2_CAMERA` | `935304251` |   LoveProfessorP2   |
	 */
	@:native("SET_TABLE_GAMES_CAMERA_THIS_UPDATE")
	static function setTableGamesCameraThisUpdate(hash:Int):Bool;

	/**
	 * 
	 */
	@:native("SET_THIRD_PERSON_AIM_CAM_NEAR_CLIP_THIS_UPDATE")
	static function setThirdPersonAimCamNearClipThisUpdate(distance:Float):Dynamic;

	/**
	 * ```
	 * Only used in R* Script fm_mission_controller_2020
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_SET_USE_HI_DOF_IN_CUTSCENE")
	static function SetUseHiDofInCutscene():Dynamic;

	/**
	 * 
	 */
	@:native("SET_WIDESCREEN_BORDERS")
	static function setWidescreenBorders(p0:Bool, p1:Int):Dynamic;

	/**
	 * ```
	 * Possible shake types (updated b617d):  
	 * DEATH_FAIL_IN_EFFECT_SHAKE  
	 * DRUNK_SHAKE  
	 * FAMILY5_DRUG_TRIP_SHAKE  
	 * HAND_SHAKE  
	 * JOLT_SHAKE  
	 * LARGE_EXPLOSION_SHAKE  
	 * MEDIUM_EXPLOSION_SHAKE  
	 * SMALL_EXPLOSION_SHAKE  
	 * ROAD_VIBRATION_SHAKE  
	 * SKY_DIVING_SHAKE  
	 * VIBRATE_SHAKE  
	 * ```
	 */
	@:native("SHAKE_GAMEPLAY_CAM")
	static function shakeGameplayCam(shakeName:String, intensity:Float):Dynamic;

	/**
	 * Needs to be called every tick to make the active camera use a high depth of field.\
	 * The DoF can be customized using [`SET_CAM_NEAR_DOF`](#\_0x3FA4BF0A7AB7DE2C), [`SET_CAM_FAR_DOF`](#\_0xEDD91296CD01AEE0), [`SET_CAM_USE_SHALLOW_DOF_MODE`](#\_0x16A96863A17552BB), [`SET_CAM_DOF_STRENGTH`](#\_0x5EE29B4D7D5DF897) and other DoF related natives.
	 * 
	 * ### Usage Example
	 * 
	 * A usage example for this native can be found in the following native documentation: [`SET_CAM_DOF_STRENGTH`](#\_0x5EE29B4D7D5DF897).
	 */
	@:native("SET_USE_HI_DOF")
	static function setUseHiDof():Dynamic;

	/**
	 * ```
	 * Possible shake types (updated b617d):  
	 * DEATH_FAIL_IN_EFFECT_SHAKE  
	 * DRUNK_SHAKE  
	 * FAMILY5_DRUG_TRIP_SHAKE  
	 * HAND_SHAKE  
	 * JOLT_SHAKE  
	 * LARGE_EXPLOSION_SHAKE  
	 * MEDIUM_EXPLOSION_SHAKE  
	 * SMALL_EXPLOSION_SHAKE  
	 * ROAD_VIBRATION_SHAKE  
	 * SKY_DIVING_SHAKE  
	 * VIBRATE_SHAKE  
	 * ```
	 */
	@:native("SHAKE_CAM")
	static function shakeCam(cam:Dynamic, type:String, amplitude:Float):Dynamic;

	/**
	 * ```
	 * p0 argument found in the b617d scripts: "DRUNK_SHAKE"  
	 * ```
	 */
	@:native("SHAKE_CINEMATIC_CAM")
	static function shakeCinematicCam(p0:String, p1:Float):Dynamic;

	/**
	 * ```
	 * CAM::SHAKE_SCRIPT_GLOBAL("HAND_SHAKE", 0.2);
	 * ```
	 */
	@:native("SHAKE_SCRIPT_GLOBAL")
	static function shakeScriptGlobal(p0:String, p1:Float):Dynamic;

	/**
	 * 
	 */
	@:native("STOP_CINEMATIC_CAM_SHAKING")
	static function stopCinematicCamShaking(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("STOP_CAM_POINTING")
	static function stopCamPointing(cam:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("STOP_CINEMATIC_SHOT")
	static function stopCinematicShot(p0:Int):Dynamic;

	/**
	 * 
	 */
	@:native("STOP_CAM_SHAKING")
	static function stopCamShaking(cam:Dynamic, p1:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("STOP_GAMEPLAY_CAM_SHAKING")
	static function stopGameplayCamShaking(bStopImmediately:Bool):Dynamic;

	/**
	 * Instructs the game engine to stop rendering scripted cameras and transition back to the gameplay camera, optionally applying custom blending and rendering options.
	 * 
	 * ```cpp
	 * enum eRenderingOptionFlags {
	 *     RO_NO_OPTIONS = 0,
	 *     RO_STOP_RENDERING_OPTION_WHEN_PLAYER_EXITS_INTO_COVER = 1
	 * };
	 * ```
	 * 
	 * ```cpp
	 * enum eCamSplineSmoothingFlags {
	 * 	// No smoothing just moves at a constant rate
	 * 	CAM_SPLINE_NO_SMOOTH = 0,
	 * 	// Decelerates when approaching a node
	 * 	CAM_SPLINE_SLOW_IN_SMOOTH = 1, 
	 * 	// Accelerates slowly when leaving a node
	 * 	CAM_SPLINE_SLOW_OUT_SMOOTH = 2,    
	 * 	// Decelerates when approaching a node and accelerates slowly when leaving a node
	 * 	CAM_SPLINE_SLOW_IN_OUT_SMOOTH = 3,
	 * 	CAM_SPLINE_VERY_SLOW_IN = 4,
	 * 	CAM_SPLINE_VERY_SLOW_OUT = 5,
	 * 	CAM_SPLINE_VERY_SLOW_IN_SLOW_OUT = 6,
	 * 	CAM_SPLINE_SLOW_IN_VERY_SLOW_OUT = 7,
	 * 	CAM_SPLINE_VERY_SLOW_IN_VERY_SLOW_OUT = 8,
	 * 	CAM_SPLINE_EASE_IN = 9,
	 * 	CAM_SPLINE_EASE_OUT = 10,
	 * 	CAM_SPLINE_QUADRATIC_EASE_IN = 11,
	 * 	CAM_SPLINE_QUADRATIC_EASE_OUT = 12,
	 * 	CAM_SPLINE_QUADRATIC_EASE_IN_OUT = 13,
	 * 	CAM_SPLINE_CUBIC_EASE_IN = 14,
	 * 	CAM_SPLINE_CUBIC_EASE_OUT = 15,
	 * 	CAM_SPLINE_CUBIC_EASE_IN_OUT = 16,
	 * 	CAM_SPLINE_QUARTIC_EASE_IN = 17,
	 * 	CAM_SPLINE_QUARTIC_EASE_OUT = 18,
	 * 	CAM_SPLINE_QUARTIC_EASE_IN_OUT = 19,
	 * 	CAM_SPLINE_QUINTIC_EASE_IN = 20,
	 * 	CAM_SPLINE_QUINTIC_EASE_OUT = 21,
	 * 	CAM_SPLINE_QUINTIC_EASE_IN_OUT = 22,
	 * 	CAM_SPLINE_CIRCULAR_EASE_IN = 23,
	 * 	CAM_SPLINE_CIRCULAR_EASE_OUT = 24,
	 * 	CAM_SPLINE_CIRCULAR_EASE_IN_OUT = 25 
	 * };
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 4: int renderingOptions : An integer bitmask of eRenderingOptionFlags to apply specific rendering behaviors during the transition. RO_NO_OPTIONS signifies no special options are applied.
	 * ```
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("STOP_RENDERING_SCRIPT_CAMS_USING_CATCH_UP")
	static function stopRenderingScriptCamsUsingCatchUp(bShouldApplyAcrossAllThreads:Bool, distanceToBlend:Float, blendType:Int):Dynamic;

	/**
	 * 
	 */
	@:native("STOP_CUTSCENE_CAM_SHAKING")
	static function stopCutsceneCamShaking():Dynamic;

	/**
	 * Terminates the current gameplay hint camera, with an option for immediate cessation or a gradual fade out.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("STOP_GAMEPLAY_HINT")
	static function stopGameplayHint(bStopImmediately:Bool):Dynamic;

	/**
	 * Applies a predefined set of vehicle camera settings optimized for capturing stunts, effective for the current game update/frame.
	 * 
	 * ```
	 * NativeDB Introduced: v791
	 * ```
	 */
	@:native("USE_VEHICLE_CAM_STUNT_SETTINGS_THIS_UPDATE")
	static function useVehicleCamStuntSettingsThisUpdate():Dynamic;

	/**
	 * Stops the currently active global camera shake that was initiated by a script. You can check if a global camera shake is active using [IS_SCRIPT_GLOBAL_SHAKING](#\_0xC912AF078AF19212).
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("STOP_SCRIPT_GLOBAL_SHAKING")
	static function stopScriptGlobalShaking(bStopImmediately:Bool):Dynamic;

	/**
	 * Sets the ambient ped & vehicle population spawning origin to be based around the active scripted camera for this frame
	 * This will prevent vehicles from being created close to the camera and/or on-screen
	 */
	@:native("USE_SCRIPT_CAM_FOR_AMBIENT_POPULATION_ORIGIN_THIS_FRAME")
	static function useScriptCamForAmbientPopulationOriginThisFrame(vehicles:Bool, peds:Bool):Dynamic;

}
