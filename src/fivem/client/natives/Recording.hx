package fivem.client.natives;

@:native("_G")
extern class Recording {
	/**
	 * This will disable the ability to make camera changes in R\* Editor.
	 */
	@:native("DisableRockstarEditorCameraChanges")
	static function DisableRockstarEditorCameraChanges():Dynamic;

	/**
	 * Checks if you're recording.
	 */
	@:native("IsRecording")
	static function IsRecording():Bool;

	/**
	 * 
	 */
	@:native("SaveRecordingClip")
	static function SaveRecordingClip():Bool;

	/**
	 * Stops recording and saves the recorded clip.
	 */
	@:native("StopRecordingAndSaveClip")
	static function StopRecordingAndSaveClip():Dynamic;

	/**
	 * Starts recording a replay.\
	 * If already recording a replay, does nothing.
	 */
	@:native("StartRecording")
	static function StartRecording(mode:Int):Dynamic;

	/**
	 * Disable recording for this frame only.
	 */
	@:native("StopRecordingThisFrame")
	static function StopRecordingThisFrame():Dynamic;

	/**
	 * Stops recording and discards the recorded clip.
	 */
	@:native("StopRecordingAndDiscardClip")
	static function StopRecordingAndDiscardClip():Dynamic;

}
