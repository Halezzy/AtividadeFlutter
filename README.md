
# FlutApp

Este é um projeto de exemplo desenvolvido com **Flutter**, com o objetivo de praticar o uso de **Flutter**, **Git** e **GitHub**.

## Funcionalidades

- **Contador**: Um simples contador de incremento.
- **Modo Claro/Escuro**: Alterna entre temas claro e escuro.
- **Lista de Tarefas**: Gerenciamento básico de tarefas.
- **Curtir com Contador**: Sistema de "curtir" com contagem de cliques.

## Como rodar o projeto

Para rodar este projeto localmente, siga os seguintes passos:

### 1. Clone o repositório

```bash
git clone https://github.com/Halezzy/AtividadeFlutter.git
```

### 2. Navegue até a pasta do projeto

```bash
cd AtividadeFlutter
```

### 3. Instale as dependências

```bash
flutter pub get
```

### 4. Configure um dispositivo ou emulador

Certifique-se de ter um dispositivo Android, iOS ou emulador configurado para rodar o aplicativo.

Para verificar se o seu dispositivo ou emulador está funcionando corretamente, execute:

```bash
flutter devices
```

### 5. Rode o projeto

Execute o seguinte comando para rodar o projeto no emulador ou dispositivo conectado:

```bash
flutter run
```

### 6. (Opcional) Rodando em plataformas específicas

- **Android**:
  ```bash
  flutter run -d android
  ```

- **iOS** (necessário um Mac com Xcode):
  ```bash
  flutter run -d ios
  ```

- **Web**:
  ```bash
  flutter run -d chrome
  ```

## Tecnologias utilizadas

Este projeto utiliza as seguintes tecnologias:

- **Flutter**: Framework open-source desenvolvido pelo Google para construção de interfaces nativas compiladas para mobile, web e desktop com uma única base de código.
- **Git**: Sistema de controle de versão distribuído para gerenciar o código-fonte do projeto.
- **GitHub**: Plataforma de hospedagem de código-fonte baseada em Git, onde o projeto é armazenado e versionado.

## Estrutura do Projeto

A estrutura básica do projeto é a seguinte:

```bash
flutapp/
├── android/              # Configurações e código específico para Android
├── assets/               # Imagens, fontes e outros recursos
├── lib/                  # Código Dart do Flutter
│   ├── screens/          # Telas do aplicativo
│   ├── models/           # Modelos de dados
│   └── main.dart         # Ponto de entrada do aplicativo
├── macos/                # Código específico para macOS
├── test/                 # Testes do projeto
├── pubspec.yaml          # Arquivo de configuração do Flutter (dependências, assets, etc.)
└── README.md             # Este arquivo
```

## Créditos

Este projeto foi desenvolvido por **Hugo Alessi** - RA: IT3037398.

O projeto foi criado para fins educacionais, com o objetivo de aprender e praticar o desenvolvimento de aplicativos Flutter e o uso do controle de versão com Git e GitHub.
