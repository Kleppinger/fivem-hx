# Contributing to fivem-hx

Thanks for considering a contribution. This project is small enough that
process overhead should stay light — this file exists mostly to save
back-and-forth on PRs.

## Ways to contribute

- **Report a bug** — a native that doesn't compile, a wrong type, a
  generator crash, a doc error. Open an issue with the exact error and your
  `haxe --version`.
- **Fix a generated file** — if the problem is in `src/fivem/**/natives/`,
  the fix almost always belongs in `generate.py`, not the generated file
  directly (see [Where fixes belong](#where-fixes-belong) below).
- **Add a hand-written extern** — FiveM globals that aren't in the natives
  database (like `RegisterCommand`) go in `src/fivem/shared/CoreEvents.hx`.
- **Improve the docs** — `docs/` is a normal part of the codebase; treat
  doc-only PRs the same as code PRs. The [API reference](https://kleppinger.github.io/fivem-hx/)
  is generated from source doc-comments rather than written by hand, so fix
  those at the source (usually `generate.py`) — see
  [docs/api-reference.md](docs/api-reference.md).
- **Extend the example resource** — `examples/basic-resource` should stay
  small and readable; if you want to demonstrate something more involved,
  propose a new `examples/<name>` directory instead of growing the existing
  one.

## Dev setup

```
git clone https://github.com/Kleppinger/fivem-hx
cd fivem-hx
haxe test-shared.hxml && haxe test-server.hxml && haxe test-client.hxml
```

If all three finish with no output, your toolchain is set up correctly.
Full requirements and editor setup: [docs/getting-started.md](docs/getting-started.md),
[docs/dev-experience.md](docs/dev-experience.md).

You only need Python (`pip install requests`) if you're changing
`generate.py` or pulling in newly-added upstream natives — see
[docs/regenerating-natives.md](docs/regenerating-natives.md).

## Where fixes belong

This matters more here than in a typical repo: most of `src/fivem/**/natives/`
is generated, not hand-written. A PR that hand-edits a generated file will
have its fix silently reverted the next time someone runs
`python generate.py`.

| If the bug is in... | Fix it in... |
|---|---|
| A generated native's signature, docs, or naming | `generate.py` (the generation logic), then regenerate |
| `CoreEvents.hx` | `CoreEvents.hx` directly — it's hand-written and the generator never touches it |
| `src/fivem/server/db/` (the oxmysql driver) | The file itself — hand-written runtime code, not generated |
| The `Natives.hx` directory structure, the apiset-merge logic | `generate.py` |
| Everything else (`examples/`, `docs/`, hxml files, workflows) | The file itself |

If you change `generate.py`, regenerate and commit the resulting diff under
`src/` in the same PR — don't land a generator change without its output,
and don't hand-patch generated output without also fixing the generator
(the two will drift apart otherwise). See
[docs/regenerating-natives.md](docs/regenerating-natives.md) for the full
pipeline.

## Before opening a PR

1. **Type-check everything:**
   ```
   haxe test-shared.hxml
   haxe test-server.hxml
   haxe test-client.hxml
   ```
2. **If you touched `examples/basic-resource`**, rebuild it and confirm it
   still compiles:
   ```
   cd examples/basic-resource
   haxe client.hxml
   haxe server.hxml
   ```
3. **Add a `CHANGELOG.md` entry** under `[Unreleased]`, in the right
   section (`Added` / `Changed` / `Fixed` / `Removed`). See
   [docs/versioning.md](docs/versioning.md) for what counts as which.
4. CI (`.github/workflows/ci.yml`) runs the same checks on every PR — it
   should be green before requesting review, not treated as the first
   round of feedback.

## Commit messages

Short imperative summary line (`Fix duplicate Cfx field in server Natives.hx`,
not `Fixed` or `Fixes`), blank line, then explain *why* the change was
needed if it isn't obvious from the summary alone — the diff already shows
*what* changed. Squash noisy "fix typo" / "address review" commits before
merge where practical; history doesn't need to be pristine, but a bisect
should land on commits that each make sense on their own.

## Code style

- **Python (`generate.py`)**: 4-space indent, matches the existing file.
  Keep generation logic data-driven (the `db`/`TYPE_MAP`/`HAXE_KEYWORDS`
  pattern already there) rather than special-casing individual natives
  inline.
- **Haxe**: hand-written externs (`CoreEvents.hx`) should look
  indistinguishable from generated ones — same doc-comment style
  (`/** ... */` with a `@:native(...)` line), tabs for indentation, one
  blank line between members. If it reads like it could have come out of
  `generate.py`, it's styled correctly.

## Reporting a security issue

Most of this library is externs-only (no runtime logic of its own beyond
`CoreEvents.hx`); `src/fivem/server/db/` is the exception, with real
runtime code (SQL escaping, query dispatch) that's a legitimate security
surface. If you find something that looks like a security issue rather
than a normal bug, open an issue and say so explicitly rather than a
silent PR — it gives maintainers a chance to look before the details are
public.
