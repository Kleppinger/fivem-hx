# Versioning

fivem-hx follows [Semantic Versioning](https://semver.org/) (`MAJOR.MINOR.PATCH`),
tracked in `"version"` in [`haxelib.json`](../haxelib.json) and mirrored by a
`vMAJOR.MINOR.PATCH` git tag on release (enforced by
`.github/workflows/release.yml`, which fails the release if the tag and
`haxelib.json` disagree).

The unusual part of applying semver here: most of the public API
(`src/fivem/**/natives/`) isn't hand-designed, it's generated from FiveM's
own native database. That changes what counts as "breaking" compared to a
typical hand-written library.

## What bumps what

**PATCH** (`0.1.0` → `0.1.1`) — no change to the public API surface:

- Fixing a generator bug that produces *invalid* Haxe (broken doc comments,
  reserved-word parameter names, duplicate fields) without changing any
  method's name, signature, or the set of available natives.
- Documentation, example, or workflow changes.
- Internal `generate.py` refactors that produce byte-identical (or
  semantically identical) output.

**MINOR** (`0.1.0` → `0.2.0`) — backwards-compatible additions:

- New natives picked up from an upstream FiveM database update (running
  `generate.py` against a newer `natives.json`/`natives_cfx.json` and
  nothing existing changed shape).
- New hand-written externs added to `CoreEvents.hx`.
- New example resources under `examples/`.

**MAJOR** (`0.1.0` → `1.0.0`) — anything a consumer's existing code could
break against:

- A native's Haxe method signature changes (parameter added/removed/
  retyped, return type changed) — including when this happens because
  FiveM itself changed or removed the native upstream. **The fact that the
  change came from "just re-running the generator" doesn't make it
  non-breaking for consumers** — judge it by the resulting diff, not by how
  it was produced.
- A native or namespace disappears (FiveM deprecation/removal upstream).
- `classPath`, package names (`fivem.client`/`fivem.server`/`fivem.shared`),
  or the `Natives.hx` access pattern (`Natives.<namespace>.<method>()`)
  change shape.
- Anything in `CoreEvents.hx` is renamed or removed.

Before `1.0.0`: this project hasn't hit a stable public API yet, so treat
`0.x` the way semver itself does — `0.MINOR` bumps are allowed to contain
what would otherwise be MAJOR-worthy changes, but still document them as
such in the changelog so consumers can judge impact. Once natives coverage
and the `CoreEvents`/`Natives.hx` pattern feel settled, `1.0.0` is the
signal that the API is considered stable going forward.

## Regenerating and versioning together

Because `python generate.py` can silently introduce MAJOR-worthy changes
(a native FiveM removed, a signature FiveM changed), **don't bump PATCH
reflexively after a regenerate** — diff the output first:

```
git diff --stat src/
```

A diff touching only new files (new natives added) is MINOR. A diff with
deletions or modified `static function` signatures in existing files is
MAJOR — read through what actually changed before picking a version.

## Changelog discipline

Every PR that changes generated output, `CoreEvents.hx`, or generator
behavior should add an entry to [`CHANGELOG.md`](../CHANGELOG.md) under
`[Unreleased]`, in the `Added`/`Changed`/`Fixed`/`Removed` section that
matches. This is what release notes get built from — see
[publishing.md](publishing.md) for the release checklist itself, which
starts with "does `[Unreleased]` accurately describe what's shipping."
