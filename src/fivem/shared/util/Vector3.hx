package fivem.shared.util;

/**
	The structural shape every 3D vector in this library is built on.

	It is deliberately a plain anonymous structure rather than a class: FiveM's
	Lua runtime returns its own `vector3` userdata from natives like
	`GET_ENTITY_COORDS`, and that userdata exposes exactly `.x`, `.y` and `.z`.
	Because `Vector3` is an abstract over this shape, a native's return value
	can be cast straight to a `Vector3` with no copying or conversion.
**/
typedef Vector3Data = {
	var x:Float;
	var y:Float;
	var z:Float;
}

/**
	An immutable-by-convention 3D vector with full operator overloading.

	```haxe
	var a = new Vector3(1, 2, 3);
	var b = a + new Vector3(0, 0, 1);
	var away = (b - a).normalized() * 5.0;
	```

	Every method is `inline`, and the underlying type is a bare structure, so
	none of this survives into the generated Lua as a wrapper object — the
	arithmetic compiles down to direct field reads on plain tables.

	Values coming back from natives can be adopted directly:

	```haxe
	var coords:Vector3 = cast Natives.entity.getEntityCoords(ped, true);
	```

	and values going *into* natives are passed component-wise (`v.x, v.y, v.z`),
	which every native signature in this library accepts.
**/
@:forward
abstract Vector3(Vector3Data) from Vector3Data to Vector3Data {
	public inline function new(x:Float, y:Float, z:Float) {
		this = {x: x, y: y, z: z};
	}

	// -- Constants ---------------------------------------------------------

	public static inline function zero():Vector3
		return new Vector3(0, 0, 0);

	public static inline function one():Vector3
		return new Vector3(1, 1, 1);

	public static inline function up():Vector3
		return new Vector3(0, 0, 1);

	public static inline function forward():Vector3
		return new Vector3(0, 1, 0);

	public static inline function right():Vector3
		return new Vector3(1, 0, 0);

	// -- Conversion --------------------------------------------------------

	/**
		Adopts a value returned by a native (a Lua `vector3`, or any table with
		`x`/`y`/`z`) as a `Vector3`. Returns `null` for a `null` input, which is
		what natives hand back when the entity or query had no result.
	**/
	public static inline function fromNative(value:Dynamic):Vector3 {
		return value == null ? null : (cast value : Vector3);
	}

	/** Builds a vector from a `[x, y, z]` array. **/
	public static inline function fromArray(values:Array<Float>):Vector3 {
		return new Vector3(values[0], values[1], values[2]);
	}

	/**
		Builds a heading-aligned unit vector, using the same convention as the
		game's entity headings: 0° faces north (+Y), increasing clockwise.
	**/
	public static inline function fromHeading(degrees:Float):Vector3 {
		var rad = degrees * MathUtil.DEG_TO_RAD;
		return new Vector3(-Math.sin(rad), Math.cos(rad), 0);
	}

	/** A real Lua `vector3`, for the rare native or resource export that demands one. **/
	public inline function toNative():Dynamic {
		return untyped __lua__("_G.vector3({0}, {1}, {2})", this.x, this.y, this.z);
	}

	public inline function toArray():Array<Float>
		return [this.x, this.y, this.z];

	public inline function copy():Vector3
		return new Vector3(this.x, this.y, this.z);

	public inline function toVector2():Vector2
		return new Vector2(this.x, this.y);

	public inline function toVector4(w:Float = 0):Vector4
		return new Vector4(this.x, this.y, this.z, w);

	// -- Arithmetic --------------------------------------------------------

	@:op(A + B) public inline function add(rhs:Vector3):Vector3
		return new Vector3(this.x + rhs.x, this.y + rhs.y, this.z + rhs.z);

	@:op(A - B) public inline function sub(rhs:Vector3):Vector3
		return new Vector3(this.x - rhs.x, this.y - rhs.y, this.z - rhs.z);

	/** Component-wise product (Hadamard), *not* dot or cross. **/
	@:op(A * B) public inline function mul(rhs:Vector3):Vector3
		return new Vector3(this.x * rhs.x, this.y * rhs.y, this.z * rhs.z);

	@:op(A * B) @:commutative public inline function scale(factor:Float):Vector3
		return new Vector3(this.x * factor, this.y * factor, this.z * factor);

	@:op(A / B) public inline function divide(factor:Float):Vector3
		return new Vector3(this.x / factor, this.y / factor, this.z / factor);

	@:op(-A) public inline function negate():Vector3
		return new Vector3(-this.x, -this.y, -this.z);

	@:op(A == B) public inline function equals(rhs:Vector3):Bool
		return rhs != null && this.x == rhs.x && this.y == rhs.y && this.z == rhs.z;

	@:op(A != B) public inline function notEquals(rhs:Vector3):Bool
		return !equals(rhs);

	// -- Geometry ----------------------------------------------------------

	public var length(get, never):Float;

	inline function get_length():Float
		return Math.sqrt(this.x * this.x + this.y * this.y + this.z * this.z);

	/** Squared length. Prefer this over `length` when only comparing distances. **/
	public var lengthSquared(get, never):Float;

	inline function get_lengthSquared():Float
		return this.x * this.x + this.y * this.y + this.z * this.z;

	/** Unit-length copy. A zero vector is returned unchanged rather than producing NaNs. **/
	public inline function normalized():Vector3 {
		var len = length;
		return len == 0 ? new Vector3(0, 0, 0) : new Vector3(this.x / len, this.y / len, this.z / len);
	}

	public inline function dot(rhs:Vector3):Float
		return this.x * rhs.x + this.y * rhs.y + this.z * rhs.z;

	public inline function cross(rhs:Vector3):Vector3 {
		return new Vector3(this.y * rhs.z - this.z * rhs.y, this.z * rhs.x - this.x * rhs.z, this.x * rhs.y - this.y * rhs.x);
	}

	public inline function distance(rhs:Vector3):Float
		return Math.sqrt(distanceSquared(rhs));

	public inline function distanceSquared(rhs:Vector3):Float {
		var dx = this.x - rhs.x, dy = this.y - rhs.y, dz = this.z - rhs.z;
		return dx * dx + dy * dy + dz * dz;
	}

	/** Distance ignoring height — the right choice for "is the player near this spot" checks. **/
	public inline function distance2d(rhs:Vector3):Float {
		var dx = this.x - rhs.x, dy = this.y - rhs.y;
		return Math.sqrt(dx * dx + dy * dy);
	}

	public inline function lerp(target:Vector3, t:Float):Vector3 {
		return new Vector3(this.x + (target.x - this.x) * t, this.y + (target.y - this.y) * t, this.z + (target.z - this.z) * t);
	}

	/** Clamps the vector's length to at most `max`, keeping its direction. **/
	public inline function clampLength(max:Float):Vector3 {
		var len = length;
		return len > max && len > 0 ? scale(max / len) : copy();
	}

	/**
		The game heading (degrees, 0 = north, clockwise) this vector points in.
		The Z component is ignored.
	**/
	public inline function toHeading():Float {
		return MathUtil.normalizeDegrees(-Math.atan2(this.x, this.y) * MathUtil.RAD_TO_DEG);
	}

	public inline function withZ(z:Float):Vector3
		return new Vector3(this.x, this.y, z);

	/** Compares component-wise within `epsilon`, for tolerating float drift. **/
	public inline function nearlyEquals(rhs:Vector3, epsilon:Float = 0.001):Bool {
		return Math.abs(this.x - rhs.x) <= epsilon && Math.abs(this.y - rhs.y) <= epsilon && Math.abs(this.z - rhs.z) <= epsilon;
	}

	public inline function toString():String
		return 'vec3(${this.x}, ${this.y}, ${this.z})';
}
