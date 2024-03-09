winget install JanDeDobbeleer.OhMyPosh -s winget
$env:Path += ";C:\Users\user\AppData\Local\Programs\oh-my-posh\bin"

if (-not (Test-Path -Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}

Add-Content $PROFILE 'oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\takuya.omp.json" | Invoke-Expression'

. $PROFILE

sudo oh-my-posh font install Meslo

Install-Module -Name Terminal-Icons -Repository PSGallery
