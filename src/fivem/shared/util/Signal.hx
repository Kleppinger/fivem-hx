package fivem.shared.util;

/**
	Removes a listener from the `Signal` it was added to. Calling it twice is
	harmless.
**/
typedef SignalUnsubscribe = () -> Void;

/**
	A typed, in-process event emitter — the counterpart to FiveM's stringly
	typed `AddEventHandler` for things that never leave the resource.

	```haxe
	var onDeath = new Signal<Ped>();
	var stop = onDeath.add(ped -> trace('${ped.handle} died'));
	onDeath.dispatch(somePed);
	stop();
	```

	Listeners added or removed *during* a dispatch don't affect the dispatch in
	flight: the listener list is snapshotted first. That makes the common
	"unsubscribe myself from inside my own handler" pattern safe.
**/
class Signal<T> {
	var listeners:Array<T->Void> = [];

	public function new() {}

	/** How many listeners are currently attached. **/
	public var length(get, never):Int;

	inline function get_length():Int
		return listeners.length;

	/** Attaches `listener`, returning a function that detaches it again. **/
	public function add(listener:T->Void):SignalUnsubscribe {
		listeners.push(listener);
		return () -> remove(listener);
	}

	/** Attaches `listener` for exactly one dispatch, then detaches it. **/
	public function once(listener:T->Void):SignalUnsubscribe {
		var unsubscribe:SignalUnsubscribe = null;
		var wrapper = function(value:T) {
			unsubscribe();
			listener(value);
		};
		listeners.push(wrapper);
		unsubscribe = () -> listeners.remove(wrapper);
		return unsubscribe;
	}

	public function remove(listener:T->Void):Void {
		listeners.remove(listener);
	}

	public function clear():Void {
		listeners = [];
	}

	/** Calls every attached listener with `value`, in the order they were added. **/
	public function dispatch(value:T):Void {
		for (listener in listeners.copy()) listener(value);
	}
}

/**
	A `Signal` for events that carry no payload.
**/
class VoidSignal {
	var listeners:Array<() -> Void> = [];

	public function new() {}

	public var length(get, never):Int;

	inline function get_length():Int
		return listeners.length;

	public function add(listener:() -> Void):SignalUnsubscribe {
		listeners.push(listener);
		return () -> remove(listener);
	}

	public function once(listener:() -> Void):SignalUnsubscribe {
		var unsubscribe:SignalUnsubscribe = null;
		var wrapper = function() {
			unsubscribe();
			listener();
		};
		listeners.push(wrapper);
		unsubscribe = () -> listeners.remove(wrapper);
		return unsubscribe;
	}

	public function remove(listener:() -> Void):Void {
		listeners.remove(listener);
	}

	public function clear():Void {
		listeners = [];
	}

	public function dispatch():Void {
		for (listener in listeners.copy()) listener();
	}
}
