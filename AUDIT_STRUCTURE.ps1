# -------------------------------------------------------------------------
# PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
# ARQUIVO: C:\Projetos\SaudeCicloDaVida\AUDIT_STRUCTURE.ps1
# OBJETIVO: AUDITORIA SISTÊMICA DE INTEGRIDADE (RAIZ C: v2.7)
# -------------------------------------------------------------------------

Clear-Host
$Root = "C:\Projetos\SaudeCicloDaVida"

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "        VAULTMIND OS | SAÚDE CICLO DA VIDA v2.7          " -ForegroundColor White -BackgroundColor DarkCyan
Write-Host "             AUDITORIA SISTÊMICA DE INTEGRIDADE           " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

# 1. VERIFICAÇÃO DE MÓDULOS E DEPENDÊNCIAS
Write-Host "[1/4] Verificando integridade das dependências..." -ForegroundColor Yellow
$Modules = @("backend", "web", "mobile", "web-admin")

foreach ($m in $Modules) {
    if (Test-Path "$Root\$m\node_modules") {
        Write-Host "  [OK] Dependências de $m instaladas." -ForegroundColor Green
    } else {
        Write-Host "  [FALHA] Dependências de $m AUSENTES!" -ForegroundColor Red
    }
}

# 2. INFRAESTRUTURA DE DADOS (POSTGRESQL / PRISMA)
Write-Host "`n[2/4] Verificando infraestrutura de dados..." -ForegroundColor Yellow
if (Test-Path "$Root\backend\prisma\schema.prisma") {
    Write-Host "  [OK] Schema Prisma localizado." -ForegroundColor Green
} else {
    Write-Host "  [FALHA] Schema Prisma ausente!" -ForegroundColor Red
}

if (Test-Path "$Root\backend\node_modules\.prisma") {
    Write-Host "  [OK] Prisma Client sincronizado." -ForegroundColor Green
} else {
    Write-Host "  [AVISO] Prisma Client não detectado. Execute 'npx prisma generate'." -ForegroundColor Magenta
}

# 3. VALIDAÇÃO DE CONFIGURAÇÕES (.env)
Write-Host "`n[3/4] Validando variáveis de ambiente..." -ForegroundColor Yellow
foreach ($m in $Modules) {
    if (Test-Path "$Root\$m\.env") {
        Write-Host "  [OK] .env de $m presente." -ForegroundColor Green
    } else {
        Write-Host "  [FALHA] .env de $m ausente!" -ForegroundColor Red
    }
}

# 4. RESUMO DE SAÚDE DO SISTEMA
Write-Host "`n[4/4] Relatório Final..." -ForegroundColor Yellow
$FileCount = (Get-ChildItem -Path $Root -Recurse -File -Exclude node_modules, .git, .next, dist | Measure-Object).Count
Write-Host "  > Local: $Root" -ForegroundColor Gray
Write-Host "  > Arquivos de código rastreados: $FileCount" -ForegroundColor White

Write-Host "`n==========================================================" -ForegroundColor Cyan