# Publishing to haxelib

## One-time setup

Create a [haxelib.org](https://lib.haxe.org/) account if you don't have
one:

```
haxelib register <username>
```

This prompts for an email and password and registers the account with the
local `haxelib` client, which is also what `haxelib submit` authenticates
with later.

## Before every release

1. **Bump the version** in [`haxelib.json`](../haxelib.json). haxelib
   refuses to re-accept a version number that's already published, and it
   must be [semver](https://semver.org/)-ish (`MAJOR.MINOR.PATCH`).
2. **Update `releasenote`** in the same file — a one-line summary of what
   changed, shown on the library's haxelib.org page.
3. **Update `url`/`contributors`/`license`** if they've changed.
4. **Typecheck everything** — a broken package is worse than a late one:

   ```
   haxe test-shared.hxml
   haxe test-server.hxml
   haxe test-client.hxml
   ```

5. **Make sure it's committed.** `git archive` (used below) packages
   whatever's in the git tree, not your working directory — uncommitted
   changes silently won't be in the release zip.

## Packaging and submitting

haxelib expects a `.zip` with `haxelib.json` at its root. Package just what
consumers need — the library source, metadata, and docs, not the example
resource's build artifacts:

```
git archive --format=zip -o fivem-hx.zip HEAD haxelib.json README.md LICENSE src
```

Submit it:

```
haxelib submit fivem-hx.zip
```

You'll be prompted for your haxelib.org username and password. On success,
the new version is live immediately — there's no review/approval step.

## Verifying

```
haxelib info fivem-hx
```

should show the new version. From a clean directory, confirm it actually
installs and typechecks:

```
haxelib install fivem-hx
haxe -lib fivem-hx --no-output --macro include('fivem.shared')
```

## Tagging the release

Not required by haxelib, but worth doing so the published version traces
back to an exact commit:

```
git tag v0.1.0
git push origin v0.1.0
```

## If you mess up a submission

haxelib versions are immutable once published — you can't overwrite
`0.1.0` after the fact, even to fix a typo in `releasenote`. Bump to
`0.1.1` and submit again. This is also why it's worth doing the local
`haxelib install` + typecheck verification *before* announcing a release
anywhere.
