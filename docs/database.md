# Database (oxmysql)

`fivem.server.db` is a `sys.db.Connection`/`sys.db.ResultSet` driver on top
of [oxmysql](https://overextended.dev/oxmysql), overextended's MySQL
resource for FiveM. It's server-side only (oxmysql itself only runs
server-side) and talks to `exports.oxmysql` directly — no extra
`server_script` needed beyond oxmysql itself.

## Setup

Add oxmysql as a dependency in `fxmanifest.lua`:

```lua
dependency 'oxmysql'
```

That's it. `fivem-hx` doesn't need `@oxmysql/lib/MySQL.lua` — the driver
talks to `exports.oxmysql` directly using the same calling convention that
file uses internally, so pulling it in as a `server_script` would just be
dead weight.

Make sure oxmysql is actually installed alongside your resource
(`resources/[db]/oxmysql/`) and configured (its own `.env`/convars for DB
connection details) per [oxmysql's own docs](https://overextended.dev/oxmysql).

## A note about "the ORM"

Haxe's classic `sys.db.Manager`-based ORM (`extends sys.db.Object`, no
hand-written SQL) isn't part of the Haxe 4 standard library anymore — it
moved out to a separate haxelib, [`record-macros`](https://lib.haxe.org/p/record-macros),
maintained by the Haxe Foundation. Install it if you want that:

```
haxelib install record-macros
```

`record-macros` only depends on `sys.db.Connection`/`sys.db.ResultSet`
(no target-specific code beyond that), which is exactly what
`OxMysqlConnection` implements — see [Using it with `record-macros`](#using-it-with-record-macros)
below. If you don't need a full ORM, `OxMysql`'s typed query methods (below)
are enough on their own for most resources.

## Direct queries: `OxMysql`

```haxe
import fivem.server.db.OxMysql;

class ServerMain {
    static function main() {
        CoreEvents.registerCommand("addcoins", (source, args, raw) -> {
            var identifier = "steam:...";
            var rows = OxMysql.query("SELECT coins FROM players WHERE identifier = ?", [identifier]);
            var current:Int = rows.length > 0 ? rows[0].coins : 0;

            OxMysql.update("UPDATE players SET coins = ? WHERE identifier = ?", [current + 100, identifier]);
        }, false);
    }
}
```

Every plain method (`query`, `single`, `scalar`, `insert`, `update`,
`rawExecute`, `transaction`) blocks the current Citizen coroutine until
oxmysql replies, so it reads like ordinary synchronous code. That's safe
from event handlers, threads, and commands — i.e. virtually everywhere
FiveM resource code runs, since all of those already execute inside a
coroutine. `queryAsync`/`insertAsync`/`updateAsync` are non-blocking,
callback-style alternatives if you specifically want one.

| Method | Returns |
|---|---|
| `query(sql, ?params)` | `Array<Dynamic>` — one entry per row |
| `single(sql, ?params)` | `Dynamic` — first row, or `null` |
| `scalar(sql, ?params)` | `Dynamic` — a single value |
| `insert(sql, ?params)` | `Int` — the new row's auto-increment id |
| `update(sql, ?params)` | `Int` — affected row count (also covers `DELETE`) |
| `rawExecute(sql, ?params)` | `Dynamic` — oxmysql's unprocessed reply |
| `transaction(queries)` | `Bool` — whether the whole batch succeeded |

## Using it with `record-macros`

```haxe
import sys.db.Manager;
import fivem.server.db.OxMysqlConnection;

class Player extends sys.db.Object {
    public var identifier:String;
    public var coins:Int;
}

class ServerMain {
    static function main() {
        Manager.cnx = new OxMysqlConnection();
        Manager.initialize();

        var p = Player.manager.select($identifier == "steam:...");
        if (p != null) {
            p.coins += 100;
            p.update();
        }
    }
}
```

`OxMysqlConnection.request()` looks at the SQL's leading keyword to decide
which oxmysql verb to call — `SELECT`/`SHOW`/`DESCRIBE`/`EXPLAIN`/`PRAGMA`
go through oxmysql's `query` verb, `INSERT`/`REPLACE` go through `insert`
(and capture the id for `lastInsertId()`), everything else goes through
`update`. This is necessary because oxmysql doesn't expose a single generic
"run anything, tell me what shape came back" call the way a native mysql
client library does — each verb already returns a specific, well-defined
shape.

**Not supported: interactive transactions.** `Connection.startTransaction()`
throws. oxmysql's `transaction` export takes a whole batch of statements
up front and runs them atomically — it has no notion of holding a
transaction open across separate `request()` calls the way `Manager`'s
`startTransaction()`/`commit()` model assumes. Use `OxMysql.transaction()`
directly for atomic batches instead.

**Escaping.** `escape()`/`quote()` (used by `Manager` to build literal SQL)
do best-effort client-side escaping equivalent to
`mysql_real_escape_string`. Prefer the parameterized `?`-placeholder form
(`OxMysql.query(sql, params)`) over string-built SQL wherever you have a
choice — oxmysql/mysql2 parameterizes those server-side, which is the
stronger guarantee.

## How it talks to oxmysql

`fivem.server.db.OxMysqlBridge` calls `exports.oxmysql[method](nil, query,
parameters, cb, GetCurrentResourceName(), returnCallbackErrors)` — indexing
the exports table by method name and invoking the result directly with an
explicit `nil` first argument, rather than Lua colon-call syntax. That's not
a guess: it's the exact convention oxmysql's own `@oxmysql/lib/MySQL.lua`
wrapper uses internally. The blocking/`await`-style calls wrap that in a
`promise` and `Citizen.Await` it, again mirroring that file's own
`.await()` helper.

This library was written and type-checked against the real `lua` target
std, but hasn't been run against a live FiveM server with oxmysql
installed — if you hit a mismatch between what oxmysql actually returns
and what's documented here, the shape-detection logic lives in
`OxMysqlConnection.request()`/`OxMysqlResultSet` and is the place to adjust it.
