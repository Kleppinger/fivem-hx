package fivem.client;

/**
	A single import that brings the client core into scope, along with
	everything from `fivem.shared.Core`.

	```haxe
	import fivem.client.Core;

	class ClientMain {
	    static function main() {
	        Thread.everyFrame(() -> {
	            var vehicle = LocalPlayer.vehicle();
	            if (vehicle != null) Ui.drawText('${Math.round(vehicle.speed * 3.6)} km/h', new Vector2(0.5, 0.9));
	        });
	    }
	}
	```

	Everything here is a plain type alias, so this costs nothing at runtime.
	Note that `Entity`, `Ped` and `Vehicle` refer to the *wrapper classes* in
	`fivem.client.core`, not the native externs of the same name in
	`fivem.client.natives` — import those explicitly (and preferably aliased)
	if you need both in one file.
**/
class Core {}

// -- Entities ----------------------------------------------------------------

typedef Entity = fivem.client.core.Entity;
typedef EntityType = fivem.client.core.Entity.EntityType;
typedef Ped = fivem.client.core.Ped;
typedef Vehicle = fivem.client.core.Vehicle;
typedef VehicleSeat = fivem.client.core.Vehicle.VehicleSeat;
typedef VehicleDoor = fivem.client.core.Vehicle.VehicleDoor;
typedef VehicleLockState = fivem.client.core.Vehicle.VehicleLockState;
typedef Prop = fivem.client.core.Prop;

// -- Players -----------------------------------------------------------------

typedef Player = fivem.client.core.Player;
typedef LocalPlayer = fivem.client.core.LocalPlayer;

// -- World and presentation --------------------------------------------------

typedef World = fivem.client.core.World;
typedef Streaming = fivem.client.core.Streaming;
typedef Raycast = fivem.client.core.Raycast;
typedef RaycastHit = fivem.client.core.Raycast.RaycastHit;
typedef RaycastFlags = fivem.client.core.Raycast.RaycastFlags;
typedef Blip = fivem.client.core.Blip;
typedef BlipDisplay = fivem.client.core.Blip.BlipDisplay;
typedef Ui = fivem.client.core.Ui;
typedef TextStyle = fivem.client.core.Ui.TextStyle;
typedef TextAlign = fivem.client.core.Ui.TextAlign;
typedef Nui = fivem.client.core.Nui;
typedef Controls = fivem.client.core.Controls;
typedef Control = fivem.client.core.Controls.Control;

// -- Networking and zones ----------------------------------------------------

typedef Net = fivem.client.core.Net;
typedef Callbacks = fivem.client.core.Callbacks;
typedef Zones = fivem.client.core.Zones;
typedef Zone = fivem.client.core.Zones.Zone;
typedef ZoneOptions = fivem.client.core.Zones.ZoneOptions;

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
