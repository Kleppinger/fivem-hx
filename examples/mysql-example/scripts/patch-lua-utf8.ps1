param(
  [Parameter(Mandatory = $true)]
  [string]$Path
)

if (-not (Test-Path -LiteralPath $Path)) {
  Write-Error "File not found: $Path"
  exit 1
}

$content = Get-Content -LiteralPath $Path -Raw
$updated = $content -replace 'require\("lua-utf8"\)', 'require("utf8")'
$updated = $updated -replace 'if package\.loaded\.luv then\s*_hx_luv = _G\.require\("luv"\);\s*else\s*_hx_luv = \{\s*run=function\(mode\) return false end,\s*loop_alive=function\(\) return false end\s*\}\s*end', 'local _hx_package_loaded = type(package) == "table" and type(package.loaded) == "table" and package.loaded or {} if _hx_package_loaded.luv then _hx_luv = _G.require("luv"); else _hx_luv = { run=function(mode) return false end, loop_alive=function() return false end } end'

if ($updated -ne $content) {
  $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
  [System.IO.File]::WriteAllText($Path, $updated, $utf8NoBom)
  Write-Host "Patched UTF-8 require in $Path"
}
