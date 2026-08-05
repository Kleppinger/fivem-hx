package fivem.shared.util;

typedef QuaternionData = {
	var x:Float;
	var y:Float;
	var z:Float;
	var w:Float;
}

/**
	A rotation quaternion, layout-compatible with what
	`GET_ENTITY_QUATERNION` / `SET_ENTITY_QUATERNION` expect.

	Most gameplay code should stay in Euler degrees (`Entity.rotation`), since
	that's what the game itself exposes. Reach for quaternions when you need
	interpolation that doesn't gimbal-lock — smooth camera swings, attached
	object alignment, or blending between two orientations over time.

	Euler conversions here use the game's ZXY convention (pitch = X,
	roll = Y, yaw = Z), matching `GET_ENTITY_ROTATION` with rotation order 2.
**/
@:forward
abstract Quaternion(QuaternionData) from QuaternionData to QuaternionData {
	public inline function new(x:Float, y:Float, z:Float, w:Float) {
		this = {x: x, y: y, z: z, w: w};
	}

	/** The do-nothing rotation. **/
	public static inline function identity():Quaternion
		return new Quaternion(0, 0, 0, 1);

	public static inline function fromNative(value:Dynamic):Quaternion {
		return value == null ? null : (cast value : Quaternion);
	}

	/** Builds a rotation from Euler angles in degrees (pitch, roll, yaw), ZXY order. **/
	public static function fromEuler(rotation:Vector3):Quaternion {
		var halfPitch = rotation.x * MathUtil.DEG_TO_RAD * 0.5;
		var halfRoll = rotation.y * MathUtil.DEG_TO_RAD * 0.5;
		var halfYaw = rotation.z * MathUtil.DEG_TO_RAD * 0.5;

		var sinPitch = Math.sin(halfPitch), cosPitch = Math.cos(halfPitch);
		var sinRoll = Math.sin(halfRoll), cosRoll = Math.cos(halfRoll);
		var sinYaw = Math.sin(halfYaw), cosYaw = Math.cos(halfYaw);

		return new Quaternion(sinPitch * cosRoll * cosYaw - cosPitch * sinRoll * sinYaw,
			cosPitch * sinRoll * cosYaw + sinPitch * cosRoll * sinYaw,
			cosPitch * cosRoll * sinYaw - sinPitch * sinRoll * cosYaw,
			cosPitch * cosRoll * cosYaw + sinPitch * sinRoll * sinYaw);
	}

	/** Builds a rotation around `axis` (which is normalized first) by `degrees`. **/
	public static function fromAxisAngle(axis:Vector3, degrees:Float):Quaternion {
		var unit = axis.normalized();
		var half = degrees * MathUtil.DEG_TO_RAD * 0.5;
		var sin = Math.sin(half);
		return new Quaternion(unit.x * sin, unit.y * sin, unit.z * sin, Math.cos(half));
	}

	/** A yaw-only rotation matching a game heading in degrees. **/
	public static inline function fromHeading(degrees:Float):Quaternion {
		var half = degrees * MathUtil.DEG_TO_RAD * 0.5;
		return new Quaternion(0, 0, Math.sin(half), Math.cos(half));
	}

	/** Converts back to Euler degrees (pitch, roll, yaw). **/
	public function toEuler():Vector3 {
		var sinPitch = 2 * (this.w * this.x - this.y * this.z);
		// Clamped because float drift can push this marginally outside asin's domain at the poles.
		var pitch = Math.asin(MathUtil.clamp(sinPitch, -1, 1));
		var roll = Math.atan2(2 * (this.w * this.y + this.x * this.z), 1 - 2 * (this.x * this.x + this.y * this.y));
		var yaw = Math.atan2(2 * (this.w * this.z + this.x * this.y), 1 - 2 * (this.x * this.x + this.z * this.z));
		return new Vector3(pitch * MathUtil.RAD_TO_DEG, roll * MathUtil.RAD_TO_DEG, yaw * MathUtil.RAD_TO_DEG);
	}

	public inline function copy():Quaternion
		return new Quaternion(this.x, this.y, this.z, this.w);

	public var length(get, never):Float;

	inline function get_length():Float
		return Math.sqrt(this.x * this.x + this.y * this.y + this.z * this.z + this.w * this.w);

	public inline function normalized():Quaternion {
		var len = length;
		return len == 0 ? identity() : new Quaternion(this.x / len, this.y / len, this.z / len, this.w / len);
	}

	/** The inverse rotation (valid for unit quaternions, which is all this class produces). **/
	public inline function conjugate():Quaternion
		return new Quaternion(-this.x, -this.y, -this.z, this.w);

	/** Composes two rotations: `a * b` applies `b` first, then `a`. **/
	@:op(A * B) public function mul(rhs:Quaternion):Quaternion {
		return new Quaternion(this.w * rhs.x + this.x * rhs.w + this.y * rhs.z - this.z * rhs.y,
			this.w * rhs.y - this.x * rhs.z + this.y * rhs.w + this.z * rhs.x,
			this.w * rhs.z + this.x * rhs.y - this.y * rhs.x + this.z * rhs.w,
			this.w * rhs.w - this.x * rhs.x - this.y * rhs.y - this.z * rhs.z);
	}

	/** Rotates a vector by this quaternion. **/
	public function rotate(point:Vector3):Vector3 {
		var qv = new Vector3(this.x, this.y, this.z);
		var uv = qv.cross(point);
		var uuv = qv.cross(uv);
		return point + (uv * (2 * this.w)) + (uuv * 2.0);
	}

	public inline function dot(rhs:Quaternion):Float
		return this.x * rhs.x + this.y * rhs.y + this.z * rhs.z + this.w * rhs.w;

	/**
		Spherical interpolation towards `target`. Unlike lerping Euler angles,
		this always takes the shortest arc and keeps a constant angular speed.
	**/
	public function slerp(target:Quaternion, t:Float):Quaternion {
		var cosHalfTheta = dot(target);
		var end = target;

		// Negating one end picks the short way around; both signs are the same rotation.
		if (cosHalfTheta < 0) {
			end = new Quaternion(-target.x, -target.y, -target.z, -target.w);
			cosHalfTheta = -cosHalfTheta;
		}

		// Nearly parallel: slerp degenerates into a division by ~zero, so lerp instead.
		if (cosHalfTheta > 0.9995) {
			return new Quaternion(MathUtil.lerp(this.x, end.x, t), MathUtil.lerp(this.y, end.y, t), MathUtil.lerp(this.z, end.z, t),
				MathUtil.lerp(this.w, end.w, t)).normalized();
		}

		var halfTheta = Math.acos(cosHalfTheta);
		var sinHalfTheta = Math.sqrt(1 - cosHalfTheta * cosHalfTheta);
		var ratioFrom = Math.sin((1 - t) * halfTheta) / sinHalfTheta;
		var ratioTo = Math.sin(t * halfTheta) / sinHalfTheta;

		return new Quaternion(this.x * ratioFrom + end.x * ratioTo, this.y * ratioFrom + end.y * ratioTo, this.z * ratioFrom + end.z * ratioTo,
			this.w * ratioFrom + end.w * ratioTo);
	}

	public inline function toString():String
		return 'quat(${this.x}, ${this.y}, ${this.z}, ${this.w})';
}
