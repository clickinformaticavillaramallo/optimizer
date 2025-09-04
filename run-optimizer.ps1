# run-optimizer.ps1
$exeUrl = "https://github.com/hellzerg/optimizer/releases/download/16.9/Optimizer.exe"
$tmpExe = "$env:TEMP\Optimizer.exe"

Write-Host "[*] Descargando Optimizer..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $exeUrl -OutFile $tmpExe -UseBasicParsing

Unblock-File -Path $tmpExe
Start-Process $tmpExe -Wait
