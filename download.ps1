$ErrorActionPreference = 'Stop'
$repo = 'W3real/Sky-Library-App'
Write-Host 'Sky Library - son surum araniyor...'
$rel = Invoke-RestMethod -Uri "https://api.github.com/repos/$repo/releases/latest" -Headers @{ 'User-Agent' = 'SkyLibraryDownloader' }
$asset = $rel.assets | Where-Object { $_.name -like '*.exe' } | Select-Object -First 1
if (-not $asset) { throw 'Release icinde exe bulunamadi.' }
$out = Join-Path (Get-Location) $asset.name
Write-Host "Indiriliyor: $($asset.name) ($([math]::Round($asset.size/1MB,1)) MB)"
Invoke-WebRequest -Uri $asset.browser_download_url -OutFile $out -UseBasicParsing
Write-Host "Tamam: $out"
