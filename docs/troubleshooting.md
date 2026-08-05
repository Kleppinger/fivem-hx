# Troubleshooting

## Compile-time

### `Invalid -main : X does not have static function main`

You pointed `-main`/`-m` at a class with no `static function main()` — this
library's `Natives.hx`/native extern classes aren't entry points, they're
libraries. Point `-main` at your own resource's entry class, or drop
`-main` entirely and use `--no-output --macro include('some.package')` to
just typecheck a package (see
[dev-experience.md](dev-experience.md#keeping-the-compiler-honest-type-check-only-builds)).

### `Unexpected keyword "override"` / `"var"` / `"dynamic"` in a native call

A handful of FiveM natives use Haxe reserved words as parameter names in
their upstream docs (`override`, `var`, `dynamic`). `generate.py` renames
these with a trailing underscore (`override_`, `var_`, `dynamic_`) when
generating externs. If you hit this on a *freshly regenerated* file, the
native's parameter name isn't in the `HAXE_KEYWORDS` set in `generate.py`
yet — add it and regenerate.

### A generated file fails to parse with an error deep inside a doc comment

FiveM's native descriptions sometimes contain inline `/* ... */` examples
(usually Lua code snippets), which prematurely close the `/** ... */` doc
comment Haxe expects around each native. `generate.py` neutralizes `/*` and
`*/` inside descriptions before embedding them — if you see this on freshly
generated output, the sanitization step (search `generate.py` for
`Nested /* */ sequences`) needs to run before the description is
line-wrapped, not after.

### Duplicate field errors in a generated `Natives.hx`

This was a real bug in an earlier version of the generator: a namespace
present in both the shared and env-specific native buckets (like `CFX`)
produced two `public static var cfx = ...;` lines. Fixed by merging shared
natives into each env's bucket before generating classes — see
[architecture.md](architecture.md#the-apiset-split-and-why-merging-matters).
If you see this again after a generator change, the merge step was likely
skipped or reordered.

### A native call's argument type doesn't match

Usually one of:

- **`String` expected, `Int` given (or vice versa)** — almost always the
  player-source inconsistency, see
  [api-guide.md](api-guide.md#player-source-string-vs-int).
- **`Dynamic` where you expected something concrete** — the generator
  couldn't infer a precise type from the native's JSON schema (common for
  entity handles, vectors, and `Any`-typed natives) and fell back to
  `Dynamic`. This isn't wrong, just untyped — see
  [api-guide.md](api-guide.md#entitypedvehicle-handles).

## Runtime

### `Error parsing script ... 'end' expected ... near '('`

The resource fails to load at all, before a line of your code runs, and the
offending Lua looks like this:

```lua
onEnter = function(_, ...) return function(_, player)
  ...
end(...) end
```

Calling a function *literal* without parentheses around it — `function ...
end(...)` — is a syntax error in Lua; it needs `(function ... end)(...)`.

You get there by assigning a closure to a **function-typed field of an
anonymous structure**:

```haxe
typedef Options = { var ?onEnter:(player:Player) -> Void; }

doSomething({onEnter: player -> trace(player.name)});   // emits broken Lua
```

Haxe's Lua target treats a function-typed field of an anonymous structure as
a *method*: it calls it with colon syntax (`opts:onEnter(...)`) and therefore
wraps the assigned closure in a self-stripping adapter — and it emits that
adapter without the parentheses Lua requires.

Declare the options type as a `@:structInit` class instead. The call site
keeps its object-literal syntax, but the literal compiles to an ordinary
constructor call and the field to an ordinary variable:

```haxe
@:structInit class Options {
    public var onEnter:(player:Player) -> Void = null;
}
```

Fields with a default value are optional, so `{onEnter: ...}` still works
with the others omitted. This is why `fivem.client.core.Zones.ZoneOptions`
and its server counterpart are classes rather than typedefs.

Note that a structure whose fields are all *data* is unaffected — this only
applies to fields holding functions.

### `module 'hxsimdjson' not found`

```
SCRIPT ERROR: @your-resource/dist/server/server.lua:264:
  module 'hxsimdjson' not found
```

You used `haxe.Json` somewhere. **Don't** — not on FiveM.

Haxe's Lua target overrides `haxe.format.JsonParser` with a binding to
`hxsimdjson`, a native Lua module FXServer does not ship. The `require` for
it is emitted unconditionally at the top of the compiled file, so merely
*referencing* `haxe.Json` anywhere in the resource stops it loading — even
if the code path never runs.

Use [`fivem.shared.util.Json`](../src/fivem/shared/util/Json.hx) instead. It
encodes with `haxe.format.JsonPrinter` (plain cross-platform Haxe, no native
binding) and decodes with FiveM's own always-present `json` global:

```haxe
var text = Json.encode({action: "open", items: items});
var back = Json.decode(text);
```

One asymmetry to know about: `decode` returns FiveM's raw Lua tables, so
object fields read fine with dot access but arrays come back 1-based rather
than as Haxe arrays. Use `Json.decodeArray` for lists.

The same trap applies to any Haxe std API with a native Lua binding behind
it. CI allowlists the modules the generated Lua is allowed to `require`, so
a new one shows up as a build failure rather than a dead server.

### `attempt to call a nil value (global 'bit')`

Lua version mismatch between how Haxe compiled bitwise operators and what
FiveM's runtime actually provides. See
[haxe-fivem-tips.md](haxe-fivem-tips.md#fivems-lua-runtimes-and-why-it-matters-to-haxe).

### A native "does nothing" or silently returns the wrong thing

Check whether it's a multi-return or out-parameter native being called like
an ordinary function — the generator doesn't detect these automatically.
See [api-guide.md](api-guide.md#multi-return-and-out-parameter-natives).

### A traceback points at `_hx_...` internals, not my code

That's Haxe's Lua runtime support code, not a bug in this library by
default — it usually means a value crossed into Lua-land with the wrong
shape (most often a `Dynamic` misuse). Check what you last passed into a
native. There's no source-map support for the Lua target, so the line
number in the traceback is the compiled file, not your `.hx` — see
[haxe-fivem-tips.md](haxe-fivem-tips.md#debugging) for how to narrow it
down.

### `resource restart` doesn't pick up my changes

You rebuilt the `.hx` but not the `.lua`, or FiveM is loading a stale copy
of the compiled file (e.g. wrong path in `fxmanifest.lua`, or a `dist/`
directory from a previous build layout still on disk). Confirm
`fxmanifest.lua`'s `client_script`/`server_script` paths match your hxml's
`-lua` output path exactly, then rebuild before restarting.

## Still stuck?

Open an issue at
[github.com/Kleppinger/fivem-hx](https://github.com/Kleppinger/fivem-hx/issues)
with the exact compiler/runtime error, your `.hxml`, and the Haxe version
(`haxe --version`).
