package fivem.shared;

/**
	A single import that brings the whole shared core and utility layer into
	scope.

	```haxe
	import fivem.shared.Core;

	Thread.create(() -> {
	    var spawn = new Vector3(-269.4, -955.3, 31.2);
	    Logger.info("spawn", spawn.toString());
	});
	```

	Importing a Haxe module imports every type it declares, and everything here
	is a plain alias — so this costs nothing at runtime and the aliased types
	remain usable under their full paths too.

	Import `fivem.client.Core` or `fivem.server.Core` alongside this for the
	environment-specific classes; both already re-export the shared types, so
	one import is usually enough.

	`Citizen`, `Runtime` and `CoreEvents` are deliberately not aliased here:
	they are modules in this same package, and a same-named alias would clash
	with them. Import those directly when you need the raw externs.

	The `Core` class itself is empty — it exists only so the module has a type
	matching its filename. The aliases below are the point of this file.
**/
class Core {}

// -- Core --------------------------------------------------------------------

typedef Thread = fivem.shared.core.Thread;
typedef TimerHandle = fivem.shared.core.Thread.TimerHandle;
typedef Events = fivem.shared.core.Events;
typedef EventSubscription = fivem.shared.core.Events.EventSubscription;
typedef Commands = fivem.shared.core.Commands;
typedef Deferred<T> = fivem.shared.core.Deferred<T>;
typedef Exports = fivem.shared.core.Exports;
typedef Kvp = fivem.shared.core.Kvp;
typedef Resource = fivem.shared.core.Resource;
typedef ResourceState = fivem.shared.core.Resource.ResourceState;
typedef StateBag = fivem.shared.core.StateBag;

// -- Utilities ---------------------------------------------------------------

typedef Vector2 = fivem.shared.util.Vector2;
typedef Vector3 = fivem.shared.util.Vector3;
typedef Vector4 = fivem.shared.util.Vector4;
typedef Quaternion = fivem.shared.util.Quaternion;
typedef Rgba = fivem.shared.util.Rgba;
typedef Hash = fivem.shared.util.Hash;
typedef MathUtil = fivem.shared.util.MathUtil;
typedef LuaTables = fivem.shared.util.LuaTables;
typedef Logger = fivem.shared.util.Logger;
typedef LogLevel = fivem.shared.util.Logger.LogLevel;
typedef Signal<T> = fivem.shared.util.Signal<T>;
typedef VoidSignal = fivem.shared.util.Signal.VoidSignal;
typedef Cooldown = fivem.shared.util.Timing.Cooldown;
typedef KeyedCooldown = fivem.shared.util.Timing.KeyedCooldown;
typedef Debounce = fivem.shared.util.Timing.Debounce;
typedef Throttle = fivem.shared.util.Timing.Throttle;
typedef Stopwatch = fivem.shared.util.Timing.Stopwatch;

// -- Collision shapes --------------------------------------------------------

typedef ColShape = fivem.shared.colshape.ColShape;
typedef Sphere = fivem.shared.colshape.Sphere;
typedef Circle = fivem.shared.colshape.Circle;
typedef Box = fivem.shared.colshape.Box;
typedef Poly = fivem.shared.colshape.Poly;
