package fivem.shared.util;

import fivem.shared.Runtime;

/**
	A Jenkins hash, with implicit conversion from the name it was made of.

	Practically everything the game identifies — vehicle models, ped models,
	weapons, props, audio banks, relationship groups — is addressed by the
	hash of a lowercase name. Typing an API as `Hash` instead of `Int` means
	callers can pass whichever form they have:

	```haxe
	Vehicle.create("adder", spawnPoint);           // hashed for you
	Vehicle.create(0xB779A091, spawnPoint);        // already a hash
	ped.giveWeapon("WEAPON_PISTOL", 60);
	```

	The conversion is a plain `GET_HASH_KEY` call, so passing a literal string
	costs one native call — negligible outside a per-frame loop, where you
	should hoist the hash into a variable anyway.
**/
abstract Hash(Int) from Int to Int {
	public inline function new(value:Int) {
		this = value;
	}

	/** Hashes a name. Also applied implicitly wherever a `Hash` is expected. **/
	@:from public static inline function ofName(name:String):Hash {
		return new Hash(Runtime.getHashKey(name));
	}

	public inline function toInt():Int
		return this;

	public inline function toString():String
		return Std.string(this);
}
