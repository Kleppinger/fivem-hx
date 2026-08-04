# fivem-hx

Haxe externs for FiveM/RedM natives.

## Layout

Single classpath (`src/`), package per apiset — the standard Haxe monorepo
shape, mirroring how the Haxe standard library itself is organized:

```
src/fivem/
├── client/            package fivem.client
│   ├── Natives.hx      -> aliases to fivem.client.natives.*
│   └── natives/         one extern class per native namespace (Ped, Vehicle, ...)
├── server/            package fivem.server
│   ├── Natives.hx
│   └── natives/
└── shared/            package fivem.shared
    ├── Natives.hx
    ├── CoreEvents.hx   hand-written externs (RegisterCommand, AddEventHandler, ...)
    └── natives/
```

Natives available on both client and server (apiset `shared`/`any`) are
merged into each env's own `natives/*.hx` classes by `generate.py`, so e.g.
`fivem.server.natives.Cfx` contains both server-only and shared CFX natives.

Use from a resource's `fxmanifest.lua`-driven build by adding this as a
haxelib dependency and importing `fivem.client.Natives` / `fivem.server.Natives`
/ `fivem.shared.Natives`.

## Regenerating natives

```
python generate.py
```

Downloads the live FiveM/RedM native databases and rewrites everything under
`src/fivem/*/natives/` and the `Natives.hx` entry points. Hand-written files
(`CoreEvents.hx`) are untouched.

## Type-checking

```
haxe test-shared.hxml
haxe test-server.hxml
haxe test-client.hxml
```
