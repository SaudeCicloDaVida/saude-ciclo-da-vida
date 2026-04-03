# 🧭 CONTEXT SNAPSHOT: Módulo [MOBILE]
**Projeto:** SaudeCicloDaVida
**Gerado em:** 05/03/2026, 00:26:26
**Total de Arquivos nesta Partição:** 22

---

================================================================================
📁 ARQUIVO: mobile/.gitignore
🛠️ EXTENSÃO: (Sem extensão)
📏 TAMANHO: 481 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 18/01/2026, 23:53:49
================================================================================

```(Sem extensão)
# Learn more https://docs.github.com/en/get-started/getting-started-with-git/ignoring-files

# dependencies
node_modules/

# Expo
.expo/
dist/
web-build/
expo-env.d.ts

# Native
.kotlin/
*.orig.*
*.jks
*.p8
*.p12
*.key
*.mobileprovision

# Metro
.metro-health-check*

# debug
npm-debug.*
yarn-debug.*
yarn-error.*

# macOS
.DS_Store
*.pem

# local env files
.env*.local

# typescript
*.tsbuildinfo

# generated native folders
/ios
/android

```

================================================================================
📁 ARQUIVO: mobile/app.json
🛠️ EXTENSÃO: .json
📏 TAMANHO: 752 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 21/01/2026, 23:38:26
================================================================================

```json
{
  "expo": {
    "name": "mobile",
    "slug": "mobile",
    "version": "1.0.0",
    "orientation": "portrait",
    "icon": "./assets/icon.png",
    "userInterfaceStyle": "light",
    "newArchEnabled": true,
    "splash": {
      "image": "./assets/splash-icon.png",
      "resizeMode": "contain",
      "backgroundColor": "#ffffff"
    },
    "ios": {
      "supportsTablet": true
    },
    "android": {
      "adaptiveIcon": {
        "foregroundImage": "./assets/adaptive-icon.png",
        "backgroundColor": "#ffffff"
      },
      "edgeToEdgeEnabled": true,
      "predictiveBackGestureEnabled": false
    },
    "web": {
      "favicon": "./assets/favicon.png"
    },
    "plugins": [
      "expo-font",
      "expo-secure-store"
    ]
  }
}

```

================================================================================
📁 ARQUIVO: mobile/App.tsx
🛠️ EXTENSÃO: .tsx
📏 TAMANHO: 1.85 KB
🕒 ÚLTIMA MODIFICAÇÃO: 25/01/2026, 03:32:37
================================================================================

```tsx
// -------------------------------------------------------------------------
// PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
// MÓDULO: ROOT COMPONENT (ROTEAMENTO)
// VERSÃO: CLEAN (Correção de Erro de Renderização)
// -------------------------------------------------------------------------

import React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';
import { StatusBar } from 'expo-status-bar';

// 1. Autenticação
import LoginScreen from './src/screens/LoginScreen';
import RegisterScreen from './src/screens/RegisterScreen';
import ForgotPasswordScreen from './src/screens/ForgotPasswordScreen';

// 2. Funcionalidades do App
import HomeScreen from './src/screens/HomeScreen';
import MedicationScreen from './src/screens/MedicationScreen';
import ChatScreen from './src/screens/ChatScreen';

// 3. Emergência
import PanicScreen from './src/screens/PanicScreen';

const Stack = createNativeStackNavigator();

export default function App() {
  return (
    <NavigationContainer>
      <StatusBar style="auto" />
      
      <Stack.Navigator 
        initialRouteName="Login" 
        screenOptions={{ 
          headerShown: false,
          animation: 'slide_from_right'
        }}
      >
        <Stack.Screen name="Login" component={LoginScreen} />
        <Stack.Screen name="Register" component={RegisterScreen} />
        <Stack.Screen name="ForgotPassword" component={ForgotPasswordScreen} />
        <Stack.Screen name="Home" component={HomeScreen} />
        <Stack.Screen name="Medication" component={MedicationScreen} />
        <Stack.Screen name="Chat" component={ChatScreen} />
        <Stack.Screen name="Panic" component={PanicScreen} />
        
      </Stack.Navigator>
    </NavigationContainer>
  );
}
```

================================================================================
📁 ARQUIVO: mobile/com.facebook.react.devsupport.BundleDownloader
🛠️ EXTENSÃO: .bundledownloader
📏 TAMANHO: 0 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 18/01/2026, 23:53:49
================================================================================

```bundledownloader

```

================================================================================
📁 ARQUIVO: mobile/index.ts
🛠️ EXTENSÃO: .ts
📏 TAMANHO: 315 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 18/01/2026, 23:53:49
================================================================================

```ts
import { registerRootComponent } from 'expo';

import App from './App';

// registerRootComponent calls AppRegistry.registerComponent('main', () => App);
// It also ensures that whether you load the app in Expo Go or in a native build,
// the environment is set up appropriately
registerRootComponent(App);

```

================================================================================
📁 ARQUIVO: mobile/package.json
🛠️ EXTENSÃO: .json
📏 TAMANHO: 1.12 KB
🕒 ÚLTIMA MODIFICAÇÃO: 25/01/2026, 01:11:20
================================================================================

```json
{
  "name": "mobile",
  "version": "1.0.0",
  "main": "index.ts",
  "scripts": {
    "start": "expo start",
    "android": "expo start --android",
    "ios": "expo start --ios",
    "web": "expo start --web"
  },
  "dependencies": {
    "@expo-google-fonts/inter": "^0.4.2",
    "@expo/vector-icons": "^15.0.3",
    "@react-native-async-storage/async-storage": "2.2.0",
    "@react-navigation/native": "^7.1.28",
    "@react-navigation/native-stack": "^7.10.0",
    "@react-navigation/stack": "^7.6.16",
    "axios": "^1.13.2",
    "expo": "~54.0.31",
    "expo-battery": "~10.0.8",
    "expo-font": "~14.0.10",
    "expo-haptics": "~15.0.8",
    "expo-location": "~19.0.8",
    "expo-secure-store": "~15.0.8",
    "expo-status-bar": "~3.0.9",
    "lucide-react-native": "^0.562.0",
    "react": "19.1.0",
    "react-native": "0.81.5",
    "react-native-gesture-handler": "~2.28.0",
    "react-native-safe-area-context": "~5.6.0",
    "react-native-screens": "~4.16.0",
    "react-native-svg": "15.12.1",
    "socket.io-client": "^4.8.3"
  },
  "devDependencies": {
    "@types/react": "~19.1.0",
    "typescript": "~5.9.2"
  },
  "private": true
}

```

================================================================================
📁 ARQUIVO: mobile/src/components/LogoutButton.tsx
🛠️ EXTENSÃO: .tsx
📏 TAMANHO: 1.31 KB
🕒 ÚLTIMA MODIFICAÇÃO: 19/01/2026, 16:50:23
================================================================================

```tsx
// -------------------------------------------------------------------------
// COMPONENTE: BOTÃO SAIR PADRONIZADO
// REFERÊNCIA: Imagem 'BotaoSairGeral.jpg'
// -------------------------------------------------------------------------
import React from 'react';
import { TouchableOpacity, Text, StyleSheet, View } from 'react-native';
import { LogOut } from 'lucide-react-native'; // Ícone de saída

interface LogoutButtonProps {
  onPress: () => void;
}

export default function LogoutButton({ onPress }: LogoutButtonProps) {
  return (
    <TouchableOpacity style={styles.container} onPress={onPress} activeOpacity={0.7}>
      <LogOut size={16} color="#b91c1c" style={{ marginRight: 6 }} />
      <Text style={styles.text}>SAIR</Text>
    </TouchableOpacity>
  );
}

const styles = StyleSheet.create({
  container: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    borderWidth: 1,
    borderColor: '#b91c1c', // Vermelho Escuro da borda
    borderRadius: 8,        // Cantos levemente arredondados
    paddingVertical: 6,
    paddingHorizontal: 12,
    backgroundColor: '#fef2f2', // Fundo levemente avermelhado (quase branco)
  },
  text: {
    color: '#b91c1c',       // Texto Vermelho
    fontWeight: 'bold',
    fontSize: 12,
    letterSpacing: 0.5,
  }
});
```

================================================================================
📁 ARQUIVO: mobile/src/components/PanicButtonSmall.tsx
🛠️ EXTENSÃO: .tsx
📏 TAMANHO: 1.86 KB
🕒 ÚLTIMA MODIFICAÇÃO: 19/01/2026, 16:58:20
================================================================================

```tsx
// -------------------------------------------------------------------------
// COMPONENTE: BOTÃO DE PÂNICO FLUTUANTE (FAB)
// VERSÃO FINAL: Estilo "SOS" + Posição Ajustada (Safe Area)
// -------------------------------------------------------------------------
import React from 'react';
import { TouchableOpacity, StyleSheet, Alert, Text } from 'react-native';

interface PanicButtonProps {
  onPress: () => void;
  disabled?: boolean;
}

export default function PanicButtonSmall({ onPress, disabled = false }: PanicButtonProps) {
  
  const handlePress = () => {
    if (disabled) {
      Alert.alert(
        "Ainda não disponível", 
        "O Botão SOS será ativado automaticamente após o seu login."
      );
    } else {
      onPress();
    }
  };

  return (
    <TouchableOpacity 
      style={[styles.button, disabled ? styles.disabled : styles.active]} 
      onPress={handlePress}
      activeOpacity={0.8}
    >
      <Text style={styles.text}>SOS</Text>
    </TouchableOpacity>
  );
}

const styles = StyleSheet.create({
  button: {
    width: 60,   
    height: 60,
    borderRadius: 30, 
    justifyContent: 'center',
    alignItems: 'center',
    position: 'absolute',
    
    // --- CORREÇÃO DE POSIÇÃO AQUI ---
    bottom: 50,  // Mais alto para não colar na navegação
    right: 25,   // Levemente afastado da borda
    // --------------------------------
    
    zIndex: 9999,
    elevation: 8, 
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.3,
    shadowRadius: 4,
  },
  active: {
    backgroundColor: '#dc2626', // Vermelho Vivo
    borderWidth: 2,
    borderColor: '#FFF',
  },
  disabled: {
    backgroundColor: '#9ca3af', // Cinza
    borderColor: '#e5e7eb',
  },
  text: {
    color: '#FFF',
    fontWeight: 'bold',
    fontSize: 16,
  }
});
```

================================================================================
📁 ARQUIVO: mobile/src/screens/ChatScreen.tsx
🛠️ EXTENSÃO: .tsx
📏 TAMANHO: 5.24 KB
🕒 ÚLTIMA MODIFICAÇÃO: 25/01/2026, 02:39:11
================================================================================

```tsx
// -------------------------------------------------------------------------
// PROJETO: SAÚDE CICLO DA VIDA
// CAMINHO: mobile/src/screens/ChatScreen.tsx
// OBJETIVO: Interface de Chat em Tempo Real (Socket.io)
// -------------------------------------------------------------------------

import React, { useEffect, useState, useRef } from 'react';
import { 
  View, Text, TextInput, FlatList, TouchableOpacity, 
  SafeAreaView, KeyboardAvoidingView, Platform, StyleSheet 
} from 'react-native';
import { Send, AlertTriangle } from 'lucide-react-native'; // Ícones
import { ChatService } from '../services/ChatService'; // O serviço que criamos
import { styles as globalStyles, COLORS } from '../styles/global';

interface Message {
  id: string;
  text: string;
  userId: string;
  timestamp: string;
  type: 'TEXT' | 'ALERT';
}

export default function ChatScreen({ route, navigation }: any) {
  const { user } = route.params; // Usuário logado
  const [messages, setMessages] = useState<Message[]>([]);
  const [inputText, setInputText] = useState('');
  
  // ID da Sala (Ex: Sala única de emergência ou grupo da família)
  // Por simplificação, vamos usar uma sala fixa "global_room" para teste inicial
  const ROOM_ID = 'global_room'; 

  useEffect(() => {
    // 1. Conecta ao WebSocket
    ChatService.connect();
    
    // 2. Entra na Sala
    ChatService.joinRoom(ROOM_ID);

    // 3. Escuta novas mensagens chegando
    ChatService.onMessageReceived((newMessage) => {
      setMessages((prev) => [...prev, newMessage]);
    });

    // Cleanup: Desconecta ao sair da tela
    return () => {
      ChatService.disconnect();
    };
  }, []);

  const handleSend = () => {
    if (inputText.trim() === '') return;

    // Envia via Serviço
    ChatService.sendMessage(ROOM_ID, user.id, inputText, 'TEXT');
    
    setInputText(''); // Limpa campo
  };

  const handleSOS = () => {
    // Exemplo de botão rápido de alerta dentro do chat
    ChatService.sendMessage(ROOM_ID, user.id, '🚨 PRECISO DE AJUDA!', 'ALERT');
  };

  const renderItem = ({ item }: { item: Message }) => {
    const isMe = item.userId === user.id;
    const isAlert = item.type === 'ALERT';

    return (
      <View style={[
        styles.msgContainer, 
        isMe ? styles.msgMe : styles.msgOther,
        isAlert && styles.msgAlert
      ]}>
        {!isMe && <Text style={styles.msgUser}>{item.userId.substring(0, 5)}...</Text>}
        <Text style={[styles.msgText, isMe ? { color: '#FFF' } : { color: '#000' }]}>
          {item.text}
        </Text>
      </View>
    );
  };

  return (
    <SafeAreaView style={globalStyles.container}>
      <KeyboardAvoidingView 
        behavior={Platform.OS === 'ios' ? 'padding' : undefined} 
        style={{ flex: 1 }}
      >
        {/* CABEÇALHO SIMPLES */}
        <View style={styles.header}>
          <TouchableOpacity onPress={() => navigation.goBack()}>
            <Text style={styles.backButton}>Voltar</Text>
          </TouchableOpacity>
          <Text style={styles.title}>Chat de Apoio</Text>
          <TouchableOpacity onPress={handleSOS}>
             <AlertTriangle color={COLORS.danger} size={24} />
          </TouchableOpacity>
        </View>

        {/* LISTA DE MENSAGENS */}
        <FlatList
          data={messages}
          keyExtractor={(item) => item.id || Math.random().toString()}
          renderItem={renderItem}
          contentContainerStyle={{ padding: 15 }}
        />

        {/* ÁREA DE INPUT */}
        <View style={styles.inputArea}>
          <TextInput
            style={styles.input}
            placeholder="Digite sua mensagem..."
            placeholderTextColor="#999"
            value={inputText}
            onChangeText={setInputText}
          />
          <TouchableOpacity onPress={handleSend} style={styles.sendBtn}>
            <Send color="#FFF" size={20} />
          </TouchableOpacity>
        </View>
      </KeyboardAvoidingView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    padding: 15,
    backgroundColor: '#FFF',
    borderBottomWidth: 1,
    borderColor: '#EEE'
  },
  backButton: { color: COLORS.primary, fontWeight: 'bold' },
  title: { fontWeight: 'bold', fontSize: 16 },
  msgContainer: {
    padding: 10,
    borderRadius: 10,
    marginBottom: 10,
    maxWidth: '80%',
  },
  msgMe: {
    alignSelf: 'flex-end',
    backgroundColor: COLORS.primary,
  },
  msgOther: {
    alignSelf: 'flex-start',
    backgroundColor: '#E5E5EA',
  },
  msgAlert: {
    backgroundColor: '#FEE2E2',
    borderWidth: 1,
    borderColor: COLORS.danger,
    width: '100%'
  },
  msgUser: { fontSize: 10, color: '#666', marginBottom: 2 },
  msgText: { fontSize: 16 },
  inputArea: {
    flexDirection: 'row',
    padding: 10,
    backgroundColor: '#FFF',
    alignItems: 'center'
  },
  input: {
    flex: 1,
    backgroundColor: '#F0F0F0',
    borderRadius: 20,
    paddingHorizontal: 15,
    paddingVertical: 10,
    marginRight: 10,
    color: '#000'
  },
  sendBtn: {
    backgroundColor: COLORS.primary,
    padding: 10,
    borderRadius: 50
  }
});
```

================================================================================
📁 ARQUIVO: mobile/src/screens/ForgotPasswordScreen.tsx
🛠️ EXTENSÃO: .tsx
📏 TAMANHO: 5.79 KB
🕒 ÚLTIMA MODIFICAÇÃO: 24/01/2026, 22:19:45
================================================================================

```tsx
// -------------------------------------------------------------------------
// PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
// MÓDULO: RECUPERAÇÃO DE SENHA
// VERSÃO: HYBRID LAYOUT (Logo Topo Padrão + Corpo Centralizado)
// -------------------------------------------------------------------------

import React, { useState } from 'react';
import { 
  View, Text, TextInput, TouchableOpacity, StyleSheet, 
  Image, StatusBar, KeyboardAvoidingView, Platform, Alert, ScrollView 
} from 'react-native';
import { styles as globalStyles } from '../styles/global';

export default function ForgotPasswordScreen({ navigation }: any) {
  const [email, setEmail] = useState('');

  const handleRecover = () => {
    if (!email) {
      Alert.alert('Atenção', 'Digite seu e-mail para continuar.');
      return;
    }
    Alert.alert(
      'Solicitação Enviada', 
      `Se o e-mail ${email} estiver cadastrado, você receberá um link de recuperação em instantes.`,
      [{ text: 'Voltar ao Login', onPress: () => navigation.goBack() }]
    );
  };

  return (
    <View style={styles.container}>
      <StatusBar backgroundColor="#FFFFFF" barStyle="dark-content" />
      
      <KeyboardAvoidingView 
        behavior={Platform.OS === "ios" ? "padding" : "height"} 
        style={{ flex: 1 }}
      >
        <ScrollView 
            contentContainerStyle={styles.scrollContent} 
            showsVerticalScrollIndicator={false}
        >
            
            {/* 1. ÁREA DO LOGO (FIXA NO TOPO - PADRÃO UNIVERSAL) */}
            <View style={styles.topHeader}>
              <Image 
                source={require('../../assets/LogoApp.png')} 
                style={styles.universalLogo} 
              />
            </View>

            {/* 2. ÁREA CENTRAL (OCUPA O ESPAÇO RESTANTE) */}
            <View style={styles.centerBody}>
                
                <View style={styles.textBlock}>
                    <Text style={styles.title}>Recuperar Acesso</Text>
                    <Text style={styles.subtitle}>
                        Digite seu e-mail para redefinir a senha.
                    </Text>
                </View>

                {/* FORMULÁRIO */}
                <View style={styles.formArea}>
                    <View style={styles.inputGroup}>
                        <TextInput 
                            style={styles.input} 
                            placeholder="E-mail Cadastrado" 
                            placeholderTextColor="#9CA3AF"
                            value={email}
                            onChangeText={setEmail}
                            autoCapitalize="none"
                            keyboardType="email-address"
                        />
                    </View>

                    {/* BOTÃO PRIMÁRIO (ENVIAR) */}
                    <TouchableOpacity 
                        style={styles.primaryButton} 
                        onPress={handleRecover}
                    >
                        <Text style={styles.primaryButtonText}>ENVIAR LINK</Text>
                    </TouchableOpacity>

                    {/* BOTÃO SECUNDÁRIO (CANCELAR EM BLOCO) */}
                    <TouchableOpacity 
                        style={styles.cancelBlockButton} 
                        onPress={() => navigation.goBack()}
                    >
                        <Text style={styles.cancelBlockText}>CANCELAR</Text>
                    </TouchableOpacity>
                </View>
            </View>

        </ScrollView>
      </KeyboardAvoidingView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#FFFFFF', 
  },
  scrollContent: {
    flexGrow: 1,
    paddingHorizontal: 30,
    paddingTop: Platform.OS === 'android' ? 50 : 60,
    paddingBottom: 40,
  },
  
  // LOGO FIXO NO TOPO
  topHeader: {
    alignItems: 'center',
    marginBottom: 10, // Pequeno espaço antes de começar o bloco central
  },
  universalLogo: {
    width: 120,
    height: 120,
    resizeMode: 'contain',
  },

  // CORPO CENTRALIZADO
  // flex: 1 faz este bloco ocupar todo o espaço vertical disponível abaixo do logo
  // justifyContent: 'center' alinha o conteúdo no meio desse espaço
  centerBody: {
    flex: 1,
    justifyContent: 'center', 
    marginBottom: 60, // Ajuste para elevar um pouco visualmente
  },

  textBlock: {
    alignItems: 'center',
    marginBottom: 30,
  },
  title: {
    fontSize: 22,
    fontWeight: 'bold',
    color: '#111827',
    marginBottom: 5,
  },
  subtitle: {
    fontSize: 14,
    color: '#6B7280',
    textAlign: 'center',
    paddingHorizontal: 10,
    lineHeight: 20,
  },

  formArea: {
    width: '100%',
  },
  inputGroup: {
    marginBottom: 20,
  },
  input: {
    backgroundColor: '#F9FAFB', 
    borderWidth: 1, 
    borderColor: '#E5E7EB', 
    borderRadius: 12, 
    padding: 16, 
    fontSize: 16, 
    color: '#1F2937',
  },

  primaryButton: {
    backgroundColor: '#2563EB', 
    paddingVertical: 18, 
    borderRadius: 12, 
    alignItems: 'center', 
    marginBottom: 15, 
    shadowColor: '#2563EB', 
    shadowOffset: { width: 0, height: 4 }, 
    shadowOpacity: 0.2, 
    shadowRadius: 8, 
    elevation: 4,
  },
  primaryButtonText: {
    color: '#FFFFFF', 
    fontWeight: 'bold', 
    fontSize: 16, 
    letterSpacing: 0.5,
  },

  // ESTILO OUTLINE PARA O BOTÃO CANCELAR
  cancelBlockButton: {
    backgroundColor: '#FFFFFF', 
    paddingVertical: 18, 
    borderRadius: 12, 
    alignItems: 'center',
    borderWidth: 1,
    borderColor: '#EF4444', // Borda Vermelha
  },
  cancelBlockText: {
    color: '#EF4444', // Texto Vermelho
    fontWeight: 'bold', 
    fontSize: 16, 
    letterSpacing: 0.5,
  }
});
```

================================================================================
📁 ARQUIVO: mobile/src/screens/HomeScreen.tsx
🛠️ EXTENSÃO: .tsx
📏 TAMANHO: 8.14 KB
🕒 ÚLTIMA MODIFICAÇÃO: 25/01/2026, 05:48:13
================================================================================

```tsx
// -------------------------------------------------------------------------
// PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
// MÓDULO: TELA PRINCIPAL (HOME)
// VERSÃO: DOCK FINAL (Altura Ajustada + Cores Forçadas)
// -------------------------------------------------------------------------

import React, { useEffect } from 'react';
import { 
  View, Text, TouchableOpacity, Image, StatusBar, 
  ScrollView, Alert, StyleSheet, Platform 
} from 'react-native';
// Ícone do Chat e Mapa
import { Pill, Apple, CalendarDays, Activity, MessageCircle, MapPin } from 'lucide-react-native';

import LogoutButton from '../components/LogoutButton'; 
import { styles as globalStyles } from '../styles/global';
import { StorageService } from '../services/storage';
import { LocationService } from '../services/LocationService';

export default function HomeScreen({ route, navigation }: any) {
  const { user, token } = route.params || { user: { name: 'Visitante' } };
  
  const formatName = (fullName: string) => {
    if (!fullName) return 'Usuário';
    const parts = fullName.trim().split(/\s+/);
    if (parts.length === 1) return parts[0]; 
    return `${parts[0]} ${parts[parts.length - 1]}`;
  };
  
  const displayName = formatName(user.name);

  useEffect(() => {
    let intervalId: NodeJS.Timeout;

    const initGuardianMode = async () => {
      const hasPermission = await LocationService.requestPermissions();
      if (!hasPermission) return;

      const performTracking = async () => {
        const location = await LocationService.getCurrentPosition();
        if (location && user.id) {
            await LocationService.sendLocationLog(
                user.id, 
                location.coords.latitude, 
                location.coords.longitude
            );
        }
      };

      performTracking();
      intervalId = setInterval(performTracking, 30000);
    };

    const persistUser = async () => {
      if (user && user.name !== 'Visitante') {
        await StorageService.saveUser({
          name: user.name,
          email: user.email || 'user@email.com',
          id: user.id
        });
        if (token) await StorageService.saveToken(token);
      }
    };

    initGuardianMode();
    persistUser();

    return () => {
      if (intervalId) clearInterval(intervalId);
    };
  }, [user]);

  const handleLogout = () => {
    Alert.alert('Encerrar Sessão', 'Deseja realmente sair do sistema?', [
      { text: 'Cancelar', style: 'cancel' },
      { text: 'Sair', style: 'destructive', onPress: async () => {
          await StorageService.clearAll();
          navigation.replace('Login');
      }}
    ]);
  };

  const menuItems = [
    { title: 'MEDICAMENTOS', icon: <Pill size={32} color="#000" strokeWidth={1.5} />, route: 'Medication' },
    { title: 'NUTRIÇÃO', icon: <Apple size={32} color="#000" strokeWidth={1.5} />, route: null }, 
    { title: 'AGENDA MÉDICA', icon: <CalendarDays size={32} color="#000" strokeWidth={1.5} />, route: null },
    { title: 'SINAIS VITAIS', icon: <Activity size={32} color="#000" strokeWidth={1.5} />, route: null },
  ];

  return (
    <View style={globalStyles.container}>
      <StatusBar backgroundColor="#FFFFFF" barStyle="dark-content" />
      
      {/* CABEÇALHO */}
      <View style={styles.headerTop}>
        <View style={{ flex: 1, marginRight: 10 }}> 
          <Text style={styles.welcomeLabel}>Bem-vindo(a),</Text>
          <Text style={styles.userName} numberOfLines={1}>{displayName}</Text>
        </View>
        <View style={{ marginBottom: 2 }}> 
            <LogoutButton onPress={handleLogout} />
        </View>
      </View>

      {/* CONTEÚDO */}
      <ScrollView contentContainerStyle={styles.scrollContent}>
        <View style={styles.brandingContainer}>
          <Image 
            source={require('../../assets/LogoApp.png')} 
            style={styles.universalLogo} 
          />
          <View style={styles.divider} />
        </View>

        <View style={styles.gridContainer}>
          {menuItems.map((item, index) => (
            <TouchableOpacity 
              key={index} 
              style={styles.cardTech}
              onPress={() => item.route ? navigation.navigate(item.route, { user, token }) : Alert.alert('Em Breve', 'Módulo em desenvolvimento.')}
              activeOpacity={0.7}
            >
              <View style={styles.iconContainer}>
                {item.icon}
              </View>
              <Text style={styles.cardTitle}>{item.title}</Text>
            </TouchableOpacity>
          ))}
        </View>
      </ScrollView>

      {/* --- DOCK TRIPLO (AGORA MAIS ALTO E CORRIGIDO) --- */}
      <View style={styles.navigationDock}>
        
        {/* 1. LOCALIZAÇÃO (Cinza Escuro) */}
        <TouchableOpacity 
          style={[styles.dockButton, { backgroundColor: '#374151' }]}
          onPress={() => Alert.alert('Localização', 'Mapa em Breve')}
          activeOpacity={0.8}
        >
          <MapPin color="#FFF" size={24} />
        </TouchableOpacity>

        {/* 2. CHAT (Azul FORÇADO) */}
        <TouchableOpacity 
          style={[styles.dockButton, { backgroundColor: '#2563EB' }]} 
          onPress={() => navigation.navigate('Chat', { user, token })}
          activeOpacity={0.8}
        >
          <MessageCircle color="#FFF" size={24} />
        </TouchableOpacity>

        {/* 3. SOS (Vermelho com TEXTO) */}
        <TouchableOpacity 
          style={[styles.dockButton, { backgroundColor: '#DC2626' }]}
          onPress={() => navigation.navigate('Panic', { user, token })}
          activeOpacity={0.8}
        >
          {/* AQUI ESTÁ A CORREÇÃO: TEXTO EM VEZ DE ÍCONE */}
          <Text style={styles.sosDockText}>SOS</Text>
        </TouchableOpacity>

      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  headerTop: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'flex-end', 
    paddingHorizontal: 25,
    paddingTop: Platform.OS === 'android' ? 50 : 60, 
    paddingBottom: 10, 
    backgroundColor: '#f8fafc',
  },
  welcomeLabel: { fontSize: 14, color: '#6b7280', marginBottom: 0, fontWeight: '500' },
  userName: { fontSize: 18, color: '#000000', fontWeight: 'bold', textTransform: 'capitalize', lineHeight: 24 },
  
  scrollContent: {
    paddingHorizontal: 25,
    paddingBottom: 160, 
  },
  brandingContainer: { alignItems: 'center', marginTop: 10, marginBottom: 30 },
  universalLogo: { width: 120, height: 120, resizeMode: 'contain' },
  divider: { width: 40, height: 3, backgroundColor: '#000000', marginTop: 15, borderRadius: 2 },
  
  gridContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-between',
  },
  cardTech: {
    backgroundColor: '#FFFFFF',
    width: '48%', 
    aspectRatio: 1.1, 
    borderRadius: 16,
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom: 15,
    elevation: 3,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.05,
    shadowRadius: 6,
    borderWidth: 1,
    borderColor: '#e5e7eb',
  },
  iconContainer: { marginBottom: 10, padding: 10, backgroundColor: '#f3f4f6', borderRadius: 50 },
  cardTitle: { fontSize: 12, fontWeight: 'bold', color: '#1f2937', textAlign: 'center', letterSpacing: 0.5 },
  
  // --- CONFIGURAÇÃO DO DOCK ---
  navigationDock: {
    position: 'absolute',
    // AUMENTAMOS PARA 80px (Isso vai forçar a subida visual)
    bottom: 80, 
    width: '100%',
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    gap: 25, // Espaçamento entre as bolas
    height: 70, 
    zIndex: 999, // Força ficar por cima de tudo
  },
  
  dockButton: {
    width: 60,
    height: 60,
    borderRadius: 30, // CÍRCULO PERFEITO
    justifyContent: 'center',
    alignItems: 'center',
    elevation: 10, 
    shadowColor: '#000', 
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.3,
    shadowRadius: 5,
  },

  sosDockText: {
    color: '#FFF',
    fontWeight: 'bold',
    fontSize: 16, // Tamanho calibrado
  }
});
```

================================================================================
📁 ARQUIVO: mobile/src/screens/LoginScreen.tsx
🛠️ EXTENSÃO: .tsx
📏 TAMANHO: 11.21 KB
🕒 ÚLTIMA MODIFICAÇÃO: 24/01/2026, 21:46:51
================================================================================

```tsx
// -------------------------------------------------------------------------
// PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
// MÓDULO: TELA DE AUTENTICAÇÃO (LOGIN)
// VERSÃO: COMPACT ENTERPRISE (Placeholders Internos + Espaçamento Otimizado)
// -------------------------------------------------------------------------

import React, { useState, useEffect } from 'react';
import { 
  View, Text, TextInput, TouchableOpacity, Image, StatusBar, 
  ActivityIndicator, Alert, KeyboardAvoidingView, Platform, StyleSheet, ScrollView 
} from 'react-native';
import * as SecureStore from 'expo-secure-store';
import axios from 'axios';
import { FontAwesome } from '@expo/vector-icons'; 

// --- IMPORTAÇÕES ORIGINAIS ---
import PanicButtonSmall from '../components/PanicButtonSmall';

// --- CONFIGURAÇÃO DE REDE (IP FIXO) ---
const API_URL = 'http://192.168.15.11:4000'; 

export default function LoginScreen({ navigation }: any) {
  const [isLoginTab, setIsLoginTab] = useState(true);
  const [name, setName] = useState('');
  const [email, setEmail] = useState('maria@teste.com');
  const [password, setPassword] = useState('123456');
  const [confirmPassword, setConfirmPassword] = useState('');
  const [loading, setLoading] = useState(false);
  const [offlineUser, setOfflineUser] = useState<any>(null);

  // --- EFEITO: CHECAGEM DE SEGURANÇA (SOS OFFLINE) ---
  useEffect(() => {
    const checkSavedSession = async () => {
      try {
        const savedUserJSON = await SecureStore.getItemAsync('user');
        const savedToken = await SecureStore.getItemAsync('token');

        if (savedUserJSON && savedToken) {
          console.log('🛡️ Sessão anterior encontrada: Botão SOS ARMADO.');
          setOfflineUser(JSON.parse(savedUserJSON));
        }
      } catch (error) {
        console.log('Nenhuma sessão salva.');
      }
    };
    checkSavedSession();
  }, []);

  // --- LÓGICA DE LOGIN/CADASTRO ---
  const handleSubmit = async () => {
    // Validação Básica
    if (!email || !password) return Alert.alert('Atenção', 'Preencha os campos obrigatórios.');
    
    // Validação extra para Cadastro
    if (!isLoginTab) {
        if (!name) return Alert.alert('Atenção', 'Digite seu nome completo.');
        if (password !== confirmPassword) return Alert.alert('Erro', 'As senhas não coincidem.');
    }

    setLoading(true);
    const endpoint = isLoginTab ? '/auth/login' : '/auth/register'; 

    try {
      console.log(`📡 Conectando em: ${API_URL}${endpoint}`);
      
      const payload = isLoginTab 
        ? { email, password } 
        : { name, email, password };

      const response = await axios.post(`${API_URL}${endpoint}`, payload);
      
      // Cenário 1: Cadastro realizado
      if (!isLoginTab) {
          Alert.alert('Sucesso', 'Conta criada! Faça login para continuar.');
          setIsLoginTab(true);
          setLoading(false);
          return;
      }

      // Cenário 2: Login realizado
      const { user, access_token } = response.data;
      
      await SecureStore.setItemAsync('token', access_token);
      await SecureStore.setItemAsync('user', JSON.stringify(user));

      console.log('✅ Acesso Autorizado!');
      navigation.replace('Home', { user, token: access_token });
      
    } catch (error: any) {
      console.error('Erro Auth:', error);
      const msg = error.response?.data?.message || 'Falha na conexão com o servidor. Verifique o IP.';
      Alert.alert('Ops!', typeof msg === 'string' ? msg : JSON.stringify(msg));
    } finally {
      setLoading(false);
    }
  };

  const handleSocialLogin = (provider: string) => {
      Alert.alert('Em Breve', `O login com ${provider} será ativado na próxima atualização.`);
  };

  const handleSOSAction = () => {
    if (offlineUser) {
      console.log('🚨 Pânico Acionado via Sessão Offline');
      navigation.navigate('Panic', { user: offlineUser });
    } else {
      Alert.alert(
        'Botão Inativo', 
        'Por segurança, você precisa fazer login ou cadastro pelo menos uma vez neste aparelho para ativar o SOS.'
      );
    }
  };

  return (
    <View style={styles.container}>
      <StatusBar backgroundColor="#F8FAFC" barStyle="dark-content" />
      
      <KeyboardAvoidingView 
        behavior={Platform.OS === "ios" ? "padding" : "height"} 
        style={{ flex: 1 }}
      >
        <ScrollView contentContainerStyle={styles.scrollContent} showsVerticalScrollIndicator={false}>
          
          {/* 1. LOGO (PADRÃO UNIVERSAL 120px) */}
          <View style={styles.header}>
             <Image source={require('../../assets/LogoApp.png')} style={styles.logo} />
          </View>

          {/* 2. ABAS (TABS) */}
          <View style={styles.tabContainer}>
              <TouchableOpacity 
                style={[styles.tabButton, isLoginTab && styles.activeTab]}
                onPress={() => setIsLoginTab(true)}
              >
                  <Text style={[styles.tabText, isLoginTab && styles.activeTabText]}>Entrar</Text>
              </TouchableOpacity>
              
              <TouchableOpacity 
                style={[styles.tabButton, !isLoginTab && styles.activeTab]}
                onPress={() => setIsLoginTab(false)}
              >
                  <Text style={[styles.tabText, !isLoginTab && styles.activeTabText]}>Cadastrar</Text>
              </TouchableOpacity>
          </View>

          {/* 3. FORMULÁRIO COMPACTO (Placeholders Internos) */}
          <View style={styles.formArea}>
            
            {!isLoginTab && (
                <View style={styles.inputGroup}>
                    <TextInput 
                        style={styles.input} 
                        placeholder="Nome Completo"
                        placeholderTextColor="#9CA3AF"
                        value={name}
                        onChangeText={setName}
                    />
                </View>
            )}

            <View style={styles.inputGroup}>
                <TextInput 
                    style={styles.input} 
                    placeholder="E-mail"
                    placeholderTextColor="#9CA3AF"
                    autoCapitalize="none"
                    keyboardType="email-address"
                    value={email}
                    onChangeText={setEmail}
                />
            </View>

            <View style={styles.inputGroup}>
                <TextInput 
                    style={styles.input} 
                    placeholder="Senha"
                    placeholderTextColor="#9CA3AF"
                    secureTextEntry
                    value={password}
                    onChangeText={setPassword}
                />
            </View>

            {!isLoginTab && (
                <View style={styles.inputGroup}>
                    <TextInput 
                        style={styles.input} 
                        placeholder="Repita a senha"
                        placeholderTextColor="#9CA3AF"
                        secureTextEntry
                        value={confirmPassword}
                        onChangeText={setConfirmPassword}
                    />
                </View>
            )}

            {isLoginTab && (
                <TouchableOpacity onPress={() => navigation.navigate('ForgotPassword')} style={styles.forgotLink}>
                    <Text style={styles.forgotText}>Esqueceu a senha?</Text>
                </TouchableOpacity>
            )}

            {/* BOTÃO DE AÇÃO */}
            <TouchableOpacity style={styles.primaryButton} onPress={handleSubmit} disabled={loading}>
                {loading ? (
                    <ActivityIndicator color="#FFF" />
                ) : (
                    <Text style={styles.primaryButtonText}>
                        {isLoginTab ? 'ENTRAR' : 'CRIAR CONTA'}
                    </Text>
                )}
            </TouchableOpacity>

            {/* DIVISOR */}
            <View style={styles.dividerContainer}>
                <View style={styles.dividerLine} />
                <Text style={styles.dividerText}>Ou continue com</Text>
                <View style={styles.dividerLine} />
            </View>

            {/* BOTÕES SOCIAIS */}
            <View style={styles.socialRow}>
                <TouchableOpacity style={styles.socialButton} onPress={() => handleSocialLogin('Google')}>
                    <FontAwesome name="google" size={24} color="#EA4335" />
                </TouchableOpacity>

                <TouchableOpacity style={styles.socialButton} onPress={() => handleSocialLogin('Apple')}>
                    <FontAwesome name="apple" size={24} color="#000" />
                </TouchableOpacity>

                <TouchableOpacity style={styles.socialButton} onPress={() => handleSocialLogin('Facebook')}>
                    <FontAwesome name="facebook" size={24} color="#1877F2" />
                </TouchableOpacity>
            </View>

          </View>
        </ScrollView>
      </KeyboardAvoidingView>

      <PanicButtonSmall onPress={handleSOSAction} disabled={!offlineUser} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: '#FFFFFF' },
  scrollContent: { 
    flexGrow: 1, 
    paddingHorizontal: 30, 
    paddingBottom: 100, 
    paddingTop: Platform.OS === 'android' ? 50 : 60,
  },
  
  // Header Compacto
  header: { 
    alignItems: 'center', 
    marginBottom: 20 // 2 Linhas de respiro
  },
  logo: { width: 120, height: 120, resizeMode: 'contain' },
  
  // Abas
  tabContainer: { flexDirection: 'row', marginBottom: 25, borderBottomWidth: 1, borderBottomColor: '#E5E7EB' },
  tabButton: { flex: 1, paddingVertical: 15, alignItems: 'center' },
  activeTab: { borderBottomWidth: 2, borderBottomColor: '#2563EB' },
  tabText: { fontSize: 16, fontWeight: '500', color: '#9CA3AF' },
  activeTabText: { color: '#2563EB', fontWeight: 'bold' },

  formArea: { flex: 1 },
  // Espaçamento Otimizado (Não grudado, mas compacto)
  inputGroup: { marginBottom: 15 },
  input: { 
    backgroundColor: '#F9FAFB', 
    borderWidth: 1, 
    borderColor: '#E5E7EB', 
    borderRadius: 12, 
    padding: 16, 
    fontSize: 16, 
    color: '#1F2937' 
  },
  
  forgotLink: { alignSelf: 'flex-end', marginBottom: 20 },
  forgotText: { color: '#2563EB', fontWeight: '600', fontSize: 14 },
  
  primaryButton: { backgroundColor: '#2563EB', paddingVertical: 18, borderRadius: 12, alignItems: 'center', shadowColor: '#2563EB', shadowOffset: { width: 0, height: 4 }, shadowOpacity: 0.2, shadowRadius: 8, elevation: 4 },
  primaryButtonText: { color: '#FFFFFF', fontWeight: 'bold', fontSize: 16, letterSpacing: 0.5 },
  
  dividerContainer: { flexDirection: 'row', alignItems: 'center', marginVertical: 20 },
  dividerLine: { flex: 1, height: 1, backgroundColor: '#E5E7EB' },
  dividerText: { marginHorizontal: 15, color: '#6B7280', fontSize: 14 },
  
  socialRow: { flexDirection: 'row', justifyContent: 'center', gap: 20 },
  socialButton: { width: 60, height: 60, borderRadius: 12, borderWidth: 1, borderColor: '#E5E7EB', justifyContent: 'center', alignItems: 'center', backgroundColor: '#FFFFFF' }
});
```

================================================================================
📁 ARQUIVO: mobile/src/screens/MedicationScreen.tsx
🛠️ EXTENSÃO: .tsx
📏 TAMANHO: 2.55 KB
🕒 ÚLTIMA MODIFICAÇÃO: 18/01/2026, 23:53:49
================================================================================

```tsx
import React, { useEffect, useState } from 'react';
import { View, Text, FlatList, SafeAreaView, StatusBar, Alert, TouchableOpacity, Image } from 'react-native';
import api from '../services/api';
import { styles, COLORS } from '../styles/global';

export default function MedicationScreen({ route, navigation }) {
  const { user } = route.params;
  const [meds, setMeds] = useState([]);

  useEffect(() => {
    const fetchMeds = async () => {
      try {
        const response = await api.get(`/users/${user.id}/medications`);
        setMeds(response.data);
      } catch (error) {
        Alert.alert("ERRO", "Falha na sincronização.");
      }
    };
    fetchMeds();
  }, []);

  return (
    <SafeAreaView style={[styles.container, { paddingHorizontal: 25 }]}>
      <StatusBar barStyle="light-content" />
      
      <View style={{ flexDirection: 'row', justifyContent: 'space-between', alignItems: 'center', marginTop: 30, marginBottom: 30 }}>
        <View style={{ flexDirection: 'row', alignItems: 'center' }}>
          <Image source={require('../../assets/LogoApp.png')} style={{ width: 40, height: 40, marginRight: 15 }} />
          <Text style={{ color: COLORS.primary, fontSize: 18, fontWeight: 'bold', fontFamily: 'monospace' }}>
            // PROTOCOLO
          </Text>
        </View>
        <TouchableOpacity onPress={() => navigation.goBack()} style={styles.logoutBtn}>
          <Text style={{ color: COLORS.danger, fontWeight: 'bold' }}>SAIR</Text>
        </TouchableOpacity>
      </View>

      <FlatList
        data={meds}
        keyExtractor={(item) => item.id}
        renderItem={({ item }) => (
          <View style={{ 
            backgroundColor: COLORS.surface, 
            padding: 25, 
            borderRadius: 20, 
            marginBottom: 20, 
            borderLeftWidth: 6, 
            borderLeftColor: COLORS.primary,
            elevation: 5
          }}>
            <Text style={{ color: '#FFF', fontSize: 22, fontWeight: 'bold' }}>{item.name}</Text>
            <Text style={{ color: COLORS.primary, fontSize: 15, fontWeight: 'bold', marginTop: 4 }}>{item.dosage}</Text>
            
            {item.schedules?.map((s, i) => (
              <View key={i} style={{ marginTop: 15, padding: 12, backgroundColor: 'rgba(255,255,255,0.05)', borderRadius: 10 }}>
                <Text style={{ color: '#cbd5e1', fontSize: 15, fontWeight: '600' }}>⏰ {s.time} - {s.instructions}</Text>
              </View>
            ))}
          </View>
        )}
      />
    </SafeAreaView>
  );
}
```

================================================================================
📁 ARQUIVO: mobile/src/screens/PanicScreen.tsx
🛠️ EXTENSÃO: .tsx
📏 TAMANHO: 8 KB
🕒 ÚLTIMA MODIFICAÇÃO: 25/01/2026, 04:56:02
================================================================================

```tsx
// -------------------------------------------------------------------------
// PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
// MÓDULO: TELA DE EMERGÊNCIA
// VERSÃO: FUSÃO FINAL (Visual Rico + Correção de Vibração Prioritária)
// -------------------------------------------------------------------------

import React, { useState, useEffect } from 'react';
import { 
  View, 
  Text, 
  TouchableOpacity, 
  StyleSheet, 
  StatusBar, 
  Alert, 
  Vibration 
} from 'react-native';
import * as Haptics from 'expo-haptics'; 
import { MapPin, Phone, XCircle, Siren, Heart, Signal } from 'lucide-react-native'; 
import { styles as globalStyles } from '../styles/global';
import api from '../services/api'; 

export default function PanicScreen({ navigation, route }: any) {
  const { user } = route.params || { user: { name: 'Usuário' } };
  const [status, setStatus] = useState('AGUARDANDO AÇÃO');

  useEffect(() => {
    // Vibração de entrada: alerta sensorial ao abrir a tela
    Vibration.vibrate([0, 500, 200, 500]); 
  }, []);

  const handleCancel = () => {
    Alert.alert('Cancelar', 'Deseja abortar o pedido de socorro?', [
      { text: 'Não', style: 'cancel' },
      { text: 'Sim, Abortar', onPress: () => navigation.goBack() }
    ]);
  };

  const handleSOSAction = async () => {
    // --- CORREÇÃO DE PRIORIDADE: FÍSICO PRIMEIRO ---
    // O comando de vibração executa antes de qualquer lógica de React ou Rede.
    Vibration.vibrate(1000); 

    // Feedback tátil secundário
    try {
        await Haptics.notificationAsync(Haptics.NotificationFeedbackType.Warning);
    } catch (e) {
        // Ignora erro de Haptics em dispositivos não compatíveis
    }

    setStatus('CONECTANDO PROTEÇÃO...'); 

    try {
      await api.post('/sos', {
        userName: user.name,
        location: '-22.7348, -47.6476 (Piracicaba/SP)', // Simulado ou vindo do LocationService
        bpm: '82',
        battery: '85',
        connection: '4G LTE'
      });

      setStatus('PROTEÇÃO ATIVADA!'); 
      
      Alert.alert(
        'SOCORRO SOLICITADO', 
        'A Central de Monitoramento confirmou o recebimento do seu alerta.',
        [{ text: 'Entendido', onPress: () => navigation.goBack() }]
      );

    } catch (error) {
      console.log('❌ ERRO AO ENVIAR SOS:', error);
      setStatus('ERRO NO ENVIO');
      
      Alert.alert(
        'FALHA DE CONEXÃO', 
        'Não foi possível contatar a central automaticamente. Ligue para 192.',
        [{ text: 'OK' }]
      );
    }
  };

  return (
    <View style={globalStyles.container}>
      <StatusBar backgroundColor="#dc2626" barStyle="light-content" />

      <View style={styles.header}>
        <View style={styles.headerIconArea}>
           <Siren size={32} color="#dc2626" />
        </View>
        <Text style={styles.title}>MODO DE EMERGÊNCIA</Text>
        <Text style={styles.subtitle}>O sistema está monitorando você</Text>
      </View>

      <View style={styles.telemetryContainer}>
        
        <View style={styles.telemetryBox}>
            <Text style={styles.telemetryLabel}>BATIMENTOS</Text>
            <View style={styles.telemetryValueRow}>
                <Heart size={24} color="#dc2626" fill="#dc2626" />
                <Text style={styles.telemetryNumber}>82</Text>
                <Text style={styles.telemetryUnit}>BPM</Text>
            </View>
        </View>

        <View style={[styles.telemetryBox, { borderLeftWidth: 1, borderLeftColor: '#e5e7eb' }]}>
            <Text style={styles.telemetryLabel}>CONEXÃO</Text>
            <View style={styles.telemetryValueRow}>
                <Signal size={24} color="#16a34a" />
                <Text style={[styles.telemetryNumber, { color: '#16a34a' }]}>4G</Text>
                <Text style={styles.telemetryUnit}>LTE</Text>
            </View>
        </View>

      </View>

      <View style={styles.centerArea}>
        <TouchableOpacity 
          style={styles.sosBigButton} 
          onPress={handleSOSAction}
          activeOpacity={0.8}
        >
          <View style={styles.sosInnerCircle}>
            <Text style={styles.sosText}>SOS</Text>
            <Text style={styles.pushText}>PRESSIONE</Text>
          </View>
        </TouchableOpacity>
        <Text style={styles.statusText}>{status}</Text>
      </View>

      <View style={styles.infoContainer}>
        <View style={styles.infoRow}>
          <MapPin size={20} color="#6b7280" />
          <Text style={styles.infoText}>Av. Paulista, 1578 - SP</Text>
        </View>
        <View style={[styles.infoRow, { marginTop: 10 }]}>
          <Phone size={20} color="#6b7280" />
          <Text style={styles.infoText}>Notificando: Dr. Silva e João</Text>
        </View>
      </View>

      <View style={styles.footer}>
        <TouchableOpacity style={styles.cancelButton} onPress={handleCancel}>
          <XCircle size={24} color="#dc2626" style={{ marginRight: 10 }} />
          <Text style={styles.cancelText}>CANCELAR OPERAÇÃO</Text>
        </TouchableOpacity>
      </View>

    </View>
  );
}

const styles = StyleSheet.create({
  header: {
    alignItems: 'center',
    marginTop: 50,
    marginBottom: 20,
  },
  headerIconArea: {
    padding: 10,
    backgroundColor: '#fef2f2',
    borderRadius: 50,
    marginBottom: 10,
  },
  title: {
    fontSize: 20,
    fontWeight: '900',
    color: '#dc2626',
    letterSpacing: 0.5,
  },
  subtitle: {
    fontSize: 12,
    color: '#6b7280',
  },
  telemetryContainer: {
    flexDirection: 'row',
    justifyContent: 'center',
    marginBottom: 30,
    marginHorizontal: 40,
    backgroundColor: '#f9fafb', 
    borderRadius: 16,
    padding: 10,
    borderWidth: 1,
    borderColor: '#e5e7eb',
  },
  telemetryBox: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  telemetryLabel: {
    fontSize: 10,
    color: '#6b7280',
    fontWeight: 'bold',
    marginBottom: 4,
  },
  telemetryValueRow: {
    flexDirection: 'row',
    alignItems: 'flex-end',
  },
  telemetryNumber: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#000',
    marginLeft: 6,
    lineHeight: 28,
  },
  telemetryUnit: {
    fontSize: 12,
    color: '#6b7280',
    fontWeight: 'bold',
    marginLeft: 4,
    marginBottom: 4,
  },
  centerArea: {
    alignItems: 'center',
    justifyContent: 'center',
    marginBottom: 30,
  },
  sosBigButton: {
    width: 180, 
    height: 180,
    borderRadius: 90,
    backgroundColor: '#fca5a5',
    justifyContent: 'center',
    alignItems: 'center',
    elevation: 10,
    shadowColor: '#dc2626',
    shadowOffset: { width: 0, height: 10 },
    shadowOpacity: 0.5,
    shadowRadius: 10,
  },
  sosInnerCircle: {
    width: 140,
    height: 140,
    borderRadius: 70,
    backgroundColor: '#dc2626',
    justifyContent: 'center',
    alignItems: 'center',
    borderWidth: 4,
    borderColor: '#FFFFFF',
  },
  sosText: {
    fontSize: 42,
    fontWeight: 'bold',
    color: '#FFFFFF',
  },
  pushText: {
    fontSize: 10,
    color: '#FFFFFF',
    fontWeight: 'bold',
    marginTop: 0,
  },
  statusText: {
    marginTop: 15,
    fontSize: 14,
    fontWeight: 'bold',
    color: '#dc2626',
    letterSpacing: 1,
  },
  infoContainer: {
    paddingHorizontal: 50,
    alignItems: 'center',
  },
  infoRow: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  infoText: {
    fontSize: 14,
    color: '#374151',
    marginLeft: 10,
    fontWeight: '500',
  },
  footer: {
    position: 'absolute',
    bottom: 40,
    width: '100%',
    alignItems: 'center',
  },
  cancelButton: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingVertical: 12,
    paddingHorizontal: 25,
    borderRadius: 30,
    borderWidth: 1,
    borderColor: '#dc2626',
    backgroundColor: '#FFFFFF',
    elevation: 2,
  },
  cancelText: {
    color: '#dc2626',
    fontWeight: 'bold',
    fontSize: 14,
  }
});
```

================================================================================
📁 ARQUIVO: mobile/src/screens/RegisterScreen.tsx
🛠️ EXTENSÃO: .tsx
📏 TAMANHO: 5.5 KB
🕒 ÚLTIMA MODIFICAÇÃO: 19/01/2026, 23:14:40
================================================================================

```tsx
// -------------------------------------------------------------------------
// PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
// MÓDULO: TELA DE CADASTRO
// TIPO: FRONTEND MOBILE
// DESCRIÇÃO: Formulário de registro com validação e feedback visual
// -------------------------------------------------------------------------

import React, { useState } from 'react';
import { 
  View, Text, TextInput, TouchableOpacity, StyleSheet, 
  Image, StatusBar, KeyboardAvoidingView, Platform, ScrollView, Alert, ActivityIndicator 
} from 'react-native';
import { styles as globalStyles } from '../styles/global';
import api from '../services/api';

export default function RegisterScreen({ navigation }: any) {
  const [name, setName] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [loading, setLoading] = useState(false);

  const handleRegister = async () => {
    if (!name || !email || !password) {
      Alert.alert('Campos Obrigatórios', 'Por favor, preencha todos os dados.');
      return;
    }

    setLoading(true);
    try {
      // Envia para o Backend (Porta 4000)
      const response = await api.post('/auth/register', { 
        name, 
        email, 
        password 
      });

      // Sucesso
      Alert.alert(
        'Cadastro Realizado', 
        'Sua conta foi criada com sucesso! Faça login para ativar o sistema.',
        [{ text: 'Ir para Login', onPress: () => navigation.navigate('Login') }]
      );

    } catch (error: any) {
      console.log(error);
      const msg = error.response?.data?.message || 'Verifique sua conexão e tente novamente.';
      Alert.alert('Erro no Cadastro', msg);
    } finally {
      setLoading(false);
    }
  };

  return (
    <View style={globalStyles.container}>
      <StatusBar backgroundColor="#FFFFFF" barStyle="dark-content" />
      
      <KeyboardAvoidingView 
        behavior={Platform.OS === "ios" ? "padding" : "height"} 
        style={styles.keyboardView}
      >
        <ScrollView contentContainerStyle={styles.scrollContent} showsVerticalScrollIndicator={false}>
          
          {/* CABEÇALHO PADRÃO INTERNO */}
          <View style={styles.header}>
            <Image 
              source={require('../../assets/LogoAppGeral.png')} 
              style={styles.logoSmall} 
            />
            <Text style={styles.title}>Criar Conta</Text>
            <Text style={styles.subtitle}>Inicie seu monitoramento inteligente.</Text>
          </View>

          {/* FORMULÁRIO */}
          <View style={styles.form}>
            <Text style={styles.label}>Nome Completo</Text>
            <TextInput 
              style={globalStyles.input} 
              placeholder="Ex: Maria Silva"
              placeholderTextColor="#9ca3af"
              value={name}
              onChangeText={setName}
            />

            <Text style={styles.label}>E-mail</Text>
            <TextInput 
              style={globalStyles.input} 
              placeholder="seu@email.com"
              placeholderTextColor="#9ca3af"
              keyboardType="email-address"
              autoCapitalize="none"
              value={email}
              onChangeText={setEmail}
            />

            <Text style={styles.label}>Senha</Text>
            <TextInput 
              style={globalStyles.input} 
              placeholder="Crie uma senha forte"
              placeholderTextColor="#9ca3af"
              secureTextEntry
              value={password}
              onChangeText={setPassword}
            />

            <TouchableOpacity 
              style={[globalStyles.loginButton, styles.registerButton]} 
              onPress={handleRegister}
              disabled={loading}
            >
              {loading ? (
                <ActivityIndicator color="#FFF" />
              ) : (
                <Text style={globalStyles.loginButtonText}>FINALIZAR CADASTRO</Text>
              )}
            </TouchableOpacity>

            <TouchableOpacity 
              style={styles.backButton} 
              onPress={() => navigation.goBack()}
            >
              <Text style={styles.backText}>Já possui cadastro? <Text style={styles.linkText}>Entrar</Text></Text>
            </TouchableOpacity>
          </View>

        </ScrollView>
      </KeyboardAvoidingView>
    </View>
  );
}

const styles = StyleSheet.create({
  keyboardView: {
    flex: 1,
  },
  scrollContent: {
    paddingHorizontal: 30,
    paddingTop: Platform.OS === 'android' ? 60 : 70, // Safe Area conforme DESIGN_SYSTEM
    alignItems: 'center',
    paddingBottom: 40,
  },
  header: {
    alignItems: 'center',
    marginBottom: 40,
  },
  logoSmall: {
    width: 70, // Ajustado para DESIGN_SYSTEM
    height: 70,
    marginBottom: 15,
    resizeMode: 'contain',
  },
  title: {
    fontSize: 22,
    fontWeight: 'bold',
    color: '#111827',
  },
  subtitle: {
    fontSize: 14,
    color: '#6b7280',
    textAlign: 'center',
    marginTop: 5,
  },
  form: {
    width: '100%',
  },
  label: {
    fontSize: 14,
    fontWeight: '600',
    color: '#374151',
    marginBottom: 6,
    marginTop: 15,
  },
  registerButton: {
    marginTop: 30,
  },
  backButton: {
    marginTop: 25,
    alignItems: 'center',
    padding: 10,
  },
  backText: {
    color: '#4b5563',
    fontSize: 14,
  },
  linkText: {
    color: '#0891b2', // Cyan padrão
    fontWeight: 'bold',
  }
});
```

================================================================================
📁 ARQUIVO: mobile/src/services/api.ts
🛠️ EXTENSÃO: .ts
📏 TAMANHO: 423 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 19/01/2026, 18:50:29
================================================================================

```ts
// -------------------------------------------------------------------------
// PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
// ARQUITETURA: INTEGRATION LAYER
// -------------------------------------------------------------------------
import axios from 'axios';

const api = axios.create({
  // ATUALIZADO EM 19/01/2026:
  baseURL: 'http://192.168.15.11:4000', 
  timeout: 10000,
});

export default api;
```

================================================================================
📁 ARQUIVO: mobile/src/services/ChatService.ts
🛠️ EXTENSÃO: .ts
📏 TAMANHO: 2.75 KB
🕒 ÚLTIMA MODIFICAÇÃO: 25/01/2026, 01:15:30
================================================================================

```ts
// -------------------------------------------------------------------------
// PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
// MÓDULO: CHAT SERVICE (CLIENTE SOCKET.IO)
// OBJETIVO: Gerenciar conexão em tempo real com o Backend
// -------------------------------------------------------------------------

import io, { Socket } from 'socket.io-client';

// URL DO BACKEND
// Nota: Se estiver rodando no Emulador Android, use 'http://10.0.2.2:4000'
// Se estiver no dispositivo físico, use o IP da sua máquina (ex: 192.168.15.11)
const SOCKET_URL = 'http://192.168.15.11:4000'; 

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
    if (!this.socket) return;
    
    this.socket.emit('sendMessage', {
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
    if (!this.socket) return;
    
    // Remove listeners antigos para não duplicar mensagens na tela
    this.socket.off('newMessage'); 
    
    this.socket.on('newMessage', (msg) => {
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

export const ChatService = new ChatServiceImpl();
```

================================================================================
📁 ARQUIVO: mobile/src/services/LocationService.ts
🛠️ EXTENSÃO: .ts
📏 TAMANHO: 2.44 KB
🕒 ÚLTIMA MODIFICAÇÃO: 25/01/2026, 00:09:04
================================================================================

```ts
// -------------------------------------------------------------------------
// PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
// MÓDULO: SERVIÇO DE LOCALIZAÇÃO (CLIENTE MOBILE)
// OBJETIVO: Gerenciar permissões e enviar telemetria para o Backend
// -------------------------------------------------------------------------

import * as Location from 'expo-location';
import axios from 'axios';
import { Alert } from 'react-native';

// URL DO BACKEND (Deve ser a mesma do api.ts ou HomeScreen)
// Nota: Em produção, isso virá de uma variável de ambiente.
const API_URL = 'http://192.168.15.11:4000'; 

export const LocationService = {

  /**
   * 1. Solicita permissão de uso do GPS (Foreground)
   * Retorna true se permitido, false se negado.
   */
  requestPermissions: async (): Promise<boolean> => {
    try {
      const { status } = await Location.requestForegroundPermissionsAsync();
      if (status !== 'granted') {
        Alert.alert(
          'Permissão Negada',
          'O Modo Guardião precisa da sua localização para funcionar. Por favor, habilite nas configurações.'
        );
        return false;
      }
      return true;
    } catch (error) {
      console.error('[LocationService] Erro ao pedir permissão:', error);
      return false;
    }
  },

  /**
   * 2. Obtém a posição atual com precisão balanceada
   */
  getCurrentPosition: async () => {
    try {
      return await Location.getCurrentPositionAsync({
        accuracy: Location.Accuracy.Balanced, // Balanceado para economizar bateria
      });
    } catch (error) {
      console.warn('[LocationService] Erro ao obter GPS:', error);
      return null;
    }
  },

  /**
   * 3. Envia o "Ping" para o Backend (Rota POST /location)
   */
  sendLocationLog: async (userId: string, lat: number, lng: number, battery: number = 100) => {
    try {
      if (!userId) return;

      await axios.post(`${API_URL}/location`, {
        latitude: lat,
        longitude: lng,
        batteryLevel: battery, // Futuro: integrar com expo-battery
        source: 'GPS_FOREGROUND',
        userId: userId // Backend espera isso no body por enquanto
      });
      
      // console.log(`[LocationService] Ping enviado: ${lat}, ${lng}`);
    } catch (error) {
      // Falha silenciosa para não incomodar o idoso (Retry logic fica para v2)
      console.warn('[LocationService] Falha ao enviar log:', error);
    }
  }
};
```

================================================================================
📁 ARQUIVO: mobile/src/services/MedicationService.ts
🛠️ EXTENSÃO: .ts
📏 TAMANHO: 2.19 KB
🕒 ÚLTIMA MODIFICAÇÃO: 25/01/2026, 00:30:40
================================================================================

```ts
// -------------------------------------------------------------------------
// PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
// MÓDULO: MEDICATION SERVICE (OFFLINE FIRST)
// VERSÃO: FUSÃO FINAL (Visual + Lógica de Negócio)
// -------------------------------------------------------------------------

import api from './api'; // Importação Default para compatibilidade com Axios
import { StorageService } from './storage'; 
import { Alert } from 'react-native';

const CACHE_KEY = '@medications_data';

// INTERFACE HÍBRIDA (Une a UI com o Banco de Dados)
export interface Medication {
  id: string;
  name: string;
  dosage: string;
  // Campos Visuais (Obrigatórios para o Loop da Tela)
  schedules: { 
    time: string; 
    instructions: string; 
  }[];
  // Campos de Negócio (Preservados para lógica futura)
  frequency?: string; 
  stock?: number;
  nextDose?: string;
}

export const MedicationService = {
  
  /**
   * 1. BUSCA INTELIGENTE (Stale-While-Revalidate)
   * Estratégia: Tenta rede (rápido). Se falhar, entrega cache. 
   * Se rede funcionar, atualiza cache silenciosamente.
   */
  getAll: async (userId: string): Promise<{ data: Medication[], source: 'API' | 'CACHE' }> => {
    try {
      // A. Tenta conexão com a API (Prioridade: Dados Frescos)
      // Timeout de 4s garante que o app não trava esperando sinal ruim
      const response = await api.get(`/users/${userId}/medications`, { timeout: 4000 });
      
      if (response.data) {
        // Sucesso: Atualiza o banco local (Cache) para uso futuro
        await StorageService.saveItem(CACHE_KEY, response.data);
        return { data: response.data, source: 'API' };
      }
    } catch (error) {
      // Falha silenciosa: Apenas loga e passa para o plano B
      console.log('[MedicationService] Rede indisponível. Ativando protocolo Offline...');
    }

    // B. Fallback: Recuperação do Disco Local (Modo Avião)
    const cachedData = await StorageService.getItem(CACHE_KEY);
    
    if (cachedData) {
      return { data: cachedData, source: 'CACHE' };
    }

    // C. Cold Start: Sem rede e sem cache (Primeiro uso)
    return { data: [], source: 'API' };
  }
};
```

================================================================================
📁 ARQUIVO: mobile/src/services/storage.ts
🛠️ EXTENSÃO: .ts
📏 TAMANHO: 3.61 KB
🕒 ÚLTIMA MODIFICAÇÃO: 25/01/2026, 00:38:23
================================================================================

```ts
// -------------------------------------------------------------------------
// PROJETO: SAÚDE CICLO DA VIDA (ENTERPRISE EDITION)
// MÓDULO: STORAGE SERVICE (PERSISTÊNCIA HÍBRIDA)
// OBJETIVO: Compatibilidade Legada + Suporte a Novos Módulos Offline
// -------------------------------------------------------------------------

import AsyncStorage from '@react-native-async-storage/async-storage';

// CHAVES DE ACESSO (MANTIDAS ORIGINAIS PARA NÃO QUEBRAR LOGIN EXISTENTE)
const KEYS = {
  USER: '@SCV_USER_PROFILE',  // Chave original do seu código (NÃO ALTERAR)
  TOKEN: '@SCV_AUTH_TOKEN',   // Nova chave para autenticação API
};

// Interface original mantida para tipagem estrita no Login
export interface UserProfile {
  name: string;
  email: string;
  photoUrl?: string;
  id?: string; // Adicionado opcional para garantir compatibilidade com API
}

export const StorageService = {
  
  // =========================================================================
  // 1. MOTOR GENÉRICO (CORE DO SISTEMA OFFLINE)
  // Necessário para MedicationService, LocationService e Cache Geral
  // =========================================================================

  /**
   * Salva qualquer objeto no banco local convertido em string JSON
   */
  saveItem: async (key: string, value: any): Promise<void> => {
    try {
      const jsonValue = JSON.stringify(value);
      await AsyncStorage.setItem(key, jsonValue);
      // console.log(`💾 [STORAGE] Salvo: ${key}`);
    } catch (error) {
      console.error(`❌ [STORAGE] Erro ao salvar chave ${key}:`, error);
    }
  },

  /**
   * Recupera e converte qualquer objeto do banco local
   */
  getItem: async <T>(key: string): Promise<T | null> => {
    try {
      const jsonValue = await AsyncStorage.getItem(key);
      return jsonValue != null ? JSON.parse(jsonValue) : null;
    } catch (error) {
      console.error(`❌ [STORAGE] Erro ao ler chave ${key}:`, error);
      return null;
    }
  },

  /**
   * Remove um item específico
   */
  removeItem: async (key: string): Promise<void> => {
    try {
      await AsyncStorage.removeItem(key);
    } catch (error) {
      console.error(`❌ [STORAGE] Erro ao remover chave ${key}:`, error);
    }
  },

  // =========================================================================
  // 2. MÉTODOS DE NEGÓCIO (WRAPPERS DE COMPATIBILIDADE)
  // Usam o Motor Genérico mas apontam para as chaves antigas corretas
  // =========================================================================

  // Mantém a assinatura original saveUser(user: UserProfile)
  saveUser: async (user: UserProfile) => {
    await StorageService.saveItem(KEYS.USER, user);
    console.log('💾 [STORAGE] Perfil salvo (Legacy Key):', user.name);
  },

  // Mantém a assinatura original getUser()
  getUser: async (): Promise<UserProfile | null> => {
    return await StorageService.getItem<UserProfile>(KEYS.USER);
  },

  // Limpeza específica do usuário (Para o botão Sair)
  clearUser: async () => {
    await StorageService.removeItem(KEYS.USER);
  },

  // --- NOVOS MÉTODOS PARA API (TOKEN) ---
  
  saveToken: async (token: string) => {
    await StorageService.saveItem(KEYS.TOKEN, token);
  },

  getToken: async () => {
    return await StorageService.getItem<string>(KEYS.TOKEN);
  },

  /**
   * Limpeza Total (Hard Reset)
   */
  clearAll: async () => {
    try {
      await AsyncStorage.clear();
      console.log('🧹 [STORAGE] Limpeza completa realizada.');
    } catch (error) {
      console.error('❌ [STORAGE] Erro ao limpar tudo:', error);
    }
  }
};
```

================================================================================
📁 ARQUIVO: mobile/src/styles/global.tsx
🛠️ EXTENSÃO: .tsx
📏 TAMANHO: 2.33 KB
🕒 ÚLTIMA MODIFICAÇÃO: 19/01/2026, 14:44:48
================================================================================

```tsx
// -------------------------------------------------------------------------
// ARQUIVO: styles/global.tsx
// TEMA: CLEAN MEDICAL V2 (BORDAS DEFINIDAS + TEXTO CENTRALIZADO)
// -------------------------------------------------------------------------
import { StyleSheet } from 'react-native';

export const COLORS = {
  background: '#FFFFFF',
  primary: '#000000',    // Preto para textos principais
  textDark: '#000000',
  textLight: '#4b5563',
  inputBackground: '#f3f4f6', // Cinza muito suave (quase branco)
  borderColor: '#1f2937',     // Borda escura para contraste (conforme imagem)
  danger: '#dc2626',
  white: '#FFFFFF',
};

export const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: COLORS.background,
  },
  
  // -- NOVOS INPUTS (Estilo "Caixa com Borda") --
  input: {
    width: '100%',
    height: 55,
    backgroundColor: COLORS.inputBackground,
    borderRadius: 10,       // Cantos arredondados
    borderWidth: 1,         // Borda fina
    borderColor: '#333',    // Cor da borda
    fontSize: 18,
    color: '#000',
    marginBottom: 15,
    paddingHorizontal: 15,
    textAlign: 'center',    // TEXTO CENTRALIZADO (Conforme sua imagem)
    fontWeight: '600',      // Texto levemente negrito
  },

  // -- BOTÃO ENTER (Cinza Sólido) --
  loginButton: {
    width: '100%',
    height: 55,
    backgroundColor: '#d1d5db', // Cinza médio
    borderRadius: 10,
    borderWidth: 1,
    borderColor: '#333',
    justifyContent: 'center',
    alignItems: 'center',
    marginTop: 5,
    elevation: 2, // Sombra leve Android
    shadowColor: '#000', // Sombra leve iOS
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
  },
  loginButtonText: {
    color: '#000',     // Texto Preto
    fontSize: 20,
    fontWeight: '900', // Extra Negrito ("ENTER")
    letterSpacing: 1,
  },

  // -- CARDS (Manteremos para uso futuro) --
  cardFigma: {
    backgroundColor: '#FFFFFF',
    borderRadius: 20,
    padding: 20,
    marginBottom: 20,
    width: '48%',
    aspectRatio: 1,
    justifyContent: 'center',
    alignItems: 'center',
    elevation: 4,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 8,
    borderWidth: 1,
    borderColor: '#f1f5f9'
  }
});
```

================================================================================
📁 ARQUIVO: mobile/tsconfig.json
🛠️ EXTENSÃO: .json
📏 TAMANHO: 91 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 18/01/2026, 23:53:49
================================================================================

```json
{
  "extends": "expo/tsconfig.base",
  "compilerOptions": {
    "strict": true
  }
}

```

