# -------------------------------------------------------------------------
# PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
# ARQUIVO: C:\Projetos\SaudeCicloDaVida\AUDIT_TREE.ps1
# OBJETIVO: MAPEAMENTO DE ESTRUTURA TÉCNICA NA RAIZ C:
# -------------------------------------------------------------------------

Clear-Host
$Root = "C:\Projetos\SaudeCicloDaVida"

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "        VAULTMIND OS | SAÚDE CICLO DA VIDA v2.7          " -ForegroundColor White -BackgroundColor Blue
Write-Host "             MAPEAMENTO DE ESTRUTURA TÉCNICA              " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "Local: $Root`n" -ForegroundColor Gray

$Exclude = @("node_modules", ".next", ".git", "package-lock.json", "dist", ".vite", "build")

function Get-CleanTree {
    param ([string]$Path = ".", [string]$Indent = "")
    $Items = Get-ChildItem -Path $Path | Where-Object { $Exclude -notcontains $_.Name } | Sort-Object PSIsContainer -Descending
    foreach ($Item in $Items) {
        if ($Item.PSIsContainer) {
            Write-Host "$Indent+---$($Item.Name)/" -ForegroundColor Yellow
            Get-CleanTree -Path $Item.FullName -Indent "$Indent|   "
        } else {
            $ext = [System.IO.Path]::GetExtension($Item.Name).ToLower()
            if ($ext -eq ".prisma" -or $ext -eq ".env" -or $ext -eq ".ps1") {
                Write-Host "$Indent|---$($Item.Name)" -ForegroundColor Magenta
            } else {
                Write-Host "$Indent|---$($Item.Name)" -ForegroundColor Gray
            }
        }
    }
}

Get-CleanTree -Path $Root
Write-Host "`n==========================================================" -ForegroundColor Cyan