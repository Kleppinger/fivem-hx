package fivem.shared.util;

/**
	Small numeric helpers that the Haxe standard library doesn't ship and that
	game code reaches for constantly. Everything is `inline`, so calls vanish
	into the generated Lua.
**/
class MathUtil {
	public static inline var DEG_TO_RAD:Float = 0.017453292519943295;
	public static inline var RAD_TO_DEG:Float = 57.29577951308232;
	public static inline var EPSILON:Float = 0.000001;

	public static inline function clamp(value:Float, min:Float, max:Float):Float {
		return value < min ? min : (value > max ? max : value);
	}

	public static inline function clampInt(value:Int, min:Int, max:Int):Int {
		return value < min ? min : (value > max ? max : value);
	}

	/** Linear interpolation. `t` is not clamped — pass values outside 0..1 to extrapolate. **/
	public static inline function lerp(from:Float, to:Float, t:Float):Float {
		return from + (to - from) * t;
	}

	/** The inverse of `lerp`: where `value` sits between `from` and `to`, as 0..1. **/
	public static inline function inverseLerp(from:Float, to:Float, value:Float):Float {
		return from == to ? 0 : (value - from) / (to - from);
	}

	/** Remaps `value` from one range onto another. **/
	public static inline function map(value:Float, fromMin:Float, fromMax:Float, toMin:Float, toMax:Float):Float {
		return lerp(toMin, toMax, inverseLerp(fromMin, fromMax, value));
	}

	/** Rounds to `decimals` places. **/
	public static function round(value:Float, decimals:Int = 0):Float {
		var factor = Math.pow(10, decimals);
		return Math.round(value * factor) / factor;
	}

	/** Wraps an angle into `[0, 360)`. **/
	public static inline function normalizeDegrees(degrees:Float):Float {
		var wrapped = degrees % 360;
		return wrapped < 0 ? wrapped + 360 : wrapped;
	}

	/**
		The signed shortest rotation from `from` to `to`, in `(-180, 180]`.
		Use this instead of plain subtraction so turning from 350° to 10° gives
		`20`, not `-340`.
	**/
	public static inline function deltaDegrees(from:Float, to:Float):Float {
		var delta = normalizeDegrees(to - from);
		return delta > 180 ? delta - 360 : delta;
	}

	/**
		A random float in `[0, 1)`.

		Calls Lua's `math.random` directly instead of Haxe's `Math.random`.
		Haxe's version makes the generated file seed the RNG at load time with

		```lua
		_G.math.randomseed(_G.os.time());
		```

		and FiveM's client sandbox does not expose `os` at all, so that line
		takes the resource down before a line of your code runs:

		```
		SCRIPT ERROR: attempt to index a nil value (field 'os')
		```

		Lua 5.4 seeds itself at startup, so nothing is lost by skipping it.
	**/
	public static inline function random():Float {
		return untyped __lua__("_G.math.random()");
	}

	/** A random float in `[min, max)`. **/
	public static inline function randomFloat(min:Float, max:Float):Float {
		return min + random() * (max - min);
	}

	/** A random integer in `[min, max]`, both ends included. **/
	public static inline function randomInt(min:Int, max:Int):Int {
		return untyped __lua__("_G.math.random({0}, {1})", min, max);
	}

	/** Picks a uniformly random element, or `null` for an empty array. **/
	public static inline function pick<T>(values:Array<T>):T {
		return values.length == 0 ? null : values[randomInt(0, values.length - 1)];
	}

	public static inline function nearlyEquals(a:Float, b:Float, epsilon:Float = EPSILON):Bool {
		return Math.abs(a - b) <= epsilon;
	}

	/** Smoothstep easing between two edges — a gentler alternative to `lerp` for camera and UI motion. **/
	public static inline function smoothStep(edge0:Float, edge1:Float, value:Float):Float {
		var t = clamp(inverseLerp(edge0, edge1, value), 0, 1);
		return t * t * (3 - 2 * t);
	}
}
