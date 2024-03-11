# Install winget, pwsh
windows\env\winget.ps1

# Install scoop
Write-Host "==========Installing scoop...=========="
windows\env\scoop.ps1

# Install Chocolatey
Write-Host "==========Installing Chocolatey...=========="
windows\env\chocolatey.ps1

# Set the environment variables
Write-Host "==========Setting environment variables for Chocolatey and refreshenv...=========="
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
$env:ChocolateyInstall = [System.Environment]::GetEnvironmentVariable("ChocolateyInstall","Machine")
Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1

# The followings are install by winget
# Install pwsh
Write-Host "==========Installing pwsh...=========="
windows\env\pwsh.ps1
refreshenv

# Now can use winget and pwsh to install apps and configure the environment
Write-Host "==========Installing gsudo...=========="
windows\env\gsudo.ps1
refreshenv

Write-Host "==========Installing WindowsTerminal...=========="
windows\env\windowsTerminal.ps1

# Install oh-my-posh
Write-Host "==========Installing oh-my-posh...=========="
pwsh -File "windows\env\ohMyPosh.ps1"
refreshenv

Write-Host "==========Installing Terminal-Icons...=========="
pwsh -File "windows\env\terminalIcons.ps1"

# Install apps
Write-Host "==========Installing apps...=========="
pwsh -File "windows\app\vscode.ps1"

pause
