Install-Module -Name Terminal-Icons -Repository PSGallery
$command = 'Import-Module -Name Terminal-Icons'
if ((Get-Content $PROFILE | Select-String -Pattern $command -Quiet) -eq $false) {
    Add-Content $PROFILE $command
}
. $PROFILE
