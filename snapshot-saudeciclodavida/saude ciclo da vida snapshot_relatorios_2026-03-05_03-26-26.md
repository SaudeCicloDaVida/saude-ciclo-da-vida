# 🧭 CONTEXT SNAPSHOT: Módulo [RELATORIOS]
**Projeto:** SaudeCicloDaVida
**Gerado em:** 05/03/2026, 00:26:26
**Total de Arquivos nesta Partição:** 2

---

================================================================================
📁 ARQUIVO: relatorios/index.html
🛠️ EXTENSÃO: .html
📏 TAMANHO: 777 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 21/01/2026, 10:04:37
================================================================================

```html
<html><head><meta charset='utf-8'><title>Dashboard de Relatórios de Diffs</title>
<style>
body { font-family: Arial, sans-serif; background: #111; color: #eee; }
h1 { color: #fff; }
table { width: 100%; border-collapse: collapse; margin-top: 20px; }
th, td { padding: 8px 12px; border-bottom: 1px solid #333; }
a { color: #4caf50; text-decoration: none; }
a:hover { text-decoration: underline; }
tr:hover { background: #222; }
</style></head><body>
<h1>Dashboard de Relatórios de Diffs</h1>
<table>
<tr><th>Relatório</th><th>Data/Hora</th><th>Tamanho</th></tr>
<tr>
<td><a href="relatorio_diffs_20260121_100437.html" target="_blank">relatorio_diffs_20260121_100437.html</a></td>
<td>2026-01-21 10:04:37</td>
<td>154.4 KB</td>
</tr>
</table>
</body></html>
```

================================================================================
📁 ARQUIVO: relatorios/relatorio_diffs_20260121_100437.html
🛠️ EXTENSÃO: .html
📏 TAMANHO: 154.36 KB
🕒 ÚLTIMA MODIFICAÇÃO: 21/01/2026, 10:04:37
================================================================================

```html
<html><head><meta charset='utf-8'><title>Relatório de Diffs</title>
<style>
body { font-family: Consolas, monospace; background: #111; color: #eee; }
.arquivo { margin-bottom: 40px; }
.titulo { font-weight: bold; font-size: 16px; margin-bottom: 10px; }
.tipo { font-style: italic; color: #aaa; }
pre { background: #222; padding: 10px; border-radius: 4px; overflow-x: auto; }
.novo { color: #4caf50; }
.alterado { color: #ff9800; }
</style></head><body>
<h1>Relatório de Diffs — 2026-01-21 10:04:37</h1>
<div class='arquivo'>
<div class='titulo alterado'>E:\Projetos\SaudeCicloDaVida\DESIGN_SYSTEM.md</div>
<div class='tipo'>Tipo: ALTERADO</div>
<pre>
--- E:\Projetos\SaudeCicloDaVida\DESIGN_SYSTEM.md
+++ DESIGN_SYSTEM_TEMPLATE
@@ -1,70 +1,2 @@
-# SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)

-&gt; Documento Mestre de Governança e Design (PGT-01)

-&gt; Última Atualização: 19/01/2026

-

----

-

-## 0. PROTOCOLO DE GOVERNANÇA (REGRA DE OURO)

-**O Desenvolvedor (IA) deve atuar como um Mentor Sênior Full Stack e seguir rigorosamente:**

-

-1.  **Precisão Cirúrgica:** Tudo deve ser feito passo a passo, tópico por tópico.

-2.  **Detalhamento Extremo:**

-    * Local de execução do comando deve ser explicitamente discriminado.

-    * Linhas de comando devem ser expressamente discriminadas.

-3.  **Integridade de Arquivos:**

-    * **NÃO REMENDAR ARQUIVOS.** Sempre fornecer o código completo para substituição.

-    * Validação de arquivo com comparação (contexto antes/depois se necessário).

-4.  **Didática:** Pensar sempre em alguém começando do ZERO absoluto.

-5.  **Lógica:** Clareza lógica, ordem cronológica e conteúdo tecnológico atualizado.

-

----

-

-## 1. DESIGN SYSTEM &amp; UI (Visual)

-

-### A. Regras Globais

-* **Fundo (Background):** `#FFFFFF` (Branco Puro) - **OBRIGATÓRIO** em todas as telas.

-* **Margens de Segurança (Safe Area):**

-    * **Topo:** `paddingTop: 50` a `60` (Android/iOS) para não colar na bateria.

-    * **Alinhamento Vertical:** Telas de Login/Formulário usam `justifyContent: 'flex-start'` (Topo) e não `center`.

-* **Fontes/Texto:**

-    * Cor Principal: `#000000` (Preto).

-    * Nomes Próprios: Exibir Nome Completo (proibido usar `.split` para cortar nomes).

-

-### B. Identidade Visual (Logos)

-1.  **Tela de Login (Boas-vindas):**

-    * **Arquivo:** `LogoApp.png` (Logo W170 x H250).

-    * **Comportamento:** Posicionado no **TOPO** da tela (com margem de respiro).

-    * **Regra:** Não escrever o nome do app em texto abaixo dele (o logo já contém o nome).

-2.  **Telas Internas (Home/Dashboard):**

-    * **Arquivo:** `LogoAppGeral.png` (Símbolo Gota W80 x H80).

-    * **Comportamento:** Centralizado no topo do scroll.

-    * **Regra:** Escrever "Saúde Ciclo da Vida" em texto preto abaixo do símbolo.

-

-### C. Componentes Críticos

-

-#### 1. Botão SOS (Pânico)

-* **Arquivo:** `PanicButtonSmall.tsx`

-* **Estilo:** Circular (60x60), Vermelho (`#dc2626`) com borda branca e sombra forte.

-* **Posição:** Flutuante no Canto Inferior Direito (`bottom: 50`, `right: 25`).

-* **Lógica:** Bloqueado (Cinza) antes do primeiro login; Ativo (Vermelho) após login.

-

-#### 2. Botão SAIR

-* **Arquivo:** `LogoutButton.tsx`

-* **Estilo:** Borda fina vermelha, fundo claro (`#fef2f2`), ícone `LogOut` vermelho.

-* **Uso:** Obrigatório no Header de telas logadas.

-

-#### 3. Ícones

-* **Biblioteca:** `lucide-react-native` (Proibido usar Emojis).

-* **Estilo:** Traço fino, cor preta, dentro de círculos cinzas suaves.

-

----

-

-## 2. ARQUITETURA TÉCNICA

-

-### Mobile (Expo/React Native)

-* **Inputs:** Estilo "Caixa" com borda (`borderWidth: 1`), fundo cinza claro (`#f3f4f6`) e texto centralizado.

-* **Botão Enter:** Cinza médio (`#d1d5db`), texto "ENTER" em negrito preto.

-

-### Integração

-* **API:** Axios configurado com IP fixo da máquina local.

-* **Armazenamento:** `AsyncStorage` para persistência de estado (ex: Primeiro Acesso).
+# DESIGN SYSTEM

+Descrição do design system do projeto.

</pre>
</div>
<div class='arquivo'>
<div class='titulo alterado'>E:\Projetos\SaudeCicloDaVida\ESTRUTURA_PROJETO.md</div>
<div class='tipo'>Tipo: ALTERADO</div>
<pre>
--- E:\Projetos\SaudeCicloDaVida\ESTRUTURA_PROJETO.md
+++ ESTRUTURA_PROJETO_TEMPLATE
@@ -1,48 +1,2 @@
-# 📁 ESTRUTURA DO PROJETO: SaudeCicloDaVida

-&gt; Status: VALIDADO EM 20/01/2026 (Ciclo Autenticação Completo)

-

-```text

-    📄 docker-compose.yml

-    📄 ESTRUTURA_PROJETO.md

-    📄 DESIGN_SYSTEM.md

-    📄 PADROES.md

-    📄 README.md

-    📂 docs/

-        📄 MANUAL_AUTENTICACAO.md  &lt;-- (NOVO: Blueprint da Segurança)

-    📂 backend/

-        📄 .env

-        ...

-        📂 src/

-            📄 app.module.ts

-            📄 main.ts (Porta 4000)

-            📄 prisma.service.ts

-            📂 auth/

-                📄 auth.controller.ts (Login + Register)

-                📄 auth.module.ts

-                📄 auth.service.ts    (Lógica Bcrypt + JWT)

-                📂 dto/

-                    📄 register.dto.ts &lt;-- (NOVO: Validação)

-            📂 users/

-                📄 users.module.ts

-                📄 users.service.ts   (Create + Find + Medications)

-    📂 mobile/

-        📄 App.tsx (Rotas: Auth + App + Panic)

-        ...

-        📂 src/

-            📂 components/

-                📄 PanicButtonSmall.tsx

-                📄 LogoutButton.tsx

-            📂 screens/

-                📄 LoginScreen.tsx        (Com SOS Inteligente)

-                📄 RegisterScreen.tsx     &lt;-- (NOVO)

-                📄 ForgotPasswordScreen.tsx &lt;-- (NOVO)

-                📄 HomeScreen.tsx         (Persistência de Dados)

-                📄 MedicationScreen.tsx

-                📄 PanicScreen.tsx

-            📂 services/

-                📄 api.ts (Porta 4000)

-                📄 storage.ts             &lt;-- (NOVO: Persistência Offline)

-            📂 styles/

-                📄 global.ts

-    📂 web-admin/

-        ... (Estrutura Next.js padrão)
+# Estrutura do Projeto

+Descrição da arquitetura e organização de pastas.

</pre>
</div>
<div class='arquivo'>
<div class='titulo novo'>E:\Projetos\SaudeCicloDaVida\gerar_memorial.md</div>
<div class='tipo'>Tipo: NOVO</div>
<pre>(Arquivo novo criado, sem diff)</pre>
</div>
<div class='arquivo'>
<div class='titulo alterado'>E:\Projetos\SaudeCicloDaVida\MemorialProjeto.md</div>
<div class='tipo'>Tipo: ALTERADO</div>
<pre>
--- E:\Projetos\SaudeCicloDaVida\MemorialProjeto.md
+++ MemorialProjeto_TEMPLATE
@@ -1,3227 +1,2 @@
 # Memorial Técnico do Projeto

-Projeto analisado: E:\Projetos\SaudeCicloDaVida

-Data: 2026-01-19 00:30:31.151106

-

----

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\docker-compose.yml

-========================================

-Nome: docker-compose.yml

-Tipo: Arquivo YAML

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 845 bytes

-Modificado em: 2026-01-18 23:53:49.803615

-Criado em: 2026-01-18 23:53:49.803615

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\ESTRUTURA_PROJETO.md

-========================================

-Nome: ESTRUTURA_PROJETO.md

-Tipo: Documentação Markdown

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 14586 bytes

-Modificado em: 2026-01-18 23:53:49.660287

-Criado em: 2026-01-18 23:53:49.660287

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\ESTRUTURA_PROJETOv1.md

-========================================

-Nome: ESTRUTURA_PROJETOv1.md

-Tipo: Documentação Markdown

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 12528 bytes

-Modificado em: 2026-01-18 23:53:49.660287

-Criado em: 2026-01-18 23:53:49.660287

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\gerar_memorial.py

-========================================

-Nome: gerar_memorial.py

-Tipo: Código-fonte (Python)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 6139 bytes

-Modificado em: 2026-01-19 00:30:05.766565

-Criado em: 2026-01-19 00:30:03.370500

-

-Resumo interno do código Python:

-- Funções encontradas: ['identificar_tipo_arquivo', 'inferir_finalidade_arquivo', 'analisar_codigo_python', 'obter_metadados_arquivo', 'gerar_bloco_analise_arquivo', 'gerar_memorial', 'main']

-- Classes encontradas: Nenhuma

-- Imports detectados: ['os', 'sys', 'ast', 'datetime']

-- Variáveis globais: ['DIRETORIOS_IGNORADOS', 'nome_lower', 'tipos', 'nome', 'caminho', 'funcoes', 'classes', 'imports', 'variaveis', 'bloco', 'stats', 'nome_arquivo', 'tipo', 'finalidade', 'meta', 'bloco', 'memorial_path', 'linhas', 'raiz', 'arvore', 'conteudo', 'caminho_completo']

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\PADROES.md

-========================================

-Nome: PADROES.md

-Tipo: Documentação Markdown

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 6488 bytes

-Modificado em: 2026-01-18 23:53:49.787932

-Criado em: 2026-01-18 23:53:49.787932

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\README.md

-========================================

-Nome: README.md

-Tipo: Documentação Markdown

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 48 bytes

-Modificado em: 2026-01-18 23:53:49.787932

-Criado em: 2026-01-18 23:53:49.787932

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\.gitignore

-========================================

-Nome: .gitignore

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 763 bytes

-Modificado em: 2026-01-18 23:53:49.787932

-Criado em: 2026-01-18 23:53:49.787932

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\.prettierrc

-========================================

-Nome: .prettierrc

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 56 bytes

-Modificado em: 2026-01-18 23:53:49.787932

-Criado em: 2026-01-18 23:53:49.787932

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\docker-compose.yml

-========================================

-Nome: docker-compose.yml

-Tipo: Arquivo YAML

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 412 bytes

-Modificado em: 2026-01-18 23:53:49.787932

-Criado em: 2026-01-18 23:53:49.787932

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\eslint.config.mjs

-========================================

-Nome: eslint.config.mjs

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Arquivo de configuração.

-Tamanho: 934 bytes

-Modificado em: 2026-01-18 23:53:49.787932

-Criado em: 2026-01-18 23:53:49.787932

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\nest-cli.json

-========================================

-Nome: nest-cli.json

-Tipo: Arquivo JSON

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 179 bytes

-Modificado em: 2026-01-18 23:53:49.787932

-Criado em: 2026-01-18 23:53:49.787932

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\package-lock.json

-========================================

-Nome: package-lock.json

-Tipo: Arquivo JSON

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 374252 bytes

-Modificado em: 2026-01-18 23:53:49.787932

-Criado em: 2026-01-18 23:53:49.787932

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\package.json

-========================================

-Nome: package.json

-Tipo: Arquivo JSON

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 2519 bytes

-Modificado em: 2026-01-18 23:53:49.787932

-Criado em: 2026-01-18 23:53:49.787932

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\README.md

-========================================

-Nome: README.md

-Tipo: Documentação Markdown

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 5126 bytes

-Modificado em: 2026-01-18 23:53:49.787932

-Criado em: 2026-01-18 23:53:49.787932

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\tsconfig.build.json

-========================================

-Nome: tsconfig.build.json

-Tipo: Arquivo JSON

-Finalidade provável: Arquivo de configuração.

-Tamanho: 101 bytes

-Modificado em: 2026-01-18 23:53:49.803615

-Criado em: 2026-01-18 23:53:49.803615

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\tsconfig.json

-========================================

-Nome: tsconfig.json

-Tipo: Arquivo JSON

-Finalidade provável: Arquivo de configuração.

-Tamanho: 702 bytes

-Modificado em: 2026-01-18 23:53:49.803615

-Criado em: 2026-01-18 23:53:49.803615

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\prisma\schema.prisma

-========================================

-Nome: schema.prisma

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 9658 bytes

-Modificado em: 2026-01-18 23:53:49.787932

-Criado em: 2026-01-18 23:53:49.787932

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\prisma\seed.ts

-========================================

-Nome: seed.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 4364 bytes

-Modificado em: 2026-01-18 23:53:49.787932

-Criado em: 2026-01-18 23:53:49.787932

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\prisma\migrations\migration_lock.toml

-========================================

-Nome: migration_lock.toml

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 128 bytes

-Modificado em: 2026-01-18 23:53:49.787932

-Criado em: 2026-01-18 23:53:49.787932

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\prisma\migrations\20260117033303_init_full_ecosystem\migration.sql

-========================================

-Nome: migration.sql

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 8291 bytes

-Modificado em: 2026-01-18 23:53:49.787932

-Criado em: 2026-01-18 23:53:49.787932

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\app.controller.spec.ts

-========================================

-Nome: app.controller.spec.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 639 bytes

-Modificado em: 2026-01-18 23:53:49.795246

-Criado em: 2026-01-18 23:53:49.795246

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\app.controller.ts

-========================================

-Nome: app.controller.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 286 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\app.module.ts

-========================================

-Nome: app.module.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 666 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\app.service.ts

-========================================

-Nome: app.service.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente implementa regras de negócio.

-Tamanho: 150 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\main.ts

-========================================

-Nome: main.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1170 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\prisma.service.ts

-========================================

-Nome: prisma.service.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente implementa regras de negócio.

-Tamanho: 370 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\alerts\alerts.controller.spec.ts

-========================================

-Nome: alerts.controller.spec.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 596 bytes

-Modificado em: 2026-01-18 23:53:49.787932

-Criado em: 2026-01-18 23:53:49.787932

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\alerts\alerts.controller.ts

-========================================

-Nome: alerts.controller.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1186 bytes

-Modificado em: 2026-01-18 23:53:49.795246

-Criado em: 2026-01-18 23:53:49.795246

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\alerts\alerts.module.ts

-========================================

-Nome: alerts.module.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 264 bytes

-Modificado em: 2026-01-18 23:53:49.795246

-Criado em: 2026-01-18 23:53:49.795246

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\alerts\alerts.service.spec.ts

-========================================

-Nome: alerts.service.spec.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente implementa regras de negócio.

-Tamanho: 478 bytes

-Modificado em: 2026-01-18 23:53:49.795246

-Criado em: 2026-01-18 23:53:49.795246

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\alerts\alerts.service.ts

-========================================

-Nome: alerts.service.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente implementa regras de negócio.

-Tamanho: 1610 bytes

-Modificado em: 2026-01-18 23:53:49.795246

-Criado em: 2026-01-18 23:53:49.795246

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\alerts\dto\create-alert.dto.ts

-========================================

-Nome: create-alert.dto.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 32 bytes

-Modificado em: 2026-01-18 23:53:49.795246

-Criado em: 2026-01-18 23:53:49.795246

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\alerts\dto\update-alert.dto.ts

-========================================

-Nome: update-alert.dto.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 177 bytes

-Modificado em: 2026-01-18 23:53:49.795246

-Criado em: 2026-01-18 23:53:49.795246

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\alerts\entities\alert.entity.ts

-========================================

-Nome: alert.entity.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 23 bytes

-Modificado em: 2026-01-18 23:53:49.795246

-Criado em: 2026-01-18 23:53:49.795246

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\auth\auth.controller.spec.ts

-========================================

-Nome: auth.controller.spec.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente relacionado a autenticação.

-Tamanho: 496 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\auth\auth.controller.ts

-========================================

-Nome: auth.controller.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente relacionado a autenticação.

-Tamanho: 985 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\auth\auth.module.ts

-========================================

-Nome: auth.module.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente relacionado a autenticação.

-Tamanho: 651 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\auth\auth.service.spec.ts

-========================================

-Nome: auth.service.spec.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente relacionado a autenticação.

-Tamanho: 464 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\auth\auth.service.ts

-========================================

-Nome: auth.service.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente relacionado a autenticação.

-Tamanho: 2315 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\auth\jwt.strategy.ts

-========================================

-Nome: jwt.strategy.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 910 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\auth\dto\login.dto.ts

-========================================

-Nome: login.dto.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 104 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\users\users.controller.spec.ts

-========================================

-Nome: users.controller.spec.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente relacionado a usuários.

-Tamanho: 586 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\users\users.controller.ts

-========================================

-Nome: users.controller.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente relacionado a usuários.

-Tamanho: 466 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\users\users.module.ts

-========================================

-Nome: users.module.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente relacionado a usuários.

-Tamanho: 404 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\users\users.service.spec.ts

-========================================

-Nome: users.service.spec.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente relacionado a usuários.

-Tamanho: 471 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\users\users.service.ts

-========================================

-Nome: users.service.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente relacionado a usuários.

-Tamanho: 2419 bytes

-Modificado em: 2026-01-18 23:53:49.803076

-Criado em: 2026-01-18 23:53:49.803076

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\users\dto\create-user.dto.ts

-========================================

-Nome: create-user.dto.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente relacionado a usuários.

-Tamanho: 171 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\users\dto\update-user.dto.ts

-========================================

-Nome: update-user.dto.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente relacionado a usuários.

-Tamanho: 171 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\src\users\entities\user.entity.ts

-========================================

-Nome: user.entity.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente relacionado a usuários.

-Tamanho: 22 bytes

-Modificado em: 2026-01-18 23:53:49.797796

-Criado em: 2026-01-18 23:53:49.797796

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\test\app.e2e-spec.ts

-========================================

-Nome: app.e2e-spec.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 694 bytes

-Modificado em: 2026-01-18 23:53:49.803615

-Criado em: 2026-01-18 23:53:49.803615

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\backend\test\jest-e2e.json

-========================================

-Nome: jest-e2e.json

-Tipo: Arquivo JSON

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 192 bytes

-Modificado em: 2026-01-18 23:53:49.803615

-Criado em: 2026-01-18 23:53:49.803615

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\.gitignore

-========================================

-Nome: .gitignore

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 748 bytes

-Modificado em: 2026-01-18 23:53:49.803615

-Criado em: 2026-01-18 23:53:49.803615

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\.metadata

-========================================

-Nome: .metadata

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1751 bytes

-Modificado em: 2026-01-18 23:53:49.803615

-Criado em: 2026-01-18 23:53:49.803615

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\analysis_options.yaml

-========================================

-Nome: analysis_options.yaml

-Tipo: Arquivo YAML

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1448 bytes

-Modificado em: 2026-01-18 23:53:49.803615

-Criado em: 2026-01-18 23:53:49.803615

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\pubspec.lock

-========================================

-Nome: pubspec.lock

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 6289 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\pubspec.yaml

-========================================

-Nome: pubspec.yaml

-Tipo: Arquivo YAML

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 3935 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\README.md

-========================================

-Nome: README.md

-Tipo: Documentação Markdown

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 578 bytes

-Modificado em: 2026-01-18 23:53:49.803615

-Criado em: 2026-01-18 23:53:49.803615

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\.gitignore

-========================================

-Nome: .gitignore

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 267 bytes

-Modificado em: 2026-01-18 23:53:49.803615

-Criado em: 2026-01-18 23:53:49.803615

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\build.gradle.kts

-========================================

-Nome: build.gradle.kts

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 561 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\gradle.properties

-========================================

-Nome: gradle.properties

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 169 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\settings.gradle.kts

-========================================

-Nome: settings.gradle.kts

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 796 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\app\build.gradle.kts

-========================================

-Nome: build.gradle.kts

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1472 bytes

-Modificado em: 2026-01-18 23:53:49.803615

-Criado em: 2026-01-18 23:53:49.803615

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\app\src\debug\AndroidManifest.xml

-========================================

-Nome: AndroidManifest.xml

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 385 bytes

-Modificado em: 2026-01-18 23:53:49.803615

-Criado em: 2026-01-18 23:53:49.803615

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\app\src\main\AndroidManifest.xml

-========================================

-Nome: AndroidManifest.xml

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 2252 bytes

-Modificado em: 2026-01-18 23:53:49.803615

-Criado em: 2026-01-18 23:53:49.803615

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\app\src\main\kotlin\com\saudeciclodavida\saude_ciclo_da_vida\MainActivity.kt

-========================================

-Nome: MainActivity.kt

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 147 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\app\src\main\res\drawable\launch_background.xml

-========================================

-Nome: launch_background.xml

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 446 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\app\src\main\res\drawable-v21\launch_background.xml

-========================================

-Nome: launch_background.xml

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 450 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\app\src\main\res\mipmap-hdpi\ic_launcher.png

-========================================

-Nome: ic_launcher.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 544 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\app\src\main\res\mipmap-mdpi\ic_launcher.png

-========================================

-Nome: ic_launcher.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 442 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\app\src\main\res\mipmap-xhdpi\ic_launcher.png

-========================================

-Nome: ic_launcher.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 721 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\app\src\main\res\mipmap-xxhdpi\ic_launcher.png

-========================================

-Nome: ic_launcher.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1031 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\app\src\main\res\mipmap-xxxhdpi\ic_launcher.png

-========================================

-Nome: ic_launcher.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1443 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\app\src\main\res\values\styles.xml

-========================================

-Nome: styles.xml

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1014 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\app\src\main\res\values-night\styles.xml

-========================================

-Nome: styles.xml

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1013 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\app\src\profile\AndroidManifest.xml

-========================================

-Nome: AndroidManifest.xml

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 385 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\android\gradle\wrapper\gradle-wrapper.properties

-========================================

-Nome: gradle-wrapper.properties

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 206 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\.gitignore

-========================================

-Nome: .gitignore

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 603 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Flutter\AppFrameworkInfo.plist

-========================================

-Nome: AppFrameworkInfo.plist

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 800 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Flutter\Debug.xcconfig

-========================================

-Nome: Debug.xcconfig

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Arquivo de configuração.

-Tamanho: 31 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Flutter\Release.xcconfig

-========================================

-Nome: Release.xcconfig

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Arquivo de configuração.

-Tamanho: 31 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\AppDelegate.swift

-========================================

-Nome: AppDelegate.swift

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 404 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Info.plist

-========================================

-Nome: Info.plist

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1714 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Runner-Bridging-Header.h

-========================================

-Nome: Runner-Bridging-Header.h

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 39 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\AppIcon.appiconset\Contents.json

-========================================

-Nome: Contents.json

-Tipo: Arquivo JSON

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 2641 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\AppIcon.appiconset\Icon-App-1024x1024@1x.png

-========================================

-Nome: Icon-App-1024x1024@1x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 10932 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\AppIcon.appiconset\Icon-App-20x20@1x.png

-========================================

-Nome: Icon-App-20x20@1x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 295 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\AppIcon.appiconset\Icon-App-20x20@2x.png

-========================================

-Nome: Icon-App-20x20@2x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 406 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\AppIcon.appiconset\Icon-App-20x20@3x.png

-========================================

-Nome: Icon-App-20x20@3x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 450 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\AppIcon.appiconset\Icon-App-29x29@1x.png

-========================================

-Nome: Icon-App-29x29@1x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 282 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\AppIcon.appiconset\Icon-App-29x29@2x.png

-========================================

-Nome: Icon-App-29x29@2x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 462 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\AppIcon.appiconset\Icon-App-29x29@3x.png

-========================================

-Nome: Icon-App-29x29@3x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 704 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\AppIcon.appiconset\Icon-App-40x40@1x.png

-========================================

-Nome: Icon-App-40x40@1x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 406 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\AppIcon.appiconset\Icon-App-40x40@2x.png

-========================================

-Nome: Icon-App-40x40@2x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 586 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\AppIcon.appiconset\Icon-App-40x40@3x.png

-========================================

-Nome: Icon-App-40x40@3x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 862 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\AppIcon.appiconset\Icon-App-60x60@2x.png

-========================================

-Nome: Icon-App-60x60@2x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 862 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\AppIcon.appiconset\Icon-App-60x60@3x.png

-========================================

-Nome: Icon-App-60x60@3x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1674 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\AppIcon.appiconset\Icon-App-76x76@1x.png

-========================================

-Nome: Icon-App-76x76@1x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 762 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\AppIcon.appiconset\Icon-App-76x76@2x.png

-========================================

-Nome: Icon-App-76x76@2x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1226 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\AppIcon.appiconset\Icon-App-83.5x83.5@2x.png

-========================================

-Nome: Icon-App-83.5x83.5@2x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1418 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\LaunchImage.imageset\Contents.json

-========================================

-Nome: Contents.json

-Tipo: Arquivo JSON

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 414 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\LaunchImage.imageset\LaunchImage.png

-========================================

-Nome: LaunchImage.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 68 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\LaunchImage.imageset\LaunchImage@2x.png

-========================================

-Nome: LaunchImage@2x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 68 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\LaunchImage.imageset\LaunchImage@3x.png

-========================================

-Nome: LaunchImage@3x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 68 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Assets.xcassets\LaunchImage.imageset\README.md

-========================================

-Nome: README.md

-Tipo: Documentação Markdown

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 340 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Base.lproj\LaunchScreen.storyboard

-========================================

-Nome: LaunchScreen.storyboard

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 2414 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner\Base.lproj\Main.storyboard

-========================================

-Nome: Main.storyboard

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1631 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner.xcodeproj\project.pbxproj

-========================================

-Nome: project.pbxproj

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 24372 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner.xcodeproj\project.xcworkspace\contents.xcworkspacedata

-========================================

-Nome: contents.xcworkspacedata

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 142 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner.xcodeproj\project.xcworkspace\xcshareddata\IDEWorkspaceChecks.plist

-========================================

-Nome: IDEWorkspaceChecks.plist

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 246 bytes

-Modificado em: 2026-01-18 23:53:49.808127

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner.xcodeproj\project.xcworkspace\xcshareddata\WorkspaceSettings.xcsettings

-========================================

-Nome: WorkspaceSettings.xcsettings

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 234 bytes

-Modificado em: 2026-01-18 23:53:49.816292

-Criado em: 2026-01-18 23:53:49.808127

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner.xcodeproj\xcshareddata\xcschemes\Runner.xcscheme

-========================================

-Nome: Runner.xcscheme

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 3934 bytes

-Modificado em: 2026-01-18 23:53:49.816292

-Criado em: 2026-01-18 23:53:49.816292

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner.xcworkspace\contents.xcworkspacedata

-========================================

-Nome: contents.xcworkspacedata

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 159 bytes

-Modificado em: 2026-01-18 23:53:49.816292

-Criado em: 2026-01-18 23:53:49.816292

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner.xcworkspace\xcshareddata\IDEWorkspaceChecks.plist

-========================================

-Nome: IDEWorkspaceChecks.plist

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 246 bytes

-Modificado em: 2026-01-18 23:53:49.816292

-Criado em: 2026-01-18 23:53:49.816292

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\Runner.xcworkspace\xcshareddata\WorkspaceSettings.xcsettings

-========================================

-Nome: WorkspaceSettings.xcsettings

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 234 bytes

-Modificado em: 2026-01-18 23:53:49.816292

-Criado em: 2026-01-18 23:53:49.816292

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\ios\RunnerTests\RunnerTests.swift

-========================================

-Nome: RunnerTests.swift

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Arquivo de testes automatizados.

-Tamanho: 297 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\lib\main.dart

-========================================

-Nome: main.dart

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 5033 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\linux\.gitignore

-========================================

-Nome: .gitignore

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 19 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\linux\CMakeLists.txt

-========================================

-Nome: CMakeLists.txt

-Tipo: Arquivo de texto

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 4914 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\linux\flutter\CMakeLists.txt

-========================================

-Nome: CMakeLists.txt

-Tipo: Arquivo de texto

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 2903 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\linux\flutter\generated_plugins.cmake

-========================================

-Nome: generated_plugins.cmake

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 762 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\linux\flutter\generated_plugin_registrant.cc

-========================================

-Nome: generated_plugin_registrant.cc

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 172 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\linux\flutter\generated_plugin_registrant.h

-========================================

-Nome: generated_plugin_registrant.h

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 318 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\linux\runner\CMakeLists.txt

-========================================

-Nome: CMakeLists.txt

-Tipo: Arquivo de texto

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1000 bytes

-Modificado em: 2026-01-18 23:53:49.818958

-Criado em: 2026-01-18 23:53:49.818958

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\linux\runner\main.cc

-========================================

-Nome: main.cc

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 186 bytes

-Modificado em: 2026-01-18 23:53:49.828752

-Criado em: 2026-01-18 23:53:49.828752

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\linux\runner\my_application.cc

-========================================

-Nome: my_application.cc

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 5514 bytes

-Modificado em: 2026-01-18 23:53:49.828752

-Criado em: 2026-01-18 23:53:49.828752

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\linux\runner\my_application.h

-========================================

-Nome: my_application.h

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 406 bytes

-Modificado em: 2026-01-18 23:53:49.828752

-Criado em: 2026-01-18 23:53:49.828752

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\.gitignore

-========================================

-Nome: .gitignore

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 96 bytes

-Modificado em: 2026-01-18 23:53:49.828752

-Criado em: 2026-01-18 23:53:49.828752

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Flutter\Flutter-Debug.xcconfig

-========================================

-Nome: Flutter-Debug.xcconfig

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Arquivo de configuração.

-Tamanho: 49 bytes

-Modificado em: 2026-01-18 23:53:49.828752

-Criado em: 2026-01-18 23:53:49.828752

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Flutter\Flutter-Release.xcconfig

-========================================

-Nome: Flutter-Release.xcconfig

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Arquivo de configuração.

-Tamanho: 49 bytes

-Modificado em: 2026-01-18 23:53:49.828752

-Criado em: 2026-01-18 23:53:49.828752

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Flutter\GeneratedPluginRegistrant.swift

-========================================

-Nome: GeneratedPluginRegistrant.swift

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 157 bytes

-Modificado em: 2026-01-18 23:53:49.828752

-Criado em: 2026-01-18 23:53:49.828752

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\AppDelegate.swift

-========================================

-Nome: AppDelegate.swift

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 324 bytes

-Modificado em: 2026-01-18 23:53:49.828752

-Criado em: 2026-01-18 23:53:49.828752

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\DebugProfile.entitlements

-========================================

-Nome: DebugProfile.entitlements

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 360 bytes

-Modificado em: 2026-01-18 23:53:49.834775

-Criado em: 2026-01-18 23:53:49.834775

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\Info.plist

-========================================

-Nome: Info.plist

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1092 bytes

-Modificado em: 2026-01-18 23:53:49.834775

-Criado em: 2026-01-18 23:53:49.834775

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\MainFlutterWindow.swift

-========================================

-Nome: MainFlutterWindow.swift

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 403 bytes

-Modificado em: 2026-01-18 23:53:49.834775

-Criado em: 2026-01-18 23:53:49.834775

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\Release.entitlements

-========================================

-Nome: Release.entitlements

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 248 bytes

-Modificado em: 2026-01-18 23:53:49.834775

-Criado em: 2026-01-18 23:53:49.834775

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\Assets.xcassets\AppIcon.appiconset\app_icon_1024.png

-========================================

-Nome: app_icon_1024.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 102994 bytes

-Modificado em: 2026-01-18 23:53:49.834239

-Criado em: 2026-01-18 23:53:49.834239

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\Assets.xcassets\AppIcon.appiconset\app_icon_128.png

-========================================

-Nome: app_icon_128.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 5680 bytes

-Modificado em: 2026-01-18 23:53:49.834775

-Criado em: 2026-01-18 23:53:49.834775

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\Assets.xcassets\AppIcon.appiconset\app_icon_16.png

-========================================

-Nome: app_icon_16.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 520 bytes

-Modificado em: 2026-01-18 23:53:49.834775

-Criado em: 2026-01-18 23:53:49.834775

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\Assets.xcassets\AppIcon.appiconset\app_icon_256.png

-========================================

-Nome: app_icon_256.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 14142 bytes

-Modificado em: 2026-01-18 23:53:49.834775

-Criado em: 2026-01-18 23:53:49.834775

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\Assets.xcassets\AppIcon.appiconset\app_icon_32.png

-========================================

-Nome: app_icon_32.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1066 bytes

-Modificado em: 2026-01-18 23:53:49.834775

-Criado em: 2026-01-18 23:53:49.834775

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\Assets.xcassets\AppIcon.appiconset\app_icon_512.png

-========================================

-Nome: app_icon_512.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 36406 bytes

-Modificado em: 2026-01-18 23:53:49.834775

-Criado em: 2026-01-18 23:53:49.834775

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\Assets.xcassets\AppIcon.appiconset\app_icon_64.png

-========================================

-Nome: app_icon_64.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 2218 bytes

-Modificado em: 2026-01-18 23:53:49.834775

-Criado em: 2026-01-18 23:53:49.834775

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\Assets.xcassets\AppIcon.appiconset\Contents.json

-========================================

-Nome: Contents.json

-Tipo: Arquivo JSON

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1359 bytes

-Modificado em: 2026-01-18 23:53:49.828752

-Criado em: 2026-01-18 23:53:49.828752

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\Base.lproj\MainMenu.xib

-========================================

-Nome: MainMenu.xib

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 24072 bytes

-Modificado em: 2026-01-18 23:53:49.834775

-Criado em: 2026-01-18 23:53:49.834775

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\Configs\AppInfo.xcconfig

-========================================

-Nome: AppInfo.xcconfig

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Arquivo de configuração.

-Tamanho: 654 bytes

-Modificado em: 2026-01-18 23:53:49.834775

-Criado em: 2026-01-18 23:53:49.834775

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\Configs\Debug.xcconfig

-========================================

-Nome: Debug.xcconfig

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Arquivo de configuração.

-Tamanho: 79 bytes

-Modificado em: 2026-01-18 23:53:49.834775

-Criado em: 2026-01-18 23:53:49.834775

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\Configs\Release.xcconfig

-========================================

-Nome: Release.xcconfig

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Arquivo de configuração.

-Tamanho: 81 bytes

-Modificado em: 2026-01-18 23:53:49.834775

-Criado em: 2026-01-18 23:53:49.834775

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner\Configs\Warnings.xcconfig

-========================================

-Nome: Warnings.xcconfig

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Arquivo de configuração.

-Tamanho: 593 bytes

-Modificado em: 2026-01-18 23:53:49.834775

-Criado em: 2026-01-18 23:53:49.834775

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner.xcodeproj\project.pbxproj

-========================================

-Nome: project.pbxproj

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 27225 bytes

-Modificado em: 2026-01-18 23:53:49.828752

-Criado em: 2026-01-18 23:53:49.828752

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner.xcodeproj\project.xcworkspace\xcshareddata\IDEWorkspaceChecks.plist

-========================================

-Nome: IDEWorkspaceChecks.plist

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 246 bytes

-Modificado em: 2026-01-18 23:53:49.828752

-Criado em: 2026-01-18 23:53:49.828752

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner.xcodeproj\xcshareddata\xcschemes\Runner.xcscheme

-========================================

-Nome: Runner.xcscheme

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 3834 bytes

-Modificado em: 2026-01-18 23:53:49.828752

-Criado em: 2026-01-18 23:53:49.828752

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner.xcworkspace\contents.xcworkspacedata

-========================================

-Nome: contents.xcworkspacedata

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 159 bytes

-Modificado em: 2026-01-18 23:53:49.828752

-Criado em: 2026-01-18 23:53:49.828752

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\Runner.xcworkspace\xcshareddata\IDEWorkspaceChecks.plist

-========================================

-Nome: IDEWorkspaceChecks.plist

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 246 bytes

-Modificado em: 2026-01-18 23:53:49.828752

-Criado em: 2026-01-18 23:53:49.828752

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\macos\RunnerTests\RunnerTests.swift

-========================================

-Nome: RunnerTests.swift

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Arquivo de testes automatizados.

-Tamanho: 302 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\test\widget_test.dart

-========================================

-Nome: widget_test.dart

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Arquivo de testes automatizados.

-Tamanho: 1100 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\web\favicon.png

-========================================

-Nome: favicon.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 917 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\web\index.html

-========================================

-Nome: index.html

-Tipo: Arquivo HTML

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1274 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\web\manifest.json

-========================================

-Nome: manifest.json

-Tipo: Arquivo JSON

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 969 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\web\icons\Icon-192.png

-========================================

-Nome: Icon-192.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 5292 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\web\icons\Icon-512.png

-========================================

-Nome: Icon-512.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 8252 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\web\icons\Icon-maskable-192.png

-========================================

-Nome: Icon-maskable-192.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 5594 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\web\icons\Icon-maskable-512.png

-========================================

-Nome: Icon-maskable-512.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 20998 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\.gitignore

-========================================

-Nome: .gitignore

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 308 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\CMakeLists.txt

-========================================

-Nome: CMakeLists.txt

-Tipo: Arquivo de texto

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 4282 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\flutter\CMakeLists.txt

-========================================

-Nome: CMakeLists.txt

-Tipo: Arquivo de texto

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 3851 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\flutter\generated_plugins.cmake

-========================================

-Nome: generated_plugins.cmake

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 766 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\flutter\generated_plugin_registrant.cc

-========================================

-Nome: generated_plugin_registrant.cc

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 175 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\flutter\generated_plugin_registrant.h

-========================================

-Nome: generated_plugin_registrant.h

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 317 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\runner\CMakeLists.txt

-========================================

-Nome: CMakeLists.txt

-Tipo: Arquivo de texto

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1836 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\runner\flutter_window.cpp

-========================================

-Nome: flutter_window.cpp

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 2193 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\runner\flutter_window.h

-========================================

-Nome: flutter_window.h

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 961 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\runner\main.cpp

-========================================

-Nome: main.cpp

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1315 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\runner\resource.h

-========================================

-Nome: resource.h

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 448 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\runner\runner.exe.manifest

-========================================

-Nome: runner.exe.manifest

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 616 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\runner\Runner.rc

-========================================

-Nome: Runner.rc

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 3212 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\runner\utils.cpp

-========================================

-Nome: utils.cpp

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1862 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\runner\utils.h

-========================================

-Nome: utils.h

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 691 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\runner\win32_window.cpp

-========================================

-Nome: win32_window.cpp

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 8822 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\runner\win32_window.h

-========================================

-Nome: win32_window.h

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 3624 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\frontend_old\windows\runner\resources\app_icon.ico

-========================================

-Nome: app_icon.ico

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 33772 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\LOGOS\Bola Centra azul.png

-========================================

-Nome: Bola Centra azul.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1616529 bytes

-Modificado em: 2026-01-18 23:53:49.665668

-Criado em: 2026-01-18 23:53:49.665668

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\LOGOS\Bola Centra Vermelho.png

-========================================

-Nome: Bola Centra Vermelho.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1615540 bytes

-Modificado em: 2026-01-18 23:53:49.665668

-Criado em: 2026-01-18 23:53:49.665668

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\LOGOS\Gemini_Generated_Image_sm08f6sm08f6sm08.png

-========================================

-Nome: Gemini_Generated_Image_sm08f6sm08f6sm08.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 6622849 bytes

-Modificado em: 2026-01-18 23:53:49.716320

-Criado em: 2026-01-18 23:53:49.705933

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\LOGOS\LOGO OFICIAL 01.png.png

-========================================

-Nome: LOGO OFICIAL 01.png.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 938077 bytes

-Modificado em: 2026-01-18 23:53:49.726469

-Criado em: 2026-01-18 23:53:49.726469

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\LOGOS\LogoApp.png

-========================================

-Nome: LogoApp.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 7104955 bytes

-Modificado em: 2026-01-18 23:53:49.771555

-Criado em: 2026-01-18 23:53:49.766974

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\LOGOS\LOGO_OFICIAL_01.png-removebg-preview.png

-========================================

-Nome: LOGO_OFICIAL_01.png-removebg-preview.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 71003 bytes

-Modificado em: 2026-01-18 23:53:49.726469

-Criado em: 2026-01-18 23:53:49.726469

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\LOGOS\logo_vertical_saude_ciclo_da_vida.png

-========================================

-Nome: logo_vertical_saude_ciclo_da_vida.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 2299470 bytes

-Modificado em: 2026-01-18 23:53:49.777066

-Criado em: 2026-01-18 23:53:49.777066

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\LOGOS\sem fundo ChatGPT Image 8 de out. de 2025, 16_38_58.png

-========================================

-Nome: sem fundo ChatGPT Image 8 de out. de 2025, 16_38_58.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 2201736 bytes

-Modificado em: 2026-01-18 23:53:49.777066

-Criado em: 2026-01-18 23:53:49.777066

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\LOGOS\simbolo_isolado_social_media.png

-========================================

-Nome: simbolo_isolado_social_media.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 938077 bytes

-Modificado em: 2026-01-18 23:53:49.787388

-Criado em: 2026-01-18 23:53:49.787388

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\LOGOS\Texto Varias Cores.png

-========================================

-Nome: Texto Varias Cores.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 814466 bytes

-Modificado em: 2026-01-18 23:53:49.771555

-Criado em: 2026-01-18 23:53:49.771555

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\LOGOS\FIGMA\Dashboard w390 h844.jpg

-========================================

-Nome: Dashboard w390 h844.jpg

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 31388 bytes

-Modificado em: 2026-01-18 23:53:49.665668

-Criado em: 2026-01-18 23:53:49.665668

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\LOGOS\FIGMA\Login w390 h844.jpg

-========================================

-Nome: Login w390 h844.jpg

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 24699 bytes

-Modificado em: 2026-01-18 23:53:49.665668

-Criado em: 2026-01-18 23:53:49.665668

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\LOGOS\FIGMA\SplashScreen w390 h844.jpg

-========================================

-Nome: SplashScreen w390 h844.jpg

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 11815 bytes

-Modificado em: 2026-01-18 23:53:49.665668

-Criado em: 2026-01-18 23:53:49.665668

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\.gitignore

-========================================

-Nome: .gitignore

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 481 bytes

-Modificado em: 2026-01-18 23:53:49.869765

-Criado em: 2026-01-18 23:53:49.869765

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\app.json

-========================================

-Nome: app.json

-Tipo: Arquivo JSON

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 758 bytes

-Modificado em: 2026-01-18 23:53:49.869765

-Criado em: 2026-01-18 23:53:49.869765

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\App.tsx

-========================================

-Nome: App.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 928 bytes

-Modificado em: 2026-01-18 23:53:49.869765

-Criado em: 2026-01-18 23:53:49.869765

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\com.facebook.react.devsupport.BundleDownloader

-========================================

-Nome: com.facebook.react.devsupport.BundleDownloader

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 0 bytes

-Modificado em: 2026-01-18 23:53:49.916371

-Criado em: 2026-01-18 23:53:49.916371

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\index.ts

-========================================

-Nome: index.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 315 bytes

-Modificado em: 2026-01-18 23:53:49.916371

-Criado em: 2026-01-18 23:53:49.916371

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\package-lock.json

-========================================

-Nome: package-lock.json

-Tipo: Arquivo JSON

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 373988 bytes

-Modificado em: 2026-01-18 23:53:49.916371

-Criado em: 2026-01-18 23:53:49.916371

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\package.json

-========================================

-Nome: package.json

-Tipo: Arquivo JSON

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 908 bytes

-Modificado em: 2026-01-18 23:53:49.916371

-Criado em: 2026-01-18 23:53:49.916371

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\tsconfig.json

-========================================

-Nome: tsconfig.json

-Tipo: Arquivo JSON

-Finalidade provável: Arquivo de configuração.

-Tamanho: 91 bytes

-Modificado em: 2026-01-18 23:53:49.916371

-Criado em: 2026-01-18 23:53:49.916371

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\assets\adaptive-icon.png

-========================================

-Nome: adaptive-icon.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 17547 bytes

-Modificado em: 2026-01-18 23:53:49.914363

-Criado em: 2026-01-18 23:53:49.914363

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\assets\favicon.png

-========================================

-Nome: favicon.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1466 bytes

-Modificado em: 2026-01-18 23:53:49.914363

-Criado em: 2026-01-18 23:53:49.914363

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\assets\icon.png

-========================================

-Nome: icon.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 22380 bytes

-Modificado em: 2026-01-18 23:53:49.914363

-Criado em: 2026-01-18 23:53:49.914363

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\assets\LogoApp.png

-========================================

-Nome: LogoApp.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 7104955 bytes

-Modificado em: 2026-01-18 23:53:49.914363

-Criado em: 2026-01-18 23:53:49.912078

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\assets\splash-icon.png

-========================================

-Nome: splash-icon.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 17547 bytes

-Modificado em: 2026-01-18 23:53:49.916371

-Criado em: 2026-01-18 23:53:49.916371

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\src\screens\HomeScreen.tsx

-========================================

-Nome: HomeScreen.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 2938 bytes

-Modificado em: 2026-01-18 23:53:49.916371

-Criado em: 2026-01-18 23:53:49.916371

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\src\screens\LoginScreen.tsx

-========================================

-Nome: LoginScreen.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 2189 bytes

-Modificado em: 2026-01-18 23:53:49.916371

-Criado em: 2026-01-18 23:53:49.916371

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\src\screens\MedicationScreen.tsx

-========================================

-Nome: MedicationScreen.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 2607 bytes

-Modificado em: 2026-01-18 23:53:49.916371

-Criado em: 2026-01-18 23:53:49.916371

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\src\screens\PanicScreen.tsx

-========================================

-Nome: PanicScreen.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 2978 bytes

-Modificado em: 2026-01-18 23:53:49.916371

-Criado em: 2026-01-18 23:53:49.916371

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\src\services\api.ts

-========================================

-Nome: api.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Provavelmente parte da API.

-Tamanho: 163 bytes

-Modificado em: 2026-01-18 23:53:49.916371

-Criado em: 2026-01-18 23:53:49.916371

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile\src\styles\global.tsx

-========================================

-Nome: global.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 2500 bytes

-Modificado em: 2026-01-18 23:53:49.916371

-Criado em: 2026-01-18 23:53:49.916371

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\.gitignore

-========================================

-Nome: .gitignore

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 496 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\app.json

-========================================

-Nome: app.json

-Tipo: Arquivo JSON

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1280 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\eslint.config.js

-========================================

-Nome: eslint.config.js

-Tipo: Código-fonte (JavaScript)

-Finalidade provável: Arquivo de configuração.

-Tamanho: 247 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\package-lock.json

-========================================

-Nome: package-lock.json

-Tipo: Arquivo JSON

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 489241 bytes

-Modificado em: 2026-01-18 23:53:49.869765

-Criado em: 2026-01-18 23:53:49.869765

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\package.json

-========================================

-Nome: package.json

-Tipo: Arquivo JSON

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1425 bytes

-Modificado em: 2026-01-18 23:53:49.869765

-Criado em: 2026-01-18 23:53:49.869765

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\README.md

-========================================

-Nome: README.md

-Tipo: Documentação Markdown

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1791 bytes

-Modificado em: 2026-01-18 23:53:49.839179

-Criado em: 2026-01-18 23:53:49.839179

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\tsconfig.json

-========================================

-Nome: tsconfig.json

-Tipo: Arquivo JSON

-Finalidade provável: Arquivo de configuração.

-Tamanho: 259 bytes

-Modificado em: 2026-01-18 23:53:49.869765

-Criado em: 2026-01-18 23:53:49.869765

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\app\modal.tsx

-========================================

-Nome: modal.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 732 bytes

-Modificado em: 2026-01-18 23:53:49.850309

-Criado em: 2026-01-18 23:53:49.850309

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\app\_layout.tsx

-========================================

-Nome: _layout.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 764 bytes

-Modificado em: 2026-01-18 23:53:49.849277

-Criado em: 2026-01-18 23:53:49.849277

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\app\(tabs)\explore.tsx

-========================================

-Nome: explore.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 4475 bytes

-Modificado em: 2026-01-18 23:53:49.849277

-Criado em: 2026-01-18 23:53:49.849277

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\app\(tabs)\index.tsx

-========================================

-Nome: index.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 3317 bytes

-Modificado em: 2026-01-18 23:53:49.849277

-Criado em: 2026-01-18 23:53:49.849277

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\app\(tabs)\_layout.tsx

-========================================

-Nome: _layout.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1003 bytes

-Modificado em: 2026-01-18 23:53:49.849277

-Criado em: 2026-01-18 23:53:49.849277

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\assets\images\android-icon-background.png

-========================================

-Nome: android-icon-background.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 17549 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\assets\images\android-icon-foreground.png

-========================================

-Nome: android-icon-foreground.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 78796 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\assets\images\android-icon-monochrome.png

-========================================

-Nome: android-icon-monochrome.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 4140 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\assets\images\favicon.png

-========================================

-Nome: favicon.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1129 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\assets\images\icon.png

-========================================

-Nome: icon.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 393493 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\assets\images\partial-react-logo.png

-========================================

-Nome: partial-react-logo.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 5075 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\assets\images\react-logo.png

-========================================

-Nome: react-logo.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 6341 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\assets\images\react-logo@2x.png

-========================================

-Nome: react-logo@2x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 14225 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\assets\images\react-logo@3x.png

-========================================

-Nome: react-logo@3x.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 21252 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\assets\images\splash-icon.png

-========================================

-Nome: splash-icon.png

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 17547 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\components\external-link.tsx

-========================================

-Nome: external-link.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 819 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\components\haptic-tab.tsx

-========================================

-Nome: haptic-tab.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 582 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\components\hello-wave.tsx

-========================================

-Nome: hello-wave.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 424 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\components\parallax-scroll-view.tsx

-========================================

-Nome: parallax-scroll-view.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 2075 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\components\themed-text.tsx

-========================================

-Nome: themed-text.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1345 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\components\themed-view.tsx

-========================================

-Nome: themed-view.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 484 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\components\ui\collapsible.tsx

-========================================

-Nome: collapsible.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1407 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\components\ui\icon-symbol.ios.tsx

-========================================

-Nome: icon-symbol.ios.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 630 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\components\ui\icon-symbol.tsx

-========================================

-Nome: icon-symbol.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1463 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\constants\theme.ts

-========================================

-Nome: theme.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1683 bytes

-Modificado em: 2026-01-18 23:53:49.850849

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\hooks\use-color-scheme.ts

-========================================

-Nome: use-color-scheme.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 48 bytes

-Modificado em: 2026-01-18 23:53:49.859710

-Criado em: 2026-01-18 23:53:49.850849

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\hooks\use-color-scheme.web.ts

-========================================

-Nome: use-color-scheme.web.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 501 bytes

-Modificado em: 2026-01-18 23:53:49.859710

-Criado em: 2026-01-18 23:53:49.859710

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\hooks\use-theme-color.ts

-========================================

-Nome: use-theme-color.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 558 bytes

-Modificado em: 2026-01-18 23:53:49.859710

-Criado em: 2026-01-18 23:53:49.859710

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\mobile-patient\scripts\reset-project.js

-========================================

-Nome: reset-project.js

-Tipo: Código-fonte (JavaScript)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 3720 bytes

-Modificado em: 2026-01-18 23:53:49.869765

-Criado em: 2026-01-18 23:53:49.869765

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\scripts\project_tree.py

-========================================

-Nome: project_tree.py

-Tipo: Código-fonte (Python)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 3094 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-Resumo interno do código Python:

-- Funções encontradas: ['generate_tree_content', 'main']

-- Classes encontradas: Nenhuma

-- Imports detectados: ['os']

-- Variáveis globais: ['lines', 'root_name', 'current_dir', 'root_dir', 'markdown_content', 'output_file', 'ignore_dirs', 'level', 'indent', 'folder_name', 'subindent']

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\scripts\verify_env.py

-========================================

-Nome: verify_env.py

-Tipo: Código-fonte (Python)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 6437 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-Resumo interno do código Python:

-- Funções encontradas: ['print_status', 'check_command', 'main']

-- Classes encontradas: ['Colors']

-- Imports detectados: ['sys', 'os', 'subprocess']

-- Variáveis globais: ['HEADER', 'OKGREEN', 'WARNING', 'FAIL', 'ENDC', 'BOLD', 'global_success', 'py_version', 'required_dirs', 'current_dir', 'root_dir', 'color', 'symbol', 'result', 'global_success', 'global_success', 'global_success', 'global_success', 'target_path', 'global_success', 'color', 'symbol', 'color', 'symbol', 'output', 'global_success', 'output']

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\web-admin\.gitignore

-========================================

-Nome: .gitignore

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 532 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\web-admin\eslint.config.mjs

-========================================

-Nome: eslint.config.mjs

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Arquivo de configuração.

-Tamanho: 483 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\web-admin\next.config.ts

-========================================

-Nome: next.config.ts

-Tipo: Código-fonte (TypeScript)

-Finalidade provável: Arquivo de configuração.

-Tamanho: 140 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\web-admin\package-lock.json

-========================================

-Nome: package-lock.json

-Tipo: Arquivo JSON

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 237768 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\web-admin\package.json

-========================================

-Nome: package.json

-Tipo: Arquivo JSON

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 642 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\web-admin\postcss.config.mjs

-========================================

-Nome: postcss.config.mjs

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Arquivo de configuração.

-Tamanho: 101 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\web-admin\README.md

-========================================

-Nome: README.md

-Tipo: Documentação Markdown

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1486 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\web-admin\tsconfig.json

-========================================

-Nome: tsconfig.json

-Tipo: Arquivo JSON

-Finalidade provável: Arquivo de configuração.

-Tamanho: 700 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\web-admin\app\favicon.ico

-========================================

-Nome: favicon.ico

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 25931 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\web-admin\app\globals.css

-========================================

-Nome: globals.css

-Tipo: Arquivo CSS

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 514 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\web-admin\app\layout.tsx

-========================================

-Nome: layout.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1447 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\web-admin\app\page.tsx

-========================================

-Nome: page.tsx

-Tipo: Código-fonte (React TSX)

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 8766 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\web-admin\public\file.svg

-========================================

-Nome: file.svg

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 391 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\web-admin\public\globe.svg

-========================================

-Nome: globe.svg

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1035 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\web-admin\public\next.svg

-========================================

-Nome: next.svg

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 1375 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\web-admin\public\vercel.svg

-========================================

-Nome: vercel.svg

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 128 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-

-

-========================================

-ARQUIVO: E:\Projetos\SaudeCicloDaVida\web-admin\public\window.svg

-========================================

-Nome: window.svg

-Tipo: Arquivo genérico / não identificado

-Finalidade provável: Finalidade não identificada automaticamente.

-Tamanho: 385 bytes

-Modificado em: 2026-01-18 23:53:49.920813

-Criado em: 2026-01-18 23:53:49.920813

-

-

+Registro técnico consolidado do projeto.

</pre>
</div>
<div class='arquivo'>
<div class='titulo alterado'>E:\Projetos\SaudeCicloDaVida\MODELO_GOVERNANCA.md</div>
<div class='tipo'>Tipo: ALTERADO</div>
<pre>
--- E:\Projetos\SaudeCicloDaVida\MODELO_GOVERNANCA.md
+++ MODELO_GOVERNANCA_TEMPLATE
@@ -1,97 +1,2 @@
-[NOME_DO_PROJETO] - MANUAL MESTRE DE GOVERNANÇA E OPERAÇÃO

-Responsável Técnica: Equipe de Desenvolvimento

-Norma: Extremo Zero (Substituição Total)

-Versão do Documento: 2.3 (Atualizada com Protocolo de Cabeçalhos)

-

-1. 🏛️ A Constituição do Projeto (Política de Governança)

-1.1. Princípio Fundamental (Cláusula Pétrea)

-Fica estabelecido o padrão de "Desenvolvimento a Partir do Extremo Zero". É estritamente VEDADA a prática de "remendos", edições parciais ou incrementos diretos em artefatos corrompidos ou ambientes instáveis.

-- Falhou? Apaga-se e reconstrói-se o artefato.

-- Mudou de Máquina? Regenera-se o ambiente completo.

-- Vai gerar versão? Limpa-se tudo antes de compilar.

-

-1.2. Consistência de Ambiente

-Nenhum código será promovido a Produção, nem o desenvolvimento será iniciado em novo equipamento, sem a prévia validação pelo Script de Verificação de Ambiente (SVA).

-

-2. 📍 Localização e Armazenamento

-- Diretório Oficial: P:\Projetos\[NOME_DO_PROJETO]

-- Regra de Ouro: O desenvolvimento NUNCA deve ocorrer dentro de pastas sincronizadas em tempo real (OneDrive, Google Drive) para evitar travamento de arquivos.

-- Backup: Nuvens apenas para armazenamento frio (zip) ou Repositório Git.

-

-3. 🛡️ Procedimento Operacional Padrão (POP-001)

-3.1. Pré-Migração / Início de Trabalho Diário

-Sempre que iniciar o trabalho ou trocar de computador:

-1. Acessar o diretório raiz do projeto.

-2. Executar o script: python scripts/verify_env.py

-3. Ler o relatório de saída.

-   - Se retornar [ALERTA] ou [ERRO]: PARAR. Não tente rodar o projeto. Instale o que falta.

-   - Se retornar [STATUS VERDE/OK]: AUTORIZADO a trabalhar.

-

-3.2. Rotina de Alteração (O Ciclo da Substituição)

-Sempre que formos [gerar um arquivo], [executar um procedimento] ou [testar uma rotina]:

-1. Não editar: Ignorar o estado atual quebrado para fins de escrita.

-2. Gerar do Zero: Criar o novo componente completo.

-3. Substituir: Apagar o velho, colar o novo.

-4. Validar: Testar se o novo componente completo funciona.

-

-3.3. Protocolo de Segurança Anti-Regressão

-Para evitar a perda de funcionalidades já aprovadas (Regressão) durante a reescrita de código:

-- Auditoria de Legado (Obrigatória): Antes de solicitar a reescrita de um arquivo crítico, o Operador deve fornecer o código atual em uso.

-- Mapeamento de Features: O Arquiteto (IA) deve ler o código antigo e listar as lógicas de negócio ativas.

-- Reescrita Consciente: O código "Extremo Zero" deve ser gerado contendo explicitamente as features mapeadas.

-

-4. 🚀 Procedimento de Build e Reconstrução

-Para gerar uma nova versão executável ou limpar o ambiente:

-1. Limpeza Total (obrigatório): Deletar manualmente as pastas dist, build e __pycache__.

-2. Verificação: Rodar python scripts/verify_env.py novamente.

-3. Reinstalação Limpa (Backend): npm install (ou pip install).

-4. Reinstalação Limpa (Frontend): npm install.

-

-5. ✅ Checklist de Validação (Obrigatório)

-Antes de dar qualquer tarefa como "Concluída", marque os itens abaixo:

-

-1. Validação de Ferramentas (Base)

-[ ] Python (Versão correta) instalado.

-[ ] Node.js instalado.

-[ ] Git instalado.

-

-2. Validação do Repositório (Extremo Zero)

-[ ] Script python scripts/verify_env.py executado e retornou TUDO VERDE.

-[ ] Pastas de lixo foram deletadas.

-

-3. Teste de Fumaça

-[ ] Backend roda sem erros.

-[ ] Frontend roda sem erros.

-

-6. 🛠️ Anexo Técnico: O Script de Verificação

-(O código do script SVA v3.0 encontra-se no arquivo scripts/verify_env.py)

-

-7. 🗣️ Protocolo de Comunicação e Instrução (O Padrão Didático)

-Para garantir a execução perfeita das normas acima, toda interação entre o Arquiteto (IA) e o Operador (Usuário) deve obedecer aos seguintes critérios:

-

-7.1. O Princípio da Granularidade Máxima

-É PROIBIDO fornecer instruções genéricas. A instrução deve ser atômica:

-* Passo a Passo: Quebre tarefas complexas em micro-tarefas.

-* Linha por Linha: Se um arquivo tem 10 linhas, forneça as 10 linhas.

-* Comando por Comando: Um comando por bloco de código.

-

-7.2. O Fator "Extremo Zero"

-Toda explicação deve assumir que o Operador está começando do zero absoluto naquela tarefa específica.

-* Clareza Lógica: Explique o "Porquê" antes do "Como".

-* Navegação Explícita: Sempre inicie o comando com "1. Abra o terminal na pasta X".

-

-8. 🏷️ Padronização de Arquivos (Header Protocol)

-Todo arquivo de código-fonte criado no projeto deve iniciar obrigatoriamente com o cabeçalho de identificação padrão.

-

-Padrão Universal:

-/*

--------------------------------------------------------------------------

-PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)

-ARQUITETURA: FULL STACK (NestJS + React Native + Next.js)

-GOVERNANÇA: PGT-01 (NORMA EXTREMO ZERO)

--------------------------------------------------------------------------

-MÓDULO: [Nome do Módulo/Arquivo]

-DESCRIÇÃO: [Breve descrição do que este arquivo faz]

--------------------------------------------------------------------------

-*/

-(Adaptar a sintaxe de comentário conforme a linguagem: # para Python, // para TS)
+# Modelo de Governança

+Normas, padrões e diretrizes de governança técnica.

</pre>
</div>
<div class='arquivo'>
<div class='titulo alterado'>E:\Projetos\SaudeCicloDaVida\PADROES.md</div>
<div class='tipo'>Tipo: ALTERADO</div>
<pre>
--- E:\Projetos\SaudeCicloDaVida\PADROES.md
+++ PADROES_TEMPLATE
@@ -1,159 +1,2 @@
-# [NOME_DO_PROJETO] - MANUAL MESTRE DE GOVERNANÇA E OPERAÇÃO

-

-**Responsável Técnica:** Equipe de Desenvolvimento

-**Norma:** Extremo Zero (Substituição Total)

-**Versão do Documento:** 2.0 (Consolidada)

-

----

-

-## 1. 🏛️ A Constituição do Projeto (Política de Governança)

-

-### 1.1. Princípio Fundamental (Cláusula Pétrea)

-Fica estabelecido o padrão de **"Desenvolvimento a Partir do Extremo Zero"**. É estritamente **VEDADA** a prática de "remendos", edições parciais ou incrementos diretos em artefatos corrompidos ou ambientes instáveis.

-* **Falhou?** Apaga-se e reconstrói-se o artefato.

-* **Mudou de Máquina?** Regenera-se o ambiente completo.

-* **Vai gerar versão?** Limpa-se tudo antes de compilar.

-

-### 1.2. Consistência de Ambiente

-Nenhum código será promovido a Produção, nem o desenvolvimento será iniciado em novo equipamento, sem a prévia validação pelo **Script de Verificação de Ambiente (SVA)** (código disponível na Seção 6 deste manual).

-

----

-

-## 2. 📍 Localização e Armazenamento

-* **Diretório Oficial:** `P:\Projetos\[NOME_DO_PROJETO]`

-* **Regra de Ouro:** O desenvolvimento **NUNCA** deve ocorrer dentro de pastas sincronizadas em tempo real (OneDrive, Google Drive) para evitar travamento de arquivos.

-* **Backup:** Nuvens apenas para armazenamento frio (zip) ou Repositório Git.

-

----

-

-## 3. 🛡️ Procedimento Operacional Padrão (POP-001)

-

-### 3.1. Pré-Migração / Início de Trabalho Diário

-Sempre que iniciar o trabalho ou trocar de computador:

-1.  Acessar o diretório raiz do projeto.

-2.  Executar o script: `python scripts/verify_env.py`

-3.  **Ler o relatório de saída.**

-    * Se retornar `[AUSENTE]` ou `[VERSÃO INCORRETA]`: **PARAR**. Não tente rodar o projeto. Instale o que falta.

-    * Se retornar `[STATUS: VERDE/OK]`: **AUTORIZADO** a trabalhar.

-

-### 3.2. Rotina de Alteração (O Ciclo da Substituição)

-Sempre que formos [gerar um arquivo], [executar um procedimento] ou [testar uma rotina]:

-1.  **Não editar:** Ignorar o estado atual quebrado.

-2.  **Gerar do Zero:** Criar o novo componente completo.

-3.  **Substituir:** Apagar o velho, colar o novo.

-4.  **Validar:** Testar se o novo componente completo funciona.

-

----

-

-## 4. 🚀 Procedimento de Build e Reconstrução

-

-Para gerar uma nova versão executável ou limpar o ambiente:

-1.  **Limpeza Total (obrigatório):** Deletar manualmente as pastas `dist`, `build` e `__pycache__`.

-2.  **Verificação:** Rodar `python scripts/verify_env.py` novamente.

-3.  **Reinstalação Limpa (Backend):** `pip install -r requirements.txt`.

-4.  **Reinstalação Limpa (Frontend):** `npm install`.

-5.  **Compilação:** Executar os comandos de build do zero.

-

----

-

-## 5. ✅ Checklist de Validação (Obrigatório)

-

-Antes de dar qualquer tarefa como "Concluída", marque os itens abaixo:

-

-**1. Validação de Ferramentas (Base)**

-- [ ] Python (Versão correta) instalado e no PATH.

-- [ ] Node.js instalado.

-- [ ] Git instalado e autenticado.

-

-**2. Validação do Repositório (Extremo Zero)**

-- [ ] Script `python scripts/verify_env.py` executado e retornou **TUDO VERDE**.

-- [ ] Pastas de lixo (`dist`, `build`, `__pycache__`) foram deletadas.

-

-**3. Teste de Fumaça**

-- [ ] Backend roda (`uvicorn` ou equivalente) sem erros.

-- [ ] Frontend roda (`npm run dev`) sem erros.

-

----

-

-## 6. 🛠️ Anexo Técnico: O Script de Verificação

-

-*Instrução: Ao iniciar um novo projeto, copie o código abaixo, crie um arquivo em `scripts/verify_env.py` e cole o conteúdo.*

-

-```python

-import sys

-import os

-import subprocess

-

-def print_status(component, status, message=""):

-    # Cores para terminal: Verde (92) e Vermelho (91)

-    color = "\033[92m" if status == "OK" else "\033[91m" 

-    reset = "\033[0m"

-    print(f"[{component.ljust(15)}] {color}{status}{reset} {message}")

-

-def check_command(command, version_flag="--version"):

-    """Verifica se um comando existe no sistema e retorna a versão."""

-    try:

-        # shell=True para compatibilidade com Windows

-        result = subprocess.run(f"{command} {version_flag}", shell=True, capture_output=True, text=True)

-        if result.returncode == 0:

-            return True, result.stdout.strip().split('\n')[0]

-        else:

-            return False, None

-    except Exception:

-        return False, None

-

-def main():

-    print("="*60)

-    print("   VERIFICADOR DE AMBIENTE - [NOME_DO_PROJETO]")

-    print("   Norma: Extremo Zero | Status: Validando...")

-    print("="*60)

-    

-    # 1. Verificar Python (Execução Atual) - Ajuste a versão conforme necessário

-    py_version = sys.version.split()[0]

-    if sys.version_info &gt;= (3, 10):

-        print_status("PYTHON", "OK", f"Versão: {py_version}")

-    else:

-        print_status("PYTHON", "ERRO", f"Versão obsoleta: {py_version}. Requer 3.10+")

-

-    # 2. Verificar Node.js

-    node_ok, node_ver = check_command("node", "-v")

-    if node_ok:

-        print_status("NODE.JS", "OK", f"Versão: {node_ver}")

-    else:

-        print_status("NODE.JS", "CRÍTICO", "Não instalado ou não está no PATH.")

-

-    # 3. Verificar Ferramentas Essenciais

-    tools = ["git", "npm"]

-    for tool in tools:

-        ok, ver = check_command(tool)

-        if ok:

-            print_status(tool.upper(), "OK", "Instalado")

-        else:

-            print_status(tool.upper(), "AUSENTE", "Instalação obrigatória necessária.")

-

-    # 4. Verificar Estrutura de Pastas (Deve ser rodado da Raiz)

-    # Lista de pastas esperadas na raiz do projeto (Adapte para seu projeto)

-    folders = ["backend", "frontend", "docs", "scripts"]

-    

-    print("-" * 60)

-    for folder in folders:

-        if os.path.isdir(folder):

-            print_status(f"DIR: {folder}", "OK", "Encontrado")

-        else:

-            print_status(f"DIR: {folder}", "ALERTA", "Diretório não encontrado na raiz.")

-

-    # 5. Verificar Arquivos Críticos

-    req_file = os.path.join("backend", "requirements.txt")

-    if os.path.exists(req_file):

-        print_status("REQ.TXT", "OK", "Encontrado em backend/")

-    else:

-        print_status("REQ.TXT", "ERRO", "backend/requirements.txt sumiu!")

-

-    print("-" * 60)

-    print("CONCLUSÃO DA ANÁLISE:")

-    print("Se tudo estiver VERDE (OK), o ambiente está aprovado.")

-    print("Se houver VERMELHO, corrija antes de trabalhar.")

-    print("=" * 60)

-

-if __name__ == "__main__":

-    main()
+# Padrões Técnicos

+Padrões de código, arquitetura, versionamento e processos.

</pre>
</div>
<div class='arquivo'>
<div class='titulo alterado'>E:\Projetos\SaudeCicloDaVida\docs\MANUAL_AUTENTICACAO.md</div>
<div class='tipo'>Tipo: ALTERADO</div>
<pre>
--- E:\Projetos\SaudeCicloDaVida\docs\MANUAL_AUTENTICACAO.md
+++ MANUAL_AUTENTICACAO_TEMPLATE
@@ -1,101 +1,2 @@
-# MANUAL TÉCNICO DE AUTENTICAÇÃO (BLUEPRINT)

-&gt; **Projeto:** Saúde Ciclo da Vida (Enterprise Edition)

-&gt; **Módulo:** Autenticação &amp; Segurança (Mobile)

-&gt; **Versão:** 1.0 (Consolidada)

-&gt; **Status:** EM PRODUÇÃO

-

----

-

-## 1. VISÃO GERAL

-Este documento descreve a arquitetura, fluxos e regras de negócio do módulo de autenticação. O sistema utiliza uma abordagem híbrida que suporta **Login Online** (via JWT) e **Funcionalidades Offline** (SOS de Emergência) através de persistência local segura.

-

-### 1.1. Tecnologias Envolvidas

-* **Frontend:** React Native (Expo) + TypeScript.

-* **Armazenamento Local:** `@react-native-async-storage/async-storage`.

-* **Comunicação:** Axios (REST API).

-* **Backend:** NestJS (Porta 4000).

-

----

-

-## 2. MAPA DE FICHEIROS (ARQUITETURA)

-

-| Ficheiro | Função | Tipo |

-| :--- | :--- | :--- |

-| `src/screens/LoginScreen.tsx` | Porta de entrada. Gerencia Login e Lógica SOS. | View |

-| `src/screens/RegisterScreen.tsx` | Formulário de criação de conta. | View |

-| `src/screens/ForgotPasswordScreen.tsx` | Solicitação de reset de senha. | View |

-| `src/services/storage.ts` | **(CRÍTICO)** Gerencia a persistência do perfil para uso offline. | Service |

-| `src/services/api.ts` | Cliente HTTP configurado para a porta 4000. | Service |

-

----

-

-## 3. REGRAS DE NEGÓCIO CRÍTICAS

-

-### 3.1. O "Botão de Pânico Inteligente" (Smart SOS)

-Diferente de apps comuns, o nosso botão SOS reside na tela de Login mas obedece a uma regra de segurança estrita para evitar trotes, mantendo a acessibilidade em emergências.

-

-* **Regra:** O botão só é habilitado se o dispositivo possuir um "Rastro de Autenticação" (Login prévio realizado com sucesso pelo menos uma vez).

-* **Implementação:**

-    1.  Ao abrir o App (`useEffect`), o sistema consulta o `StorageService`.

-    2.  Se existir perfil salvo: **Botão Vermelho (Ativo)**.

-    3.  Se não existir (Primeira vez): **Botão Cinza (Inativo)** + Alerta Educativo ao clicar.

-

-### 3.2. Persistência de Sessão

-* Ao realizar Login ou Cadastro com sucesso, os dados essenciais do utilizador (`name`, `email`, `photo`) são imediatamente gravados no disco do telemóvel.

-* **Objetivo:** Permitir que o SAMU/Emergência identifique o paciente mesmo que ele esteja sem internet (Offline) na hora do socorro.

-

----

-

-## 4. FLUXOS DE NAVEGAÇÃO E DADOS

-

-### 4.1. Fluxo de Login (Caminho Feliz)

-1.  **Entrada:** Utilizador insere E-mail e Senha.

-2.  **Processamento:** `POST /auth/login` (Backend).

-3.  **Sucesso (200 OK):**

-    * Recebe `access_token` e objeto `user`.

-    * Invoca `StorageService.saveUser(user)`.

-    * Redireciona para `Home`.

-4.  **Falha (401/400):** Exibe alerta nativo (`Alert.alert`).

-

-### 4.2. Fluxo de Cadastro (Onboarding)

-1.  **Ação:** Clique em "Ainda não tem conta? Cadastre-se".

-2.  **Tela:** `RegisterScreen` (Campos: Nome, E-mail, Senha).

-3.  **Processamento:** `POST /auth/register` (Backend).

-4.  **Sucesso:**

-    * Exibe mensagem de boas-vindas.

-    * Redireciona para Login para forçar a memorização da senha.

-

-### 4.3. Fluxo de Recuperação (Esqueci Senha)

-1.  **Ação:** Clique em "Esqueci minha senha".

-2.  **Tela:** `ForgotPasswordScreen`.

-3.  **Processamento:** Simulação de envio de e-mail (Backend pendente de integração SMTP).

-4.  **Feedback:** Alerta visual confirmando a solicitação.

-

----

-

-## 5. ESPECIFICAÇÃO DE UI (DESIGN SYSTEM)

-

-### 5.1. Identidade Visual

-* **Tela de Login:** Deve usar obrigatoriamente o logo vertical (`LogoApp.png`) para impacto de marca.

-* **Telas Internas:** Devem usar o logo símbolo (`LogoAppGeral.png`) para economizar espaço e manter foco no formulário.

-

-### 5.2. Safe Areas (Áreas de Segurança)

-Para garantir compatibilidade com "Notches" (recortes de ecrã) e Ilhas Dinâmicas:

-* **Padding Superior:** `Platform.OS === 'android' ? 60 : 70`.

-* **Fundo:** `#FFFFFF` (Branco Puro).

-

----

-

-## 6. SNIPPETS DE CÓDIGO (REFERÊNCIA RÁPIDA)

-

-### A. Serviço de Armazenamento (O Coração Offline)

-```typescript

-export const StorageService = {

-  async saveUser(user: UserProfile) {

-    await AsyncStorage.setItem('@SCV_USER_PROFILE', JSON.stringify(user));

-  },

-  async getUser() {

-    const json = await AsyncStorage.getItem('@SCV_USER_PROFILE');

-    return json ? JSON.parse(json) : null;

-  }

-};
+# Manual de Autenticação

+Fluxos, regras e endpoints de autenticação.

</pre>
</div>
<div class='arquivo'>
<div class='titulo alterado'>E:\Projetos\SaudeCicloDaVida\docs\MANUAL_AUTENTICACAO.md</div>
<div class='tipo'>Tipo: ALTERADO</div>
<pre>
--- E:\Projetos\SaudeCicloDaVida\docs\MANUAL_AUTENTICACAO.md
+++ MANUAL_AUTENTICACAO_TEMPLATE
@@ -1,101 +1,2 @@
-# MANUAL TÉCNICO DE AUTENTICAÇÃO (BLUEPRINT)

-&gt; **Projeto:** Saúde Ciclo da Vida (Enterprise Edition)

-&gt; **Módulo:** Autenticação &amp; Segurança (Mobile)

-&gt; **Versão:** 1.0 (Consolidada)

-&gt; **Status:** EM PRODUÇÃO

-

----

-

-## 1. VISÃO GERAL

-Este documento descreve a arquitetura, fluxos e regras de negócio do módulo de autenticação. O sistema utiliza uma abordagem híbrida que suporta **Login Online** (via JWT) e **Funcionalidades Offline** (SOS de Emergência) através de persistência local segura.

-

-### 1.1. Tecnologias Envolvidas

-* **Frontend:** React Native (Expo) + TypeScript.

-* **Armazenamento Local:** `@react-native-async-storage/async-storage`.

-* **Comunicação:** Axios (REST API).

-* **Backend:** NestJS (Porta 4000).

-

----

-

-## 2. MAPA DE FICHEIROS (ARQUITETURA)

-

-| Ficheiro | Função | Tipo |

-| :--- | :--- | :--- |

-| `src/screens/LoginScreen.tsx` | Porta de entrada. Gerencia Login e Lógica SOS. | View |

-| `src/screens/RegisterScreen.tsx` | Formulário de criação de conta. | View |

-| `src/screens/ForgotPasswordScreen.tsx` | Solicitação de reset de senha. | View |

-| `src/services/storage.ts` | **(CRÍTICO)** Gerencia a persistência do perfil para uso offline. | Service |

-| `src/services/api.ts` | Cliente HTTP configurado para a porta 4000. | Service |

-

----

-

-## 3. REGRAS DE NEGÓCIO CRÍTICAS

-

-### 3.1. O "Botão de Pânico Inteligente" (Smart SOS)

-Diferente de apps comuns, o nosso botão SOS reside na tela de Login mas obedece a uma regra de segurança estrita para evitar trotes, mantendo a acessibilidade em emergências.

-

-* **Regra:** O botão só é habilitado se o dispositivo possuir um "Rastro de Autenticação" (Login prévio realizado com sucesso pelo menos uma vez).

-* **Implementação:**

-    1.  Ao abrir o App (`useEffect`), o sistema consulta o `StorageService`.

-    2.  Se existir perfil salvo: **Botão Vermelho (Ativo)**.

-    3.  Se não existir (Primeira vez): **Botão Cinza (Inativo)** + Alerta Educativo ao clicar.

-

-### 3.2. Persistência de Sessão

-* Ao realizar Login ou Cadastro com sucesso, os dados essenciais do utilizador (`name`, `email`, `photo`) são imediatamente gravados no disco do telemóvel.

-* **Objetivo:** Permitir que o SAMU/Emergência identifique o paciente mesmo que ele esteja sem internet (Offline) na hora do socorro.

-

----

-

-## 4. FLUXOS DE NAVEGAÇÃO E DADOS

-

-### 4.1. Fluxo de Login (Caminho Feliz)

-1.  **Entrada:** Utilizador insere E-mail e Senha.

-2.  **Processamento:** `POST /auth/login` (Backend).

-3.  **Sucesso (200 OK):**

-    * Recebe `access_token` e objeto `user`.

-    * Invoca `StorageService.saveUser(user)`.

-    * Redireciona para `Home`.

-4.  **Falha (401/400):** Exibe alerta nativo (`Alert.alert`).

-

-### 4.2. Fluxo de Cadastro (Onboarding)

-1.  **Ação:** Clique em "Ainda não tem conta? Cadastre-se".

-2.  **Tela:** `RegisterScreen` (Campos: Nome, E-mail, Senha).

-3.  **Processamento:** `POST /auth/register` (Backend).

-4.  **Sucesso:**

-    * Exibe mensagem de boas-vindas.

-    * Redireciona para Login para forçar a memorização da senha.

-

-### 4.3. Fluxo de Recuperação (Esqueci Senha)

-1.  **Ação:** Clique em "Esqueci minha senha".

-2.  **Tela:** `ForgotPasswordScreen`.

-3.  **Processamento:** Simulação de envio de e-mail (Backend pendente de integração SMTP).

-4.  **Feedback:** Alerta visual confirmando a solicitação.

-

----

-

-## 5. ESPECIFICAÇÃO DE UI (DESIGN SYSTEM)

-

-### 5.1. Identidade Visual

-* **Tela de Login:** Deve usar obrigatoriamente o logo vertical (`LogoApp.png`) para impacto de marca.

-* **Telas Internas:** Devem usar o logo símbolo (`LogoAppGeral.png`) para economizar espaço e manter foco no formulário.

-

-### 5.2. Safe Areas (Áreas de Segurança)

-Para garantir compatibilidade com "Notches" (recortes de ecrã) e Ilhas Dinâmicas:

-* **Padding Superior:** `Platform.OS === 'android' ? 60 : 70`.

-* **Fundo:** `#FFFFFF` (Branco Puro).

-

----

-

-## 6. SNIPPETS DE CÓDIGO (REFERÊNCIA RÁPIDA)

-

-### A. Serviço de Armazenamento (O Coração Offline)

-```typescript

-export const StorageService = {

-  async saveUser(user: UserProfile) {

-    await AsyncStorage.setItem('@SCV_USER_PROFILE', JSON.stringify(user));

-  },

-  async getUser() {

-    const json = await AsyncStorage.getItem('@SCV_USER_PROFILE');

-    return json ? JSON.parse(json) : null;

-  }

-};
+# Manual de Autenticação

+Fluxos, regras e endpoints de autenticação.

</pre>
</div>
<div class='arquivo'>
<div class='titulo alterado'>E:\Projetos\SaudeCicloDaVida\docs\MODELAGEM_DADOS.md</div>
<div class='tipo'>Tipo: ALTERADO</div>
<pre>
--- E:\Projetos\SaudeCicloDaVida\docs\MODELAGEM_DADOS.md
+++ MODELAGEM_DADOS_TEMPLATE
@@ -1 +1,2 @@
-🗄️ MODELAGEM DE DADOS: Saúde Ciclo da VidaMotor: PostgreSQL | ORM: Prisma | Versão: 1.11. Diagrama Visual (Conceitual)User (Núcleo): O centro de tudo.Profile (Extensão): Dados que não são de login (endereço, telefone).Medication (Prontuário): O remédio em si.Schedule (Horários): Os vários horários de um mesmo remédio.PanicLog (Segurança): Histórico de apertos do botão SOS.2. Detalhamento das Tabelas (Schema)A. Tabela User (Identidade)Responsável pela Autenticação e acesso ao sistema.CampoTipoDescriçãoidUUID (String)Chave Primária (Ex: 550e8400-e29b...).emailStringÚnico. Usado para login.passwordStringHash Bcrypt (Segurança).nameStringNome de exibição.photoUrlStringAvatar do usuário (ou gerado auto).createdAtDateTimeData de entrada no sistema.B. Tabela Profile (Dados Clínicos/Pessoais)Relacionamento: 1-para-1 com User (Um usuário TEM UM perfil).CampoTipoDescriçãoidUUIDChave Primária.userIdUUIDForeign Key (Liga ao Usuário).phoneStringPara contato de emergência.addressStringPara envio de ambulância/ajuda.bloodTypeString(Opcional) Tipo sanguíneo.emergencyContactString(Opcional) Nome do parente.C. Tabela Medication (O Remédio)Relacionamento: 1-para-N com User (Um usuário TEM MUITOS remédios).CampoTipoDescriçãoidUUIDChave Primária.userIdUUIDForeign Key (Dono do remédio).nameStringNome (Ex: Losartana).dosageStringDose (Ex: 50mg).instructionsString(Ex: Tomar em jejum).typeString(Ex: Comprimido, Xarope).D. Tabela MedicationSchedule (A Agenda)Relacionamento: 1-para-N com Medication (Um remédio TEM MUITOS horários).Motivo: Um remédio pode ser tomado às 08:00 e às 20:00.CampoTipoDescriçãoidUUIDChave Primária.medicationIdUUIDForeign Key (Liga ao remédio).timeStringHorário (Ex: "08:00").takenBooleanSe já tomou hoje (Reseta à meia-noite).E. Tabela PanicLog (Auditoria de Segurança)Relacionamento: 1-para-N com User (Um usuário pode ter VÁRIOS alertas).CampoTipoDescriçãoidUUIDChave Primária.userIdUUIDForeign Key (Quem pediu socorro).triggeredAtDateTimeHora exata do clique.latitudeFloatLocalização GPS.longitudeFloatLocalização GPS.batteryLevelIntNível de bateria no momento (Auditoria).
+# Modelagem de Dados

+Entidades, relacionamentos e diagramas de dados.

</pre>
</div>
<div class='arquivo'>
<div class='titulo alterado'>E:\Projetos\SaudeCicloDaVida\docs\MODELAGEM_DADOS.md</div>
<div class='tipo'>Tipo: ALTERADO</div>
<pre>
--- E:\Projetos\SaudeCicloDaVida\docs\MODELAGEM_DADOS.md
+++ MODELAGEM_DADOS_TEMPLATE
@@ -1,7 +1,2 @@
-# Documento Técnico — Gerado pelo GestorArquivos

-Data de geração: 2026-01-21 10:04:37

-Projeto: SaudeCicloDaVida

----

-

 # Modelagem de Dados

 Entidades, relacionamentos e diagramas de dados.

</pre>
</div>
<div class='arquivo'>
<div class='titulo alterado'>E:\Projetos\SaudeCicloDaVida\EspecificaçãoTécnicaLogin.md</div>
<div class='tipo'>Tipo: ALTERADO</div>
<pre>
--- E:\Projetos\SaudeCicloDaVida\EspecificaçãoTécnicaLogin.md
+++ EspecificaçãoTécnicaLogin_TEMPLATE
@@ -1,176 +1,3 @@
-ESPECIFICAÇÃO TÉCNICA — GERAÇÃO DO ARQUIVO DE REFERÊNCIA DA TELA DE AUTENTICAÇÃO

-1. Objetivo da Entrega

-Gerar um arquivo técnico consolidado, contendo todo o código-fonte, procedimentos, fluxos, regras de negócio e componentes funcionais utilizados na implementação completa da tela de autenticação do sistema.

-Esse arquivo servirá como base arquitetural, modelo de referência e template reutilizável para futuros projetos.

-

-2. Escopo do Arquivo Técnico Consolidado

-O arquivo deve documentar, de forma detalhada e modular, todos os elementos envolvidos na construção da camada de autenticação, incluindo:

-

-2.1. Estrutura da Tela de Login

-Layout da interface

-

-Campos obrigatórios

-

-Validações de entrada

-

-Comportamento dos botões

-

-Regras de navegação

-

-2.2. Funcionalidades Implementadas

-O arquivo deve conter o código e a descrição técnica das seguintes funções:

-

-Login

-

-Entrada de e-mail

-

-Entrada de senha

-

-Validação de credenciais

-

-Tratamento de erros

-

-Redirecionamento pós-autenticação

-

-Criação de Conta (Cadastro)

-

-Formulário de novo usuário

-

-Validação de e-mail

-

-Validação de senha

-

-Persistência dos dados

-

-Confirmação de cadastro

-

-Função “Esqueci minha senha”

-

-Entrada de e-mail

-

-Validação de existência do usuário

-

-Envio de token ou link de recuperação

-

-Mensagens de feedback

-

-Função “Ainda não tem conta? Cadastre-se”

-

-Redirecionamento para tela de cadastro

-

-Regras de pré-cadastro

-

-Tratamento de duplicidade

-

-Recuperação de Senha

-

-Validação do token

-

-Criação de nova senha

-

-Regras de segurança

-

-Confirmação de redefinição

-

-3. Conteúdo Obrigatório do Arquivo

-O arquivo consolidado deve conter:

-

-3.1. Código-Fonte Completo

-Componentes de UI

-

-Funções de validação

-

-Funções de autenticação

-

-Serviços de backend (se aplicável)

-

-Rotas e endpoints

-

-Modelos de dados

-

-Tratamento de exceções

-

-3.2. Procedimentos Técnicos

-Fluxo de autenticação

-

-Fluxo de cadastro

-

-Fluxo de recuperação de senha

-

-Fluxo de redefinição de senha

-

-Fluxo de navegação entre telas

-

-3.3. Regras de Negócio

-Requisitos mínimos de senha

-

-Regras de validação de e-mail

-

-Regras de persistência

-

-Regras de segurança

-

-Regras de bloqueio e desbloqueio

-

-3.4. Estrutura de Diretórios

-Onde cada arquivo deve ficar

-

-Nomeação padrão

-

-Organização modular

-

-3.5. Dependências

-Bibliotecas utilizadas

-

-Versões recomendadas

-

-Configurações necessárias

-

-4. Formato do Arquivo Final

-O arquivo deve ser gerado em formato:

-

-Markdown (.md) ou

-

-Texto estruturado (.txt)

-

-E deve seguir a seguinte estrutura:

-

-Código

-/Autenticacao/

-    ├── 01_Introducao.md

-    ├── 02_Estrutura_da_Tela.md

-    ├── 03_Fluxo_Login.md

-    ├── 04_Fluxo_Cadastro.md

-    ├── 05_Fluxo_Esqueci_Senha.md

-    ├── 06_Fluxo_Recuperacao_Senha.md

-    ├── 07_Regras_de_Negocio.md

-    ├── 08_Codigo_Fonte_Completo.md

-    ├── 09_Endpoints_Backend.md

-    ├── 10_Checklist_Implementacao.md

-5. Finalidade do Arquivo

-O arquivo consolidado servirá como:

-

-Blueprint técnico para novos projetos

-

-Guia de implementação para desenvolvedores

-

-Base de versionamento para evolução da autenticação

-

-Modelo padrão para sistemas futuros

-

-Documentação oficial da camada de autenticação

-

-6. Resultado Esperado

-Ao final, teremos um documento técnico completo, contendo:

-

-Todo o código

-

-Todas as regras

-

-Todos os fluxos

-

-Todas as validações

-

-Toda a lógica de autenticação

-

-Esse documento será reutilizável, padronizado e servirá como referência oficial para qualquer projeto que precise de uma camada de autenticação robusta.
+# Especificação Técnica — Login

+Documento técnico gerado automaticamente pelo GestorArquivos.

+Este arquivo descreve tecnicamente o fluxo, regras e validações da tela de login.

</pre>
</div>
</body></html>
```

