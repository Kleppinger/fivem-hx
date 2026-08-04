# Changelog

All notable changes to this project are documented here. Format follows
[Keep a Changelog](https://keepachangelog.com/en/1.1.0/); versioning follows
[Semantic Versioning](https://semver.org/) as scoped for this project in
[docs/versioning.md](docs/versioning.md).

## [Unreleased]

### Added
- `CONTRIBUTING.md` with dev setup, PR checklist, and guidance on where
  fixes belong (generator vs. generated output vs. hand-written externs).
- `docs/versioning.md` documenting what counts as a PATCH/MINOR/MAJOR
  change for a mostly-generated externs library.
- `.github/workflows/ci.yml` — type-checks all three packages and builds
  the example resource on every push and PR.
- `.github/workflows/release.yml` — verifies the git tag matches
  `haxelib.json`'s version, type-checks, packages the release zip, and
  attaches it to the GitHub Release.

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
  experience, native regeneration, and publishing guides.
- `haxelib.json`, `LICENSE` (MIT), and `test-{shared,server,client}.hxml`
  type-check-only builds.

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
