# basic-resource

Minimal FiveM resource showing `fivem-hx` usage from both sides: registering
commands, reading entity/player natives, and firing a client event from the
server.

## Build

This resource depends on `fivem-hx` via `-lib fivem-hx` (see `client.hxml`/
`server.hxml`), same as any real project would — not a relative path into
the monorepo, so this folder is safe to copy out and use as a starting
point for your own resource. Make sure the library is resolvable first:

```
haxelib install fivem-hx
```

If you're developing this repo itself and want the example to build
against your local, uncommitted changes to `src/` instead of the published
version, link it in from the repo root:

```
haxelib dev fivem-hx C:\path\to\fivem-hx
```

Then, from this directory:

```
haxe client.hxml
haxe server.hxml
```

This produces `dist/client/client.lua` and `dist/server/server.lua` (not
committed — build them locally). Copy this whole folder into your FiveM
server's `resources/` directory and add `ensure basic-resource` to your
server config.

## Try it

- `/hello` (client command) — prints the ped handle, coords, and current
  resource name, then the server replies over `fivemhx:example:ping`.
- `/greet` (server command) — looks up your player name server-side and
  triggers the client event above.
