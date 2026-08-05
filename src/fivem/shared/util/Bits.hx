package fivem.shared.util;

/**
	Bitwise operations that work on FXServer.

	**Do not use Haxe's `|`, `&`, `^`, `~`, `<<`, `>>` and `>>>` operators on
	`Int` in a FiveM resource.** Haxe's Lua target does not compile them to
	Lua's native operators. It routes them through a `_hx_bit` shim that it
	inlines into the output, and that shim starts with:

	```lua
	local hasBit32, bit32 = pcall(require, 'bit32')
	...
	  error("Failed to load bit or bit32")
	```

	FiveM's Lua is 5.3/5.4, which has native bitwise operators and therefore
	ships neither `bit32` nor `bit`. The shim runs at load time, so a single
	bitwise operation anywhere kills the whole resource:

	```
	SCRIPT ERROR: @your-resource/dist/server/server.lua:5705:
	  Failed to load bit or bit32
	```

	No compiler define avoids this — `lua_ver`, `lua-vanilla` and `luajit` were
	all tried; the shim is a fixed asset the generator inlines whenever it sees
	a bitwise operation.

	Every method here emits Lua's own operator directly instead, so nothing is
	required at runtime and the result is exactly what the engine would compute:

	```haxe
	var flags = Bits.bor(WorldGeometry, Vehicles);
	if (Bits.band(flags, Vehicles) != 0) { ... }
	```

	The names mirror Lua's `bit32` library rather than being called `or`/`and`,
	which are Lua keywords and would generate invalid field access.
**/
class Bits {
	/** Bitwise OR — the one you want for combining flags. **/
	public static inline function bor(a:Int, b:Int):Int {
		return untyped __lua__("({0} | {1})", a, b);
	}

	/** Bitwise AND — the one you want for testing a flag. **/
	public static inline function band(a:Int, b:Int):Int {
		return untyped __lua__("({0} & {1})", a, b);
	}

	public static inline function bxor(a:Int, b:Int):Int {
		return untyped __lua__("({0} ~ {1})", a, b);
	}

	/** Bitwise NOT. Lua spells this `~x`, not `!x`. **/
	public static inline function bnot(a:Int):Int {
		return untyped __lua__("(~{0})", a);
	}

	public static inline function shl(value:Int, shift:Int):Int {
		return untyped __lua__("({0} << {1})", value, shift);
	}

	/**
		Right shift. Lua's `>>` fills with zeros, so this matches Haxe's `>>>`
		(logical), not `>>` (arithmetic) — which is what flag handling wants.
	**/
	public static inline function shr(value:Int, shift:Int):Int {
		return untyped __lua__("({0} >> {1})", value, shift);
	}

	/** Whether every bit in `flag` is set in `value`. **/
	public static inline function hasFlag(value:Int, flag:Int):Bool {
		return band(value, flag) == flag;
	}
}
