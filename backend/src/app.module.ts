// -------------------------------------------------------------------------
// PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
// ARQUIVO: backend/src/app.module.ts
// OBJETIVO: Módulo Raiz (Orquestrador Global)
// STATUS: INFRAESTRUTURA ESTABILIZADA (MODO OFFLINE/LOCAL)
// VERSÃO: FUSÃO CONTROLADA v2.7 - BYPASS DE TIMEOUT ETHEREAL
// -------------------------------------------------------------------------

import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm'; // <--- IMPORTAÇÃO CRÍTICA PARA O MÓDULO 6
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { PrismaService } from './prisma.service';

// --- NOVO: CÉREBRO DE REAL-TIME ---
import { AppGateway } from './app.gateway'; // <--- OBRIGATÓRIO: Gateway do Socket

// --- MÓDULOS DE NEGÓCIO ---
import { UsersModule } from './users/users.module';
import { AuthModule } from './auth/auth.module';
import { AlertsModule } from './alerts/alerts.module';
import { LocationModule } from './location/location.module'; // Módulo 6 (GPS)
import { ChatModule } from './chat/chat.module';             // Módulo 2 (Chat SOS)
import { AutomationModule } from './automation/automation.module'; // <--- INJEÇÃO: Módulo de Automação

// --- CONTROLLERS ---
import { EmergencyController } from './emergency.controller';

// --- INFRAESTRUTURA DE E-MAIL ---
import { MailerModule } from '@nestjs-modules/mailer';

@Module({
  imports: [
    // 1. CONFIGURAÇÃO DE BANCO DE DADOS (TYPEORM - EXCLUSIVO PARA GPS)
    // Cria um arquivo 'location_data.db' na raiz para armazenar logs de rastreio.
    // Isso roda em paralelo ao Prisma, sem gerar conflitos.
    TypeOrmModule.forRoot({
      type: 'sqlite',
      database: 'location_data.db',
      entities: [__dirname + '/**/*.entity{.ts,.js}'],
      synchronize: true, // Cria tabelas automaticamente (apenas em dev)
    }),

    // 2. Módulos Funcionais do Sistema
    UsersModule,
    AuthModule,
    AlertsModule,
    LocationModule, // Rastreamento
    ChatModule,     // WebSockets (Salas e Mensagens)
    AutomationModule, // <--- ATIVAÇÃO: Openclaw Bridge

    // 3. Configuração do Carteiro (E-mail Service) - MODO ESTÁTICO (FIX v2.7)
    // Alterado para forRoot (Síncrono) para evitar requisições HTTP no Bootstrap que causavam ETIMEDOUT
    MailerModule.forRoot({
      transport: {
        host: 'smtp.ethereal.email',
        port: 587,
        secure: false, // TLS
        auth: {
          user: 'pomuvgej42gznfrx@ethereal.email', // Credencial recuperada para manter funcionamento
          pass: 'seu_password_aqui_se_necessario', // Utilize a senha fixa do seu ambiente
        },
      },
      defaults: {
        from: '"Saúde Ciclo da Vida" <noreply@saudeciclodavida.com>',
      },
    }),
  ],
  controllers: [
    AppController, 
    EmergencyController
  ],
  providers: [
    AppService, 
    PrismaService, // Mantido globalmente para compatibilidade com Auth/Users
    AppGateway     // <--- AQUI ESTÁ A MÁGICA: Registra o Socket para funcionar
  ],
})
export class AppModule {}