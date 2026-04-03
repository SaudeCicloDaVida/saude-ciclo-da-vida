# -------------------------------------------------------------------------
# PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
# ARQUIVO: E:\Projetos\SaudeCicloDaVida\AUDIT_TREE_SaudeCicloDaVida.ps1
# OBJETIVO: VISUALIZAÇÃO LIMPA DA ESTRUTURA TÉCNICA (ASCII COMPATÍVEL)
# STATUS: V1.0 - INTEGRADO AO VAULTMIND OS
# -------------------------------------------------------------------------

Clear-Host
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "        VAULTMIND OS | SAÚDE CICLO DA VIDA v2.6          " -ForegroundColor White -BackgroundColor Blue
Write-Host "             MAPEAMENTO DE ESTRUTURA TÉCNICA              " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "Local: E:\Projetos\SaudeCicloDaVida`n" -ForegroundColor Gray

# 🛡️ FILTRO DE HIGIENE CIRÚRGICA (Remoção de lixo e binários)
$Exclude = @(
    "node_modules", 
    ".next", 
    ".git", 
    "package-lock.json", 
    "public", 
    ".vercel", 
    "dist",
    ".vite",
    ".DS_Store",
    "thumbs.db",
    "build",
    "out",
    "coverage"
)

function Get-CleanTree {
    param (
        [string]$Path = ".",
        [string]$Indent = ""
    )
    
    # Obtém itens filtrando a lista de exclusão e ordenando por tipo (Pastas primeiro)
    $Items = Get-ChildItem -Path $Path | 
             Where-Object { $Exclude -notcontains $_.Name } | 
             Sort-Object PSIsContainer -Descending
    
    foreach ($Item in $Items) {
        if ($Item.PSIsContainer) {
            # Renderiza Pasta (Símbolo ASCII +---) em Amarelo para destaque
            Write-Host "$Indent+---$($Item.Name)/" -ForegroundColor Yellow
            
            # Recorrência para subpastas com incremento de indentação
            Get-CleanTree -Path $Item.FullName -Indent "$Indent|   "
        } else {
            # Renderiza Arquivo (Símbolo ASCII |---)
            $ext = [System.IO.Path]::GetExtension($Item.Name).ToLower()
            
            # Destaque técnico para arquivos de configuração e infraestrutura
            if ($ext -eq ".prisma" -or $ext -eq ".env" -or $ext -eq ".ps1") {
                Write-Host "$Indent|---$($Item.Name)" -ForegroundColor Magenta
            } else {
                Write-Host "$Indent|---$($Item.Name)" -ForegroundColor Gray
            }
        }
    }
}

# Execução do Mapeamento na Raiz do Projeto
Get-CleanTree -Path "E:\Projetos\SaudeCicloDaVida"

Write-Host "`n==========================================================" -ForegroundColor Cyan
Write-Host "         MAPEAMENTO CONCLUÍDO COM SUCESSO                 " -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Cyan