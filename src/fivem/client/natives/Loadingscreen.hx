package fivem.client.natives;

@:native("_G")
extern class Loadingscreen {
	/**
	 * 
	 */
	@:native("_LOADINGSCREEN_GET_LOAD_FREEMODE_WITH_EVENT_NAME")
	static function LoadingscreenGetLoadFreemodeWithEventName():Bool;

	/**
	 * 
	 */
	@:native("_LOADINGSCREEN_GET_LOAD_FREEMODE")
	static function LoadingscreenGetLoadFreemode():Bool;

	/**
	 * 
	 */
	@:native("_LOADINGSCREEN_IS_LOADING_FREEMODE")
	static function LoadingscreenIsLoadingFreemode():Bool;

	/**
	 * 
	 */
	@:native("_LOADINGSCREEN_SET_LOAD_FREEMODE")
	static function LoadingscreenSetLoadFreemode(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Only occurrence was false, in maintransition.  
	 * ```
	 */
	@:native("_LOADINGSCREEN_SET_LOAD_FREEMODE_WITH_EVENT_NAME")
	static function LoadingscreenSetLoadFreemodeWithEventName(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_LOADINGSCREEN_SET_IS_LOADING_FREEMODE")
	static function LoadingscreenSetIsLoadingFreemode(toggle:Bool):Dynamic;

}
