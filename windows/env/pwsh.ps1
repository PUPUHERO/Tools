winget install --id Microsoft.Powershell --source winget
# Create $PROFILE if not exists
if (-not (Test-Path -Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}
