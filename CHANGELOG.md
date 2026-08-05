# Changelog

All notable changes to this project are documented here. Format follows
[Keep a Changelog](https://keepachangelog.com/en/1.1.0/); versioning follows
[Semantic Versioning](https://semver.org/) as scoped for this project in
[docs/versioning.md](docs/versioning.md).

## [Unreleased]

### Added
- `fivem.shared.CoreEvents.triggerServerEvent` — was missing alongside the
  existing `triggerClientEvent`; neither is in FiveM's natives database.
- `fivem.server.db` — a `sys.db.Connection`/`sys.db.ResultSet` driver on top
  of [oxmysql](https://overextended.dev/oxmysql) (`OxMysqlConnection`,
  `OxMysqlResultSet`), plus `OxMysql` for direct typed queries without an
  ORM. Server-side only. See [docs/database.md](docs/database.md).
- Published API reference at <https://kleppinger.github.io/fivem-hx/>,
  generated with Dox and served from the `docs` branch, plus
  `scripts/Publish-Docs.ps1` to rebuild and push it and
  [docs/api-reference.md](docs/api-reference.md) documenting the process.

### Changed
- `test-server.hxml` now typechecks against the real `-lua` target instead
  of the platform-less "cross" target, since `fivem.server.db` uses
  `lua.Table` from the lua-target std, which "cross" can't see.

### Fixed
- `fivem.server.db.OxMysqlBridge`'s raw Lua glue referenced `exports`,
  `promise`, `Citizen`, and the current-resource-name native as bare
  globals, which resolve `nil` at runtime — FXServer loads each resource's
  chunk with its own sandboxed `_ENV`, distinct from the real `_G` where
  those actually live (confirmed against a live FXServer + oxmysql:
  `attempt to call a nil value (global 'GET_CURRENT_RESOURCE_NAME')`). Now
  prefixed with `_G.`, matching how every other native call in this library
  already compiles.
- `examples/basic-resource` now depends on the library via `-lib fivem-hx`
  instead of a monorepo-relative `-p ../../src`. The old hxml only worked
  while the resource stayed nested inside this repo two directories deep —
  copying it out as a starting point for a real project (the intended use)
  produced `Type not found` errors for every `fivem.*` import. CI and the
  release workflow now `haxelib dev fivem-hx .` before building the example
  so it's still validated against the checked-out source, not a stale
  published version.

## [0.1.0] - 2026-08-04

### Added
- Full FiveM/RedM native externs generated from FiveM's live natives
  database (`natives.json` + `natives_cfx.json`), organized as
  `fivem.client`, `fivem.server`, and `fivem.shared` under a single `src/`
  classpath.
- `fivem.shared.CoreEvents` — hand-written externs for `RegisterCommand`,
  `RegisterNetEvent`, `AddEventHandler`, and `TriggerClientEvent`, none of
  which are in FiveM's natives database.
- `examples/basic-resource` — a working client+server FiveM resource built
  against the library and compiled to Lua.
- `docs/` — getting started, architecture, API guide, Haxe+FiveM tips, dev
  experience, native regeneration, versioning, and publishing guides.
- `haxelib.json`, `LICENSE` (MIT), and `test-{shared,server,client}.hxml`
  type-check-only builds.
- `CONTRIBUTING.md` with dev setup, PR checklist, and guidance on where
  fixes belong (generator vs. generated output vs. hand-written externs).
- `.github/workflows/ci.yml` — type-checks all three packages and builds
  the example resource on every push and PR.
- `.github/workflows/release.yml` — verifies the git tag matches
  `haxelib.json`'s version, type-checks, packages the release zip, and
  attaches it to the GitHub Release.

### Fixed
- Shared natives (e.g. the `CFX` namespace) are now merged into each env's
  own native classes instead of generating two same-named classes in
  different packages, which previously made `Natives.hx` declare
  `public static var cfx` twice and fail to compile.
- Nested `/* */` sequences inside native descriptions (inline Lua examples
  in FiveM's docs) no longer prematurely close the generated Haxe doc
  comment.
- Native parameters named after Haxe reserved words (`override`, `var`,
  `dynamic`) are now suffixed with an underscore to remain valid
  identifiers.

### Changed
- Restructured from three separate `fivem-client`/`fivem-server`/
  `fivem-shared` package folders into a single `src/fivem/{client,server,shared}`
  classpath.

<!--
  Compare-link footers (e.g. [Unreleased]: .../compare/v0.1.0...HEAD) get
  added once the corresponding git tag actually exists — see
  docs/publishing.md. Add one per released version at that point.
-->
