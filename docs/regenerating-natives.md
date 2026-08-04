# Regenerating Natives

## What it does

```
python generate.py
```

`generate.py` downloads FiveM's live native databases —
[`natives.json`](https://runtime.fivem.net/doc/natives.json) (base GTA
natives) and [`natives_cfx.json`](https://runtime.fivem.net/doc/natives_cfx.json)
(CitizenFX-specific natives) — and rewrites everything under
`src/fivem/*/natives/` plus the three `Natives.hx` entry points from
scratch. It needs `pip install requests` and network access to the two URLs
above.

It does **not** touch `src/fivem/shared/CoreEvents.hx` — that file is
hand-written (see [architecture.md](architecture.md#coreeventshx--the-one-hand-written-file))
and deliberately outside the `natives/` tree the generator owns.

## Pipeline, step by step

1. **Fetch & merge sources.** Both JSON databases are merged into one
   `all_namespaces` dict (`{**gta_data, **cfx_data}`).
2. **Bucket by apiset.** Every native is sorted into `db["client"]`,
   `db["server"]`, or `db["shared"]` based on its `apiset` field
   (`server` → server, `shared`/`any` → shared, anything else → client —
   see the comment in the script for the exact heuristic). Natives whose
   `name` starts with `_0x` (i.e. no known friendly name) are skipped.
3. **Merge shared into client/server.** Namespace-by-namespace, shared
   natives are folded into each env's own bucket so a namespace like `CFX`
   that exists in both doesn't produce two colliding classes (see
   [architecture.md](architecture.md#the-apiset-split-and-why-merging-matters)
   for why this step exists).
4. **Generate one extern class per namespace per env**
   (`generate_sub_classes`), writing `src/fivem/<env>/natives/<Namespace>.hx`.
   Each native becomes one `static function`, doc comment included.
5. **Generate the `Natives.hx` directory** for each env
   (`write_main_entry`), one `public static var <namespace> = ...;` line per
   namespace class.

## Known limitations (things it does *not* try to do)

- **No `@:multiReturn` detection.** Natives that return multiple values or
  fill output parameters by reference are generated as ordinary typed
  signatures, which is wrong for those specific natives. See
  [api-guide.md](api-guide.md#multi-return-and-out-parameter-natives) for
  the manual fix.
- **Vectors are `Dynamic`.** `Vector3`/`Vector4`-shaped params/returns
  aren't modeled as a real type (see
  [haxe-fivem-tips.md](haxe-fivem-tips.md#vectors-and-coordinates)).
- **The apiset heuristic is coarse.** Some natives without an explicit
  `apiset` default to `client`; if you find one that's actually
  shared/server-only, the fix belongs in the heuristic in `generate.py`
  (search for `# Simple heuristic mapping for target allocation`), not as a
  one-off hand edit to a generated file (it'll be overwritten next run).

## Extending it

If you need to add a hand-documented FiveM global that isn't in the natives
database (like `RegisterCommand`/`AddEventHandler` already are), add it to
`src/fivem/shared/CoreEvents.hx` directly — don't add generation logic for
a one-off native.

If you're changing the generation logic itself (new type mappings, a
different apiset heuristic, etc.), re-run `python generate.py` and then
typecheck everything before committing:

```
haxe test-shared.hxml
haxe test-server.hxml
haxe test-client.hxml
```

These use `--no-output --macro include(...)` to load and typecheck every
generated module without needing a `-main`/build target — the fastest way
to catch a bad generator change (a stray reserved-word parameter name, a
broken doc comment, a duplicate field) before it ships. See
[troubleshooting.md](troubleshooting.md) for the specific errors these
catch and what caused them historically.
