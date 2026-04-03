# -------------------------------------------------------------------------
# PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
# ARQUIVO: START_SESSION.ps1
# OBJETIVO: DETECÇÃO DINÂMICA DE IP E CORREÇÃO DE ENDPOINTS .ENV
# -------------------------------------------------------------------------

Clear-Host
$Root = "C:\Projetos\SaudeCicloDaVida"

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "        VAULTMIND OS | SAÚDE CICLO DA VIDA v2.7          " -ForegroundColor White -BackgroundColor Blue
Write-Host "            SISTEMA DE AUTO-CONFIGURAÇÃO DE REDE          " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

# 1. DETECÇÃO DO IPV4 ATUAL (Wi-Fi)
Write-Host "[1/5] Detectando IP da rede atual..." -ForegroundColor Yellow
$localIp = (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Wi-Fi").IPAddress
if (-not $localIp) {
    $localIp = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.IPAddress -notmatch "127.0.0.1|169.254" } | Select-Object -First 1).IPAddress
}
Write-Host "  > IP Identificado: $localIp" -ForegroundColor Green

# 2. ATUALIZAÇÃO DOS ARQUIVOS .ENV (Injeção de IP)
Write-Host "`n[2/5] Corrigindo endpoints nos arquivos .env..." -ForegroundColor Yellow

$EnvFiles = @(
    "$Root\backend\.env",
    "$Root\mobile\.env",
    "$Root\web\.env",
    "$Root\web-admin\.env"
)

foreach ($file in $EnvFiles) {
    if (Test-Path $file) {
        $content = Get-Content $file
        # Regex para encontrar IPs antigos (formato 192.168.X.X) e substituir pelo novo
        $newContent = $content -replace '192\.168\.\d{1,3}\.\d{1,3}', $localIp
        $newContent | Set-Content $file
        Write-Host "  [OK] $file atualizado para $localIp" -ForegroundColor Green
    }
}

# 3. VERIFICAÇÃO DE PORTAS (4000, 3000, 5173)
Write-Host "`n[3/5] Liberando portas de rede..." -ForegroundColor Yellow
$Ports = @(4000, 3000, 5173)
foreach ($port in $Ports) {
    $checkPort = Get-NetTCPConnection -LocalPort $port -ErrorAction SilentlyContinue
    if ($checkPort) {
        Stop-Process -Id $checkPort.OwningProcess -Force -ErrorAction SilentlyContinue
        Write-Host "  [OK] Porta $port resetada." -ForegroundColor Green
    }
}

# 4. DISPARO DO ECOSSISTEMA
Write-Host "`n[4/5] Disparando motores em $localIp..." -ForegroundColor Yellow

# Backend
Start-Process powershell -ArgumentList "-NoExit", "-Command", "Set-Location $Root\backend; npm run start:dev" -WindowStyle Normal
# Web Admin
Start-Process powershell -ArgumentList "-NoExit", "-Command", "Set-Location $Root\web-admin; npm run dev" -WindowStyle Normal
# Mobile (Forçando IP no Expo)
$env:EXPO_PACKAGER_HOSTNAME = $localIp
Start-Process powershell -ArgumentList "-NoExit", "-Command", "Set-Location $Root\mobile; `$env:EXPO_PACKAGER_HOSTNAME='$localIp'; npx expo start -c" -WindowStyle Normal

Write-Host "`n[5/5] Setup concluído. Verifique as novas janelas." -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan