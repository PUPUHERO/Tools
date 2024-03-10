# 讀取設定文件的內容
$json = Get-Content -Path $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json | ConvertFrom-Json -Depth 10

# 創建一個新的對象
$font = New-Object PSObject -Property @{
    face = "MesloLGM Nerd Font"
}

# 將新的對象賦值給 $json.profiles.default.font
$json.profiles.default.font = $font

# 將新的內容寫入設定文件
$json | ConvertTo-Json | Set-Content -Path $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
