# Description: 修改 Windows Terminal 的設定文件 settings.json
# Notes: Need to be run in PowerShellCore
# 讀取設定文件的內容
$json = Get-Content -Path $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json | ConvertFrom-Json -Depth 10

# 將新的對象賦值給 $json.profiles.defaults
if (!$json.profiles.defaults.font) {
    $json.profiles.defaults | Add-Member -MemberType NoteProperty -Name "font" -Value ([PSCustomObject]@{ 
    face = "MesloLGM Nerd Font"
    })
}

# 將新的內容寫入設定文件
$json | ConvertTo-Json -Depth 10 | Set-Content -Path $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json