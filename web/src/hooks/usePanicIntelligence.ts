/**
 * -------------------------------------------------------------------------
 * PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
 * ARQUIVO: web/src/hooks/usePanicIntelligence.ts
 * OBJETIVO: SUBSCRIPÇÃO REAL-TIME COM FILTRO ORGANIZACIONAL
 * -------------------------------------------------------------------------
 */

import { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';

export const usePanicIntelligence = (organizationId: string) => {
  const [activeAlerts, setActiveAlerts] = useState<any[]>([]);

  useEffect(() => {
    if (!organizationId) return;

    // 1. Escuta inserções de pânico filtradas por Organização (Isolamento de BI)
    const channel = supabase
      .channel(`panic-org-${organizationId}`)
      .on('postgres_changes', 
        { 
          event: 'INSERT', 
          schema: 'public', 
          table: 'PanicAlert',
          filter: `organizationId=eq.${organizationId}` 
        }, 
        (payload) => {
          console.log('🚨 ALERTA DE ORGANIZAÇÃO RECEBIDO:', payload.new);
          setActiveAlerts(prev => [payload.new, ...prev]);
        }
      )
      .subscribe();

    return () => {
      supabase.removeChannel(channel);
    };
  }, [organizationId]);

  return { activeAlerts };
};