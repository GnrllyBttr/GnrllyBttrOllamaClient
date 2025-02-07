# GnrllyBttrOllamaClient 🦙✨

Developed with ❤️ by

[<img src="https://github.com/GnrllyBttr/gnrllybttr.dev/raw/production/images/logo.png" width="225" alt="GnrllyBttr Logo">](https://gnrllybttr.dev/)

[![GitHub Stars](https://img.shields.io/github/stars/GnrllyBttr/GnrllyBttrOllamaClient.svg?logo=github)](https://github.com/GnrllyBttr/GnrllyBttrOllamaClient/stargazers)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/GnrllyBttr/GnrllyBttrOllamaClient/raw/main/LICENSE)
![Coverage](https://github.com/GnrllyBttr/GnrllyBttrOllamaClient/raw/main/coverage_badge.svg?sanitize=true)

[![Package](https://img.shields.io/pub/v/gnrllybttr_ollama_client.svg?logo=flutter)](https://pub.dartlang.org/packages/gnrllybttr_ollama_client)
[![Platform](https://img.shields.io/badge/platform-all-brightgreen.svg?logo=flutter)](https://img.shields.io/badge/platform-android%20|%20ios%20|%20linux%20|%20macos%20|%20web%20|%20windows-green.svg)
[![Likes](https://img.shields.io/pub/likes/gnrllybttr_ollama_client?logo=flutter)](https://pub.dev/packages/gnrllybttr_ollama_client/score)
[![Points](https://img.shields.io/pub/points/gnrllybttr_ollama_client?logo=flutter)](https://pub.dev/packages/gnrllybttr_ollama_client/score)

---

## 📑 Table of Contents

- [GnrllyBttrOllamaClient 🦙✨](#gnrllybttrollamaclient-)
  - [📑 Table of Contents](#-table-of-contents)
  - [🌟 Features](#-features)
  - [🚀 Installation](#-installation)
  - [📚 Examples](#-examples)
  - [🏁 Getting Started](#-getting-started)
  - [📖 Usage](#-usage)
    - [Creating a Client](#creating-a-client)
    - [💬 Chat](#-chat)
      - [Sending a Chat Request](#sending-a-chat-request)
      - [Streaming Chat Responses](#streaming-chat-responses)
    - [🛠️ Model Management](#️-model-management)
      - [Copying a Model](#copying-a-model)
      - [Creating a Model](#creating-a-model)
      - [Deleting a Model](#deleting-a-model)
      - [Listing Models](#listing-models)
      - [Listing Running Models](#listing-running-models)
      - [Showing Model Information](#showing-model-information)
    - [🧠 Embeddings](#-embeddings)
    - [✍️ Text Generation](#️-text-generation)
      - [Non-Streaming](#non-streaming)
      - [Streaming](#streaming)
    - [📦 Blob Operations](#-blob-operations)
      - [Checking if a Blob Exists](#checking-if-a-blob-exists)
      - [Pushing a Blob](#pushing-a-blob)
    - [🔄 Model Transfer](#-model-transfer)
      - [Pulling a Model](#pulling-a-model)
      - [Pushing a Model](#pushing-a-model)
    - [📅 Retrieving API Version](#-retrieving-api-version)
    - [🛑 Using Cancel Tokens](#-using-cancel-tokens)
  - [🤝 Contributing](#-contributing)
  - [🆘 Support](#-support)
  - [📝 Changelog](#-changelog)
  - [📄 License](#-license)

## 🌟 Features

A Dart client for interacting with the [Ollama](https://ollama.ai/) API. This package provides methods to interact with the Ollama API, including chat, model management, embeddings, and more.

GnrllyBttrOllamaClient offers an exceptional developer experience with:

- **Type Safety**: Fully type-safe API with comprehensive class definitions and null safety support
- **Immutable Models**: Thread-safe, immutable data models using Freezed for reliable state management
- **Request/Response Consistency**: Structured request and response objects for all API operations
- **Error Handling**: Well-defined exception types and error messages for better debugging
- **Streaming Support**: First-class support for streaming responses with strong typing
- **Documentation**: Extensive documentation with examples for all features
- **JSON Serialization**: Automatic JSON serialization/deserialization for all models
- **Fluent API**: Intuitive, chainable methods for building requests
- **Cancellation Support**: Built-in request cancellation via cancel tokens
- **Cross-Platform**: Works seamlessly across all Dart/Flutter supported platforms
- Functionalities:
  - **Chat**: Send chat requests and receive responses.
  - **Model Management**: Create, copy, delete, and list models.
  - **Embeddings**: Generate embeddings for given inputs.
  - **Text Generation**: Generate text using specified models.
  - **Streaming**: Support for streaming chat and text generation.
  - **Versioning**: Retrieve the version of the Ollama API.

## 🚀 Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  gnrllybttr_ollama_client: ^1.0.0
```

Then run:

```shell
flutter pub get
```

## 📚 Examples

Here are some examples of how to use GnrllyBttrOllamaClient:

- **Chat**: Send a chat request and receive a response.
- **Model Management**: Create, copy, delete, and list models.
- **Embeddings**: Generate embeddings for given inputs.
- **Text Generation**: Generate text using specified models.
- **Streaming**: Stream chat and text generation responses.

## 🏁 Getting Started

To get started with GnrllyBttrOllamaClient, follow these steps:

1. **Create a Client**: Initialize the client.
2. **Send Requests**: Use the client to send chat requests, manage models, generate embeddings, and more.

## 📖 Usage

### Creating a Client

```dart
import 'package:gnrllybttr_ollama_client/gnrllybttr_ollama_client.dart';

final client = GnrllyBttrOllamaClient();
```

### 💬 Chat

#### Sending a Chat Request

```dart
final response = await client.chat(
  request: ChatRequest(
    model: 'llama2',
    messages: <ChatMessage>[
      ChatMessage(
        role: ChatMessageRole.system,
        content: 'You are a knowledgeable AI assistant specializing in Flutter.',
      ),
      ChatMessage(
        role: ChatMessageRole.user,
        content: 'What is the best state management solution for Flutter apps?',
      ),
    ],
  ),
  cancelToken: cancelToken,
);

print(response.message?.content);
```

#### Streaming Chat Responses

```dart
final stream = client.chatStream(
  request: ChatRequest(
    model: 'codellama',
    messages: <ChatMessage>[
      ChatMessage(
        role: ChatMessageRole.system,
        content: 'You are a Dart and Flutter expert providing concise code reviews.',
      ),
      ChatMessage(
        role: ChatMessageRole.user,
        content: '''
          Can you review this Flutter code for efficiency?
          Widget build(BuildContext context) {
            return ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index].title),
                );
              },
            );
          }
        ''',
      ),
    ],
  ),
  cancelToken: cancelToken,
);

await for (final response in stream) {
  print(response.message?.content);
}
```

### 🛠️ Model Management

#### Copying a Model

```dart
await client.copyModel(
  request: CopyModelRequest(
    sourceModel: 'llama2:13b',
    destinationModel: 'llama2-custom-fine-tuned',
  ),
  cancelToken: cancelToken,
);
```

#### Creating a Model

```dart
final stream = client.createModelStream(
  request: CreateModelRequest(
    model: 'custom-mistral-7b',
    from: 'mistral:7b',
    files: <String, String>{
      'training_data.jsonl': 'sha256:8f4e56db7fce1a36f01c3235a82c6e89d52f5c7c8642e8ea4f1f5f0a6864a930',
    },
    adapters: <String, String>{
      'lora-adapter': 'sha256:2d5c7c8642e8ea4f1f5f0a6864a930f4e56db7fce1a36f01c3235a82c6e89d52',
    },
    template: '{{ .System }}\n\nUser: {{ .Prompt }}\nAssistant: ',
    license: 'MIT',
    system: 'You are a helpful AI assistant specialized in Flutter development.',
    parameters: <String, dynamic>{
      'temperature': 0.7,
      'top_p': 0.9,
      'repeat_penalty': 1.1,
    },
    messages: <ChatMessage>[
      ChatMessage(
        role: ChatMessageRole.user,
        content: 'Hello!',
      ),
    ],
    stream: false,
    quantize: 'q4_0',
  ),
  cancelToken: cancelToken,
);

await for (final chunk in stream) {
  print(chunk);
}
```

#### Deleting a Model

```dart
await client.deleteModel(
  request: DeleteModelRequest(
    model: 'llama2-custom-fine-tuned',
  ),
  cancelToken: cancelToken,
);
```

#### Listing Models

```dart
final response = await client.listModels(
  cancelToken: cancelToken,
);

print(response);
```

#### Listing Running Models

```dart
final response = await client.listRunningModels(
  cancelToken: cancelToken,
);

print(response);
```

#### Showing Model Information

```dart
final modelInfo = await client.showModelInformation(
  modelName: 'gpt-3',
  cancelToken: cancelToken,
);

print('Model Info: ${modelInfo.modelfile}');
```

### 🧠 Embeddings

```dart
final response = await client.embeddings(
  request: EmbedRequest(
    model: 'gpt-3',
    input: 'Flutter is a UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
  ),
  cancelToken: cancelToken,
);

print(response);
```

### ✍️ Text Generation

#### Non-Streaming

```dart
final response = await client.generate(
  request: GenerateRequest(
    model: 'llama2',
    prompt: '''
      Write a Flutter widget that displays a customizable loading indicator with the following requirements:
      - Accepts a color parameter
      - Shows a circular progress indicator
      - Has a custom size
      - Displays optional loading text below
    ''',
    temperature: 0.7,
    maxTokens: 500,
  ),
  cancelToken: cancelToken,
);

print(response.response);
```

#### Streaming

```dart
final stream = client.generateStream(
  request: GenerateRequest(
    model: 'llama2',
    prompt: '''
      Write a Flutter widget that displays a customizable loading indicator with the following requirements:
      - Accepts a color parameter
      - Shows a circular progress indicator
      - Has a custom size
      - Displays optional loading text below
    ''',
    temperature: 0.7,
    maxTokens: 500,
  ),
  cancelToken: cancelToken,
);

await for (final chunk in stream) {
  print(chunk);
}
```

### 📦 Blob Operations

#### Checking if a Blob Exists

```dart
final exists = await client.checkBlobExists(
  digest: 'blobDigest',
  cancelToken: cancelToken,
);

print('Blob exists: $exists');
```

#### Pushing a Blob

```dart
final blobDigest = 'sha256:3f4e56db7fce1a36f01c3235a82c6e89d52f5c7c8642e8ea4f1f5f0a6864a930';
final blobData = await File('model_weights.bin').readAsBytes();

await client.pushBlob(
  digest: blobDigest,
  data: blobData,
  cancelToken: cancelToken,
);

print('Blob pushed successfully');
```

### 🔄 Model Transfer

#### Pulling a Model

```dart
final stream = client.pullModelStream(
  request: PullModelRequest(
    model: 'mistral:7b-instruct-v0.2',
    insecure: false,
  ),
  cancelToken: cancelToken,
);

await for (final chunk in stream) {
  print(chunk);
}
```

#### Pushing a Model

```dart
final stream = client.pushModelStream(
  request: PushModelRequest(
    model: 'mistral-7b-finetuned',
    insecure: false,
    stream: true,
  ),
  cancelToken: cancelToken,
);

await for (final chunk in stream) {
  print('Upload progress: ${chunk.status}');
}
```

### 📅 Retrieving API Version

```dart
final response = await client.getVersion(
  cancelToken: cancelToken,
);

print(response);
```

### 🛑 Using Cancel Tokens

Cancel tokens allow you to cancel ongoing HTTP requests. This is particularly useful for long-running requests or when the user navigates away from the current screen, ensuring that resources are not wasted on unnecessary network operations.

```dart
import 'package:gnrllybttr_ollama_client/gnrllybttr_ollama_client.dart';

final client = GnrllyBttrOllamaClient();
final cancelToken = HttpCancelToken();

// Start a long-running request
final stream = client.chatStream(
  request: ChatRequest(
    model: 'llama2',
    messages: <ChatMessage>[
      ChatMessage(
        role: ChatMessageRole.system,
        content: 'You are a knowledgeable AI assistant.',
      ),
      ChatMessage(
        role: ChatMessageRole.user,
        content: 'Explain everything there is to know about Flutter.',
      ),
    ],
  ),
  cancelToken: cancelToken,
);

// Cancel the request if needed
cancelToken.cancel();
```

## 🤝 Contributing

We welcome contributions to GnrllyBttrOllamaClient! Please see our [contributing guidelines](https://github.com/GnrllyBttr/GnrllyBttrOllamaClient/raw/main/CONTRIBUTING.md) for more information on how to get started.

## 🆘 Support

If you need help or have any questions, please feel free to [open an issue](https://github.com/GnrllyBttr/GnrllyBttrOllamaClient/issues) on GitHub.

## 📝 Changelog

See the [changelog](https://github.com/GnrllyBttr/GnrllyBttrOllamaClient/raw/main/CHANGELOG.md) for a history of changes and updates.

## 📄 License

GnrllyBttrOllamaClient is released under the MIT License. See the [LICENSE](https://github.com/GnrllyBttr/GnrllyBttrOllamaClient/raw/main/LICENSE) file for details.
