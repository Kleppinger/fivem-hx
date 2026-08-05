# 1. Clean up any previous build outputs
if (Test-Path "docs/hxdoc.xml") { Remove-Item "docs/hxdoc.xml" -Force }

# 2. Generate the Haxe XML compiler data
haxe -cp src --macro "include('fivem.shared')" --macro "include('fivem.client')" --macro "include('fivem.server')" -lua dummy.lua --no-output -xml docs/hxdoc.xml -D doc-gen

# 3. Ensure the output directory exists
New-Item -ItemType Directory -Force -Path "docs/hxdocs" | Out-Null

# 4. Set up the "docs" branch as a Git Worktree inside the output folder
# (If it's already set up or the branch doesn't exist, we handle it gracefully)
git worktree prune
if (-not (Test-Path "docs/hxdocs/.git")) {
    # Check if remote 'docs' branch exists, if not, create it as an orphan (empty) branch
    $branchExists = git branch -r | Select-String "origin/docs"
    if (-not $branchExists) {
        git checkout --orphan docs
        git rm -rf .
        git commit --allow-empty -m "Initial docs commit"
        git push origin docs
        git checkout main # switch back to your main branch
    }
    # Link the docs branch directly to your output folder
    git worktree add -B docs docs/hxdocs origin/docs
}

# 5. Clean old documentation files out of the worktree folder so deleted classes disappear
Get-ChildItem "docs/hxdocs" -Exclude ".git" | Remove-Item -Recurse -Force

# 6. Run Dox to generate the updated HTML website, filtered to your packages
haxelib run dox -i docs/hxdoc.xml -o docs/hxdocs -in "^fivem"

# 7. Commit and push the changes from inside the worktree folder
Push-Location "docs/hxdocs"
try {
    git add -A
    # Only commit if there are actually changes to push
    $status = git status --porcelain
    if ($status) {
        git commit -m "Update documentation ($(Get-Date -Format 'yyyy-MM-dd HH:mm'))"
        git push origin docs
        Write-Host "Docs successfully built and pushed to the 'docs' branch!" -ForegroundColor Green
    } else {
        Write-Host "No documentation changes detected. Nothing to push." -ForegroundColor Yellow
    }
}
finally {
    Pop-Location
}
