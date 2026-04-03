// -------------------------------------------------------------------------
// PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
// MÓDULO: CHAT SERVICE (CLIENTE SOCKET.IO)
// ARQUIVO: mobile/src/services/ChatService.ts
// AJUSTE: CORREÇÃO DE HANDSHAKE REAL-TIME (IP DINÂMICO v2.7)
// -------------------------------------------------------------------------

import io, { Socket } from 'socket.io-client';

// URL DINÂMICA DO BACKEND
// O Socket.io remove o sufixo /api/v1 para conectar na raiz do WebSocket
const SOCKET_URL = process.env.EXPO_PUBLIC_API_URL?.replace('/api/v1', '') || 'http://192.168.0.65:4000';

class ChatServiceImpl {
  private socket: Socket | null = null;

  /**
   * 1. INICIAR CONEXÃO
   * Estabelece o túnel de comunicação com o servidor
   */
  connect() {
    // Evita criar múltiplas conexões se já existir uma ativa
    if (this.socket?.connected) return;

    this.socket = io(SOCKET_URL, {
      transports: ['websocket'], // Força WebSocket para melhor performance
      reconnection: true,        // Tenta reconectar se a net cair
      autoConnect: false,        // Controle manual de conexão
    });

    this.socket.on('connect', () => {
      console.log('🟢 [CHAT MOBILE] Conectado ao Servidor:', this.socket?.id);
    });

    this.socket.on('disconnect', () => {
      console.log('🔴 [CHAT MOBILE] Desconectado.');
    });

    this.socket.on('connect_error', (err) => {
      console.log('⚠️ [CHAT MOBILE] Erro de conexão:', err.message);
    });

    // Executa a conexão manual
    this.socket.connect();
  }

  /**
   * 2. ENTRAR EM UMA SALA
   * @param roomId ID da sala (ex: "sos_user123" ou "group_family")
   */
  joinRoom(roomId: string) {
    if (!this.socket) this.connect();
    this.socket?.emit('joinRoom', roomId);
  }

  /**
   * 3. ENVIAR MENSAGEM
   */
  sendMessage(roomId: string, userId: string, text: string, type: 'TEXT' | 'ALERT' = 'TEXT') {
    if (!this.socket) this.connect();
    
    this.socket?.emit('sendMessage', {
      roomId,
      userId,
      text,
      type
    });
  }

  /**
   * 4. DISPARAR SOS (Botão de Pânico)
   */
  triggerSOS(userId: string, location: any) {
    if (!this.socket) this.connect();
    this.socket?.emit('triggerSOS', { userId, location });
  }

  /**
   * 5. OUVIR MENSAGENS (Callback)
   * A tela passa uma função para ser executada quando chegar mensagem nova
   */
  onMessageReceived(callback: (message: any) => void) {
    if (!this.socket) this.connect();
    
    // Remove listeners antigos para não duplicar mensagens na tela
    this.socket?.off('newMessage'); 
    
    this.socket?.on('newMessage', (msg) => {
      callback(msg);
    });
  }

  /**
   * 6. ENCERRAR (Logout)
   */
  disconnect() {
    if (this.socket) {
      this.socket.disconnect();
      this.socket = null;
    }
  }
}

// Exportação da instância única (Singleton) para manter o estado da conexão entre telas
export const ChatService = new ChatServiceImpl();