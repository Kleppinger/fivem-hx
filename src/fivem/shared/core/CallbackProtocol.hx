package fivem.shared.core;

/**
	The wire protocol shared by `fivem.client.core.Callbacks` and
	`fivem.server.core.Callbacks`.

	FiveM's events are one-way: you can send, but you can't get an answer back.
	A callback is therefore two events — a request carrying a correlation key,
	and a response carrying the same key back — with the caller blocked on a
	promise in between.

	The event names are namespaced per resource. Without that, two Haxe
	resources on the same server would both handle each other's callback
	requests, since net events are global rather than resource-scoped.
**/
class CallbackProtocol {
	static var counter = 0;

	/** Event a client sends to ask the server something. **/
	public static inline function clientRequest():String
		return '__hxcb:${Resource.current()}:c2s:req';

	/** Event the server sends back with the answer. **/
	public static inline function clientResponse():String
		return '__hxcb:${Resource.current()}:c2s:res';

	/** Event the server sends to ask a client something. **/
	public static inline function serverRequest():String
		return '__hxcb:${Resource.current()}:s2c:req';

	/** Event the client sends back with the answer. **/
	public static inline function serverResponse():String
		return '__hxcb:${Resource.current()}:s2c:res';

	/**
		A correlation key unique within this runtime.

		Combines a monotonic counter with the game clock so that keys stay
		distinct even across a resource restart, which resets the counter while
		responses to the previous run may still be in flight.
	**/
	public static function nextKey():String {
		return '${fivem.shared.Runtime.getGameTimer()}_${counter++}';
	}
}
