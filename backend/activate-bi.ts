/**
 * -------------------------------------------------------------------------
 * PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
 * ARQUIVO: backend/activate-bi.ts
 * OBJETIVO: ATIVAÇÃO DE MULTI-TENANCY E VÍNCULO DE BI
 * -------------------------------------------------------------------------
 */

import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

async function main() {
  console.log('🚀 Iniciando Ativação de Inteligência Organizacional...');

  // 1. Criar Organização Mestra
  const org = await prisma.organization.upsert({
    where: { slug: 'hospital-central' },
    update: {},
    create: {
      name: 'Hospital Central Ciclo da Vida',
      type: 'HOSPITAL',
      slug: 'hospital-central',
    },
  });
  console.log(`✅ Organização Criada: ${org.name} [ID: ${org.id}]`);

  // 2. Vincular todos os usuários sem organização à nova Org
  const updatedUsers = await prisma.user.updateMany({
    where: { organizationId: null },
    data: { organizationId: org.id },
  });
  console.log(`✅ ${updatedUsers.count} Usuários vinculados à organização.`);

  // 3. Vincular Alertas de Pânico existentes (Para integridade de BI)
  const updatedAlerts = await prisma.panicAlert.updateMany({
    where: { organizationId: null },
    data: { organizationId: org.id },
  });
  console.log(`✅ ${updatedAlerts.count} Alertas de pânico vinculados ao dashboard da organização.`);

  console.log('\n==========================================================');
  console.log('      SISTEMA PRONTO PARA OPERAÇÃO MULTI-TENANT          ');
  console.log('==========================================================');
}

main()
  .catch((e) => {
    console.error('❌ Erro na ativação:', e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });