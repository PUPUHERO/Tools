# 讀取設定文件的內容
$json = Get-Content -Path $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json | ConvertFrom-Json -Depth 10

if (!$json.profiles.default) {
    $json.profiles | Add-Member -MemberType NoteProperty -Name "default" -Value @()
}

# 將新的對象賦值給 $json.profiles.default
if (!$json.profiles.default.font) {
    $json.profiles.default | Add-Member -MemberType NoteProperty -Name "font" -Value ([PSCustomObject]@{ 
    face = "MesloLGM Nerd Font"
    })
}

# 將新的內容寫入設定文件
$json | ConvertTo-Json -Depth 10 | Set-Content -Path $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json