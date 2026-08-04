package fivem.client.natives;

@:native("_G")
extern class Replay {
	/**
	 * ```
	 * Sets (almost, not sure) all Rockstar Editor values (bIsRecording etc) to 0.  
	 * ```
	 */
	@:native("_RESET_EDITOR_VALUES")
	static function ResetEditorValues():Dynamic;

	/**
	 * Please note that you will need to call DO_SCREEN_FADE_IN after exiting the Rockstar Editor when you call this.
	 * 
	 * ```
	 * NativeDB Added Parameter 1: int p0
	 * ```
	 */
	@:native("_ACTIVATE_ROCKSTAR_EDITOR")
	static function ActivateRockstarEditor():Dynamic;

	/**
	 * ```
	 * Returns a bool if interior rendering is disabled, if yes, all "normal" rendered interiors are invisible  
	 * ```
	 */
	@:native("_IS_INTERIOR_RENDERING_DISABLED")
	static function IsInteriorRenderingDisabled():Bool;

}
