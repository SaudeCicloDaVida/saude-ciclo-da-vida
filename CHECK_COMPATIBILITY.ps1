# -------------------------------------------------------------------------
# PROJETO: SAÚDE CICLO DA VIDA
# ARQUIVO: CHECK_COMPATIBILITY.ps1
# OBJETIVO: AUDITORIA DE HARDWARE, SOFTWARE E ESTRUTURA DE PASTAS (FIXED)
# -------------------------------------------------------------------------

Clear-Host
$Root = "C:\Projetos\SaudeCicloDaVida"

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "        SAÚDE CICLO DA VIDA | AUDITORIA DE SISTEMA        " -ForegroundColor White -BackgroundColor Blue
Write-Host "==========================================================" -ForegroundColor Cyan

# 1. TESTE DE HARDWARE (Capacidade de Carga)
Write-Host "`n[1/3] Verificando Recursos de Hardware..." -ForegroundColor Yellow
$Ram = Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum
$RamGB = [Math]::Round($Ram.Sum / 1GB, 2)
$CPU = (Get-CimInstance Win32_Processor).Name

Write-Host "  > CPU: $($CPU)" -ForegroundColor White
Write-Host "  > RAM: $($RamGB) GB" -ForegroundColor White

if ($RamGB -lt 12) {
    Write-Host "  [AVISO] RAM abaixo de 12GB. Executar os 4 módulos pode causar lentidão." -ForegroundColor Magenta
} else {
    Write-Host "  [OK] Hardware comporta o desenvolvimento multi-módulo." -ForegroundColor Green
}

# 2. TESTE DE FERRAMENTAS (Software)
Write-Host "`n[2/3] Verificando Ferramentas de Desenvolvimento..." -ForegroundColor Yellow
$ToolsList = @(
    @{ Name = "Node.js"; Cmd = "node -v" },
    @{ Name = "NPM";     Cmd = "npm -v" },
    @{ Name = "Git";     Cmd = "git --version" },
    @{ Name = "Expo";    Cmd = "npx expo --version" },
    @{ Name = "Prisma";  Cmd = "npx prisma -v" }
)

foreach ($tool in $ToolsList) {
    try {
        $version = Invoke-Expression $tool.Cmd -ErrorAction Stop
        # Usando $() para evitar erro de referência de drive com o caractere ':'
        Write-Host "  [OK] $($tool.Name): $($version)" -ForegroundColor Green
    } catch {
        Write-Host "  [FALHA] $($tool.Name) não encontrado ou não configurado!" -ForegroundColor Red
    }
}

# 3. TESTE DE ESTRUTURA DE PASTAS (Health Check)
Write-Host "`n[3/3] Verificando Integridade dos Módulos..." -ForegroundColor Yellow
$Modules = @("backend", "mobile", "web", "web-admin")

foreach ($m in $Modules) {
    $Path = Join-Path $Root $m
    if (Test-Path $Path) {
        $NodeModules = Join-Path $Path "node_modules"
        if (Test-Path $NodeModules) {
            Write-Host "  [OK] Módulo $($m): Estrutura e dependências presentes." -ForegroundColor Green
        } else {
            Write-Host "  [ALERTA] Módulo $($m): Pasta node_modules ausente. Execute 'npm install'." -ForegroundColor Magenta
        }
    } else {
        Write-Host "  [CRÍTICO] Pasta do módulo $($m) não localizada em $($Path)" -ForegroundColor Red
    }
}

Write-Host "`n==========================================================" -ForegroundColor Cyan
Write-Host "             AUDITORIA FINALIZADA COM SUCESSO             " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan