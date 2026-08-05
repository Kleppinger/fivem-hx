# mysql-example

Minimal FiveM server resource showing `fivem-hx`'s [oxmysql](https://overextended.dev/oxmysql)
driver used directly — no ORM, just `fivem.server.db.OxMysql`'s typed query
methods — to create a table and load/save a row through a plain Haxe model
class (`PlayerDataModel`). Server-only: oxmysql itself only runs
server-side, so there's no `client.hxml`.

## Build

This resource depends on `fivem-hx` via `-lib fivem-hx` (see `server.hxml`),
same as any real project would — not a relative path into the monorepo, so
this folder is safe to copy out and use as a starting point for your own
resource. Make sure the library is resolvable first:

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
haxe server.hxml
```

This produces `dist/server/server.lua` (not committed — build it locally).
Copy this whole folder into your FiveM server's `resources/` directory,
make sure [oxmysql](https://overextended.dev/oxmysql) is installed
alongside it and configured with real DB connection details, and add
`ensure mysql-example` to your server config.

## What it does

On `onResourceStart`, `ServerMain` calls into `PlayerDataModel`, which wraps
a `player_data` table behind `OxMysql.query`/`insert`/`update`:

- `PlayerDataModel.ensureSchema()` — runs a `CREATE TABLE IF NOT EXISTS`
  for `player_data` via `OxMysql.rawExecute`.
- `PlayerDataModel.loadOrCreate(identifier, name)` — looks up a row by
  `identifier`, inserting a new one if it doesn't exist yet.
- `playerData.save()` — `INSERT` when the model has no `id` yet, `UPDATE`
  otherwise.

The example then bumps `money` by 100 and updates `lastSeen` each time the
resource starts, so restarting it (`restart mysql-example` from the server
console) is an easy way to watch the same row get updated instead of
re-inserted. Watch the server console for
`Loaded player data: Example Player / <money>` — `<money>` should climb by
100 on every restart.

See [docs/database.md](../../docs/database.md) for the full `OxMysql` API
reference and how this driver talks to oxmysql under the hood, and
[docs/database.md#using-it-with-record-macros](../../docs/database.md#using-it-with-record-macros)
if you'd rather use the `record-macros` haxelib's `sys.db.Object`/`Manager`
ORM instead of hand-written queries like this example does.
