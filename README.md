# fivem-hx

[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Haxe](https://img.shields.io/badge/haxe-%3E%3D4.3-orange.svg)](https://haxe.org)
[![FiveM](https://img.shields.io/badge/FiveM-natives-5c8ae6.svg)](https://docs.fivem.net/natives/)

Typed Haxe externs for the full FiveM/RedM native API, generated straight
from CitizenFX's own native databases and organized into `client`, `server`,
and `shared` packages — write FiveM resources in Haxe with real
autocomplete, compile-time argument checking, and code shared across the
client/server boundary, instead of hand-rolling `@:native` declarations or
writing raw Lua.

## Features

- **Full native coverage** — every documented GTA and CitizenFX native,
  regenerated on demand from the live FiveM docs (`generate.py`).
- **Correct apiset separation** — client-only, server-only, and shared
  natives are kept apart, with shared natives merged into both client and
  server so nothing's unreachable (see [docs/architecture.md](docs/architecture.md)).
- **Zero runtime cost** — natives are `extern` declarations that map
  directly onto FiveM's Lua globals; you only pay for what you call.
- **One classpath, one package** — `haxelib install` and go; no juggling
  three separate client/server/shared packages.
- **A real example resource** — [`examples/basic-resource`](examples/basic-resource)
  compiles and runs, not just a code snippet.

## Requirements

- [Haxe](https://haxe.org/download/) 4.3+
- A FiveM or RedM server to run compiled scripts against
- Python 3.9+ (only if regenerating natives — see [docs/regenerating-natives.md](docs/regenerating-natives.md))

## Installation

```
haxelib install fivem-hx
```

Working on the library and a resource at the same time? Use `haxelib dev`
instead — see [docs/getting-started.md](docs/getting-started.md#installing-the-library).

## Quick start

```haxe
import fivem.client.Natives as Client;
import fivem.shared.CoreEvents;

class ClientMain {
    static function main() {
        CoreEvents.registerCommand("hello", (source, args, raw) -> {
            var ped = Client.player.playerPedId();
            trace('My ped handle is $ped');
        }, false);
    }
}
```

```
# client.hxml
-lib fivem-hx
-p src
-main ClientMain
-lua dist/client/client.lua
```

Full walkthrough, including `fxmanifest.lua` and the server side, in
[docs/getting-started.md](docs/getting-started.md).

## Project structure

```
fivem-hx/
├── src/fivem/
│   ├── client/          package fivem.client — client-only + shared natives
│   ├── server/          package fivem.server — server-only + shared natives
│   └── shared/          package fivem.shared — shared natives + CoreEvents.hx
├── examples/
│   └── basic-resource/  a working client+server FiveM resource
├── docs/                 in-depth guides (see below)
├── generate.py           regenerates src/fivem/*/natives from FiveM's docs
├── test-*.hxml           type-check-only builds for each package
└── haxelib.json
```

One classpath, one package tree, matching how the Haxe standard library
itself is organized. See [docs/architecture.md](docs/architecture.md) for
the full rationale, including why shared natives are merged into
client/server rather than left as a separate package.

## Documentation

| Guide | What's in it |
|---|---|
| [Getting Started](docs/getting-started.md) | Install, wire up your first resource |
| [Architecture](docs/architecture.md) | Repo layout rationale, apiset merging, how externs compile to zero-cost calls |
| [API Guide](docs/api-guide.md) | Calling conventions, player source types, vectors, multi-return natives |
| [Haxe + FiveM Tips](docs/haxe-fivem-tips.md) | Lua runtime versions, debugging, structuring client/server/shared code |
| [Dev Experience](docs/dev-experience.md) | Editor setup, fast builds, watch loops, debugging without source maps |
| [Regenerating Natives](docs/regenerating-natives.md) | How `generate.py` works, its known limitations, how to extend it |
| [Publishing](docs/publishing.md) | Cutting and submitting a haxelib release |
| [Troubleshooting](docs/troubleshooting.md) | Common compiler and runtime errors, explained |

## Regenerating natives

```
python generate.py
```

Downloads the live FiveM/RedM native databases and rewrites everything
under `src/fivem/*/natives/` and the `Natives.hx` entry points.
Hand-written files (`CoreEvents.hx`) are untouched. Details in
[docs/regenerating-natives.md](docs/regenerating-natives.md).

## Type-checking

```
haxe test-shared.hxml
haxe test-server.hxml
haxe test-client.hxml
```

Type-checks every generated module with no build target required — the
fastest way to confirm a change to `generate.py` (or a manual edit under
`src/`) doesn't break the package. See
[docs/dev-experience.md](docs/dev-experience.md#keeping-the-compiler-honest-type-check-only-builds).

## Example

[examples/basic-resource](examples/basic-resource) is a small but complete
client+server FiveM resource built against this library: native calls,
command registration, and an event fired across the client/server boundary,
compiled to Lua and verified to run.

## Contributing

Issues and PRs welcome at
[github.com/Kleppinger/fivem-hx](https://github.com/Kleppinger/fivem-hx).
If you're changing generation logic, run the three `test-*.hxml` checks
before opening a PR (see [docs/regenerating-natives.md](docs/regenerating-natives.md#extending-it)).

## Publishing

Maintainers cutting a release: see [docs/publishing.md](docs/publishing.md)
for the full `haxelib submit` workflow.

## License

[MIT](LICENSE)
