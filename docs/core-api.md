# The core API

`fivem.*.natives` gives you every FiveM native, typed. That's the floor, not
the ceiling: writing real game code against raw natives means passing loose
floats around, remembering that `RegisterNetEvent` and `AddEventHandler` are
two separate calls, and re-deriving a distance check in every file.

The core API is an object-oriented layer on top of those externs, in the
spirit of [ox_core](https://overextended.dev/ox_core) and
[ox_lib](https://overextended.dev/ox_lib):

```
src/fivem/
├── shared/
│   ├── Citizen.hx          CreateThread, Wait, SetTimeout, Await
│   ├── Runtime.hx          GET_GAME_TIMER / GET_HASH_KEY for shared code
│   ├── CoreEvents.hx       RegisterCommand, TriggerEvent, ...
│   ├── Core.hx             one import for the whole shared layer
│   ├── core/               Thread, Events, Commands, StateBag, Kvp, Resource,
│   │                       Exports, Deferred, CallbackProtocol
│   ├── util/               Vector2/3/4, Quaternion, Rgba, Hash, MathUtil,
│   │                       Signal, Logger, Timing, Json, LuaTables
│   └── colshape/           ColShape, Sphere, Circle, Box, Poly
├── client/
│   ├── NativeOutputs.hx    multi-return natives the generator can't express
│   ├── Core.hx             one import for the whole client layer
│   └── core/               Entity, Ped, Vehicle, Prop, Player, LocalPlayer,
│                           World, Streaming, Raycast, Blip, Ui, Nui,
│                           Controls, Zones, Net, Callbacks
└── server/
    ├── Core.hx             one import for the whole server layer
    └── core/               Entity, Ped, Vehicle, Prop, Player, Players,
                            World, Zones, Net, Callbacks, Http
```

None of it replaces the natives — everything here compiles down to the same
`_G.NATIVE_NAME(...)` calls you'd write by hand, and you can mix the two
freely in one file.

## One import per environment

Each environment has a `Core` module that aliases everything, including the
shared layer:

```haxe
import fivem.client.Core;   // or fivem.server.Core
```

Importing a Haxe module imports every type it declares, and these are all
plain type aliases — so this costs nothing at runtime and the aliased types
stay usable under their full paths.

One caveat: `Entity`, `Ped` and `Vehicle` in `fivem.client.Core` are the
*wrapper classes*, not the native externs of the same name in
`fivem.client.natives`. If you need both in one file, import the natives
aliased:

```haxe
import fivem.client.Core;
import fivem.client.natives.Entity as EntityNatives;
```

## Vectors

`Vector3` is an abstract over a bare `{x, y, z}` structure with full operator
overloading. That shape is deliberate: FiveM's Lua runtime returns its own
`vector3` userdata from natives like `GET_ENTITY_COORDS`, and that userdata
exposes exactly `.x`, `.y` and `.z` — so a native's return value casts
straight to a `Vector3` with no conversion and no copy.

```haxe
var spawn = new Vector3(-269.4, -955.3, 31.2);
var ahead = spawn + Vector3.fromHeading(90) * 5.0;

if (ahead.distance2d(LocalPlayer.coords()) < 10) { ... }

// adopt a native's return value directly
var coords:Vector3 = cast Natives.entity.getEntityCoords(ped, true);
```

Every method is `inline`, so the arithmetic compiles to direct field reads on
plain tables — no wrapper objects survive into the generated Lua.

`Vector2` and `Vector4` follow the same design; `Vector4.heading` is an alias
for `w`, matching how `vector4` is used almost everywhere in FiveM.
`Quaternion` is there for interpolation that shouldn't gimbal-lock — most
gameplay code should stay in Euler degrees via `Entity.rotation`.

## Hashes

Models, weapons and most other game assets are addressed by the hash of a
lowercase name. Anything taking one is typed `Hash`, which converts
implicitly from `String`:

```haxe
Vehicle.create("adder", spawnPoint);        // hashed for you
Vehicle.create(0xB779A091, spawnPoint);     // already a hash
ped.giveWeapon("WEAPON_PISTOL", 60);
```

The conversion is one `GET_HASH_KEY` call — negligible outside a per-frame
loop, where you should hoist it into a variable anyway.

## Entities

`Entity` is a thin wrapper around a game handle: it stores the integer and
nothing else, so constructing one is free. Properties read through to the
natives on every access rather than caching, because the game moves entities
constantly.

```haxe
var vehicle = LocalPlayer.vehicle();
if (vehicle != null && vehicle.requestControl()) {
    vehicle.repair();
    vehicle.coords = vehicle.coords + Vector3.up() * 3.0;
}
```

`Entity.fromHandle` returns the most specific subclass the game reports —
`Ped`, `Vehicle` or `Prop`:

```haxe
var hit = Raycast.fromCamera(10.0);
if (hit.entity is Vehicle) {
    var car:Vehicle = cast hit.entity;
    Ui.showHelp('${car.displayName} — ${car.plate}');
}
```

### Handles, network IDs and sources

Three different numbers identify things, and mixing them up is the most
common source of "works for me, not for anyone else":

| | Scope | Send over the network? |
|---|---|---|
| entity **handle** | one machine, recycled | never |
| entity **netId** | every machine | yes |
| player **index** (client) | one client, recycled | never |
| player **serverId** / **source** | every machine | yes |

`Entity.fromNetId` resolves a network ID to a local handle, returning `null`
if the entity isn't streamed in on that client yet.

### Client vs server entities

The two `Entity` classes are deliberately different. The server owns
positions, models, network IDs and state bags; the client that *owns* an
entity owns its health, visual state, tasks and physics. So
`fivem.server.core.Entity` has no `health` setter and
`fivem.server.core.Vehicle` has no `engineHealth` setter — there is no server
native behind them. Change what the server can, and push the rest to the
owning client with `Net.emitClient(..., entity.owner, ...)`.

On the client the mirror-image rule applies: a write to a networked entity
you don't own is reverted by its real owner within a frame or two. Call
`requestControl()` first, and keep the work that follows short.

## Threads and timers

FiveM has no preemption. A resource runs on a single Lua state and a
"thread" is a coroutine that voluntarily yields — so no locking is ever
needed, but a loop that forgets to wait freezes the whole resource.

```haxe
Thread.create(() -> {
    while (true) {
        Thread.wait(1000);
        checkSomething();
    }
});

var ticker = Thread.setInterval(500, () -> updateHud());
ticker.cancel();

// poll something until it's ready, with a timeout
if (Thread.waitUntil(() -> Streaming.isModelLoaded(model), 5000)) { ... }
```

`Thread.adaptiveLoop` returns the delay until its next run, which is how you
write distance-based polling that's cheap when the player is far away:

```haxe
Thread.adaptiveLoop(() -> {
    var distance = LocalPlayer.coords().distance(shopCoords);
    if (distance > 50) return 1000;
    drawShopMarker();
    return 0;                       // every frame while close
});
```

## Events

Raw FiveM needs `RegisterNetEvent(name)` *and* `AddEventHandler(name, fn)` to
receive an event from the network; forgetting the first silently drops every
incoming event. `Events.onNet` does both.

```haxe
// both sides
Events.onNet("shop:opened", (shopId:String) -> openShop(shopId));
Events.emit("shop:opened", "ammunation");            // local only

// client -> server
Net.emitServer("shop:buy", itemId, quantity);

// server -> client
Net.emitClient("hud:update", player.source, cash);
Net.emitAll("weather:changed", "RAIN");
Net.emitNear(explosionPoint, 200.0, "effects:explosion", explosionPoint);
```

On the server the triggering player is a Lua global rather than an argument;
read it with `Events.source()`, and treat it as the only trustworthy thing in
the handler.

## Callbacks

FiveM events are one-way. `Callbacks` layers a correlation key over a pair of
events so one side can ask a question and block on the answer:

```haxe
// server
Callbacks.register("bank:getBalance", (source, args) -> {
    var player = Player.fromSource(source);
    return player == null ? 0 : accounts.balanceOf(player.identifier("license"));
});

// client
var balance:Int = Callbacks.await("bank:getBalance");
```

`await` suspends only the calling coroutine — the rest of the resource keeps
running — so it must be called from inside one: a thread, event handler,
command handler or export. It returns `null` on timeout, which includes the
ordinary case of a player disconnecting mid-request.

The protocol event names are namespaced per resource, so two Haxe resources
on the same server don't answer each other's requests.

## Collision shapes and zones

`fivem.shared.colshape` is pure geometry — `Sphere`, `Circle` (an upright
cylinder), `Box` (oriented) and `Poly` (arbitrary outline, extruded). No
polling, no events, no environment dependency, which is what lets the same
shape definition be shared between client and server.

`Zones` is the polling layer:

```haxe
// client — against the local player
Zones.addCircle(shopPoint, 2.5, {
    onEnter: _ -> Ui.showHelp("Press ~INPUT_CONTEXT~ to shop"),
    onExit:  _ -> closeShopPrompt(),
    onInside: _ -> Ui.drawMarker(shopPoint, 1, new Vector3(2.5, 2.5, 1.0)),
    insideIntervalMs: 0        // every frame, for drawing
}, 3.0);

// server — against every connected player
Zones.addCircle(vaultPoint, 10.0, {
    onEnter: (_, player) -> Logger.warn("vault", '${player.name} entered')
}, 6.0);
```

Every zone is polled from a *single* shared thread, so a hundred zones cost
one loop rather than a hundred, and each shape is rejected by a cheap
bounding-sphere test before its real containment test runs.

Prefer `Circle` over `Sphere` for interaction points. Ground in GTA is rarely
flat and a player's Z shifts as they walk, crouch or sit in a vehicle, so a
sphere sized to feel right at eye level often fails at the kerb.

Set `Zones.debugDraw = true` on the client to see every registered shape in
the world while you're placing them.

## State bags

State bags are the engine's own replicated key/value store. A server-side
write with `replicated = true` reaches every client automatically — no
events, no manual sync, and it survives a client reconnecting into range.

```haxe
vehicle.state.set("fuel", 84.5);
var fuel:Float = vehicle.state.get("fuel");

vehicle.state.onChange("fuel", (value, _) -> updateFuelGauge(value));
```

That makes them right for entity metadata (a door's locked flag, a player's
job) and wrong for high-frequency data, since every replicated write is a
network message.

## Utilities

| Type | What it's for |
|---|---|
| `Logger` | Levelled console logging, prefixed with the resource name |
| `Signal<T>` / `VoidSignal` | Typed in-process events, for things that never leave the resource |
| `Cooldown` / `KeyedCooldown` | Rate limiting — the standard guard on a server net event handler |
| `Debounce` / `Throttle` | Collapsing bursts of calls, from the last or the first |
| `Stopwatch` | Elapsed time against the game clock |
| `MathUtil` | `clamp`, `lerp`, `map`, `deltaDegrees`, `randomInt`, `smoothStep` |
| `Rgba` | 8-bit colour, so drawing natives take one argument instead of four |
| `Json` | JSON encode/decode that works on FXServer — use this, never `haxe.Json` |
| `LuaTables` | Conversions between raw Lua tables and Haxe arrays and maps |
| `Deferred<T>` | A typed promise, for turning callback APIs into blocking calls |

### `LuaTables` is not optional

Haxe arrays on the Lua target are 0-based objects carrying their own `length`
field. Everything coming out of FiveM — `GetActivePlayers()`,
`GetGamePool()`, command arguments, msgpack-decoded event payloads — is a
plain 1-based Lua table. Assigning one to an `Array<T>` type-checks but
produces an array that reads as empty.

Everything in the core API has already been through `LuaTables`; you need it
when you call a native directly, or when sending an array across the network:

```haxe
Net.emitServer("inventory:sync", LuaTables.fromArray(items));
```

## Multi-return natives

Many natives report results through pointer output parameters. FiveM's Lua
runtime drops those from the call and appends them to the return values, but
the natives database still describes them as ordinary arguments — so the
generated extern type-checks while throwing the result away.

`fivem.client.NativeOutputs` declares the ones the core API needs with
`@:multiReturn`, so both halves are reachable:

```haxe
var ground = World.groundZ(position);       // wraps GET_GROUND_Z_FOR_3D_COORD
if (ground != null) spawnAt(position.withZ(ground));
```

If you hit one that isn't there, add it the same way — see
[api-guide.md](api-guide.md#multi-return-and-out-parameter-natives).

## Cleaning up

Nothing here is torn down automatically when a resource stops. Blips stay on
the map, NUI focus stays captured, and server-created entities outlive the
resource that made them — so a restart stacks duplicates.

```haxe
// client
Resource.onStop(() -> {
    Zones.clear();
    myBlip.remove();
    Nui.close();
});

// server
Resource.onStop(World.deleteOwnEntities);
```

## A worked example

[`examples/core-demo`](../examples/core-demo) is a working resource using
most of this: a zone with a marker and a keybind, a server callback that
spawns a vehicle with a per-player cooldown, the player registry, and
server-side zone logging.
