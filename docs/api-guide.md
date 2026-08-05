# API Guide

This page covers the calling conventions and the gotchas. For the exhaustive
list of what's actually available — every class, method, and signature —
browse the generated [API reference](https://kleppinger.github.io/fivem-hx/)
(see [api-reference.md](api-reference.md) for how it's built).

## Calling natives

Every native is reachable two ways. Pick whichever reads better at the call
site:

```haxe
// via the Natives namespace directory
fivem.client.Natives.player.playerPedId();

// or import the specific native class directly
import fivem.client.natives.Player;
Player.playerPedId();
```

`import ... as Alias` keeps call sites short without polluting scope:

```haxe
import fivem.client.Natives as Client;
import fivem.server.Natives as Server;
import fivem.shared.Natives as Shared;

Client.entity.getEntityCoords(ped, true);
Server.cfx.getPlayerName(playerSrc);
Shared.cfx.getCurrentResourceName();
```

Method names are the native's `SCREAMING_SNAKE_CASE` name from the natives
database converted to `camelCase` (`GET_ENTITY_COORDS` → `getEntityCoords`).

The `@:native(...)` metadata holds the name the native is *actually exposed
under in FiveM's Lua runtime*, which is a third spelling again:
`GetEntityCoords`. The database name does not exist at runtime — CitizenFX
generates its Lua bindings by transforming it, and only the transformed name
is registered on `_G`. Calling `_G.GET_ENTITY_COORDS(...)` fails with
`attempt to call a nil value`.

The transform lives in `to_lua_name()` in `generate.py`, ported from
CitizenFX's own `ext/natives/codegen_out_lua.lua`. Two cases a naive
PascalCase conversion gets wrong:

| database name | Lua name |
|---|---|
| `GET_GROUND_Z_FOR_3D_COORD` | `GetGroundZFor_3dCoord` |
| `GET_PLAYER_WEAPON_DEFENSE_MODIFIER_2` | `GetPlayerWeaponDefenseModifier_2` |
| `_ADD_BLIP_FOR_AREA` | `AddBlipForArea` |

An underscore before a *digit* survives, because CitizenFX's pattern matches
letters only; a leading underscore is consumed, because a letter follows it.

## Commands and events (`CoreEvents`)

```haxe
import fivem.shared.CoreEvents;

CoreEvents.registerCommand("heal", (source, args, raw) -> {
    trace('healing player $source');
}, /* restricted */ false);

CoreEvents.registerNetEvent("myresource:ping");
CoreEvents.addEventHandler("myresource:ping", (message:String) -> {
    trace('got: $message');
});

// server -> client
CoreEvents.triggerClientEvent("myresource:ping", targetSource, "hi");
```

`addEventHandler`'s handler is typed as `haxe.Constraints.Function`, which
accepts any Haxe function literal — write the handler with whatever
parameters the event actually carries; Haxe won't check the arity or types
against the event name (there's nothing in FiveM's event system to check
against), so get the signature right by checking whatever triggers the
event.

There's no `TriggerServerEvent` or `TriggerEvent` extern yet — add them to
`CoreEvents.hx` the same way if you need them (see
[architecture.md](architecture.md#coreeventshx--the-one-hand-written-file)).

## Player source: `String` vs `Int`

This is the single most common type error you'll hit. FiveM is inconsistent
about it, and the natives database is inconsistent right back:

- **Server-side natives** almost always take the player source as a
  `String` (parameter typically named `playerSrc`), even though at the Lua
  call site you'd normally pass the bare number.
- **Command handlers** (`RegisterCommand`, both sides) give you the source
  as an `Int`.

So the common pattern is an explicit conversion at the boundary:

```haxe
CoreEvents.registerCommand("greet", (source, args, raw) -> {
    var name = fivem.server.Natives.cfx.getPlayerName(Std.string(source));
    trace('hello, $name');
}, false);
```

If a native call fails to typecheck with a `String` vs `Int` mismatch,
that's this — wrap with `Std.string()` or `Std.parseInt()` as needed rather
than reaching for `cast` or `Dynamic`.

## Entity/ped/vehicle handles

Handles are runtime integers in Lua, but the generator maps ambiguous
native types (`Any`, `Any*`, `Vector3`, `object`) to `Dynamic` rather than
guessing wrong. In practice this means:

```haxe
var ped:Dynamic = Client.player.playerPedId();
var coords = Client.entity.getEntityCoords(ped, true);
```

`ped` typechecks against any native parameter typed `Dynamic`, which covers
the overwhelming majority of entity-handle parameters. If you want stronger
typing in your own code, wrap it: `var ped:Int = cast Client.player.playerPedId();`

## Arrays and tables

Natives that return a list (`GET_ALL_VEHICLES`, `GET_ALL_PEDS`, ...) are
typed `Dynamic` because the underlying return is a Lua table, not a typed
Haxe `Array`. Convert explicitly when you need real Array semantics:

```haxe
var raw:Dynamic = fivem.server.Natives.cfx.getAllVehicles();
var vehicles:Array<Int> = untyped raw;
```

## Multi-return and out-parameter natives

Some natives return more than one value, or take "output" parameters that
Lua fills in by reference (common in the raycasting/shapetest and vehicle
color natives). The generator has no way to detect this from the JSON
schema alone, so those show up as ordinary typed parameters/returns that
won't behave like you expect if you call them like a normal function.

The ones the core API needs are already declared this way in
[`fivem.client.NativeOutputs`](../src/fivem/client/NativeOutputs.hx) — check
there before writing your own. If you hit one that isn't, model it explicitly
with a [`@:multiReturn`](https://haxe.org/manual/target-lua-multireturn.html)
extern instead of trusting the generated signature:

```haxe
@:multiReturn extern class ShapeTestResult {
    var hit:Bool;
    var endCoords:Dynamic;
    var surfaceNormal:Dynamic;
    var materialHash:Int;
    var entityHit:Dynamic;
}

@:native("_G")
extern class ShapeTestNatives {
    @:native("GET_SHAPE_TEST_RESULT_INCLUDING_MATERIAL")
    static function getShapeTestResultIncludingMaterial(handle:Int):ShapeTestResult;
}
```

This is a Haxe/Lua-target feature, not something specific to this library —
worth knowing about any time a FiveM native's docs mention returning
multiple values.

## Full example

[examples/basic-resource](../examples/basic-resource) exercises most of the
above: a client command reading player/entity natives, a server command
reading a native with a `String` player source, and a client event fired
from the server.
