# 🧭 CONTEXT SNAPSHOT: Módulo [SCRIPTS]
**Projeto:** SaudeCicloDaVida
**Gerado em:** 05/03/2026, 00:26:26
**Total de Arquivos nesta Partição:** 2

---

================================================================================
📁 ARQUIVO: scripts/project_tree.py
🛠️ EXTENSÃO: .py
📏 TAMANHO: 3.02 KB
🕒 ÚLTIMA MODIFICAÇÃO: 18/01/2026, 23:53:49
================================================================================

```py
# -*- coding: utf-8 -*-
"""
-------------------------------------------------------------------------
PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
ARQUITETURA: FULL STACK (NestJS + React Native + Next.js)
GOVERNANÇA: PGT-01 (NORMA EXTREMO ZERO)
-------------------------------------------------------------------------
MÓDULO: GERADOR DE DOCUMENTAÇÃO ESTRUTURAL (TREE v2.0)
DESCRIÇÃO: Mapeia pastas e arquivos e exporta um relatório Markdown (.md)
para a raiz do projeto, ignorando lixo de sistema.
-------------------------------------------------------------------------
"""

import os

def generate_tree_content(startpath, ignore_dirs=None):
    if ignore_dirs is None:
        # LISTA NEGRA: Pastas ignoradas
        ignore_dirs = [
            'node_modules', '.git', '.next', 'dist', 'build', 
            'coverage', '__pycache__', '.expo', '.vscode', '.idea'
        ]
    
    # Buffer para armazenar as linhas do relatório
    lines = []
    
    root_name = os.path.basename(os.path.abspath(startpath))
    
    # Cabeçalho do Markdown
    lines.append(f"# 📁 ESTRUTURA DO PROJETO: {root_name}")
    lines.append(f"> Relatório gerado automaticamente.\n")
    lines.append("```text") # Inicia bloco de código para manter indentação

    for root, dirs, files in os.walk(startpath):
        level = root.replace(startpath, '').count(os.sep)
        indent = ' ' * 4 * (level)
        
        # Filtra pastas ignoradas
        dirs[:] = [d for d in dirs if d not in ignore_dirs]
        
        folder_name = os.path.basename(root)
        
        # Lógica de desenho da árvore
        if level == 0:
            pass 
        else:
            lines.append(f"{indent}📂 {folder_name}/")
        
        subindent = ' ' * 4 * (level + 1)
        for f in files:
            lines.append(f"{subindent}📄 {f}")

    lines.append("```") # Fecha bloco de código
    lines.append("\n_Fim do Mapeamento_")
    
    return "\n".join(lines)

def main():
    # Limpa console
    os.system('cls' if os.name == 'nt' else 'clear')
    print("=" * 50)
    print("   GERADOR DE ESTRUTURA v2.0")
    print("=" * 50)

    # Identifica a raiz do projeto
    current_dir = os.path.dirname(os.path.abspath(__file__))
    root_dir = os.path.dirname(current_dir)
    
    print(f"📍 Mapeando raiz: {root_dir}...")
    
    # Gera o conteúdo
    markdown_content = generate_tree_content(root_dir)
    
    # Define o nome do arquivo de saída na Raiz
    output_file = os.path.join(root_dir, "ESTRUTURA_PROJETO.md")
    
    # Escreve no disco (UTF-8 para suportar emojis)
    try:
        with open(output_file, "w", encoding="utf-8") as f:
            f.write(markdown_content)
        
        print(f"\n✅ SUCESSO! Arquivo gerado:")
        print(f"   📄 {output_file}")
        print("\n   Você pode abrir este arquivo no VS Code para visualizar.")
        
    except Exception as e:
        print(f"\n❌ ERRO AO GRAVAR ARQUIVO: {e}")

if __name__ == "__main__":
    main()
```

================================================================================
📁 ARQUIVO: scripts/verify_env.py
🛠️ EXTENSÃO: .py
📏 TAMANHO: 6.29 KB
🕒 ÚLTIMA MODIFICAÇÃO: 18/01/2026, 23:53:49
================================================================================

```py
# -*- coding: utf-8 -*-
"""
-------------------------------------------------------------------------
PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
ARQUITETURA: FULL STACK (NestJS + React Native + Next.js)
GOVERNANÇA: PGT-01 (NORMA EXTREMO ZERO)
-------------------------------------------------------------------------
MÓDULO: SCRIPT DE VERIFICAÇÃO DE AMBIENTE (SVA)
DESCRIÇÃO: Valida arsenal tecnológico (Node, Python, Git) e estrutura
de pastas (Backend, Mobile, Web-Admin) antes do início dos trabalhos.
-------------------------------------------------------------------------
"""

import sys
import os
import subprocess

# Definição de Cores ANSI para Feedback Visual Profissional
class Colors:
    HEADER = '\033[95m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'

def print_status(component, status, message=""):
    """Imprime o status formatado e alinhado no console."""
    if status == "OK":
        color = Colors.OKGREEN
        symbol = "✅"
    elif status == "ALERTA":
        color = Colors.WARNING
        symbol = "⚠️ "
    else:
        color = Colors.FAIL
        symbol = "❌"
    
    # Formatação tabular para leitura fácil
    print(f"{symbol} [{component.ljust(15)}] {color}{status.ljust(10)}{Colors.ENDC} {message}")

def check_command(command, version_flag="--version"):
    """
    Verifica se um comando existe no PATH e retorna sua versão limpa.
    """
    try:
        # shell=True garante compatibilidade Windows/Linux
        result = subprocess.run(
            f"{command} {version_flag}", 
            shell=True, 
            capture_output=True, 
            text=True,
            encoding='utf-8',
            errors='ignore'
        )
        
        if result.returncode == 0:
            # Pega a primeira linha da saída
            output = result.stdout.strip().split('\n')[0]
            if not output: 
                output = result.stderr.strip().split('\n')[0]
            return True, output
        else:
            return False, None
    except Exception:
        return False, None

def main():
    # Limpa a tela antes de começar (Cross-platform)
    os.system('cls' if os.name == 'nt' else 'clear')
    
    print(f"{Colors.BOLD}{Colors.HEADER}="*70)
    print("   🛡️  CyberTreinaIA - VERIFICADOR DE AMBIENTE (SVA v3.0)")
    print("   PROJETO: SAÚDE CICLO DA VIDA | GOVERNANÇA: ATIVA")
    print("="*70 + f"{Colors.ENDC}")

    global_success = True

    # ---------------------------------------------------------
    # 1. VALIDAÇÃO DE FERRAMENTAS (ARSENAL TECNOLÓGICO)
    # ---------------------------------------------------------
    print(f"\n{Colors.HEADER}--- 1. ARSENAL TECNOLÓGICO (VALIDAÇÃO DE BINÁRIOS) ---{Colors.ENDC}")

    # A. Python
    py_version = sys.version.split()[0]
    if sys.version_info >= (3, 10):
        print_status("PYTHON", "OK", f"Versão: {py_version}")
    else:
        print_status("PYTHON", "ERRO", f"Versão Obsoleta: {py_version}")
        global_success = False

    # B. Node.js (Essencial para NestJS, NextJS e React Native)
    node_ok, node_ver = check_command("node", "-v")
    if node_ok:
        print_status("NODE.JS", "OK", f"Engine: {node_ver}")
    else:
        print_status("NODE.JS", "ERRO", "Não instalado. Essencial para o projeto.")
        global_success = False

    # C. Git
    git_ok, git_ver = check_command("git", "--version")
    if git_ok:
        print_status("GIT", "OK", f"Version Control: {git_ver}")
    else:
        print_status("GIT", "ERRO", "Git não encontrado.")
        global_success = False

    # D. NPM (Gerenciador de Pacotes)
    npm_ok, npm_ver = check_command("npm", "-v")
    if npm_ok:
        print_status("NPM", "OK", f"Package Manager: {npm_ver}")
    else:
        print_status("NPM", "ERRO", "NPM não encontrado.")
        global_success = False

    # ---------------------------------------------------------
    # 2. VALIDAÇÃO ESTRUTURAL (PASTAS DO PROJETO)
    # ---------------------------------------------------------
    print(f"\n{Colors.HEADER}--- 2. VALIDAÇÃO ESTRUTURAL (PASTAS) ---{Colors.ENDC}")
    
    # Lista atualizada com a realidade do projeto
    required_dirs = ["backend", "mobile", "web-admin", "scripts"]
    
    # Identifica a raiz do projeto
    current_dir = os.path.dirname(os.path.abspath(__file__))
    root_dir = os.path.dirname(current_dir)
    
    for folder in required_dirs:
        target_path = os.path.join(root_dir, folder)
        if os.path.isdir(target_path):
            print_status(f"DIR: {folder}", "OK", "Módulo Presente")
        else:
            print_status(f"DIR: {folder}", "ALERTA", "Diretório não encontrado!")
            global_success = False

    # ---------------------------------------------------------
    # 3. VALIDAÇÃO DE ARQUIVOS CRÍTICOS
    # ---------------------------------------------------------
    print(f"\n{Colors.HEADER}--- 3. ARQUIVOS DE CONFIGURAÇÃO ---{Colors.ENDC}")
    
    # Backend Package
    if os.path.exists(os.path.join(root_dir, "backend", "package.json")):
        print_status("BACKEND PKG", "OK", "package.json encontrado")
    else:
        print_status("BACKEND PKG", "ERRO", "Arquivo crítico ausente")
        global_success = False

    # Mobile App.tsx
    if os.path.exists(os.path.join(root_dir, "mobile", "App.tsx")):
        print_status("MOBILE APP", "OK", "App.tsx encontrado")
    else:
        print_status("MOBILE APP", "ALERTA", "App.tsx não encontrado (verifique estrutura)")

    # ---------------------------------------------------------
    # 4. VEREDITO FINAL
    # ---------------------------------------------------------
    print(f"\n{Colors.BOLD}{Colors.HEADER}="*70)
    print("   VEREDITO DO ARQUITETO")
    print("="*70 + f"{Colors.ENDC}")

    if global_success:
        print(f"\n{Colors.OKGREEN}✅ STATUS VERDE: AMBIENTE APROVADO.{Colors.ENDC}")
        print("   O Engenheiro está autorizado a iniciar a codificação.")
    else:
        print(f"\n{Colors.FAIL}🛑 STATUS VERMELHO: AMBIENTE IRREGULAR.{Colors.ENDC}")
        print("   AÇÃO: Corrija os erros acima antes de continuar.")
        sys.exit(1)

if __name__ == "__main__":
    main()
```

