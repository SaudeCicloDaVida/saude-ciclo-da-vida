// -------------------------------------------------------------------------
// PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
// ARQUIVO: mobile/src/services/api.ts
// OBJETIVO: Centralizar chamadas Axios com IP Dinâmico
// -------------------------------------------------------------------------
import axios from 'axios';

const api = axios.create({
  // Injeta o IP atualizado pelo script ou usa o IP fixo da rede atual como fallback
  baseURL: process.env.EXPO_PUBLIC_API_URL || 'http://192.168.0.65:4000/api/v1',
  timeout: 10000,
});

export default api;