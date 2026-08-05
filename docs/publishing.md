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

## Release checklist

1. **Decide the version bump** per [docs/versioning.md](versioning.md) —
   don't default to PATCH without checking whether the change is actually
   MINOR or MAJOR.
2. **Bump `"version"`** in [`haxelib.json`](../haxelib.json). haxelib
   refuses to re-accept a version number that's already published, and it
   must be [semver](https://semver.org/)-ish (`MAJOR.MINOR.PATCH`).
3. **Update `"releasenote"`** in the same file — a one-line summary shown
   on the library's haxelib.org page.
4. **Move `[Unreleased]` to a dated version section** in
   [`CHANGELOG.md`](../CHANGELOG.md), matching the version you just set.
5. **Typecheck everything locally** before pushing anything:
   ```
   haxe test-shared.hxml
   haxe test-server.hxml
   haxe test-client.hxml
   ```
6. **Commit and push** the version/changelog bump to `main` first — the
   tag in the next step should point at a commit that's already on `main`,
   not a dangling one.
7. **Republish the API reference** if any public signature changed:
   ```powershell
   ./scripts/Publish-Docs.ps1
   ```
   <https://kleppinger.github.io/fivem-hx/> is a snapshot of `src/` at the
   last publish, not something CI keeps current — see
   [api-reference.md](api-reference.md).

## Tagging triggers the release workflow

```
git tag v0.1.0
git push origin v0.1.0
```

Pushing a `v*.*.*` tag runs [`.github/workflows/release.yml`](../.github/workflows/release.yml),
which:

1. Fails loudly if the tag doesn't match `haxelib.json`'s `"version"` (a
   pushed `v0.2.0` tag against a haxelib.json still saying `0.1.0` is
   almost always a forgotten step 2 above, not an intentional mismatch).
2. Runs the same three `test-*.hxml` type-checks as CI.
3. Builds the example resource, as an extra sanity check that nothing
   downstream broke.
4. Packages `haxelib.json`, `README.md`, `LICENSE`, and `src/` into a zip
   with `git archive` (the same command shown below, run for you) and
   attaches it to a GitHub Release for that tag, with auto-generated
   release notes.

## Submitting to haxelib (manual)

This part isn't automated: haxelib's CLI expects an interactive
username/password prompt, and there's no officially documented
non-interactive/CI auth flow to script around that safely. Download the zip
the release workflow attached (or rebuild it identically yourself), then:

```
git archive --format=zip -o fivem-hx.zip HEAD haxelib.json README.md LICENSE src
haxelib submit fivem-hx.zip
```

Enter your haxelib.org username and password when prompted. On success,
the new version is live immediately — there's no review/approval step, and
haxelib versions are immutable once published (see
[If you mess up a submission](#if-you-mess-up-a-submission)).

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

## If you mess up a submission

haxelib versions are immutable once published — you can't overwrite
`0.1.0` after the fact, even to fix a typo in `releasenote`. Bump to
`0.1.1`, go through the checklist again, and submit that instead. This is
also why it's worth doing the local `haxelib install` + typecheck
verification *before* announcing a release anywhere.
