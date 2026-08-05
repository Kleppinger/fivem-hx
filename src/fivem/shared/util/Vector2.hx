package fivem.shared.util;

typedef Vector2Data = {
	var x:Float;
	var y:Float;
}

/**
	A 2D vector, sharing `Vector3`'s design: an abstract over a bare `{x, y}`
	structure, so it is layout-compatible with Lua `vector2` values returned by
	natives and costs nothing at runtime.

	Mostly useful for screen coordinates (`World3dToScreen2d`, text placement)
	and for flat, ground-plane math where height is irrelevant.
**/
@:forward
abstract Vector2(Vector2Data) from Vector2Data to Vector2Data {
	public inline function new(x:Float, y:Float) {
		this = {x: x, y: y};
	}

	public static inline function zero():Vector2
		return new Vector2(0, 0);

	public static inline function one():Vector2
		return new Vector2(1, 1);

	public static inline function fromNative(value:Dynamic):Vector2 {
		return value == null ? null : (cast value : Vector2);
	}

	public inline function toNative():Dynamic {
		return untyped __lua__("_G.vector2({0}, {1})", this.x, this.y);
	}

	public inline function toArray():Array<Float>
		return [this.x, this.y];

	public inline function copy():Vector2
		return new Vector2(this.x, this.y);

	/** Widens to 3D, with `z` defaulting to ground level 0. **/
	public inline function toVector3(z:Float = 0):Vector3
		return new Vector3(this.x, this.y, z);

	@:op(A + B) public inline function add(rhs:Vector2):Vector2
		return new Vector2(this.x + rhs.x, this.y + rhs.y);

	@:op(A - B) public inline function sub(rhs:Vector2):Vector2
		return new Vector2(this.x - rhs.x, this.y - rhs.y);

	@:op(A * B) public inline function mul(rhs:Vector2):Vector2
		return new Vector2(this.x * rhs.x, this.y * rhs.y);

	@:op(A * B) @:commutative public inline function scale(factor:Float):Vector2
		return new Vector2(this.x * factor, this.y * factor);

	@:op(A / B) public inline function divide(factor:Float):Vector2
		return new Vector2(this.x / factor, this.y / factor);

	@:op(-A) public inline function negate():Vector2
		return new Vector2(-this.x, -this.y);

	@:op(A == B) public inline function equals(rhs:Vector2):Bool
		return rhs != null && this.x == rhs.x && this.y == rhs.y;

	@:op(A != B) public inline function notEquals(rhs:Vector2):Bool
		return !equals(rhs);

	public var length(get, never):Float;

	inline function get_length():Float
		return Math.sqrt(this.x * this.x + this.y * this.y);

	public var lengthSquared(get, never):Float;

	inline function get_lengthSquared():Float
		return this.x * this.x + this.y * this.y;

	public inline function normalized():Vector2 {
		var len = length;
		return len == 0 ? new Vector2(0, 0) : new Vector2(this.x / len, this.y / len);
	}

	public inline function dot(rhs:Vector2):Float
		return this.x * rhs.x + this.y * rhs.y;

	/** The Z component of the 3D cross product — positive when `rhs` is counter-clockwise from this. **/
	public inline function cross(rhs:Vector2):Float
		return this.x * rhs.y - this.y * rhs.x;

	public inline function distance(rhs:Vector2):Float
		return Math.sqrt(distanceSquared(rhs));

	public inline function distanceSquared(rhs:Vector2):Float {
		var dx = this.x - rhs.x, dy = this.y - rhs.y;
		return dx * dx + dy * dy;
	}

	public inline function lerp(target:Vector2, t:Float):Vector2
		return new Vector2(this.x + (target.x - this.x) * t, this.y + (target.y - this.y) * t);

	/** Rotates counter-clockwise around the origin. **/
	public inline function rotate(degrees:Float):Vector2 {
		var rad = degrees * MathUtil.DEG_TO_RAD;
		var c = Math.cos(rad), s = Math.sin(rad);
		return new Vector2(this.x * c - this.y * s, this.x * s + this.y * c);
	}

	public inline function nearlyEquals(rhs:Vector2, epsilon:Float = 0.001):Bool {
		return Math.abs(this.x - rhs.x) <= epsilon && Math.abs(this.y - rhs.y) <= epsilon;
	}

	public inline function toString():String
		return 'vec2(${this.x}, ${this.y})';
}
