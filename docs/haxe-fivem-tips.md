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

Haxe's `-lua` target generates code for a specific Lua dialect and can be
steered with compiler defines:

- `-D lua_ver=5.1` / `5.2` / `5.3` — pick which Lua version's stdlib shims
  to emit (affects things like bitwise operators, which aren't native
  syntax before Lua 5.3).
- `-D lua-vanilla` — avoid LuaJIT-specific assumptions.

If your compiled script throws something like `attempt to call a nil value
(global 'bit')`, that's a version mismatch between what Haxe assumed and
what FiveM's runtime actually provides — check the `lua54` setting in your
`fxmanifest.lua` against the `-D lua_ver` you're compiling with, and adjust
one side or the other. When in doubt, `lua54 'yes'` + no `lua_ver` override
is the modern, native-bitwise-operator combination and the one to reach for
first.

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
