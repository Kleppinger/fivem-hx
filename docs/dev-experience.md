# Improving Your Dev Experience

## Editor setup

**VS Code** is the path of least resistance:

1. Install the [Haxe Extension Pack](https://marketplace.visualstudio.com/items?itemName=vshaxe.haxe-extension-pack)
   (bundles [vshaxe](https://github.com/vshaxe/vshaxe), the Haxe language
   server, and debugger support).
2. Point it at your `.hxml` files. vshaxe auto-detects `*.hxml` in the
   workspace root and lets you switch the active "build configuration"
   (bottom status bar) between e.g. `client.hxml` and `server.hxml`, so
   completion/diagnostics match whichever side you're editing.
3. For a monorepo like this one with multiple resources, add a
   `.vscode/settings.json` with explicit config paths if auto-detection
   picks up the wrong one:

   ```jsonc
   {
     "haxe.configurations": [
       ["examples/basic-resource/client.hxml"],
       ["examples/basic-resource/server.hxml"]
     ]
   }
   ```

Other editors: any LSP-capable editor works via `haxe-language-server`
directly (Neovim, Emacs, Sublime via LSP plugins) — vshaxe is just the VS
Code packaging of the same server.

## Fast iterative builds: the completion server

`haxe --wait` starts a persistent compiler server that keeps parsed modules
warm in memory, so subsequent builds only recompile what changed instead of
re-parsing every extern from scratch:

```
haxe --wait 6000
```

Then point your build hxml at it with `--connect 6000`:

```
--connect 6000
-p src
-main ClientMain
-lua dist/client/client.lua
```

vshaxe manages this automatically for the editor's own diagnostics; running
it yourself is mainly useful for scripting a fast build loop (see below) or
CI.

## Watch-and-rebuild loop

FiveM has no native "watch mode" — you rebuild the `.lua` and `restart` the
resource. A minimal watch loop keeps that friction low. On Windows
(PowerShell):

```powershell
while ($true) {
  $before = (Get-ChildItem -Recurse src -Filter *.hx | Measure-Object -Property LastWriteTime -Maximum).Maximum
  Start-Sleep -Seconds 1
  $after = (Get-ChildItem -Recurse src -Filter *.hx | Measure-Object -Property LastWriteTime -Maximum).Maximum
  if ($after -ne $before) { haxe client.hxml; haxe server.hxml }
}
```

Or use a general-purpose file watcher if you have Node available
(`npx nodemon --watch src --ext hx --exec "haxe client.hxml && haxe server.hxml"`).
Either way, pair it with FiveM's `restart <resource>` console command (or a
small server-side script that watches the compiled file's mtime and
restarts itself) to close the loop without touching the server console for
every change.

## Debugging without source maps

The Lua target doesn't support source maps, so a runtime traceback points
at compiled output, not your `.hx` source (see
[haxe-fivem-tips.md](haxe-fivem-tips.md#debugging)). Two things help:

- Keep `-main` entry files thin and push logic into well-named functions —
  a traceback naming `Client.hMyFeature.doThing` is far more useful than one
  naming an anonymous closure at line 4128 of a bundled file.
- Liberal `trace()` calls around anything you're actively debugging; remove
  them once it's working. There's no runtime cost to leaving `trace` calls
  out of hot paths since they compile to plain `print`, but a busy loop
  logging every frame will absolutely flood the console — scope them to
  commands/events, not tick handlers.

## Keeping the compiler honest: type-check-only builds

You don't need a `-main`/output target to catch type errors — `--no-output`
with `--macro include('some.package')` forces the compiler to load and
typecheck every module in a package without producing any file. This
repo's own `test-*.hxml` files do exactly this for the library's three
packages; the same pattern works for your own resource code as a fast "did
I break the build" check, or wired into CI.

`test-server.hxml` additionally passes `-lua <file>` alongside
`--no-output` (`-lua` picks the target/std to typecheck against; `--no-output`
still suppresses writing that file) — `fivem.server.db` uses `lua.Table`
from Haxe's lua-target std, which isn't reachable when typechecking against
the platform-less "cross" target the other two files use.

## Multiple resources in one workspace

If you're maintaining several resources against a `haxelib dev`-linked copy
of this library (see [getting-started.md](getting-started.md#installing-the-library)),
each resource keeps its own `client.hxml`/`server.hxml` with `-lib fivem-hx`
— there's no workspace-level Haxe project format to maintain beyond that.
VS Code's `haxe.configurations` setting (above) is the only place you need
to list every hxml explicitly.
