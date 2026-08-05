# fivem-hx documentation

**[API reference →](https://kleppinger.github.io/fivem-hx/)** — generated
class/method docs for every package in the library. Look there for *what* a
native's signature is; look below for *how* to use the library.

- [Getting Started](getting-started.md) — install the lib, wire up your first resource
- [Architecture](architecture.md) — why the repo is laid out the way it is, and how `generate.py` works
- [API Guide](api-guide.md) — how to call natives and events from Haxe, with patterns and gotchas
- [Core API](core-api.md) — the object-oriented layer: entities, players, vehicles, zones, vectors, callbacks
- [Haxe + FiveM Tips](haxe-fivem-tips.md) — general advice for writing FiveM scripts in Haxe
- [Improving Your Dev Experience](dev-experience.md) — editor setup, fast builds, hot reload, debugging
- [Regenerating Natives](regenerating-natives.md) — deep dive on `generate.py` and how to extend it
- [Versioning](versioning.md) — what counts as PATCH/MINOR/MAJOR for a mostly-generated externs library
- [Publishing to haxelib](publishing.md) — the release checklist, tag-triggered CI packaging, and `haxelib submit`
- [Troubleshooting](troubleshooting.md) — common compiler and runtime errors, explained
- [API Reference](api-reference.md) — how the published Dox site is generated and updated

See also [CONTRIBUTING.md](../CONTRIBUTING.md) and [CHANGELOG.md](../CHANGELOG.md)
at the repo root.

If you're new here, start with [Getting Started](getting-started.md), then skim
[Haxe + FiveM Tips](haxe-fivem-tips.md) before writing real game code. Once
you're past hello-world, [Core API](core-api.md) is where most day-to-day
gameplay code should start — the raw natives are still there underneath.
