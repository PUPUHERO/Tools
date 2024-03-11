Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
# Set the Import refreshenv to the $PROFILE
$line = 'Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1'
if (!(Select-String -Path $PROFILE -Pattern ( [regex]::Escape($line) ) -Quiet)) {
    Add-Content $PROFILE $line
}
. $PROFILE
