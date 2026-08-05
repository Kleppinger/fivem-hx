package fivem.client.core;

import fivem.client.natives.Hud;
import fivem.shared.util.Vector3;

/**
	How a blip appears on the map and radar.
**/
enum abstract BlipDisplay(Int) from Int to Int {
	var Hidden = 0;

	/** Shown on both the pause-menu map and the radar. **/
	var MapAndRadar = 2;

	/** Shown on the radar only. **/
	var RadarOnly = 3;

	/** Shown on the pause-menu map only. **/
	var MapOnly = 4;

	/** Shown on both, and selectable in the pause menu. **/
	var Selectable = 6;
}

/**
	A map or radar marker.

	```haxe
	var shop = Blip.atCoords(shopPosition, 52, 2);
	shop.label = "Hardware Store";
	shop.shortRange = true;
	```

	Blips are client-side and are *not* cleaned up when your resource stops —
	restarting a resource that creates blips without removing them leaves
	duplicates on the map. Remove them in a stop handler:

	```haxe
	Resource.onStop(() -> shop.remove());
	```
**/
class Blip {
	/** The raw blip handle. **/
	public final handle:Int;

	public function new(handle:Int) {
		this.handle = handle;
	}

	/**
		Creates a blip at a fixed position.

		@param sprite The icon index — 1 is the default circle, 52 a shop, 161
		       a garage. The FiveM docs list them all.
		@param colour The palette index, not an RGB value — 1 red, 2 green,
		       3 blue, 5 yellow.
	**/
	public static function atCoords(position:Vector3, sprite:Int = 1, colour:Int = 0, ?label:String):Blip {
		var blip = new Blip(Hud.addBlipForCoord(position.x, position.y, position.z));
		blip.sprite = sprite;
		blip.colour = colour;
		if (label != null) blip.label = label;
		return blip;
	}

	/**
		Creates a blip that follows an entity. It disappears on its own when
		the entity does.
	**/
	public static function forEntity(entity:Entity, sprite:Int = 1, colour:Int = 0, ?label:String):Blip {
		var blip = new Blip(Hud.addBlipForEntity(entity.handle));
		blip.sprite = sprite;
		blip.colour = colour;
		if (label != null) blip.label = label;
		return blip;
	}

	/** Creates a shaded circle on the map — a zone or search area. **/
	public static function forRadius(position:Vector3, radius:Float, colour:Int = 0, alpha:Int = 128):Blip {
		var blip = new Blip(Hud.addBlipForRadius(position.x, position.y, position.z, radius));
		blip.colour = colour;
		blip.alpha = alpha;
		return blip;
	}

	public var exists(get, never):Bool;

	inline function get_exists():Bool
		return Hud.doesBlipExist(handle);

	public var sprite(never, set):Int;

	inline function set_sprite(value:Int):Int {
		Hud.setBlipSprite(handle, value);
		return value;
	}

	/** Palette colour index, not RGB. **/
	public var colour(never, set):Int;

	inline function set_colour(value:Int):Int {
		Hud.setBlipColour(handle, value);
		return value;
	}

	public var alpha(never, set):Int;

	inline function set_alpha(value:Int):Int {
		Hud.setBlipAlpha(handle, value);
		return value;
	}

	public var scale(never, set):Float;

	inline function set_scale(value:Float):Float {
		Hud.setBlipScale(handle, value);
		return value;
	}

	/** Whether the blip only appears once the player is nearby. **/
	public var shortRange(never, set):Bool;

	inline function set_shortRange(value:Bool):Bool {
		Hud.setBlipAsShortRange(handle, value);
		return value;
	}

	public var display(never, set):BlipDisplay;

	inline function set_display(value:BlipDisplay):BlipDisplay {
		Hud.setBlipDisplay(handle, value);
		return value;
	}

	public var flashing(never, set):Bool;

	inline function set_flashing(value:Bool):Bool {
		Hud.setBlipFlashes(handle, value);
		return value;
	}

	/**
		The name shown in the pause-menu map legend.

		Setting one runs a small text-command sequence rather than a single
		native, which is why it's a property here instead of a constructor
		argument you might forget.
	**/
	public var label(never, set):String;

	function set_label(value:String):String {
		Hud.beginTextCommandSetBlipName("STRING");
		Hud.addTextComponentSubstringPlayerName(value);
		Hud.endTextCommandSetBlipName(handle);
		return value;
	}

	public var coords(get, set):Vector3;

	inline function get_coords():Vector3
		return cast Hud.getBlipCoords(handle);

	inline function set_coords(value:Vector3):Vector3 {
		Hud.setBlipCoords(handle, value.x, value.y, value.z);
		return value;
	}

	/** Sets or clears a GPS route to this blip. **/
	public function setRoute(enabled:Bool, colour:Int = 5):Void {
		Hud.setBlipRoute(handle, enabled);
		if (enabled) Hud.setBlipRouteColour(handle, colour);
	}

	/** Removes the blip from the map. **/
	public function remove():Void {
		if (exists) Hud.removeBlip(handle);
	}
}
