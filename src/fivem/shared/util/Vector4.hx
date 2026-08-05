package fivem.shared.util;

typedef Vector4Data = {
	var x:Float;
	var y:Float;
	var z:Float;
	var w:Float;
}

/**
	A 4D vector. In FiveM the overwhelmingly common use is *position plus
	heading* — spawn points, parking spots, teleport targets — which is why
	`w` is aliased as `heading` and why `toVector3()` exists to drop it again.
**/
@:forward
abstract Vector4(Vector4Data) from Vector4Data to Vector4Data {
	public inline function new(x:Float, y:Float, z:Float, w:Float) {
		this = {x: x, y: y, z: z, w: w};
	}

	/** Alias for `w`, reflecting how `vector4` is used almost everywhere in FiveM. **/
	public var heading(get, set):Float;

	inline function get_heading():Float
		return this.w;

	inline function set_heading(value:Float):Float
		return this.w = value;

	public static inline function zero():Vector4
		return new Vector4(0, 0, 0, 0);

	public static inline function fromNative(value:Dynamic):Vector4 {
		return value == null ? null : (cast value : Vector4);
	}

	public static inline function fromArray(values:Array<Float>):Vector4 {
		return new Vector4(values[0], values[1], values[2], values[3]);
	}

	public inline function toNative():Dynamic {
		return untyped __lua__("_G.vector4({0}, {1}, {2}, {3})", this.x, this.y, this.z, this.w);
	}

	public inline function toArray():Array<Float>
		return [this.x, this.y, this.z, this.w];

	public inline function copy():Vector4
		return new Vector4(this.x, this.y, this.z, this.w);

	/** Drops `w`, giving just the position. **/
	public inline function toVector3():Vector3
		return new Vector3(this.x, this.y, this.z);

	@:op(A + B) public inline function add(rhs:Vector4):Vector4
		return new Vector4(this.x + rhs.x, this.y + rhs.y, this.z + rhs.z, this.w + rhs.w);

	@:op(A - B) public inline function sub(rhs:Vector4):Vector4
		return new Vector4(this.x - rhs.x, this.y - rhs.y, this.z - rhs.z, this.w - rhs.w);

	@:op(A * B) @:commutative public inline function scale(factor:Float):Vector4
		return new Vector4(this.x * factor, this.y * factor, this.z * factor, this.w * factor);

	@:op(A / B) public inline function divide(factor:Float):Vector4
		return new Vector4(this.x / factor, this.y / factor, this.z / factor, this.w / factor);

	@:op(-A) public inline function negate():Vector4
		return new Vector4(-this.x, -this.y, -this.z, -this.w);

	@:op(A == B) public inline function equals(rhs:Vector4):Bool
		return rhs != null && this.x == rhs.x && this.y == rhs.y && this.z == rhs.z && this.w == rhs.w;

	@:op(A != B) public inline function notEquals(rhs:Vector4):Bool
		return !equals(rhs);

	public var length(get, never):Float;

	inline function get_length():Float
		return Math.sqrt(this.x * this.x + this.y * this.y + this.z * this.z + this.w * this.w);

	public inline function dot(rhs:Vector4):Float
		return this.x * rhs.x + this.y * rhs.y + this.z * rhs.z + this.w * rhs.w;

	public inline function toString():String
		return 'vec4(${this.x}, ${this.y}, ${this.z}, ${this.w})';
}
