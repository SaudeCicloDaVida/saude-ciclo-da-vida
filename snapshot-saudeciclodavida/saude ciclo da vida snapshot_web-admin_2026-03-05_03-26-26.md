# 🧭 CONTEXT SNAPSHOT: Módulo [WEB-ADMIN]
**Projeto:** SaudeCicloDaVida
**Gerado em:** 05/03/2026, 00:26:26
**Total de Arquivos nesta Partição:** 13

---

================================================================================
📁 ARQUIVO: web-admin/.gitignore
🛠️ EXTENSÃO: (Sem extensão)
📏 TAMANHO: 532 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 18/01/2026, 23:53:49
================================================================================

```(Sem extensão)
# See https://help.github.com/articles/ignoring-files/ for more about ignoring files.

# dependencies
/node_modules
/.pnp
.pnp.*
.yarn/*
!.yarn/patches
!.yarn/plugins
!.yarn/releases
!.yarn/versions

# testing
/coverage

# next.js
/.next/
/out/

# production
/build

# misc
.DS_Store
*.pem

# debug
npm-debug.log*
yarn-debug.log*
yarn-error.log*
.pnpm-debug.log*

# env files (can opt-in for committing if needed)
.env*

# vercel
.vercel

# typescript
*.tsbuildinfo
next-env.d.ts

.vercel

```

================================================================================
📁 ARQUIVO: web-admin/app/globals.css
🛠️ EXTENSÃO: .css
📏 TAMANHO: 514 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 18/01/2026, 23:53:49
================================================================================

```css
@import "tailwindcss";

:root {
  --background: #ffffff;
  --foreground: #171717;
}

@theme inline {
  --color-background: var(--background);
  --color-foreground: var(--foreground);
  --font-sans: var(--font-geist-sans);
  --font-mono: var(--font-geist-mono);
}

@media (prefers-color-scheme: dark) {
  :root {
    --background: #0a0a0a;
    --foreground: #ededed;
  }
}

body {
  background: var(--background);
  color: var(--foreground);
  font-family: Arial, Helvetica, sans-serif;
}

```

================================================================================
📁 ARQUIVO: web-admin/app/layout.tsx
🛠️ EXTENSÃO: .tsx
📏 TAMANHO: 1.41 KB
🕒 ÚLTIMA MODIFICAÇÃO: 18/01/2026, 23:53:49
================================================================================

```tsx
/*
-------------------------------------------------------------------------
PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
ARQUITETURA: FULL STACK (NestJS + React Native + Next.js)
GOVERNANÇA: PGT-01 (NORMA EXTREMO ZERO)
-------------------------------------------------------------------------
MÓDULO: LAYOUT ROOT (App Router)
DESCRIÇÃO: Estrutura global da aplicação. 
AJUSTE TÉCNICO: Substituição de fontes locais por Google Fonts (Inter) 
para evitar erros de build por arquivo ausente. Inclui supressão de hidratação.
-------------------------------------------------------------------------
*/

import type { Metadata } from "next";
import { Inter } from "next/font/google"; // Usa fonte da nuvem (Google)
import "./globals.css";

// Inicializa a fonte Inter (Padrão Enterprise)
const inter = Inter({ subsets: ["latin"] });

export const metadata: Metadata = {
  title: "Torre de Controle SOS",
  description: "Monitoramento de Vida Assistida - Enterprise Edition",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="pt-br">
      {/* className={inter.className}: Aplica a fonte automaticamente.
        suppressHydrationWarning: Ignora erros de extensões do navegador.
      */}
      <body className={inter.className} suppressHydrationWarning={true}>
        {children}
      </body>
    </html>
  );
}
```

================================================================================
📁 ARQUIVO: web-admin/app/login/page.tsx
🛠️ EXTENSÃO: .tsx
📏 TAMANHO: 4.6 KB
🕒 ÚLTIMA MODIFICAÇÃO: 21/01/2026, 00:31:31
================================================================================

```tsx
'use client';

// -------------------------------------------------------------------------
// ARQUIVO: web-admin/src/app/login/page.tsx
// OBJETIVO: Tela de Entrada do Administrador
// -------------------------------------------------------------------------

import { useState } from 'react';
import { useRouter } from 'next/navigation';
import { Lock, Mail, ArrowRight, AlertCircle } from 'lucide-react';
import axios from 'axios';

export default function LoginPage() {
  const router = useRouter();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');

  const handleLogin = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError('');

    try {
      // Conecta no Backend (Porta 4000)
      const response = await axios.post('http://localhost:4000/auth/login', {
        email,
        password
      });

      if (response.data.access_token) {
        // Salva o token (Simples por enquanto) e joga pro Dashboard
        localStorage.setItem('scv_token', response.data.access_token);
        router.push('/'); 
      }
    } catch (err: any) {
      if (err.response?.status === 401) {
        setError('E-mail ou senha incorretos.');
      } else {
        setError('Erro de conexão com o servidor.');
      }
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="min-h-screen flex items-center justify-center bg-slate-100 px-4">
      <div className="bg-white p-8 rounded-2xl shadow-xl w-full max-w-md border border-slate-200">
        
        {/* CABEÇALHO */}
        <div className="text-center mb-8">
          <div className="w-16 h-16 bg-cyan-600 rounded-xl flex items-center justify-center text-white mx-auto mb-4 shadow-lg shadow-cyan-200">
            <Lock size={32} />
          </div>
          <h1 className="text-2xl font-bold text-slate-800">Acesso Administrativo</h1>
          <p className="text-slate-500 text-sm">Saúde Ciclo da Vida - Enterprise</p>
        </div>

        {/* FORMULÁRIO */}
        <form onSubmit={handleLogin} className="space-y-5">
          
          <div>
            <label className="block text-sm font-medium text-slate-700 mb-1">E-mail Corporativo</label>
            <div className="relative">
              <Mail className="absolute left-3 top-3 text-slate-400" size={20} />
              <input 
                type="email" 
                required
                className="w-full pl-10 pr-4 py-3 border border-slate-300 rounded-lg focus:ring-2 focus:ring-cyan-500 focus:border-cyan-500 outline-none transition"
                placeholder="admin@empresa.com"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
              />
            </div>
          </div>

          <div>
            <div className="flex justify-between items-center mb-1">
              <label className="block text-sm font-medium text-slate-700">Senha</label>
              {/* Note que aqui não temos link funcional de "Esqueci" ainda no web, apenas decorativo */}
              <span className="text-xs text-cyan-600 hover:underline cursor-pointer">Esqueceu a senha?</span>
            </div>
            <div className="relative">
              <Lock className="absolute left-3 top-3 text-slate-400" size={20} />
              <input 
                type="password" 
                required
                className="w-full pl-10 pr-4 py-3 border border-slate-300 rounded-lg focus:ring-2 focus:ring-cyan-500 focus:border-cyan-500 outline-none transition"
                placeholder="••••••••"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
              />
            </div>
          </div>

          {/* MENSAGEM DE ERRO */}
          {error && (
            <div className="bg-red-50 text-red-600 p-3 rounded-lg text-sm flex items-center gap-2 border border-red-100">
              <AlertCircle size={16} />
              {error}
            </div>
          )}

          <button 
            type="submit" 
            disabled={loading}
            className={`w-full bg-cyan-700 text-white font-bold py-3 rounded-lg flex items-center justify-center gap-2 transition hover:bg-cyan-800 ${loading ? 'opacity-70 cursor-not-allowed' : ''}`}
          >
            {loading ? 'Acessando...' : 'ENTRAR NO SISTEMA'}
            {!loading && <ArrowRight size={20} />}
          </button>
        </form>

      </div>
    </div>
  );
}
```

================================================================================
📁 ARQUIVO: web-admin/app/page.tsx
🛠️ EXTENSÃO: .tsx
📏 TAMANHO: 9.16 KB
🕒 ÚLTIMA MODIFICAÇÃO: 04/03/2026, 13:47:09
================================================================================

```tsx
'use client';

// -------------------------------------------------------------------------
// PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
// ARQUIVO: web-admin/src/app/page.tsx
// TIPO: DASHBOARD DE MONITORAMENTO
// STATUS: FINAL (Link do Google Maps Oficializado e Testado)
// AJUSTE: CORREÇÃO DE PREFIXO DE API V1 (ELIMINAÇÃO DO ERRO 404)
// VERSÃO: FUSÃO TÉCNICA v2.6 (Sincronizada)
// -------------------------------------------------------------------------

import { useEffect, useState } from 'react';
import axios from 'axios';
import { formatDistanceToNow } from 'date-fns';
import { ptBR } from 'date-fns/locale';
import { 
  Activity, Users, AlertTriangle, MapPin, 
  CheckCircle, Wifi, WifiOff, Navigation 
} from 'lucide-react';

// 1. INTERFACES DE DADOS
interface Alert {
  id: string;
  latitude: number;
  longitude: number;
  batteryLevel: number;
  createdAt: string;
  resolved: boolean;
  user: {
    name: string;
    photoUrl: string;
  };
}

interface User {
  id: string;
  name: string;
  photoUrl: string;
  lastLatitude?: number;
  lastLongitude?: number;
  lastSeenAt?: string;
  role: string;
}

export default function Dashboard() {
  const [alerts, setAlerts] = useState<Alert[]>([]);
  const [users, setUsers] = useState<User[]>([]); 
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(false);

  // 2. BUSCAR DADOS (Sincronizado com Backend V1)
  const fetchData = async () => {
    try {
      // A. Busca Alertas - AJUSTADO PARA /api/v1/sos
      const resAlerts = await axios.get('http://localhost:4000/api/v1/sos');
      const activeAlerts = resAlerts.data.filter((a: Alert) => !a.resolved);
      setAlerts(activeAlerts);

      // B. Busca Usuários - AJUSTADO PARA /api/v1/users
      const resUsers = await axios.get('http://localhost:4000/api/v1/users');
      // Filtragem mantida conforme lógica original do componente
      const trackedUsers = resUsers.data.filter((u: User) => u.lastLatitude && u.role === 'PACIENTE');
      setUsers(trackedUsers);

      setError(false);
    } catch (err) {
      console.error('Erro de conexão:', err);
      setError(true);
    } finally {
      setLoading(false);
    }
  };

  const resolveAlert = async (id: string) => {
    try {
      // AJUSTADO PARA O ENDPOINT RESTFUL V1
      await axios.patch(`http://localhost:4000/api/v1/sos/${id}/resolve`, { resolved: true });
      fetchData(); 
    } catch (err) {
      alert('Erro ao finalizar o atendimento.');
    }
  };

  useEffect(() => {
    fetchData();
    const interval = setInterval(fetchData, 5000);
    return () => clearInterval(interval);
  }, []);

  return (
    <div className="min-h-screen bg-gray-50 text-gray-900 font-sans">
      
      {/* HEADER */}
      <header className="bg-white border-b border-gray-200 px-8 py-4 flex justify-between items-center sticky top-0 z-50 shadow-sm">
        <div className="flex items-center gap-3">
          <div className="w-10 h-10 bg-cyan-600 rounded-lg flex items-center justify-center text-white font-bold shadow-lg">
            SCV
          </div>
          <div>
            <h1 className="text-xl font-bold text-gray-800">CENTRAL DE MONITORAMENTO</h1>
            <p className="text-xs text-gray-500 font-medium">Enterprise Edition • v2.6 (Sincronizada)</p>
          </div>
        </div>
        <div className={`flex items-center gap-3 px-4 py-2 rounded-full border ${error ? 'bg-red-50 border-red-200' : 'bg-green-50 border-green-200'}`}>
          {error ? <WifiOff size={18} className="text-red-500" /> : <Wifi size={18} className="text-green-500" />}
          <span className={`text-sm font-bold ${error ? 'text-red-600' : 'text-green-600'}`}>
            {error ? 'OFFLINE' : 'SISTEMA ONLINE'}
          </span>
        </div>
      </header>

      <main className="p-8 max-w-7xl mx-auto grid grid-cols-1 lg:grid-cols-2 gap-8">
        
        {/* ESQUERDA: ALERTAS DE PÂNICO */}
        <div>
          <h2 className="text-lg font-bold text-gray-800 flex items-center gap-2 mb-4">
            <AlertTriangle className="text-red-600" />
            Alertas de Emergência ({alerts.length})
          </h2>

          {alerts.length === 0 ? (
            <div className="bg-white rounded-xl border border-gray-200 p-8 text-center shadow-sm">
              <CheckCircle className="text-green-500 mx-auto mb-2" size={32} />
              <p className="text-gray-500">Nenhum pedido de socorro ativo.</p>
            </div>
          ) : (
            <div className="space-y-4">
              {alerts.map((alert) => (
                <div key={alert.id} className="bg-white rounded-xl border-l-4 border-red-500 shadow-md p-6 animate-pulse">
                  <div className="flex justify-between items-start mb-4">
                    <div className="flex items-center gap-3">
                      <img src={alert.user?.photoUrl} className="w-12 h-12 rounded-full bg-gray-200" alt="User" />
                      <div>
                        <h3 className="font-bold text-lg">{alert.user?.name || "Paciente"}</h3>
                        <span className="text-xs font-bold text-red-600 bg-red-100 px-2 py-1 rounded-full">SOS ATIVO</span>
                      </div>
                    </div>
                    <div className="text-right">
                       <span className="block font-bold text-red-600">{alert.batteryLevel}% Bateria</span>
                       <span className="text-xs text-gray-400">
                         {formatDistanceToNow(new Date(alert.createdAt), { locale: ptBR, addSuffix: true })}
                       </span>
                    </div>
                  </div>
                  <div className="grid grid-cols-2 gap-3">
                    <a 
                      href={`https://www.google.com/maps?q=${alert.latitude},${alert.longitude}`}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="bg-gray-100 hover:bg-gray-200 text-gray-700 font-bold py-2 rounded-lg flex items-center justify-center gap-2"
                    >
                      <MapPin size={18} /> Ver Local
                    </a>
                    <button 
                      onClick={() => resolveAlert(alert.id)}
                      className="bg-green-600 hover:bg-green-700 text-white font-bold py-2 rounded-lg flex items-center justify-center gap-2"
                    >
                      <CheckCircle size={18} /> Atender
                    </button>
                  </div>
                </div>
              ))}
            </div>
          )}
        </div>

        {/* DIREITA: MONITORAMENTO ATIVO */}
        <div>
          <h2 className="text-lg font-bold text-gray-800 flex items-center gap-2 mb-4">
            <Navigation className="text-cyan-600" />
            Rastreamento Ativo ({users.length})
          </h2>

          <div className="grid grid-cols-1 gap-4">
            {users.length === 0 ? (
                <div className="bg-white rounded-xl border border-gray-200 p-8 text-center shadow-sm">
                  <Users className="text-gray-400 mx-auto mb-2" size={32} />
                  <p className="text-gray-500">Nenhum paciente com GPS ativo.</p>
                </div>
            ) : (
              users.map((user) => (
                <div key={user.id} className="bg-white rounded-xl border border-gray-200 shadow-sm p-5 hover:border-cyan-300 transition-colors">
                  <div className="flex items-center justify-between">
                    <div className="flex items-center gap-4">
                      <div className="relative">
                        <img src={user.photoUrl} className="w-14 h-14 rounded-full border-2 border-white shadow-sm" alt="User" />
                        <div className="absolute bottom-0 right-0 w-3.5 h-3.5 bg-green-500 border-2 border-white rounded-full"></div>
                      </div>
                      <div>
                        <h3 className="font-bold text-gray-900">{user.name}</h3>
                        <div className="flex items-center gap-1 text-xs text-gray-500 mt-0.5">
                          <Activity size={12} className="text-cyan-500" />
                          <span>
                            Visto {user.lastSeenAt ? formatDistanceToNow(new Date(user.lastSeenAt), { locale: ptBR, addSuffix: true }) : 'Recentemente'}
                          </span>
                        </div>
                      </div>
                    </div>
                    
                    <a 
                      href={`https://www.google.com/maps?q=${user.lastLatitude},${user.lastLongitude}`}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="bg-cyan-50 text-cyan-700 hover:bg-cyan-100 p-3 rounded-full transition-colors"
                      title="Abrir no Mapa"
                    >
                      <MapPin size={20} />
                    </a>
                  </div>
                </div>
              ))
            )}
          </div>
        </div>

      </main>
    </div>
  );
}
```

================================================================================
📁 ARQUIVO: web-admin/app/reset-password/page.tsx
🛠️ EXTENSÃO: .tsx
📏 TAMANHO: 3.01 KB
🕒 ÚLTIMA MODIFICAÇÃO: 21/01/2026, 00:11:46
================================================================================

```tsx
'use client';

import { useState, Suspense } from 'react';
import { useSearchParams, useRouter } from 'next/navigation';

// Componente interno para ler a URL (Next.js pede Suspense para useSearchParams)
function ResetForm() {
  const searchParams = useSearchParams();
  const router = useRouter();
  const token = searchParams.get('token'); // Pega o token da URL

  const [pass, setPass] = useState('');
  const [confirm, setConfirm] = useState('');
  const [status, setStatus] = useState({ msg: '', type: '' });

  const handleReset = async () => {
    if (pass !== confirm) {
      setStatus({ msg: 'As senhas não coincidem!', type: 'error' });
      return;
    }
    if (!token) {
      setStatus({ msg: 'Token inválido (Link quebrado).', type: 'error' });
      return;
    }

    try {
      setStatus({ msg: 'Processando...', type: 'info' });
      
      // Chama o Backend na porta 4000
      const response = await fetch('http://localhost:4000/auth/reset-password', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ token, newPass: pass }),
      });

      const data = await response.json();

      if (response.ok) {
        setStatus({ msg: 'Sucesso! Redirecionando...', type: 'success' });
        setTimeout(() => router.push('/login'), 3000); // Manda pro login
      } else {
        setStatus({ msg: data.message || 'Erro ao alterar.', type: 'error' });
      }
    } catch (err) {
      setStatus({ msg: 'Erro de conexão com o servidor.', type: 'error' });
    }
  };

  return (
    <div className="flex flex-col gap-4 w-full max-w-md">
      <h1 className="text-2xl font-bold text-slate-800 text-center">Nova Senha</h1>
      <p className="text-slate-500 text-center mb-4">Digite sua nova senha de acesso.</p>

      <input
        type="password"
        placeholder="Nova Senha"
        className="p-3 border rounded-lg"
        value={pass}
        onChange={(e) => setPass(e.target.value)}
      />
      
      <input
        type="password"
        placeholder="Confirmar Nova Senha"
        className="p-3 border rounded-lg"
        value={confirm}
        onChange={(e) => setConfirm(e.target.value)}
      />

      <button
        onClick={handleReset}
        className="bg-cyan-600 text-white p-3 rounded-lg font-bold hover:bg-cyan-700 transition"
      >
        SALVAR NOVA SENHA
      </button>

      {status.msg && (
        <div className={`p-3 rounded text-center font-medium ${
          status.type === 'error' ? 'bg-red-100 text-red-700' : 
          status.type === 'success' ? 'bg-green-100 text-green-700' : 'bg-blue-100 text-blue-700'
        }`}>
          {status.msg}
        </div>
      )}
    </div>
  );
}

export default function ResetPasswordPage() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-slate-100 p-4">
      <Suspense fallback={<div>Carregando...</div>}>
        <ResetForm />
      </Suspense>
    </div>
  );
}
```

================================================================================
📁 ARQUIVO: web-admin/eslint.config.mjs
🛠️ EXTENSÃO: .mjs
📏 TAMANHO: 483 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 18/01/2026, 23:53:49
================================================================================

```mjs
import { defineConfig, globalIgnores } from "eslint/config";
import nextVitals from "eslint-config-next/core-web-vitals";
import nextTs from "eslint-config-next/typescript";

const eslintConfig = defineConfig([
  ...nextVitals,
  ...nextTs,
  // Override default ignores of eslint-config-next.
  globalIgnores([
    // Default ignores of eslint-config-next:
    ".next/**",
    "out/**",
    "build/**",
    "next-env.d.ts",
  ]),
]);

export default eslintConfig;

```

================================================================================
📁 ARQUIVO: web-admin/next-env.d.ts
🛠️ EXTENSÃO: .ts
📏 TAMANHO: 257 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 19/01/2026, 18:40:07
================================================================================

```ts
/// <reference types="next" />
/// <reference types="next/image-types/global" />
import "./.next/dev/types/routes.d.ts";

// NOTE: This file should not be edited
// see https://nextjs.org/docs/app/api-reference/config/typescript for more information.

```

================================================================================
📁 ARQUIVO: web-admin/next.config.ts
🛠️ EXTENSÃO: .ts
📏 TAMANHO: 140 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 18/01/2026, 23:53:49
================================================================================

```ts
import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  /* config options here */
};

export default nextConfig;

```

================================================================================
📁 ARQUIVO: web-admin/package.json
🛠️ EXTENSÃO: .json
📏 TAMANHO: 642 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 18/01/2026, 23:53:49
================================================================================

```json
{
  "name": "web-admin",
  "version": "0.1.0",
  "private": true,
  "scripts": {
    "dev": "next dev",
    "build": "next build",
    "start": "next start",
    "lint": "eslint"
  },
  "dependencies": {
    "axios": "^1.13.2",
    "date-fns": "^4.1.0",
    "lucide-react": "^0.562.0",
    "next": "16.1.3",
    "react": "19.2.3",
    "react-dom": "19.2.3"
  },
  "devDependencies": {
    "@tailwindcss/postcss": "^4",
    "@types/node": "^20",
    "@types/react": "^19",
    "@types/react-dom": "^19",
    "eslint": "^9",
    "eslint-config-next": "16.1.3",
    "tailwindcss": "^4",
    "typescript": "^5"
  }
}

```

================================================================================
📁 ARQUIVO: web-admin/postcss.config.mjs
🛠️ EXTENSÃO: .mjs
📏 TAMANHO: 101 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 18/01/2026, 23:53:49
================================================================================

```mjs
const config = {
  plugins: {
    "@tailwindcss/postcss": {},
  },
};

export default config;

```

================================================================================
📁 ARQUIVO: web-admin/README.md
🛠️ EXTENSÃO: .md
📏 TAMANHO: 1.45 KB
🕒 ÚLTIMA MODIFICAÇÃO: 18/01/2026, 23:53:49
================================================================================

```md
This is a [Next.js](https://nextjs.org) project bootstrapped with [`create-next-app`](https://nextjs.org/docs/app/api-reference/cli/create-next-app).

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.tsx`. The page auto-updates as you edit the file.

This project uses [`next/font`](https://nextjs.org/docs/app/building-your-application/optimizing/fonts) to automatically optimize and load [Geist](https://vercel.com/font), a new font family for Vercel.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/app/building-your-application/deploying) for more details.

```

================================================================================
📁 ARQUIVO: web-admin/tsconfig.json
🛠️ EXTENSÃO: .json
📏 TAMANHO: 700 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 18/01/2026, 23:53:49
================================================================================

```json
{
  "compilerOptions": {
    "target": "ES2017",
    "lib": ["dom", "dom.iterable", "esnext"],
    "allowJs": true,
    "skipLibCheck": true,
    "strict": true,
    "noEmit": true,
    "esModuleInterop": true,
    "module": "esnext",
    "moduleResolution": "bundler",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "jsx": "react-jsx",
    "incremental": true,
    "plugins": [
      {
        "name": "next"
      }
    ],
    "paths": {
      "@/*": ["./*"]
    }
  },
  "include": [
    "next-env.d.ts",
    "**/*.ts",
    "**/*.tsx",
    ".next/types/**/*.ts",
    ".next/dev/types/**/*.ts",
    "**/*.mts"
  ],
  "exclude": ["node_modules"]
}

```

