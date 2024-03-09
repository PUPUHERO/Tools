winget install JanDeDobbeleer.OhMyPosh -s winget
sudo oh-my-posh font install Meslo

IF NOT EXIST $PROFILE (
    New-Item -ItemType File -Path $PROFILE -Force
)

Add-Content $PROFILE @'oh-my-posh init pwsh | Invoke-Expression'@
Add-Content $PROFILE @'oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\takuya.omp.json" | Invoke-Expression'@

Install-Module -Name Terminal-Icons -Repository PSGallery
