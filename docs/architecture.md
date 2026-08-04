# Architecture

## Why a single classpath

```
src/fivem/
├── client/            package fivem.client
│   ├── Natives.hx      aliases into fivem.client.natives.*
│   └── natives/         one extern class per native namespace (Ped, Vehicle, Entity, ...)
├── server/            package fivem.server
│   ├── Natives.hx
│   └── natives/
└── shared/            package fivem.shared
    ├── Natives.hx
    ├── CoreEvents.hx   hand-written externs, not generated (see below)
    └── natives/
```

The repo used to be three separate haxelib-shaped folders
(`fivem-client/`, `fivem-server/`, `fivem-shared/`), each with its own
`src/fivem/<env>` tree. That's redundant: Haxe already resolves packages from
directory structure under a *single* classpath root, so `fivem.client`,
`fivem.server` and `fivem.shared` can happily coexist under one `src/` the
same way the Haxe standard library itself organizes per-target code
(`std/js`, `std/cpp`, `std/lua`, ...) under one root. One `haxelib.json`, one
version, one thing to `haxelib install`.

This also means Haxe's dead code elimination and typing work across the
whole tree instead of three disconnected projects — if you only ever call
`fivem.client.Natives.player.playerPedId()`, nothing else under `natives/`
generates any runtime code (see "Externs are free" below).

## The apiset split, and why merging matters

FiveM's native database tags each native with an `apiset`: `client`,
`server`, or `shared`/`any`. `generate.py` buckets every native into one of
three databases (`db["client"]`, `db["server"]`, `db["shared"]`) based on
that tag, then generates one extern class per native *namespace*
(`CFX`, `PED`, `VEHICLE`, ...) per bucket.

The catch: FiveM reuses namespace names across apisets. `CFX` in particular
has both server-only natives (`DELETE_ENTITY`, `GET_PLAYER_NAME`, ...) and
shared natives (`GET_CURRENT_RESOURCE_NAME`, `ADD_CONVAR_CHANGE_LISTENER`,
...). If client/server natives were generated independently of shared, you'd
end up with two same-named classes — `fivem.server.natives.Cfx` and
`fivem.shared.natives.Cfx` — and `Natives.hx` could only expose one of them
under the field name `cfx`. (This is exactly the bug the original
three-repo version had: `Natives.hx` declared `public static var cfx` twice,
which doesn't even compile.)

The fix is in `generate.py`: before generating per-namespace classes, shared
natives are merged into each env's own bucket namespace-by-namespace:

```python
for env in ("server", "client"):
    for ns, natives in db["shared"].items():
        merged = db[env].setdefault(ns, {})
        merged.update({**natives, **merged})
```

So `fivem.server.natives.Cfx` ends up containing *both* the server-only and
the shared CFX natives, and there's exactly one `Cfx` class per env — no
collision, no duplicate fields, and shared natives stay reachable from every
context.

## `Natives.hx` — a namespace directory, not a re-export

Each `Natives.hx` is generated as:

```haxe
package fivem.client;

class Natives {
    public static var ped = fivem.client.natives.Ped;
    public static var vehicle = fivem.client.natives.Vehicle;
    // ...
}
```

`ped` here isn't calling anything — it's a *class reference* (`Class<Ped>`
in Haxe's type system), assigned once as a static field so you can write
`Natives.ped.someMethod()` instead of importing every single namespace class
by hand. Haxe resolves the static call at compile time through the
reference, so this compiles down to a direct call — there's no indirection,
reflection, or lookup table at runtime.

## Externs are free

Every native namespace class is declared as:

```haxe
@:native("_G")
extern class Cfx {
    @:native("GET_CURRENT_RESOURCE_NAME")
    static function getCurrentResourceName():String;
}
```

Two things stack here:

- `extern class` means Haxe never generates a runtime body for `Cfx` at
  all — no table, no metadata, nothing. You only pay for the natives you
  actually call.
- `@:native("_G")` tells the compiler that, at runtime, *the class itself*
  maps to Lua's global table `_G`. So `Natives.cfx` (a `Class<Cfx>` value)
  compiles to a direct reference to `_G`, and
  `Natives.cfx.getCurrentResourceName()` compiles to
  `_G.GET_CURRENT_RESOURCE_NAME()` — i.e. exactly the same as calling the
  native directly, with zero wrapper overhead. You can check this yourself
  in any compiled `dist/*.lua` output.

## `CoreEvents.hx` — the one hand-written file

`RegisterCommand`, `RegisterNetEvent`, `AddEventHandler`, and
`TriggerClientEvent` aren't in FiveM's natives database — they're Lua
globals FiveM injects directly, documented separately from the native
reference. `generate.py` has nothing to generate them from, so they're
hand-written in `src/fivem/shared/CoreEvents.hx`, deliberately kept out of
`natives/` so re-running the generator never touches or overwrites it.

If you find other hand-documented (non-native) FiveM globals you need,
that's the file to extend.

## Multi-target by construction

Because `fivem.shared` (and, in principle, any Haxe module that doesn't
touch the `natives` externs) is just ordinary typed Haxe code, nothing stops
you from compiling shared game logic to a non-Lua target — JS for a NUI
frontend, or `--interp`/hashlink for fast unit tests that don't need a live
game server. The externs only resolve at the point you actually call a
native; code that doesn't touch them is portable by default.
