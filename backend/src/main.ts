/**
 * -------------------------------------------------------------------------
 * PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
 * ARQUITETURA: BACKEND (Entry Point)
 * VERSÃO: FINAL STABLE (FUSÃO CONTROLADA)
 * -------------------------------------------------------------------------
 */

import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  // INJEÇÃO TÉCNICA: Define o prefixo global para todas as rotas
  // Isso garante que o endereço seja /api/v1/... (Ex: /api/v1/auth/login)
  app.setGlobalPrefix('api/v1');

  // 1. SEGURANÇA (Fusão de CORS: Essencial para o Mobile e Web)
  // Mantendo a robustez de métodos e credenciais validados
  app.enableCors({
    origin: '*', 
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
    credentials: true,
  });

  // 2. INICIALIZAÇÃO (Ajuste Crítico de Infraestrutura)
  // - Porta: 4000 (Evita colisão com Web Admin na 3000)
  // - Host: '0.0.0.0' (O '0.0.0.0' permite que o celular te ache na rede Wi-Fi)
  await app.listen(4000, '0.0.0.0');

  // 3. LOGS DE SISTEMA (Preservação 100% Visual)
  console.log(`\n🚀 ---------------------------------------------------`);
  console.log(`✅ BACKEND OPERACIONAL NA PORTA 4000`);
  console.log(`💻 Acesso Local: http://localhost:4000`);
  console.log(`📡 Prefixo API: /api/v1`);
  console.log(`📱 Acesso Mobile: Use o IP da sua máquina (ex: 192.168.15.8:4000)`);
  console.log(`🧪 Teste de Rota: http://localhost:4000/api/v1/automation/payload/...`);
  console.log(`---------------------------------------------------\n`);
}
bootstrap();