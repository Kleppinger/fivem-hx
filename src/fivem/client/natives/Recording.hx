package fivem.client.natives;

@:native("_G")
extern class Recording {
	/**
	 * This will disable the ability to make camera changes in R\* Editor.
	 */
	@:native("_DISABLE_ROCKSTAR_EDITOR_CAMERA_CHANGES")
	static function DisableRockstarEditorCameraChanges():Dynamic;

	/**
	 * Checks if you're recording.
	 */
	@:native("_IS_RECORDING")
	static function IsRecording():Bool;

	/**
	 * 
	 */
	@:native("_SAVE_RECORDING_CLIP")
	static function SaveRecordingClip():Bool;

	/**
	 * Stops recording and saves the recorded clip.
	 */
	@:native("_STOP_RECORDING_AND_SAVE_CLIP")
	static function StopRecordingAndSaveClip():Dynamic;

	/**
	 * Starts recording a replay.\
	 * If already recording a replay, does nothing.
	 */
	@:native("_START_RECORDING")
	static function StartRecording(mode:Int):Dynamic;

	/**
	 * Disable recording for this frame only.
	 */
	@:native("_STOP_RECORDING_THIS_FRAME")
	static function StopRecordingThisFrame():Dynamic;

	/**
	 * Stops recording and discards the recorded clip.
	 */
	@:native("_STOP_RECORDING_AND_DISCARD_CLIP")
	static function StopRecordingAndDiscardClip():Dynamic;

}
