# core-demo

A working FiveM resource built on the object-oriented [core
API](../../docs/core-api.md) rather than raw natives — entities, the player
registry, zones, callbacks and drawing.

## What it does

**Client** ([`src/Client/ClientMain.hx`](src/Client/ClientMain.hx))

- Puts a blip and a zone at a demo point outside Legion Square, drawing a
  marker and an interaction prompt only while the player is inside it
- Binds `E` (rebindable in the game's own settings) to a wave animation,
  streaming the animation dictionary first
- `/mycar [model]` — asks the server to spawn a vehicle, waits for it to
  stream in, and warps the player into the driver's seat
- `/whereami` — prints coordinates, the nearest vehicle, and what the camera
  is pointed at

**Server** ([`src/Server/ServerMain.hx`](src/Server/ServerMain.hx))

- Logs joins and drops, and stamps a join timestamp into each player's state bag
- Answers the `demo:spawnVehicle` callback, rate-limited to one spawn per
  player per 10 seconds
- `/players` and `/tp <id>`, both restricted to `group.admin`
- Watches a zone around the vault and logs entries
- Deletes every vehicle it spawned when the resource stops

## Building

From this directory, with the library linked (`haxelib dev fivem-hx ../..`):

```bash
haxe client.hxml
```

```bash
haxe server.hxml
```

Both write to `dist/`, which is gitignored — build rather than commit the
Lua. Then copy the folder into your server's `resources/` and
`ensure core-demo`.

The `--cmd` step at the end of each `.hxml` runs
[`scripts/patch-lua-utf8.ps1`](scripts/patch-lua-utf8.ps1), which rewrites
Haxe's `require("lua-utf8")` to the `utf8` module FXServer actually ships.
See [docs/troubleshooting.md](../../docs/troubleshooting.md) for why.

## Things worth copying

- **Cleanup on stop.** Zones, blips and server-created entities all outlive
  the resource; both files remove theirs in a `Resource.onStop` handler so a
  restart doesn't stack duplicates.
- **Vehicle spawning belongs on the server.** The client asks; the server
  decides, rate-limits, and returns a network ID. A client that spawns its
  own vehicles is a client that spawns a hundred of them.
- **Re-resolve the source.** The server does `Player.fromSource(source)` and
  bails on `null` rather than trusting what arrived with the request.
- **Per-frame work only where it's needed.** The marker draws on the frame
  tick, but only via the zone's `onInside` — so it costs nothing at all until
  the player is standing there.
