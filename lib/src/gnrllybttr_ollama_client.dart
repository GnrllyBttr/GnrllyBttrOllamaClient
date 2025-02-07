// 🎯 Dart imports:
import 'dart:async';
import 'dart:convert';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/abstracts/abstracts.dart';
import 'package:gnrllybttr_ollama_client/src/exceptions/exceptions.dart';
import 'package:gnrllybttr_ollama_client/src/models/models.dart';
import 'package:gnrllybttr_ollama_client/src/services/services.dart';

/// A client for interacting with the Ollama API.
///
/// This class provides methods to interact with the Ollama API, including
/// chat, model management, embeddings, and more. It uses a
/// [GnrllyBttrRestService] under the hood to handle HTTP requests and
/// responses.
///
/// Example Usage:
/// ```dart
///  import 'package:gnrllybttr_ollama_client/gnrllybttr_ollama_client.dart';
///
/// final client = GnrllyBttrOllamaClient();
/// ```
class GnrllyBttrOllamaClient {
  /// Creates an instance of [GnrllyBttrOllamaClient].
  ///
  /// - [restService]: An optional [GnrllyBttrRestService] implementation. If not provided,
  ///   a default [DioService] will be used.
  GnrllyBttrOllamaClient({GnrllyBttrRestService? restService})
      : _restService = restService ?? DioService();

  final GnrllyBttrRestService _restService;

  /// The [GnrllyBttrRestService] implementation used by the client.
  ///
  /// This service is used to make HTTP requests to the Ollama API.
  ///
  /// Returns a [GnrllyBttrRestService].
  GnrllyBttrRestService get restService => _restService;

  /// Sends a chat request to the Ollama API and returns a [ChatResponse].
  ///
  /// This method is used for non-streaming chat interactions.
  ///
  /// - [request]: The [ChatRequest] containing the model, messages, and options.
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Returns a [Future] that resolves to a [ChatResponse].
  ///
  /// Throws a [ChatFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// final response = await client.chat(
  ///   request: ChatRequest(
  ///     model: 'llama2',
  ///     messages: <ChatMessage>[
  ///       ChatMessage(
  ///         role: ChatMessageRole.system,
  ///         content: 'You are a knowledgeable AI assistant specializing in Flutter.',
  ///       ),
  ///       ChatMessage(
  ///         role: ChatMessageRole.user,
  ///         content: 'What is the best state management solution for Flutter apps?',
  ///       ),
  ///     ],
  ///   ),
  ///   cancelToken: cancelToken,
  /// );
  ///
  /// print(response.message?.content);
  /// ```
  Future<ChatResponse> chat({
    required ChatRequest request,
    HttpCancelToken? cancelToken,
  }) async {
    try {
      final response = await _restService.post(
        path: '/chat',
        data: request.copyWith(stream: false).toJson(),
        cancelToken: cancelToken,
      );

      return ChatResponse.fromJson(response.data);
    } catch (e) {
      throw ChatFailedException(e.toString());
    }
  }

  /// Sends a streaming chat request to the Ollama API and returns a [Stream] of [ChatResponse].
  ///
  /// This method is used for streaming chat interactions.
  ///
  /// - [request]: The [ChatRequest] containing the model, messages, and options.
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Returns a [Stream] of [ChatResponse].
  ///
  /// Throws a [ChatStreamFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// final stream = client.chatStream(
  ///   request: ChatRequest(
  ///     model: 'codellama',
  ///     messages: <ChatMessage>[
  ///       ChatMessage(
  ///         role: ChatMessageRole.system,
  ///         content: 'You are a Dart and Flutter expert providing concise code reviews.',
  ///       ),
  ///       ChatMessage(
  ///         role: ChatMessageRole.user,
  ///         content: '''
  ///           Can you review this Flutter code for efficiency?
  ///           Widget build(BuildContext context) {
  ///             return ListView.builder(
  ///               itemCount: items.length,
  ///               itemBuilder: (context, index) {
  ///                 return ListTile(
  ///                   title: Text(items[index].title),
  ///                 );
  ///               },
  ///             );
  ///           }
  ///         ''',
  ///       ),
  ///     ],
  ///   ),
  ///   cancelToken: cancelToken,
  /// );
  ///
  /// await for (final response in stream) {
  ///   print(response.message?.content);
  /// }
  /// ```
  Stream<ChatResponse> chatStream({
    required ChatRequest request,
    HttpCancelToken? cancelToken,
  }) async* {
    try {
      final stream = _restService.stream(
        path: '/chat',
        data: request.copyWith(stream: true).toJson(),
        options: HttpOptions(responseType: 'stream'),
      );

      await for (final line in stream) {
        if (line.isEmpty) continue;

        yield ChatResponse.fromJson(jsonDecode(line));
      }
    } catch (e) {
      throw ChatStreamFailedException(e.toString());
    }
  }

  /// Checks if a blob exists on the server.
  ///
  /// - [digest]: The digest of the blob to check.
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Returns a [Future] that resolves to `true` if the blob exists, `false` otherwise.
  ///
  /// Throws a [BlobCheckFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// final response = await client.checkBlobExists(
  ///   digest: 'blobDigest',
  ///   cancelToken: cancelToken,
  /// );
  ///
  /// print('Blob exists: $response');
  /// ```
  Future<bool> checkBlobExists({
    required String digest,
    HttpCancelToken? cancelToken,
  }) async {
    try {
      final response = await _restService.head(
        path: '/blobs/$digest',
        cancelToken: cancelToken,
      );

      return response.statusCode == 200;
    } catch (e) {
      throw BlobCheckFailedException(e.toString());
    }
  }

  /// Copies a model from one name to another.
  ///
  /// - [request]: The [CopyModelRequest] containing the source and destination model names.
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Throws a [CopyModelFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// await client.copyModel(
  ///   request: CopyModelRequest(
  ///     sourceModel: 'llama2:13b',
  ///     destinationModel: 'llama2-custom-fine-tuned',
  ///   ),
  ///   cancelToken: cancelToken,
  /// );
  /// ```
  Future<void> copyModel({
    required CopyModelRequest request,
    HttpCancelToken? cancelToken,
  }) async {
    try {
      await _restService.post(
        path: '/copy',
        data: request.toJson(),
        cancelToken: cancelToken,
      );
    } catch (e) {
      throw CopyModelFailedException(e.toString());
    }
  }

  /// Creates a new model and returns a [CreateStatus].
  ///
  /// This method is used for non-streaming model creation.
  ///
  /// - [request]: The [CreateModelRequest] containing the model details.
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Returns a [Future] that resolves to a [CreateStatus].
  ///
  /// Throws a [CreateModelFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// final response = await client.createModel(
  ///   request: CreateModelRequest(
  ///     model: 'custom-mistral-7b',
  ///     from: 'mistral:7b',
  ///     files: <String, String>{
  ///       'training_data.jsonl': 'sha256:8f4e56db7fce1a36f01c3235a82c6e89d52f5c7c8642e8ea4f1f5f0a6864a930',
  ///     },
  ///     adapters: <String, String>{
  ///       'lora-adapter': 'sha256:2d5c7c8642e8ea4f1f5f0a6864a930f4e56db7fce1a36f01c3235a82c6e89d52',
  ///     },
  ///     template: '{{ .System }}\n\nUser: {{ .Prompt }}\nAssistant: ',
  ///     license: 'MIT',
  ///     system: 'You are a helpful AI assistant specialized in Flutter development.',
  ///     parameters: <String, dynamic>{
  ///       'temperature': 0.7,
  ///       'top_p': 0.9,
  ///       'repeat_penalty': 1.1,
  ///     },
  ///     messages: <ChatMessage>[
  ///       ChatMessage(
  ///         role: ChatMessageRole.user,
  ///         content: 'Hello!',
  ///       ),
  ///     ],
  ///     stream: false,
  ///     quantize: 'q4_0',
  ///   ),
  ///   cancelToken: cancelToken,
  /// );
  ///
  /// print(response);
  /// ```
  Future<CreateStatus> createModel({
    required CreateModelRequest request,
    HttpCancelToken? cancelToken,
  }) async {
    try {
      final response = await _restService.post(
        path: '/create',
        data: request.copyWith(stream: false).toJson(),
        cancelToken: cancelToken,
      );

      return CreateStatus.fromJson(response.data);
    } catch (e) {
      throw CreateModelFailedException(e.toString());
    }
  }

  /// Creates a new model and returns a [Stream] of [CreateStatus].
  ///
  /// This method is used for streaming the creation status of a model.
  ///
  /// - [request]: The [CreateModelRequest] containing the model details.
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Returns a [Stream] of [CreateStatus].
  ///
  /// Throws a [CreateModelStreamFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// final stream = client.createModelStream(
  ///   request: CreateModelRequest(
  ///     model: 'custom-mistral-7b',
  ///     from: 'mistral:7b',
  ///     files: <String, String>{
  ///       'training_data.jsonl': 'sha256:8f4e56db7fce1a36f01c3235a82c6e89d52f5c7c8642e8ea4f1f5f0a6864a930',
  ///     },
  ///     adapters: <String, String>{
  ///       'lora-adapter': 'sha256:2d5c7c8642e8ea4f1f5f0a6864a930f4e56db7fce1a36f01c3235a82c6e89d52',
  ///     },
  ///     template: '{{ .System }}\n\nUser: {{ .Prompt }}\nAssistant: ',
  ///     license: 'MIT',
  ///     system: 'You are a helpful AI assistant specialized in Flutter development.',
  ///     parameters: <String, dynamic>{
  ///       'temperature': 0.7,
  ///       'top_p': 0.9,
  ///       'repeat_penalty': 1.1,
  ///     },
  ///     messages: <ChatMessage>[
  ///       ChatMessage(
  ///         role: ChatMessageRole.user,
  ///         content: 'Hello!',
  ///       ),
  ///     ],
  ///     stream: false,
  ///     quantize: 'q4_0',
  ///   ),
  ///   cancelToken: cancelToken,
  /// );
  ///
  /// await for (final chunk in stream) {
  ///   print(chunk);
  /// }
  /// ```
  Stream<CreateStatus> createModelStream({
    required CreateModelRequest request,
    HttpCancelToken? cancelToken,
  }) async* {
    try {
      final stream = _restService.stream(
        path: '/create',
        data: request.copyWith(stream: true).toJson(),
        options: HttpOptions(responseType: 'stream'),
        cancelToken: cancelToken,
      );

      await for (final line in stream) {
        if (line.isEmpty) continue;

        yield CreateStatus.fromJson(jsonDecode(line));
      }
    } catch (e) {
      throw CreateModelStreamFailedException(e.toString());
    }
  }

  /// Deletes a model.
  ///
  /// - [request]: The [DeleteModelRequest] containing the model name to delete.
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Throws a [DeleteModelFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// await client.deleteModel(
  ///   request: DeleteModelRequest(
  ///     model: 'llama2-custom-fine-tuned',
  ///   ),
  ///   cancelToken: cancelToken,
  /// );
  /// ```
  Future<void> deleteModel({
    required DeleteModelRequest request,
    HttpCancelToken? cancelToken,
  }) async {
    try {
      await _restService.delete(
        path: '/delete',
        data: request.toJson(),
        cancelToken: cancelToken,
      );
    } catch (e) {
      throw DeleteModelFailedException(e.toString());
    }
  }

  /// Generates embeddings for the given input and returns an [EmbedResponse].
  ///
  /// - [request]: The [EmbedRequest] containing the model and input data.
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Returns a [Future] that resolves to an [EmbedResponse].
  ///
  /// Throws an [EmbeddingsFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// final response = await client.embeddings(
  ///   request: EmbedRequest(
  ///     model: 'gpt-3',
  ///     input: 'Flutter is a UI toolkit for building beautiful, natively '
  ///       'compiled applications for mobile, web, and desktop from a single '
  ///       'codebase.',
  ///   ),
  ///   cancelToken: cancelToken,
  /// );
  ///
  /// print(response);
  /// ```
  Future<EmbedResponse> embeddings({
    required EmbedRequest request,
    HttpCancelToken? cancelToken,
  }) async {
    try {
      final response = await _restService.post(
        path: '/embed',
        data: request.toJson(),
        cancelToken: cancelToken,
      );

      return EmbedResponse.fromJson(response.data);
    } catch (e) {
      throw EmbeddingsFailedException(e.toString());
    }
  }

  /// Generates text using the specified model and returns a [GenerateResponse].
  ///
  /// This method is used for non-streaming text generation.
  ///
  /// - [request]: The [GenerateRequest] containing the model and prompt.
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Returns a [Future] that resolves to a [GenerateResponse].
  ///
  /// Throws a [GenerateFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// final response = await client.generate(
  ///   request: GenerateRequest(
  ///     model: 'llama2',
  ///     prompt: '''
  ///       Write a Flutter widget that displays a customizable loading indicator with the following requirements:
  ///       - Accepts a color parameter
  ///       - Shows a circular progress indicator
  ///       - Has a custom size
  ///       - Displays optional loading text below
  ///     ''',
  ///     temperature: 0.7,
  ///     maxTokens: 500,
  ///   ),
  ///   cancelToken: cancelToken,
  /// );
  ///
  /// print(response.response);
  /// ```
  Future<GenerateResponse> generate({
    required GenerateRequest request,
    HttpCancelToken? cancelToken,
  }) async {
    try {
      final response = await _restService.post(
        path: '/generate',
        data: request.copyWith(stream: false).toJson(),
        cancelToken: cancelToken,
      );

      return GenerateResponse.fromJson(response.data);
    } catch (e) {
      throw GenerateFailedException(e.toString());
    }
  }

  /// Generates text using the specified model and returns a [Stream] of [GenerateResponse].
  ///
  /// This method is used for streaming text generation.
  ///
  /// - [request]: The [GenerateRequest] containing the model and prompt.
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Returns a [Stream] of [GenerateResponse].
  ///
  /// Throws a [GenerateStreamFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// final stream = client.generateStream(
  ///   request: GenerateRequest(
  ///     model: 'llama2',
  ///     prompt: '''
  ///       Write a Flutter widget that displays a customizable loading indicator with the following requirements:
  ///       - Accepts a color parameter
  ///       - Shows a circular progress indicator
  ///       - Has a custom size
  ///       - Displays optional loading text below
  ///     ''',
  ///     temperature: 0.7,
  ///     maxTokens: 500,
  ///   ),
  ///   cancelToken: cancelToken,
  /// );
  ///
  /// await for (final chunk in stream) {
  ///  print(chunk);
  /// }
  /// ```
  Stream<GenerateResponse> generateStream({
    required GenerateRequest request,
    HttpCancelToken? cancelToken,
  }) async* {
    try {
      final stream = _restService.stream(
        path: '/generate',
        data: request.copyWith(stream: true).toJson(),
        cancelToken: cancelToken,
        options: HttpOptions(responseType: 'stream'),
      );

      await for (final line in stream) {
        if (line.isEmpty) continue;

        yield GenerateResponse.fromJson(jsonDecode(line));
      }
    } catch (e) {
      throw GenerateStreamFailedException(e.toString());
    }
  }

  /// Retrieves the version of the Ollama API.
  ///
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Returns a [Future] that resolves to a [VersionResponse].
  ///
  /// Throws a [GetVersionFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// final response = await client.getVersion(
  ///   cancelToken: cancelToken,
  /// );
  ///
  /// print(response);
  /// ```
  Future<VersionResponse> getVersion({
    HttpCancelToken? cancelToken,
  }) async {
    try {
      final response = await _restService.get(
        path: '/version',
        cancelToken: cancelToken,
      );

      return VersionResponse.fromJson(response.data);
    } catch (e) {
      throw GetVersionFailedException(e.toString());
    }
  }

  /// Lists all available models and returns a [ModelList].
  ///
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Returns a [Future] that resolves to a [ModelList].
  ///
  /// Throws a [ListModelsFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// final response = await client.listModels(
  ///   cancelToken: cancelToken,
  /// );
  ///
  /// print(response);
  /// ```
  Future<ModelList> listModels({
    HttpCancelToken? cancelToken,
  }) async {
    try {
      final response = await _restService.get(
        path: '/tags',
        cancelToken: cancelToken,
      );

      return ModelList.fromJson(response.data);
    } catch (e) {
      throw ListModelsFailedException(e.toString());
    }
  }

  /// Lists all running models and returns a [ModelStatusList].
  ///
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Returns a [Future] that resolves to a [ModelStatusList].
  ///
  /// Throws a [ListRunningModelsFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// final response = await client.listRunningModels(
  ///   cancelToken: cancelToken,
  /// );
  ///
  /// print(response);
  /// ```
  Future<ModelStatusList> listRunningModels({
    HttpCancelToken? cancelToken,
  }) async {
    try {
      final response = await _restService.get(
        path: '/ps',
        cancelToken: cancelToken,
      );

      return ModelStatusList.fromJson(response.data);
    } catch (e) {
      throw ListRunningModelsFailedException(e.toString());
    }
  }

  /// Pulls a model from a remote source and returns a [PullStatus].
  ///
  /// This method is used for non-streaming model pulling.
  ///
  /// - [request]: The [PullModelRequest] containing the model name and options.
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Returns a [Future] that resolves to a [PullStatus].
  ///
  /// Throws a [PullModelFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// final response = await client.pullModel(
  ///   request: PullModelRequest(
  ///     model: 'mistral:7b-instruct-v0.2',
  ///     insecure: false,
  ///   ),
  ///   cancelToken: cancelToken,
  /// );
  ///
  /// print(response);
  /// ```
  Future<PullStatus> pullModel({
    required PullModelRequest request,
    HttpCancelToken? cancelToken,
  }) async {
    try {
      final response = await _restService.post(
        path: '/pull',
        data: request.copyWith(stream: false).toJson(),
        cancelToken: cancelToken,
      );

      return PullStatus.fromJson(response.data);
    } catch (e) {
      throw PullModelFailedException(e.toString());
    }
  }

  /// Pulls a model from a remote source and returns a [Stream] of [PullStatus].
  ///
  /// This method is used for streaming the pull status of a model.
  ///
  /// - [request]: The [PullModelRequest] containing the model name and options.
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Returns a [Stream] of [PullStatus].
  ///
  /// Throws a [PullModelStreamFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// final stream = client.pullModelStream(
  ///   request: PullModelRequest(
  ///     model: 'mistral:7b-instruct-v0.2',
  ///     insecure: false,
  ///   ),
  ///   cancelToken: cancelToken,
  /// );
  ///
  /// await for (final chunk in stream) {
  ///   print(chunk);
  /// }
  /// ```
  Stream<PullStatus> pullModelStream({
    required PullModelRequest request,
    HttpCancelToken? cancelToken,
  }) async* {
    try {
      final stream = _restService.stream(
        path: '/pull',
        data: request.copyWith(stream: true).toJson(),
        options: HttpOptions(responseType: 'stream'),
        cancelToken: cancelToken,
      );

      await for (final line in stream) {
        if (line.isEmpty) continue;

        yield PullStatus.fromJson(jsonDecode(line));
      }
    } catch (e) {
      throw PullModelStreamFailedException(e.toString());
    }
  }

  /// Pushes a blob to the server.
  ///
  /// - [digest]: The digest of the blob to push.
  /// - [data]: The data of the blob to push.
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Throws a [BlobPushFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// final blobDigest = 'sha256:3f4e56db7fce1a36f01c3235a82c6e89d52f5c7c8642e8ea4f1f5f0a6864a930';
  /// final blobData = await File('model_weights.bin').readAsBytes();
  /// await client.pushBlob(
  ///   digest: blobDigest,
  ///   data: blobData,
  ///   cancelToken: cancelToken,
  /// );
  ///
  /// print('Blob pushed successfully');
  /// ```
  Future<void> pushBlob({
    required String digest,
    required dynamic data,
    HttpCancelToken? cancelToken,
  }) async {
    try {
      await _restService.post(
        path: '/blobs/$digest',
        data: data,
        cancelToken: cancelToken,
        options: HttpOptions(
          responseType: 'application/octet-stream',
        ),
      );
    } catch (e) {
      throw BlobPushFailedException(e.toString());
    }
  }

  /// Pushes a model to a remote destination and returns a [PushStatus].
  ///
  /// This method is used for non-streaming model pushing.
  ///
  /// - [request]: The [PushModelRequest] containing the model name and options.
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Returns a [Future] that resolves to a [PushStatus].
  ///
  /// Throws a [PushModelFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// final response = await client.pushModel(
  ///   request: PushModelRequest(
  ///     model: 'mistral-7b-finetuned',
  ///     insecure: false,
  ///     stream: true,
  ///   ),
  ///   cancelToken: cancelToken,
  /// );
  ///
  /// print(response);
  /// ```
  Future<PushStatus> pushModel({
    required PushModelRequest request,
    HttpCancelToken? cancelToken,
  }) async {
    try {
      final response = await _restService.post(
        path: '/push',
        data: request.copyWith(stream: false).toJson(),
        cancelToken: cancelToken,
      );

      return PushStatus.fromJson(response.data);
    } catch (e) {
      throw PushModelFailedException(e.toString());
    }
  }

  /// Pushes a model to a remote destination and returns a [Stream] of [PushStatus].
  ///
  /// This method is used for streaming the push status of a model.
  ///
  /// - [request]: The [PushModelRequest] containing the model name and options.
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Returns a [Stream] of [PushStatus].
  ///
  /// Throws a [PushModelStreamFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// final stream = client.pushModelStream(
  ///   request: PushModelRequest(
  ///     model: 'mistral-7b-finetuned',
  ///     insecure: false,
  ///     stream: true,
  ///   ),
  ///   cancelToken: cancelToken,
  /// );
  ///
  /// await for (final chunk in stream) {
  ///   print('Upload progress: ${chunk.status}');
  /// }
  /// ```
  Stream<PushStatus> pushModelStream({
    required PushModelRequest request,
    HttpCancelToken? cancelToken,
  }) async* {
    try {
      final stream = _restService.stream(
        path: '/push',
        data: request.copyWith(stream: true).toJson(),
        options: HttpOptions(responseType: 'stream'),
        cancelToken: cancelToken,
      );

      await for (final line in stream) {
        if (line.isEmpty) continue;

        yield PushStatus.fromJson(jsonDecode(line));
      }
    } catch (e) {
      throw PushModelStreamFailedException(e.toString());
    }
  }

  /// Retrieves detailed information about a specific model and returns
  /// a [ModelInfo].
  ///
  /// - [modelName]: The name of the model to retrieve information for.
  /// - [cancelToken]: An optional [HttpCancelToken] to cancel the request.
  ///
  /// Returns a [Future] that resolves to a [ModelInfo].
  ///
  /// Throws a [ShowModelFailedException] if the request fails.
  ///
  /// Example Usage:
  /// ```dart
  /// final modelInfo = await client.showModeInformation(
  ///   modelName: 'gpt-3',
  ///   cancelToken: cancelToken,
  /// );
  ///
  /// print('Model Info: ${modelInfo.modelfile}');
  /// ```
  Future<ModelInfo> showModeInformation({
    required String modelName,
    HttpCancelToken? cancelToken,
  }) async {
    try {
      final response = await _restService.post(
        path: '/show',
        data: <String, String>{
          'model': modelName,
        },
        cancelToken: cancelToken,
      );

      return ModelInfo.fromJson(response.data);
    } catch (e) {
      throw ShowModelFailedException(e.toString());
    }
  }
}
