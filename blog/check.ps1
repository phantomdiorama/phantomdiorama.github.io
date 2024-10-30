# various pre build checks
# requires powershell 7

Write-Host "TODOs" -foregroundcolor green
rg -i 'tk\s+' || Write-Host "done"
Write-Host "SPELLING" -foregroundcolor green
typos && Write-Host "done"
Write-Host "LINKS" -foregroundcolor green
lychee . -n --exclude file:// && Write-Host "done"
Write-Host "LINTING" -foregroundcolor green
markdownlint *.md && Write-Host "done"
pause
