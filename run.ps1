# Install winget, pwsh
windows\env\winget.ps1
windows\env\pwsh.ps1

# Now can use winget and pwsh to install apps and configure the environment
pwsh -File "windows\env\gsudo.ps1"
pwsh -File "windows\env\windowsTerminal.ps1"
pwsh -File "windows\env\chocolatey.ps1"

# Set the environment variables
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
$env:ChocolateyInstall = [System.Environment]::GetEnvironmentVariable("ChocolateyInstall","Machine")
Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1

pwsh -File "windows\env\ohMyPosh.ps1"
pwsh -File "windows\env\TerminalIcon.ps1"

# Install apps
pwsh -File "windows\app\vscode.ps1"

pause
