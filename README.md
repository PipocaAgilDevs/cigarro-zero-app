# cigarrozeroapp

Este é um guia rápido para configurar, executar e gerar builds do seu aplicativo Flutter.
Pré-requisitos

- Flutter SDK: Certifique-se de ter o Flutter SDK instalado e configurado corretamente em sua máquina.
- Android Studio: Tenha o Android Studio instalado e configurado com as ferramentas de desenvolvimento Android necessárias.
- Emulador ou Dispositivo Físico: Para testar seu aplicativo, você precisará de um emulador Android ou um dispositivo físico conectado ao seu computador.
- VSCode: Certifique de ter as extensões necessárias para rodar projetos flutter em seu CLI.

Executando o Projeto

Clone o Repositório:
git clone https://github.com/PipocaAgilDevs/cigarro-zero-app.git

Navegue até o Diretório:
`cd cigarro-zero-app`

Instale as Dependências:
`flutter pub get`

Execute o Aplicativo:
`flutter run`

## Gerando Builds

- APK (Android Package Kit)

Modo Debug (para testes):
`flutter build apk`

O APK gerado estará em build/app/outputs/flutter-apk/app-debug.apk.

Modo Release (para publicação):
`flutter build apk --release`

O APK gerado estará em build/app/outputs/flutter-apk/app-release.apk.

- AAB (Android App Bundle)

Modo Release:
`flutter build appbundle --release`

O AAB gerado estará em build/app/outputs/bundle/release/app-release.aab.
