# basic-resource

Minimal FiveM resource showing `fivem-hx` usage from both sides: registering
commands, reading entity/player natives, and firing a client event from the
server.

## Build

From this directory:

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
