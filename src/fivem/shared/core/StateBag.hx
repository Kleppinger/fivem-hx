package fivem.shared.core;

import fivem.shared.natives.Cfx;
import fivem.shared.util.LuaTables;

/**
	A handle to one FiveM state bag, addressed by its bag name.

	State bags are the engine's own replicated key/value store. Setting a value
	on the server with `replicated = true` pushes it to every client
	automatically — no events, no manual sync, and it survives a client
	reconnecting into range. That makes them the right tool for entity
	metadata (vehicle fuel, a door's locked flag, a player's job) and the wrong
	tool for high-frequency data, since every replicated write is a network
	message.

	```haxe
	var bag = StateBag.entity(vehicle.netId);
	bag.set("fuel", 84.5);
	var fuel:Float = bag.get("fuel");

	bag.onChange("fuel", (value, _) -> updateFuelGauge(value));
	```

	Clients may only write non-replicated (local) values; a client attempting a
	replicated write is ignored by the server.
**/
abstract StateBag(String) {
	/** The raw bag name, e.g. `"entity:1234"`. **/
	public var name(get, never):String;

	inline function get_name():String
		return this;

	/**
		Wraps a bag name directly. Prefer the named constructors below unless
		you're addressing a bag some other resource created.
	**/
	public inline function new(bagName:String) {
		this = bagName;
	}

	/** The bag for a player, addressed by their server ID. **/
	public static inline function player(serverId:Int):StateBag
		return new StateBag('player:$serverId');

	/** The bag for a networked entity, addressed by its network ID. **/
	public static inline function entity(netId:Int):StateBag
		return new StateBag('entity:$netId');

	/**
		The bag for a client-side entity that has no network ID. Values here
		never replicate — the entity doesn't exist anywhere else.
	**/
	public static inline function localEntity(handle:Int):StateBag
		return new StateBag('localEntity:$handle');

	/** The server-wide bag, replicated to every client. **/
	public static inline function global():StateBag
		return new StateBag("global");

	/**
		Reads a value, or `null` if the key was never set.

		Values arrive deserialised. Tables come back as raw Lua tables, so run
		anything array-shaped through `LuaTables.toArray`.
	**/
	public inline function get<T>(key:String):Null<T> {
		return cast Cfx.getStateBagValue(this, key);
	}

	/**
		Writes a value.

		@param replicated Whether to push the change to clients. Server-side
		       only — a client's replicated writes are discarded by the server.
	**/
	public inline function set(key:String, value:Dynamic, replicated:Bool = true):Void {
		StateBagBridge.set(this, key, value, replicated);
	}

	/** Clears a key by setting it to nil. **/
	public inline function remove(key:String, replicated:Bool = true):Void {
		StateBagBridge.set(this, key, null, replicated);
	}

	public inline function has(key:String):Bool {
		return Cfx.stateBagHasKey(this, key) == true;
	}

	/** Every key currently set on this bag. **/
	public inline function keys():Array<String> {
		return LuaTables.toArray(Cfx.getStateBagKeys(this));
	}

	/**
		Runs `handler` whenever `key` changes on this bag, receiving the new
		value and whether the change was replicated.

		Returns a cookie for `StateBag.removeChangeHandler`.
	**/
	public inline function onChange<T>(key:String, handler:(value:T, replicated:Bool) -> Void):Int {
		return StateBag.onAnyChange(key, this, (_, _, value, replicated) -> handler(value, replicated));
	}

	/**
		Runs `handler` for state bag changes matching the filters. Passing
		`null` for a filter matches everything — a `null` `keyFilter` with a
		`null` `bagFilter` fires for every change on the server, which is
		rarely what you want.

		The handler receives `(bagName, key, value, replicated)`.
	**/
	public static inline function onAnyChange<T>(keyFilter:Null<String>, bagFilter:Null<String>,
			handler:(bagName:String, key:String, value:T, replicated:Bool) -> Void):Int {
		// The native's own signature carries an unused `reserved` argument
		// between value and replicated; it is dropped here.
		return Cfx.addStateBagChangeHandler(keyFilter, bagFilter, (bagName:String, key:String, value:T, _:Int, replicated:Bool) -> {
			handler(bagName, key, value, replicated);
		});
	}

	/** Detaches a handler by the cookie `onChange` / `onAnyChange` returned. **/
	public static inline function removeChangeHandler(cookie:Int):Void {
		Cfx.removeStateBagChangeHandler(cookie);
	}

	/** Resolves a bag name back to the entity it belongs to, or 0. **/
	public static inline function entityFromName(bagName:String):Int {
		return Cfx.getEntityFromStateBagName(bagName);
	}

	/** Resolves a bag name back to the player server ID it belongs to, or 0. **/
	public static inline function playerFromName(bagName:String):Int {
		return Cfx.getPlayerFromStateBagName(bagName);
	}

	@:to inline function toStringValue():String
		return this;
}

/**
	Lua glue for writing state bag values.

	`SET_STATE_BAG_VALUE` takes a msgpack-serialised payload plus its byte
	length. Both the packing and the length measurement have to happen in Lua:
	`msgpack` is a runtime global rather than a native, and the packed payload
	is binary, so measuring it from Haxe would route through the Lua target's
	UTF-8 aware string length and corrupt the count.
**/
private class StateBagBridge {
	static function __init__():Void {
		untyped __lua__("
function __hx_statebag_set(bagName, key, value, replicated)
	local packed = _G.msgpack.pack(value)
	_G.SET_STATE_BAG_VALUE(bagName, key, packed, #packed, replicated)
end
");
	}

	public static function set(bagName:String, key:String, value:Dynamic, replicated:Bool):Void {
		untyped __lua__("__hx_statebag_set({0}, {1}, {2}, {3})", bagName, key, value, replicated);
	}
}
