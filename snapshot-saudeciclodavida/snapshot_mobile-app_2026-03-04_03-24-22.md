# 🧭 CONTEXT SNAPSHOT: Módulo [MOBILE-APP]
**Projeto:** SaudeCicloDaVida
**Gerado em:** 04/03/2026, 00:24:22
**Total de Arquivos nesta Partição:** 5

---

================================================================================
📁 ARQUIVO: mobile-app/.gitignore
🛠️ EXTENSÃO: (Sem extensão)
📏 TAMANHO: 440 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 26/10/1985, 05:15:00
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
📁 ARQUIVO: mobile-app/App.js
🛠️ EXTENSÃO: .js
📏 TAMANHO: 454 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 26/10/1985, 05:15:00
================================================================================

```js
import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';

export default function App() {
  return (
    <View style={styles.container}>
      <Text>Open up App.js to start working on your app!</Text>
      <StatusBar style="auto" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});

```

================================================================================
📁 ARQUIVO: mobile-app/app.json
🛠️ EXTENSÃO: .json
📏 TAMANHO: 646 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 21/01/2026, 23:33:51
================================================================================

```json
{
  "expo": {
    "name": "mobile-app",
    "slug": "mobile-app",
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
      "edgeToEdgeEnabled": true
    },
    "web": {
      "favicon": "./assets/favicon.png"
    }
  }
}

```

================================================================================
📁 ARQUIVO: mobile-app/index.js
🛠️ EXTENSÃO: .js
📏 TAMANHO: 307 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 26/10/1985, 05:15:00
================================================================================

```js
import { registerRootComponent } from 'expo';

import App from './App';

// registerRootComponent calls AppRegistry.registerComponent('main', () => App);
// It also ensures that whether you load the app in Expo Go or in a native build,
// the environment is set up appropriately
registerRootComponent(App);

```

================================================================================
📁 ARQUIVO: mobile-app/package.json
🛠️ EXTENSÃO: .json
📏 TAMANHO: 371 Bytes
🕒 ÚLTIMA MODIFICAÇÃO: 21/01/2026, 23:33:51
================================================================================

```json
{
  "name": "mobile-app",
  "version": "1.0.0",
  "main": "index.js",
  "scripts": {
    "start": "expo start",
    "android": "expo start --android",
    "ios": "expo start --ios",
    "web": "expo start --web"
  },
  "dependencies": {
    "expo": "~54.0.32",
    "expo-status-bar": "~3.0.9",
    "react": "19.1.0",
    "react-native": "0.81.5"
  },
  "private": true
}

```

