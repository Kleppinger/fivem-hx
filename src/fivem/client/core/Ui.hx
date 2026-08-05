package fivem.client.core;

import fivem.client.NativeOutputs;
import fivem.client.natives.Graphics;
import fivem.client.natives.Hud;
import fivem.shared.util.Rgba;
import fivem.shared.util.Vector2;
import fivem.shared.util.Vector3;

/**
	Horizontal alignment for `Ui.drawText`.
**/
enum abstract TextAlign(Int) {
	var Left = 0;
	var Center = 1;
	var Right = 2;
}

/**
	Optional styling for `Ui.drawText`. Every field has a sensible default, so
	pass only what you want to change.
**/
typedef TextStyle = {
	/** Game font index: 0 normal, 1 cursive, 4 condensed, 7 pricedown. **/
	var ?font:Int;

	var ?scale:Float;
	var ?colour:Rgba;
	var ?align:TextAlign;

	/** Draws a hard outline. Much more legible over bright scenery than a shadow. **/
	var ?outline:Bool;

	var ?shadow:Bool;
}

/**
	On-screen drawing: text, markers, notifications and help prompts.

	Everything that draws (`drawText`, `drawText3d`, `drawMarker`, `drawRect`)
	lasts exactly one frame, which is how the game's immediate-mode renderer
	works. To keep something on screen, draw it every frame:

	```haxe
	Thread.everyFrame(() -> {
	    Ui.drawText3d(shopPosition, "Hardware Store", {scale: 0.4});
	});
	```

	Notifications and help prompts are different — those are fire-and-forget
	and persist on their own.
**/
class Ui {
	/**
		Draws text in screen space. Coordinates are 0..1 fractions of the
		screen, with (0, 0) at the top left.
	**/
	public static function drawText(text:String, position:Vector2, ?style:TextStyle):Void {
		applyStyle(style);

		var align = style != null && style.align != null ? style.align : Left;
		Hud.setTextCentre(align == Center);

		Hud.beginTextCommandDisplayText("STRING");
		Hud.addTextComponentSubstringPlayerName(text);

		// Right alignment works by pinning a wrap edge at the given x and
		// letting the text run back towards the left margin.
		if (align == Right) {
			Hud.setTextWrap(0, position.x);
			Hud.setTextRightJustify(true);
		}

		Hud.endTextCommandDisplayText(position.x, position.y);
	}

	/**
		Draws text at a world position, scaled so it shrinks with distance.

		Returns without drawing when the position is off-screen, so it is safe
		to call unconditionally in a per-frame loop.
	**/
	public static function drawText3d(position:Vector3, text:String, ?style:TextStyle):Void {
		var screen = NativeOutputs.getScreenCoordFromWorldCoord(position.x, position.y, position.z);
		if (!screen.onScreen) return;

		applyStyle(style);
		Hud.setTextCentre(true);

		// Drawing from a world origin makes the game scale the text with
		// distance, which plain screen-space text does not do.
		Graphics.setDrawOrigin(position.x, position.y, position.z, 0);
		Hud.beginTextCommandDisplayText("STRING");
		Hud.addTextComponentSubstringPlayerName(text);
		Hud.endTextCommandDisplayText(0.0, 0.0);
		Graphics.clearDrawOrigin();
	}

	/** Draws a filled rectangle in screen space, centred on `position`. **/
	public static inline function drawRect(position:Vector2, size:Vector2, colour:Rgba):Void {
		Graphics.drawRect(position.x, position.y, size.x, size.y, colour.r, colour.g, colour.b, colour.a);
	}

	/**
		Draws one of the game's 3D markers.

		@param type 1 is the classic vertical cylinder, 27 a flat ring, 20 a
		       downward chevron.
		@param bobbing Whether the marker floats up and down.
		@param faceCamera Whether it always turns to face the player.
	**/
	public static function drawMarker(position:Vector3, type:Int = 1, ?scale:Vector3, ?colour:Rgba, bobbing:Bool = false, faceCamera:Bool = false,
			rotate:Bool = false):Void {
		var size = scale != null ? scale : new Vector3(1, 1, 1);
		var tint = colour != null ? colour : new Rgba(255, 255, 255, 100);

		Graphics.drawMarker(type, position.x, position.y, position.z, 0, 0, 0, 0, 0, 0, size.x, size.y, size.z, tint.r, tint.g, tint.b, tint.a, bobbing,
			faceCamera, 2, rotate, null, null, false);
	}

	/**
		Posts a notification to the feed at the top left.

		Supports the game's markup: `~r~` red, `~g~` green, `~b~` blue, `~w~`
		white, `~h~` bold, `~n~` newline.
	**/
	public static function notify(message:String, ?backgroundColour:Int):Void {
		if (backgroundColour != null) Hud.ThefeedSetNextPostBackgroundColor(backgroundColour);

		Hud.beginTextCommandThefeedPost("STRING");
		Hud.addTextComponentSubstringPlayerName(message);
		Hud.endTextCommandThefeedPostTicker(false, true);
	}

	/**
		Shows the instructional prompt box in the top left for one frame.

		Call it every frame while the prompt should be visible. Control names
		can be embedded and are rendered as the player's actual binding:
		`"Press ~INPUT_CONTEXT~ to open"`.
	**/
	public static function showHelp(message:String, beep:Bool = false):Void {
		Hud.beginTextCommandDisplayHelp("STRING");
		Hud.addTextComponentSubstringPlayerName(message);
		Hud.endTextCommandDisplayHelp(0, false, beep, -1);
	}

	static function applyStyle(style:TextStyle):Void {
		var font = style != null && style.font != null ? style.font : 4;
		var scale = style != null && style.scale != null ? style.scale : 0.35;
		var colour = style != null && style.colour != null ? style.colour : Rgba.white();

		Hud.setTextFont(font);
		Hud.setTextProportional(true);
		Hud.setTextScale(scale, scale);
		Hud.setTextColour(colour.r, colour.g, colour.b, colour.a);

		if (style != null && style.outline == true) Hud.setTextOutline();
		if (style != null && style.shadow == true) Hud.setTextDropShadow();
	}
}
