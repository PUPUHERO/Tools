winget install -e --id Microsoft.WindowsTerminal

# Open and close Windows Terminal for the first time opening initialization
$terminal = Start-Process wt -PassThru
Start-Sleep -Seconds 2
if (Get-Process -Id $terminal.Id -ErrorAction SilentlyContinue) {
    Stop-Process -Id $terminal.Id
}

# Modify the settings.json of Windows Terminal
Write-Host "==========Modifying the settings.json of Windows Terminal...=========="
windows\env\modifyWindowsTerminalJSON.ps1
