package fivem.server;

/**
	A single import that brings the server core into scope, along with
	everything from `fivem.shared.Core`.

	```haxe
	import fivem.server.Core;

	class ServerMain {
	    static function main() {
	        Players.onJoined(player -> Logger.info("join", player.name));

	        Callbacks.register("garage:spawn", (source, args) -> {
	            var player = Player.fromSource(source);
	            if (player == null) return 0;

	            var vehicle = Vehicle.create(args[0], player.coords, player.ped.heading);
	            player.ped.warpIntoVehicle(vehicle);
	            return vehicle.netId;
	        });
	    }
	}
	```

	Everything here is a plain type alias, so this costs nothing at runtime.
	Note that `Entity`, `Ped` and `Vehicle` refer to the *wrapper classes* in
	`fivem.server.core`, not the native externs — import those explicitly (and
	preferably aliased) if you need both in one file.
**/
class Core {}

// -- Entities ----------------------------------------------------------------

typedef Entity = fivem.server.core.Entity;
typedef EntityType = fivem.server.core.Entity.EntityType;
typedef Ped = fivem.server.core.Ped;
typedef Vehicle = fivem.server.core.Vehicle;
typedef VehicleLockState = fivem.server.core.Vehicle.VehicleLockState;
typedef Prop = fivem.server.core.Prop;

// -- Players -----------------------------------------------------------------

typedef Player = fivem.server.core.Player;
typedef Players = fivem.server.core.Players;

// -- World, networking and zones ---------------------------------------------

typedef World = fivem.server.core.World;
typedef Net = fivem.server.core.Net;
typedef Callbacks = fivem.server.core.Callbacks;
typedef Http = fivem.server.core.Http;
typedef HttpResponse = fivem.server.core.Http.HttpResponse;
typedef Zones = fivem.server.core.Zones;
typedef Zone = fivem.server.core.Zones.Zone;
typedef ZoneOptions = fivem.server.core.Zones.ZoneOptions;

// -- Database ----------------------------------------------------------------

typedef OxMysql = fivem.server.db.OxMysql;

// -- Re-exported from fivem.shared.Core --------------------------------------

typedef Thread = fivem.shared.core.Thread;
typedef TimerHandle = fivem.shared.core.Thread.TimerHandle;
typedef Events = fivem.shared.core.Events;
typedef EventSubscription = fivem.shared.core.Events.EventSubscription;
typedef Commands = fivem.shared.core.Commands;
typedef Deferred<T> = fivem.shared.core.Deferred<T>;
typedef Exports = fivem.shared.core.Exports;
typedef Kvp = fivem.shared.core.Kvp;
typedef Resource = fivem.shared.core.Resource;
typedef StateBag = fivem.shared.core.StateBag;
typedef Citizen = fivem.shared.Citizen;

typedef Vector2 = fivem.shared.util.Vector2;
typedef Vector3 = fivem.shared.util.Vector3;
typedef Vector4 = fivem.shared.util.Vector4;
typedef Quaternion = fivem.shared.util.Quaternion;
typedef Rgba = fivem.shared.util.Rgba;
typedef Hash = fivem.shared.util.Hash;
typedef MathUtil = fivem.shared.util.MathUtil;
typedef Bits = fivem.shared.util.Bits;
typedef Json = fivem.shared.util.Json;
typedef LuaTables = fivem.shared.util.LuaTables;
typedef Logger = fivem.shared.util.Logger;
typedef Signal<T> = fivem.shared.util.Signal<T>;
typedef Cooldown = fivem.shared.util.Timing.Cooldown;
typedef KeyedCooldown = fivem.shared.util.Timing.KeyedCooldown;
typedef Debounce = fivem.shared.util.Timing.Debounce;
typedef Throttle = fivem.shared.util.Timing.Throttle;
typedef Stopwatch = fivem.shared.util.Timing.Stopwatch;

typedef ColShape = fivem.shared.colshape.ColShape;
typedef Sphere = fivem.shared.colshape.Sphere;
typedef Circle = fivem.shared.colshape.Circle;
typedef Box = fivem.shared.colshape.Box;
typedef Poly = fivem.shared.colshape.Poly;
