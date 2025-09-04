# run-optimizer.ps1
$exeUrl = "https://github.com/clickinformaticavillaramallo/optimizer/raw/main/Optimizer-16.7.exe"
$tmpExe = "$env:TEMP\Optimizer-16.7.exe"

Write-Host "[*] Descargando Optimizer 16.7..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $exeUrl -OutFile $tmpExe -UseBasicParsing

Unblock-File -Path $tmpExe
Start-Process $tmpExe -Wait
