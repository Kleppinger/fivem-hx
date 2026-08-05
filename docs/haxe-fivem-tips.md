# Haxe + FiveM: General Tips

Notes on the parts of writing FiveM scripts in Haxe that aren't specific to
this library — things that apply to any Haxe-to-Lua FiveM project.

## Why Haxe for FiveM scripting at all

FiveM scripting (Lua) has no compile-time checking: a typo'd native name, a
swapped argument order, or a wrong type is a runtime error you find by
playing the game. Haxe gives you:

- Compile-time checking of native names, argument counts, and (as far as the
  generated externs allow) argument types.
- Real refactoring — rename a function, find every call site.
- Shared code between client and server without copy-pasting: put logic in
  `fivem.shared` (or your own shared package) and `import` it from both
  builds.
- One language across client, server, and (if you build a NUI) a JS
  frontend, instead of context-switching between Lua and JS/TS per side.

The tradeoff is an extra compile step and one layer of indirection between
what you write and what actually runs — the rest of this doc is mostly
about managing that.

## FiveM's Lua runtimes, and why it matters to Haxe

FiveM ships two Lua runtimes you can opt into per-resource via
`fxmanifest.lua`:

```lua
lua54 'yes'   -- Lua 5.4 (recommended for new resources)
-- or omit it for the legacy Lua runtime (closer to 5.3/LuaJIT-ish behavior)
```

Both are Lua 5.3 or newer, which matters for one thing in particular.

### The client sandbox has no `os` library

`Math.random()` and `Std.random()` make Haxe emit
`_G.math.randomseed(_G.os.time())` at *file scope*. It runs at load time, so
the resource dies before reaching any of its own code — even if the random
call is never made. Use `MathUtil.random`, `MathUtil.randomInt` and
`MathUtil.randomFloat`, which call Lua's `math.random` directly.

`Date` reaches for `os.time`/`os.date` too, but from inside its own methods,
so referencing the class is harmless and only actually *using* it fails
client-side. The server runtime keeps `os`, so `Date` is fine there. For
elapsed time in either environment, `Runtime.getGameTimer()` and
`Timing.Stopwatch` need nothing from `os`.

### Never use Haxe's bitwise operators

`|`, `&`, `^`, `~`, `<<`, `>>` and `>>>` on `Int` do **not** compile to Lua's
native operators. Haxe's Lua target routes them through a `_hx_bit` shim it
inlines into the output, and that shim opens with:

```lua
local hasBit32, bit32 = pcall(require, 'bit32')
...
  error("Failed to load bit or bit32")
```

Lua 5.3 and 5.4 have native bitwise operators and therefore ship neither
`bit32` nor `bit`. The shim runs at load time, so one bitwise operation
anywhere in the resource stops it starting:

```
SCRIPT ERROR: @your-resource/dist/server/server.lua:5705:
  Failed to load bit or bit32
```

No compiler define avoids this. `-D lua_ver=5.3`, `-D lua_ver=5.4`,
`-D lua-vanilla` and `-D luajit` were each tested against Haxe 4.3.7 and all
still emit the shim — it is a fixed asset the generator inlines whenever it
sees a bitwise operation, independent of the target dialect.

Use [`fivem.shared.util.Bits`](../src/fivem/shared/util/Bits.hx) instead,
which emits Lua's own operators directly:

```haxe
var flags = Bits.bor(WorldGeometry, Vehicles);
if (Bits.hasFlag(flags, Vehicles)) { ... }
```

Watch out for std functions that use bitwise operators internally and drag
the shim in without you writing a single `|` — `StringTools.hex` is the one
this library tripped over. CI checks that no generated output contains the
shim.

`fivem-hx` itself is free of Haxe bitwise operators, so the library alone
will never trigger this.

## Debugging

- `trace(...)` compiles to `print(...)`. Client-side output shows up in the
  F8 console; server-side in the server console/log.
- There's no source-map support for the Lua target — a runtime error's line
  number points at the *compiled* `dist/*.lua`, not your `.hx` source. Keep
  functions small and use descriptive `trace()` markers around anything
  you'd want to bisect; it's the fastest way back to the right `.hx` line
  when a traceback alone isn't enough.
- A traceback pointing into Haxe's Lua runtime helpers (`_hx_...` symbols)
  almost always means a type mismatch that the compiler couldn't catch —
  most commonly the `String` vs `Int` player-source issue (see
  [api-guide.md](api-guide.md#player-source-string-vs-int)), or a `Dynamic`
  value used somewhere Haxe couldn't check for you.

## Structuring client/server/shared code

Mirror the library's own layout in your resource:

```
src/
├── client/   -- package client, compiled into client.hxml's -main entry
├── server/   -- package server
└── shared/   -- package shared, imported from both
```

Keep game-state types, constants, and pure logic in `shared/` and import
them from both sides — that's the whole point of doing this in Haxe instead
of two independent Lua files. `-p src` in both `client.hxml` and
`server.hxml` (pointed at the same root) makes `shared` visible to both
builds; DCE means the client build won't drag in anything the client build
doesn't actually reference.

## Vectors and coordinates

GTA natives frequently take or return `Vector3`/`Vector4`-shaped data,
which the generator maps to `Dynamic` since the JSON schema doesn't
distinguish "three floats" from "a Lua table with x/y/z" precisely enough
to model automatically (see
[api-guide.md](api-guide.md#multi-return-and-out-parameter-natives) for the
`@:multiReturn` escape hatch). If you're doing enough vector math to want
real typing, consider a small `abstract` wrapper around the raw table
rather than threading `Dynamic` through your own code:

```haxe
abstract Vec3(Dynamic) {
    public var x(get, never):Float;
    public var y(get, never):Float;
    public var z(get, never):Float;
    inline function get_x() return untyped this.x;
    inline function get_y() return untyped this.y;
    inline function get_z() return untyped this.z;
}
```

## Resource size and startup cost

Because externs generate no runtime code (see
[architecture.md](architecture.md#externs-are-free)), the compiled output
size scales with what your *own* code calls, not with the size of this
library. A resource that only calls a handful of natives compiles to a
small file even though it links against thousands of extern declarations.
