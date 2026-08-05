package fivem.client.core;

import fivem.client.natives.Cfx;
import fivem.client.natives.Pad;
import fivem.shared.CoreEvents;
import fivem.shared.core.Thread;

/**
	The control indices used most often. The full list is in the FiveM docs
	under "Controls"; these are here so common code doesn't need magic numbers.
**/
enum abstract Control(Int) from Int to Int {
	/** E on foot — the universal "interact" key. **/
	var Context = 51;

	var Jump = 22;
	var Sprint = 21;
	var Enter = 23;
	var Attack = 24;
	var Aim = 25;
	var Reload = 45;
	var Cover = 44;
	var Talk = 46;
	var Detonate = 47;
	var VehicleExit = 75;
	var VehicleHorn = 86;
	var VehicleHeadlight = 85;
	var MoveUpOnly = 32;
	var MoveDownOnly = 33;
	var MoveLeftOnly = 34;
	var MoveRightOnly = 35;
	var Cancel = 194;
	var Select = 201;
}

/**
	Keyboard, mouse and gamepad input.

	Two distinct mechanisms live here, and picking the right one matters:

	- **Key mappings** (`bind`) register a command the player can rebind in the
	  game's own settings menu. They work while the game window has focus,
	  cost nothing per frame, and are the right default.
	- **Control polling** (`isPressed` and friends) reads the game's own
	  controls each frame. Necessary for held keys, analogue axes and anything
	  that has to react mid-frame — but it only works inside a per-frame loop.

	```haxe
	Controls.bind("openInventory", "Open inventory", "i", () -> inventory.open());

	Thread.everyFrame(() -> {
	    if (Controls.isJustPressed(Context)) interact();
	});
	```
**/
class Controls {
	/** Pad index 0 — keyboard and the primary gamepad. Every method here defaults to it. **/
	public static inline var DEFAULT_PAD:Int = 0;

	/**
		Binds a key to an action, showing up in the player's keybinding
		settings so they can change it.

		@param commandName A unique command name; must not collide with
		       another resource's.
		@param description The label shown in the settings menu.
		@param defaultKey The default binding, e.g. `"i"`, `"F5"`, `"MOUSE1"`.
		@param onPressed Runs when the key goes down.
		@param onReleased Runs when it comes back up, if given.
	**/
	public static function bind(commandName:String, description:String, defaultKey:String, onPressed:() -> Void, ?onReleased:() -> Void):Void {
		CoreEvents.registerCommand(commandName, (_, _, _) -> onPressed(), false);
		Cfx.registerKeyMapping('+$commandName', description, "keyboard", defaultKey);

		// FiveM's key mapping system pairs a `+name` press command with a
		// `-name` release command; both must exist or the release is reported
		// as an unknown command in the client console.
		CoreEvents.registerCommand('+$commandName', (_, _, _) -> onPressed(), false);
		CoreEvents.registerCommand('-$commandName', (_, _, _) -> {
			if (onReleased != null) onReleased();
		}, false);
	}

	/** Whether a control is currently held. **/
	public static inline function isPressed(control:Control, padIndex:Int = DEFAULT_PAD):Bool {
		return Pad.isControlPressed(padIndex, control);
	}

	/** Whether a control went down this frame. **/
	public static inline function isJustPressed(control:Control, padIndex:Int = DEFAULT_PAD):Bool {
		return Pad.isControlJustPressed(padIndex, control);
	}

	/** Whether a control came up this frame. **/
	public static inline function isJustReleased(control:Control, padIndex:Int = DEFAULT_PAD):Bool {
		return Pad.isControlJustReleased(padIndex, control);
	}

	/**
		As `isPressed`, but also true for a control you disabled this frame.

		Disabling a control stops the *game* reacting to it while leaving it
		readable by script — the standard way to repurpose a key without the
		player's character also acting on it.
	**/
	public static inline function isDisabledPressed(control:Control, padIndex:Int = DEFAULT_PAD):Bool {
		return Pad.isDisabledControlPressed(padIndex, control);
	}

	public static inline function isDisabledJustPressed(control:Control, padIndex:Int = DEFAULT_PAD):Bool {
		return Pad.isDisabledControlJustPressed(padIndex, control);
	}

	/** An analogue control's value, -1 to 1. **/
	public static inline function value(control:Control, padIndex:Int = DEFAULT_PAD):Float {
		return Pad.getControlNormal(padIndex, control);
	}

	/**
		Stops the game reacting to a control. Only lasts one frame, so call it
		from a per-frame loop for as long as the control should stay disabled.
	**/
	public static inline function disable(control:Control, padIndex:Int = DEFAULT_PAD):Void {
		Pad.disableControlAction(padIndex, control, true);
	}

	public static inline function enable(control:Control, padIndex:Int = DEFAULT_PAD):Void {
		Pad.enableControlAction(padIndex, control, true);
	}

	/** Disables every control for one frame. Also one-frame — loop it. **/
	public static inline function disableAll(padIndex:Int = DEFAULT_PAD):Void {
		Pad.disableAllControlActions(padIndex);
	}

	public static inline function enableAll(padIndex:Int = DEFAULT_PAD):Void {
		Pad.enableAllControlActions(padIndex);
	}

	/**
		Runs `body` every frame while `control` is held, and resolves once it
		is released. Returns how long it was held, in milliseconds.

		Useful for hold-to-act interactions:

		```haxe
		Thread.create(() -> {
		    var heldMs = Controls.whileHeld(Context, elapsed -> Ui.showHelp('Hold... $elapsed'));
		    if (heldMs > 2000) forceOpen();
		});
		```
	**/
	public static function whileHeld(control:Control, ?body:(elapsedMs:Int) -> Void, padIndex:Int = DEFAULT_PAD):Int {
		var stopwatch = new fivem.shared.util.Timing.Stopwatch();

		while (isPressed(control, padIndex)) {
			if (body != null) body(stopwatch.elapsedMs);
			Thread.nextFrame();
		}

		return stopwatch.elapsedMs;
	}
}
