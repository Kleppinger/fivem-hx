# Getting Started

## Requirements

- [Haxe](https://haxe.org/download/) 4.3+ (the compiler and `haxelib` package
  manager ship together)
- [Python](https://www.python.org/) 3.9+ with `requests` installed, only if
  you plan to run `generate.py` yourself (see [Regenerating Natives](regenerating-natives.md))
- A FiveM or RedM server to actually run the compiled scripts against

Check your toolchain:

```
haxe --version
haxelib version
```

## Installing the library

Once published (see [Publishing to haxelib](publishing.md)):

```
haxelib install fivem-hx
```

Until then, or if you want to track the git repo directly, use `haxelib dev`
or `haxelib git`:

```
# point haxelib at a local clone
haxelib dev fivem-hx C:\path\to\fivem-hx

# or install straight from GitHub
haxelib git fivem-hx https://github.com/Kleppinger/fivem-hx
```

`haxelib dev` is the one you want while you're actively working on both a
resource and the library at the same time — changes to `src/` are picked up
immediately, no reinstall step.

## Setting up a resource

A FiveM resource that uses fivem-hx needs, at minimum:

```
my-resource/
├── fxmanifest.lua
├── client.hxml
├── server.hxml
└── src/
    ├── ClientMain.hx
    └── ServerMain.hx
```

`client.hxml`:

```
-lib fivem-hx
-p src
-main ClientMain
-lua dist/client/client.lua
```

`server.hxml`:

```
-lib fivem-hx
-p src
-main ServerMain
-lua dist/server/server.lua
```

`fxmanifest.lua`:

```lua
fx_version 'cerulean'
game 'gta5'

client_script 'dist/client/client.lua'
server_script 'dist/server/server.lua'
```

`src/ClientMain.hx`:

```haxe
import fivem.client.Natives as Client;
import fivem.shared.CoreEvents;

class ClientMain {
    static function main() {
        CoreEvents.registerCommand("hello", (source, args, raw) -> {
            var ped = Client.player.playerPedId();
            trace('My ped handle is $ped');
        }, false);
    }
}
```

Build it:

```
haxe client.hxml
haxe server.hxml
```

Drop the resource folder into your server's `resources/` directory, `ensure
my-resource`, and run `/hello` in the client console.

For a fuller working example (client + server, native calls, events across
the network boundary), see [examples/basic-resource](../examples/basic-resource).

## Where to next

- [API Guide](api-guide.md) walks through the calling conventions
  (`Natives.<namespace>.<method>()`, `CoreEvents`, player source types).
- [Haxe + FiveM Tips](haxe-fivem-tips.md) covers things that only bite you
  once you're past "hello world" — Lua version quirks, vectors, multi-return
  natives, debugging compiled output.
- The [API reference](https://kleppinger.github.io/fivem-hx/) is the
  searchable index of every class and method in the library — handy when
  you know the native's name but not which namespace it landed in.
