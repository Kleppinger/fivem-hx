package fivem.client.natives;

@:native("_G")
extern class Loadingscreen {
	/**
	 * 
	 */
	@:native("LoadingscreenGetLoadFreemodeWithEventName")
	static function LoadingscreenGetLoadFreemodeWithEventName():Bool;

	/**
	 * 
	 */
	@:native("LoadingscreenGetLoadFreemode")
	static function LoadingscreenGetLoadFreemode():Bool;

	/**
	 * 
	 */
	@:native("LoadingscreenIsLoadingFreemode")
	static function LoadingscreenIsLoadingFreemode():Bool;

	/**
	 * 
	 */
	@:native("LoadingscreenSetLoadFreemode")
	static function LoadingscreenSetLoadFreemode(toggle:Bool):Dynamic;

	/**
	 * ```
	 * Only occurrence was false, in maintransition.  
	 * ```
	 */
	@:native("LoadingscreenSetLoadFreemodeWithEventName")
	static function LoadingscreenSetLoadFreemodeWithEventName(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("LoadingscreenSetIsLoadingFreemode")
	static function LoadingscreenSetIsLoadingFreemode(toggle:Bool):Dynamic;

}
