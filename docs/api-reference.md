# API Reference

The generated API reference lives at
**<https://kleppinger.github.io/fivem-hx/>** — every class and method under
`fivem.client`, `fivem.server`, and `fivem.shared`, with the same
doc-comments and signatures the compiler sees.

It's the right place to look for *what* a native's signature is. The guides
in this directory cover *how* to use the library (calling conventions,
player source types, multi-return natives — see
[api-guide.md](api-guide.md)), and they're not generated from source.

## How it's built

[Dox](https://github.com/HaxeFoundation/dox) turns the compiler's own XML
type dump into a static HTML site. Two steps:

1. `haxe ... --no-output -xml docs/hxdoc.xml -D doc-gen` with every package
   force-included, so the compiler emits type information for modules
   nothing references.
2. `haxelib run dox -i docs/hxdoc.xml -o docs/hxdocs -in "^fivem"`, which
   filters to this library's packages so Haxe's own std types don't end up
   in the output.

Because the XML comes from the compiler, the reference is always in sync
with `src/` — including everything `generate.py` regenerates. There's
nothing to hand-maintain, but the site *is* a snapshot: it only reflects
`src/` as of the last publish.

## Publishing

The site is served by GitHub Pages from the `docs` branch, which contains
nothing but the generated HTML. [`scripts/Publish-Docs.ps1`](../scripts/Publish-Docs.ps1)
does the whole round trip:

```powershell
haxelib install dox
./scripts/Publish-Docs.ps1
```

It generates the XML, checks the `docs` branch out as a git worktree at
`docs/hxdocs/`, wipes and regenerates the HTML there (so classes deleted
from `src/` actually disappear from the site), then commits and pushes —
skipping the commit entirely when nothing changed.

Neither `docs/hxdoc.xml` nor `docs/hxdocs/` belongs on `main`; both are
gitignored. `docs/hxdocs/` is a worktree checkout of another branch, not
content — if it ever gets committed to `main`, git will refuse to set the
worktree up on the next run.

Run this after any change that alters public signatures — regenerating
natives, adding a hand-written extern — as part of the release checklist in
[publishing.md](publishing.md).

## Troubleshooting

**The site 404s.** Almost always an empty `docs` branch: if the Dox step
fails after step 5 has already cleaned the worktree, `git add -A` commits
the deletions and pushes an empty branch. Re-run the script once `dox`
works (`haxelib install dox`) and the site comes back.

**A class is missing.** The `-in "^fivem"` filter drops anything outside the
`fivem` package, and the `--macro include(...)` lines are what pull modules
in at all — a new top-level package needs its own `include()` in the script.
