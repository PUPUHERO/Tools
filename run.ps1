# Install winget, pwsh
windows\env\winget.ps1
windows\env\pwsh.ps1

# Now can use winget and pwsh to install apps and configure the environment
Write-Host "==========Installing gsudo...=========="
pwsh -File "windows\env\gsudo.ps1"

Write-Host "==========Installing WindowsTerminal...=========="
pwsh -File "windows\env\windowsTerminal.ps1"

Write-Host "==========Installing Chocolatey...=========="
pwsh -File "windows\env\chocolatey.ps1"

# Set the environment variables
Write-Host "==========Setting environment variables for Chocolatey and refreshenv...=========="
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
$env:ChocolateyInstall = [System.Environment]::GetEnvironmentVariable("ChocolateyInstall","Machine")
Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1

# Install oh-my-posh
Write-Host "==========Installing oh-my-posh...=========="
pwsh -File "windows\env\ohMyPosh.ps1"

Write-Host "==========Installing Terminal-Icons...=========="
pwsh -File "windows\env\TerminalIcon.ps1"

# Modify the settings.json of Windows Terminal
Write-Host "==========Modifying the settings.json of Windows Terminal...=========="
pwsh -File "windows\env\ModifyWindowsTerminalJSON.ps1"

# Install apps
Write-Host "==========Installing apps...=========="
pwsh -File "windows\app\vscode.ps1"

pause
