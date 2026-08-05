package fivem.shared.core;

import fivem.shared.CoreEvents;
import fivem.shared.natives.Cfx;

/**
	The lifecycle states FXServer reports for a resource.
**/
enum abstract ResourceState(String) from String to String {
	var Missing = "missing";
	var Started = "started";
	var Starting = "starting";
	var Stopped = "stopped";
	var Stopping = "stopping";
	var Uninitialized = "uninitialized";
	var Unknown = "unknown";
}

/**
	Information about the running resource and its neighbours, plus the
	start/stop lifecycle hooks every resource ends up needing.

	```haxe
	Resource.onStart(() -> Logger.info(null, "ready"));
	Resource.onStop(() -> cleanUpSpawnedEntities());

	if (Resource.isStarted("oxmysql")) enableDatabaseFeatures();
	```

	Works identically on client and server; the lifecycle events differ in name
	between the two (`onResourceStart` vs `onClientResourceStart`) and this
	papers over that difference.
**/
class Resource {
	static var cachedName:String = null;

	/** The name of the resource this code is running in. Cached after the first call. **/
	public static function current():String {
		if (cachedName == null) cachedName = Cfx.getCurrentResourceName();
		return cachedName;
	}

	/**
		The resource that called into this one — set during an export or event
		triggered from elsewhere, `null` otherwise. Useful for permission
		checks on exports you don't want every resource calling.
	**/
	public static inline function invoking():String {
		return Cfx.getInvokingResource();
	}

	public static inline function state(resourceName:String):ResourceState {
		return Cfx.getResourceState(resourceName);
	}

	/** Whether `resourceName` is running. The usual way to soft-depend on another resource. **/
	public static inline function isStarted(resourceName:String):Bool {
		return Cfx.getResourceState(resourceName) == Started;
	}

	/**
		Reads a value from a resource's `fxmanifest.lua`. `index` selects among
		repeated keys — `metadata(name, "client_script", 0)` gives the first
		declared client script.
	**/
	public static inline function metadata(resourceName:String, key:String, index:Int = 0):String {
		return Cfx.getResourceMetadata(resourceName, key, index);
	}

	/** How many values a repeated manifest key has. **/
	public static inline function metadataCount(resourceName:String, key:String):Int {
		return Cfx.getNumResourceMetadata(resourceName, key);
	}

	/** Every resource currently known to the server, started or not. **/
	public static function list():Array<String> {
		var names = [];
		for (i in 0...Cfx.getNumResources()) {
			var name = Cfx.getResourceByFindIndex(i);
			if (name != null) names.push(name);
		}
		return names;
	}

	/**
		Runs `handler` when this resource starts.

		Registered handlers only fire for *this* resource, which is almost
		always what you want — use `onAnyStart` if you need to react to others.
	**/
	public static function onStart(handler:() -> Void):Void {
		CoreEvents.addEventHandler(startEventName(), (resourceName:String) -> {
			if (resourceName == current()) handler();
		});
	}

	/**
		Runs `handler` when this resource stops — the place to delete spawned
		entities, remove blips and clear NUI focus so a restart doesn't leak.
	**/
	public static function onStop(handler:() -> Void):Void {
		CoreEvents.addEventHandler(stopEventName(), (resourceName:String) -> {
			if (resourceName == current()) handler();
		});
	}

	/** Runs `handler` when *any* resource starts, passing its name. **/
	public static function onAnyStart(handler:(resourceName:String) -> Void):Void {
		CoreEvents.addEventHandler(startEventName(), handler);
	}

	/** Runs `handler` when *any* resource stops, passing its name. **/
	public static function onAnyStop(handler:(resourceName:String) -> Void):Void {
		CoreEvents.addEventHandler(stopEventName(), handler);
	}

	// The client and server runtimes name these events differently; picking at
	// runtime keeps this class usable from shared code.
	static inline function startEventName():String {
		return Cfx.isDuplicityVersion() ? "onResourceStart" : "onClientResourceStart";
	}

	static inline function stopEventName():String {
		return Cfx.isDuplicityVersion() ? "onResourceStop" : "onClientResourceStop";
	}
}
