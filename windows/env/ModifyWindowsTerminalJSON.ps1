# 讀取設定文件的內容
$json = Get-Content -Path $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json | ConvertFrom-Json

# 修改 default profile 的 font face
$json.profiles.default.font.face = "MesloLGM Nerd Font"

# 將新的內容寫入設定文件
$json | ConvertTo-Json | Set-Content -Path $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
