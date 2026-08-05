<div align="center">

<img src=".github/fivem-hx_logo.png" alt="fivem-hx" width="140" height="140">

# fivem-hx

### Write FiveM resources in a language that catches your mistakes before your players do.

Typed Haxe externs for the **complete** FiveM/RedM native API — generated straight from
CitizenFX's own native databases — plus an object-oriented core layer for entities,
players, zones, callbacks and UI. Compiles to plain Lua that runs on an unmodified server.

[![CI](https://github.com/Kleppinger/fivem-hx/actions/workflows/ci.yml/badge.svg)](https://github.com/Kleppinger/fivem-hx/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Haxe](https://img.shields.io/badge/haxe-%3E%3D4.3-orange.svg)](https://haxe.org)
[![FiveM](https://img.shields.io/badge/FiveM-natives-5c8ae6.svg)](https://docs.fivem.net/natives/)
[![API docs](https://img.shields.io/badge/API%20docs-kleppinger.github.io%2Ffivem--hx-blue.svg)](https://kleppinger.github.io/fivem-hx/)

**[API reference](https://kleppinger.github.io/fivem-hx/)** ·
**[Getting started](docs/getting-started.md)** ·
**[Core API](docs/core-api.md)** ·
**[Examples](examples)**

</div>

---

## The 30-second version

A speedometer. First, what you write in Lua today — then the same thing with `fivem-hx`.

```lua
-- Lua
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(ped, false)
        if veh ~= 0 then
            SetTextFont(4)
            SetTextScale(0.45, 0.45)
            SetTextColour(255, 255, 255, 255)
            SetTextOutline()
            SetTextEntry("STRING")
            AddTextComponentString(math.floor(GetEntitySpeed(veh) * 3.6) .. " km/h")
            DrawText(0.5, 0.9)
        end
    end
end)
```

```haxe
// Haxe
Thread.everyFrame(() -> {
    var vehicle = LocalPlayer.vehicle();
    if (vehicle != null)
        Ui.drawText('${Math.round(vehicle.speed * 3.6)} km/h', new Vector2(0.5, 0.9));
});
```

Shorter is nice. **Not shipping a typo to production is nicer** — and that's the actual pitch.

---

## Why Haxe over Lua for FiveM?

Lua is a fine language. The problem isn't Lua — it's that FiveM's Lua runtime has
**no idea what the natives are**. Every native is a global lookup resolved at call time,
every argument is untyped, and every mistake is a runtime surprise on a full server.

Haxe knows every one of them at compile time.

### 1. A typo is a compile error, not a 3 AM incident

```lua
-- Lua: a completely valid program. It just doesn't work.
local ped = PlayerPedId()
local coords = GetEntityCoors(ped)          -- typo — this is nil
SetEntityCoords(ped, coords.x, coords.y, coords.z + 10.0)
```

Lua happily loads this resource. Nothing complains until a player triggers the code path,
and then you get `attempt to index a nil value (local 'coords')` in a console nobody
was watching.

```haxe
// Haxe: the compiler stops you.
var ped = LocalPlayer.ped();
var coords = ped.coors;
//               ^^^^^ Ped has no field coors (Suggestion: coords)
```

The build fails. Your editor underlines it while you type. The bad resource never
reaches the server.

### 2. Wrong arguments can't get through

`SET_ENTITY_COORDS` takes eight parameters. Lua doesn't care if you pass three.

```lua
-- Lua: missing arguments quietly become nil
SetEntityCoords(ped, 215.9, -810.1)         -- forgot z, and the four flags
```

```haxe
// Haxe: the type system won't let the call compile
ped.coords = new Vector3(215.9, -810.1);
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^ Not enough arguments, expected z:Float
```

Same for types: pass a `String` where a native wants a `Float`, or a `Bool` where it
wants an entity handle, and you find out at build time — not from a bug report.

### 3. Magic numbers become names you can actually read

```lua
-- Lua: what is -1? what is 4? good luck.
TaskWarpPedIntoVehicle(ped, veh, -1)
SetVehicleDoorsLocked(veh, 4)
```

```haxe
// Haxe: enums, with autocomplete and documentation on hover
ped.warpIntoVehicle(vehicle, Driver);
vehicle.lockState = LockedPlayerInside;   // "Players can't get in, and anyone inside can't get out."
```

`VehicleSeat`, `VehicleLockState`, `VehicleDoor`, `EntityType`, `Control` and the rest are
`enum abstract`s — they're plain integers at runtime with **zero** overhead, but the
compiler rejects the values that don't exist and your editor lists the ones that do.

### 4. Vector math that reads like vector math

```lua
-- Lua: spawn a car three metres in front of a ped
local pos = GetEntityCoords(ped)
local fwd = GetEntityForwardVector(ped)
local spawn = vector3(pos.x + fwd.x * 3.0, pos.y + fwd.y * 3.0, pos.z + fwd.z * 3.0)
local dist = #(pos - GetEntityCoords(target))
```

```haxe
// Haxe: operator overloading, fully inlined
var spawn = ped.coords + ped.forwardVector * 3.0;
var dist  = ped.distanceToEntity(target);
```

`Vector2`/`Vector3`/`Vector4`/`Quaternion`/`Rgba` are `inline` abstracts with
`+ - * / == -`, `distance`, `lerp`, `normalized`, `cross`, `clampLength` and friends.
They compile down to the same arithmetic you'd have written by hand.

### 5. Client↔server round trips stop being a two-file scavenger hunt

Asking the server a question in plain Lua means inventing two event names, wiring
both directions, and hoping the reply arrives:

```lua
-- Lua, client
RegisterNetEvent("garage:spawned")
AddEventHandler("garage:spawned", function(netId)
    -- ...and now continue the logic you started somewhere above
end)
TriggerServerEvent("garage:spawn", "adder")

-- Lua, server
RegisterNetEvent("garage:spawn")
AddEventHandler("garage:spawn", function(model)
    local src = source
    -- ...
    TriggerClientEvent("garage:spawned", src, netId)
end)
```

```haxe
// Haxe, client — one line, and the code stays in one place
var netId:Int = Callbacks.await("garage:spawn", "adder");

// Haxe, server — just return the answer
Callbacks.register("garage:spawn", (source, args) -> {
    var player = Player.fromSource(source);
    if (player == null) return 0;
    var vehicle = Vehicle.create(args[0], player.coords, player.ped.heading);
    return vehicle.netId;
});
```

Under the hood it's a correlation key layered over FiveM's own events — no external
dependency — and it works client→server *and* server→client. `await` suspends only the
calling coroutine (a thread, event handler, command or export), so the rest of the
resource keeps running while it waits.

### 6. Shared code that is actually shared

FiveM's `shared_script` gives you one Lua file loaded into two runtimes. It does **not**
give you any guarantee that the two sides agree about what's in it. So the model
whitelist gets copy-pasted into the client for the UI, drifts from the server's copy,
and now players see cars they can't spawn.

```haxe
// src/Shared/Vehicles.hx — compiled into BOTH client.lua and server.lua
class Vehicles {
    public static final allowed = ["adder", "zentorno", "t20"];

    public static function isAllowed(model:String):Bool
        return allowed.indexOf(model.toLowerCase()) != -1;
}
```

```haxe
// Client — same function, same list
if (!Vehicles.isAllowed(model)) { Ui.notify("~r~Not on the list."); return; }

// Server — same function, same list, and it's still the authority
if (!Vehicles.isAllowed(model)) return 0;
```

Rename `isAllowed`, change its signature, drop a model from the list — **both builds fail
or both builds update.** One side can never quietly fall behind the other.

### 7. Everything else the compiler does for free

| | Lua | Haxe |
|---|---|---|
| **Rename a function** | grep, pray | compiler finds every call site |
| **"What does this return?"** | read the wiki, guess | hover in your editor |
| **Autocomplete on natives** | none | every native, with its docs inline |
| **`nil` handling** | `if x ~= nil and x ~= 0` everywhere | `Null<T>`, `?.`, and null-safety checks |
| **Structured data** | untyped tables | typedefs, enums, generics, real classes |
| **Dead code / unused imports** | ships to the server | flagged at build time |
| **Refactoring across files** | manual | safe by construction |

### 8. …and it costs nothing at runtime

This is the part people expect a catch on. There isn't one. Natives are `extern`
declarations mapped onto FiveM's Lua globals, so the compiler emits the call you would
have written by hand.

Straight from [`examples/basic-resource`](examples/basic-resource) — Haxe in, Lua out:

```haxe
// src/Client/ClientMain.hx
CoreEvents.triggerServerEvent("hx_resource:server_ping", "Hello from client");
```

```lua
-- dist/client/client.lua, generated
_G.TriggerServerEvent("hx_resource:server_ping", "Hello from client")
```

No wrapper table, no dispatch layer, no reflection. The math types (`Vector3`, `Rgba`,
`Hash`, the `enum abstract`s) are `abstract`s over plain data with `inline` methods, so
they compile away entirely; the entity wrappers are thin objects around the raw handle
you'd have been passing around anyway. You only pay for what you call.

### When Lua is still the right call

Worth saying plainly: if you're writing a 20-line resource, editing files live on a
running server, or pasting a snippet off the forums to try in the next five minutes,
Lua's lack of a build step wins. `fivem-hx` pays off when a resource gets big enough
that *you* stop being able to hold all of it in your head — which, for most gamemodes,
is somewhere around week three.

---

## Install

```bash
haxelib install fivem-hx
```

Working on the library and a resource at the same time? Use `haxelib dev` instead — see
[docs/getting-started.md](docs/getting-started.md#installing-the-library).

**Requirements:** [Haxe 4.3+](https://haxe.org/download/), a FiveM or RedM server to run
against, and Python 3.9+ *only* if you want to regenerate the natives yourself.

## Quick start

```haxe
// src/Client/ClientMain.hx
import fivem.client.Core;

class ClientMain {
    static function main() {
        Commands.register("whereami", (_, _) -> {
            var coords = LocalPlayer.coords();
            Ui.notify('You are at ${coords.toString()}');
        });
    }
}
```

```hxml
# client.hxml
-lib fivem-hx
-p src
-main ClientMain
-lua dist/client/client.lua
```

```bash
haxe client.hxml
```

Point your `fxmanifest.lua` at `dist/client/client.lua` and you're running. The full
walkthrough — manifest, server side, build layout — is in
[docs/getting-started.md](docs/getting-started.md).

A single `import fivem.client.Core;` (or `fivem.server.Core`) brings the whole core layer
into scope. Every name in it is a type alias, so the import costs nothing.

## What's in the box

- **Every native, typed** — the complete GTA and CitizenFX native surface for client,
  server and shared, regenerated on demand from the live FiveM docs (`generate.py`).
- **An object-oriented core layer** — `Entity`, `Ped`, `Vehicle`, `Player`, `Players`,
  `World`, `Zones`, `Blip`, `Ui`, `Nui`, `Controls`, `Raycast`, `Streaming`, `Thread`,
  `Events`, `Callbacks`, `StateBag`, `Kvp`, `Exports`, `Logger`, and the math types.
  See [docs/core-api.md](docs/core-api.md).
- **Correct apiset separation** — client-only, server-only and shared natives kept apart,
  with shared natives merged into both sides so nothing is unreachable
  ([why](docs/architecture.md)).
- **Multi-return natives that actually return everything** — FiveM's Lua runtime appends
  out-parameters to the return values; `NativeOutputs` models that with `@:multiReturn`
  so results like ground-Z and shape tests aren't silently thrown away.
- **Zone system** — circles, spheres, boxes and polygons with `onEnter`/`onExit`/`onInside`
  callbacks, on both client and server — all zones share one adaptive poll loop instead
  of one thread each.
- **Database driver** — `fivem.server.db` wraps [oxmysql](https://overextended.dev/oxmysql)
  as a `sys.db.Connection`, usable directly or with the `record-macros` ORM
  ([docs](docs/database.md)).
- **Working example resources** — not snippets: they compile, and they run.

## Examples

| Example | What it shows |
|---|---|
| [`examples/core-demo`](examples/core-demo) | The core API end to end — zones, blips, keybinds, server-authoritative vehicle spawning through callbacks, the player registry, state bags |
| [`examples/basic-resource`](examples/basic-resource) | The smallest complete client+server resource: native calls, commands, an event across the boundary |
| [`examples/mysql-example`](examples/mysql-example) | The oxmysql driver: schema creation, loading and saving a row through a plain Haxe model |

## Project structure

```
fivem-hx/
├── src/fivem/
│   ├── client/          package fivem.client — client-only + shared natives
│   │   └── core/         Entity, Ped, Vehicle, Player, Zones, Ui, Raycast, ...
│   ├── server/          package fivem.server — server-only + shared natives
│   │   ├── core/         Entity, Ped, Vehicle, Player, Players, Zones, Http, ...
│   │   └── db/           oxmysql-backed sys.db.Connection driver
│   └── shared/          package fivem.shared — shared natives + hand-written externs
│       ├── core/         Thread, Events, Commands, StateBag, Kvp, Resource, ...
│       ├── util/         Vector2/3/4, Quaternion, Rgba, Hash, MathUtil, Logger, ...
│       └── colshape/     Sphere, Circle, Box, Poly
├── examples/             basic-resource, core-demo, mysql-example
├── docs/                 in-depth guides (see below)
├── scripts/
│   └── Publish-Docs.ps1  builds the Dox API site and pushes it to the docs branch
├── .github/workflows/    CI (typecheck + build example) and tag-triggered releases
├── generate.py           regenerates src/fivem/*/natives from FiveM's docs
├── test-*.hxml           type-check-only builds for each package
├── CONTRIBUTING.md
├── CHANGELOG.md
└── haxelib.json
```

One classpath, one package tree, mirroring how the Haxe standard library is organized —
`haxelib install` and go, no juggling three separate packages.
[docs/architecture.md](docs/architecture.md) has the full rationale.

## Documentation

The generated **[API reference](https://kleppinger.github.io/fivem-hx/)** covers the
*what* — every class and method signature under `fivem.client`, `fivem.server` and
`fivem.shared`, browsable and searchable. The guides below cover the *how*.

| Guide | What's in it |
|---|---|
| [Getting Started](docs/getting-started.md) | Install, wire up your first resource |
| [Core API](docs/core-api.md) | The OOP layer: entities, players, vehicles, zones, vectors, callbacks, state bags |
| [API Guide](docs/api-guide.md) | Calling conventions, player source types, vectors, multi-return natives |
| [Architecture](docs/architecture.md) | Repo layout rationale, apiset merging, how externs compile to zero-cost calls |
| [Database (oxmysql)](docs/database.md) | The `sys.db.Connection` driver, direct queries, wiring up `record-macros` |
| [Haxe + FiveM Tips](docs/haxe-fivem-tips.md) | Lua runtime versions, debugging, structuring client/server/shared code |
| [Dev Experience](docs/dev-experience.md) | Editor setup, fast builds, watch loops, debugging without source maps |
| [Regenerating Natives](docs/regenerating-natives.md) | How `generate.py` works, its limitations, how to extend it |
| [Versioning](docs/versioning.md) | What's PATCH/MINOR/MAJOR when most of the API is generated |
| [Publishing](docs/publishing.md) | Release checklist, tag-triggered packaging, `haxelib submit` |
| [Troubleshooting](docs/troubleshooting.md) | Common compiler and runtime errors, explained |

See also [CONTRIBUTING.md](CONTRIBUTING.md) and [CHANGELOG.md](CHANGELOG.md).

## Working on the library

**Type-check every package** — no build target needed, the fastest way to confirm a
change to `generate.py` or a manual edit under `src/` didn't break anything:

```bash
haxe test-shared.hxml && haxe test-server.hxml && haxe test-client.hxml
```

**Regenerate the natives** — downloads the live FiveM/RedM native databases and rewrites
everything under `src/fivem/*/natives/` plus the `Natives.hx` entry points. Hand-written
files are left alone:

```bash
python generate.py
```

Details in [docs/regenerating-natives.md](docs/regenerating-natives.md).

## Contributing

Issues and PRs welcome at
[github.com/Kleppinger/fivem-hx](https://github.com/Kleppinger/fivem-hx).
[CONTRIBUTING.md](CONTRIBUTING.md) covers dev setup, the PR checklist, and where a given
fix actually belongs (generator vs. generated output vs. hand-written externs) — that
last part matters more here than in a typical repo. Every push and PR runs
[CI](.github/workflows/ci.yml): type-check all three packages, build both example
resources for client and server, and verify the generated Lua parses.

## Versioning & releases

Follows [SemVer](https://semver.org/), scoped for a mostly-generated externs library in
[docs/versioning.md](docs/versioning.md) — notably, a native's signature changing upstream
is a MAJOR change even when it only comes from re-running the generator. Release history
lives in [CHANGELOG.md](CHANGELOG.md).

Maintainers cutting a release: [docs/publishing.md](docs/publishing.md). Pushing a
`vX.Y.Z` tag runs [the release workflow](.github/workflows/release.yml), which verifies
the tag matches `haxelib.json`, type-checks, and attaches a release zip to the GitHub
Release. `haxelib submit` stays a manual last step — haxelib's CLI has no
non-interactive auth flow to script around.

## License

[MIT](LICENSE)
