package fivem.client.core;

import fivem.client.natives.Cfx;
import fivem.shared.CoreEvents;
import fivem.shared.core.Resource;

/**
	The bridge to a resource's NUI layer — the embedded browser used for HTML
	user interfaces.

	```haxe
	Nui.send({action: "openMenu", items: menuItems});
	Nui.setFocus(true, true);

	Nui.on("closeMenu", (data, respond) -> {
	    Nui.setFocus(false, false);
	    respond({ok: true});
	});
	```

	Every callback *must* call `respond`. The browser side awaits the HTTP
	response from `fetch`, and a callback that never responds leaves that
	promise pending forever — the usual cause of a UI that stops reacting after
	one interaction.

	Focus is global to the game, not to your resource. Always clear it when
	your UI closes, including from a resource stop handler, or the player is
	left unable to move.
**/
class Nui {
	/**
		Sends a message to the NUI frame. Received in JavaScript as a
		`message` event, with the payload on `event.data`.

		The value is JSON-encoded, so pass plain data — anonymous structures,
		arrays, numbers and strings.
	**/
	public static inline function send(payload:Dynamic):Void {
		Cfx.sendNuiMessage(haxe.Json.stringify(payload));
	}

	/**
		Registers a handler for a callback the NUI frame invokes by POSTing to
		`https://<resource>/<name>`.

		The handler receives the decoded request body and a `respond` function
		to send the reply back.
	**/
	public static function on(name:String, handler:(data:Dynamic, respond:(response:Dynamic) -> Void) -> Void):Void {
		// The Lua runtime's RegisterNUICallback is a wrapper around exactly
		// these two steps; doing them here avoids depending on that global.
		Cfx.registerNuiCallbackType(name);
		CoreEvents.addEventHandler('__cfx_nui:$name', handler);
	}

	/**
		Grants or removes NUI input focus.

		@param hasFocus Whether the browser receives keyboard input. While
		       true the player cannot move or act.
		@param hasCursor Whether the mouse cursor is shown and captured.
	**/
	public static inline function setFocus(hasFocus:Bool, hasCursor:Bool):Void {
		Cfx.setNuiFocus(hasFocus, hasCursor);
	}

	/**
		Lets game input keep working while NUI has focus — for a HUD overlay
		that shows a cursor but shouldn't stop the player moving.
	**/
	public static inline function setFocusKeepInput(keepInput:Bool):Void {
		Cfx.setNuiFocusKeepInput(keepInput);
	}

	/**
		Clears focus and tells the UI to close.

		Register this as a resource stop handler so a restart can't strand the
		player with a captured cursor and no way to move:

		```haxe
		Resource.onStop(Nui.close);
		```
	**/
	public static function close():Void {
		setFocus(false, false);
		setFocusKeepInput(false);
		send({action: "close"});
	}

	/** The `https://<resource>/` URL the NUI frame should POST callbacks to. **/
	public static inline function callbackUrl():String {
		return 'https://${Resource.current()}/';
	}
}
