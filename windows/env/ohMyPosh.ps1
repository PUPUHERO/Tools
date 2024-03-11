winget install JanDeDobbeleer.OhMyPosh -s winget
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

if (-not (Test-Path -Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}

$line = 'oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\takuya.omp.json" | Invoke-Expression'
if (!(Select-String -Path $PROFILE -Pattern ( [regex]::Escape($line) ) -Quiet)) {
    Add-Content $PROFILE $line
}

. $PROFILE

sudo oh-my-posh font install Meslo

Install-Module -Name Terminal-Icons -Repository PSGallery
