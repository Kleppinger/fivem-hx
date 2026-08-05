package fivem.shared.util;

typedef RgbaData = {
	var r:Int;
	var g:Int;
	var b:Int;
	var a:Int;
}

/**
	An 8-bit RGBA colour.

	Nearly every drawing native in FiveM (`DRAW_MARKER`, `SET_TEXT_COLOUR`,
	`DRAW_RECT`, ...) takes four separate `red, green, blue, alpha` integers.
	Passing a `Rgba` around instead of four loose numbers removes an entire
	category of argument-order mistakes; unpack it at the call site with
	`c.r, c.g, c.b, c.a`.
**/
@:forward
abstract Rgba(RgbaData) from RgbaData to RgbaData {
	public inline function new(r:Int, g:Int, b:Int, a:Int = 255) {
		this = {r: r, g: g, b: b, a: a};
	}

	public static inline function white(alpha:Int = 255):Rgba
		return new Rgba(255, 255, 255, alpha);

	public static inline function black(alpha:Int = 255):Rgba
		return new Rgba(0, 0, 0, alpha);

	public static inline function red(alpha:Int = 255):Rgba
		return new Rgba(255, 0, 0, alpha);

	public static inline function green(alpha:Int = 255):Rgba
		return new Rgba(0, 255, 0, alpha);

	public static inline function blue(alpha:Int = 255):Rgba
		return new Rgba(0, 0, 255, alpha);

	public static inline function yellow(alpha:Int = 255):Rgba
		return new Rgba(255, 255, 0, alpha);

	/** Parses `"#RRGGBB"` or `"#RRGGBBAA"` (the leading `#` is optional). **/
	public static function fromHex(hex:String, alpha:Int = 255):Rgba {
		var text = StringTools.startsWith(hex, "#") ? hex.substr(1) : hex;
		var value = Std.parseInt("0x" + text.substr(0, 6));
		if (value == null) return white(alpha);
		var parsedAlpha = text.length >= 8 ? Std.parseInt("0x" + text.substr(6, 2)) : null;

		// Arithmetic rather than shifts and masks: Haxe's Lua target routes
		// every bitwise operator through a shim that requires the `bit32`
		// module, which FiveM's Lua 5.3/5.4 does not ship, and the shim fails
		// at load time. For non-overlapping byte fields the two are exactly
		// equivalent. See fivem.shared.util.Bits for the general case.
		return new Rgba(Std.int(value / 65536) % 256, Std.int(value / 256) % 256, value % 256, parsedAlpha == null ? alpha : parsedAlpha);
	}

	/**
		Packs into a single `0xRRGGBBAA` integer.

		Built with multiplication instead of shifts for the reason described in
		`fromHex` — the components are non-overlapping bytes, so the result is
		identical.
	**/
	public inline function toInt():Int
		return this.r * 16777216 + this.g * 65536 + this.b * 256 + this.a;

	public inline function toHex():String {
		return "#" + byteToHex(this.r) + byteToHex(this.g) + byteToHex(this.b);
	}

	/**
		Two uppercase hex digits for one byte.

		Hand-rolled rather than using `StringTools.hex`, which is implemented
		with bitwise operators and so drags in the `_hx_bit` shim that fails to
		load on FXServer — see `fivem.shared.util.Bits`.
	**/
	static function byteToHex(value:Int):String {
		var clamped = value < 0 ? 0 : (value > 255 ? 255 : value);
		var digits = "0123456789ABCDEF";
		return digits.charAt(Std.int(clamped / 16)) + digits.charAt(clamped % 16);
	}

	/** A copy with a different alpha, leaving the hue untouched. **/
	public inline function withAlpha(alpha:Int):Rgba
		return new Rgba(this.r, this.g, this.b, alpha);

	public inline function copy():Rgba
		return new Rgba(this.r, this.g, this.b, this.a);

	/** Blends towards `target`; `t` of 0 keeps this colour, 1 gives `target`. **/
	public inline function lerp(target:Rgba, t:Float):Rgba {
		return new Rgba(Math.round(MathUtil.lerp(this.r, target.r, t)), Math.round(MathUtil.lerp(this.g, target.g, t)),
			Math.round(MathUtil.lerp(this.b, target.b, t)), Math.round(MathUtil.lerp(this.a, target.a, t)));
	}

	@:op(A == B) public inline function equals(rhs:Rgba):Bool
		return rhs != null && this.r == rhs.r && this.g == rhs.g && this.b == rhs.b && this.a == rhs.a;

	@:op(A != B) public inline function notEquals(rhs:Rgba):Bool
		return !equals(rhs);

	public inline function toString():String
		return 'rgba(${this.r}, ${this.g}, ${this.b}, ${this.a})';
}
