// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/gnrllybttr_ollama_client.dart';

Future<void> main() async {
  final client = GnrllyBttrOllamaClient();
  final cancelToken = HttpCancelToken();

  final model = 'llama3.2';
  final prompt = 'How many r in strawberry?';

  // Example for chat
  try {
    final chatResponse = await client.chat(
      request: ChatRequest(
        model: model,
        messages: <ChatMessage>[
          ChatMessage(
            role: ChatMessageRole.user,
            content: prompt,
          ),
        ],
      ),
      cancelToken: cancelToken,
    );

    print('Chat Response: ${chatResponse.message.content}');
  } on GnrllyBttrOllamaClientException catch (e) {
    print('Chat Error: ${e.message}');
  }

  // Example for chatStream
  try {
    final chatStream = client.chatStream(
      request: ChatRequest(
        model: model,
        messages: <ChatMessage>[
          ChatMessage(
            role: ChatMessageRole.user,
            content: prompt,
          ),
        ],
      ),
      cancelToken: cancelToken,
    );

    await for (final chunk in chatStream) {
      print('Chat Stream Message: ${chunk.message.content}');

      if (chunk.done) {
        print('Total duration: ${chunk.totalDuration}ns');
      }
    }
  } on GnrllyBttrOllamaClientException catch (e) {
    print('Chat Stream Error: ${e.message}');
  }

  // Example for checkBlobExists
  try {
    final exists = await client.checkBlobExists(
      digest: 'blobDigest',
      cancelToken: cancelToken,
    );

    print('Blob exists: $exists');
  } on BlobCheckFailedException catch (e) {
    print('Check Blob Exists Error: ${e.message}');
  }

  // Example for copyModel
  try {
    await client.copyModel(
      request: CopyModelRequest(
        source: 'source-model',
        destination: 'destination-model',
      ),
      cancelToken: cancelToken,
    );

    print('Model copied successfully');
  } on GnrllyBttrOllamaClientException catch (e) {
    print('Copy Model Error: ${e.message}');
  }

  // Example for createModelStream
  try {
    final createModelStream = client.createModelStream(
      request: CreateModelRequest(
        model: model,
        files: <String, String>{
          'file1': 'path/to/file1',
        },
      ),
      cancelToken: cancelToken,
    );

    await for (final status in createModelStream) {
      print('Create Model Status: ${status.status}');
    }
  } on GnrllyBttrOllamaClientException catch (e) {
    print('Create Model Stream Error: ${e.message}');
  }

  // Example for deleteModel
  try {
    await client.deleteModel(
      request: DeleteModelRequest(
        model: model,
      ),
      cancelToken: cancelToken,
    );

    print('Model deleted successfully');
  } on GnrllyBttrOllamaClientException catch (e) {
    print('Delete Model Error: ${e.message}');
  }

  // Example for embeddings
  try {
    final embedResponse = await client.embeddings(
      request: EmbedRequest(
        model: model,
        input: prompt,
      ),
      cancelToken: cancelToken,
    );

    print('Embeddings: ${embedResponse.embeddings}');
  } on GnrllyBttrOllamaClientException catch (e) {
    print('Embeddings Error: ${e.message}');
  }

  // Example for generate
  try {
    final generateResponse = await client.generate(
      request: GenerateRequest(
        model: model,
        prompt: prompt,
      ),
      cancelToken: cancelToken,
    );

    print('Generate Response: ${generateResponse.response}');
  } on GnrllyBttrOllamaClientException catch (e) {
    print('Generate Error: ${e.message}');
  }

  // Example for generateStream
  try {
    final generateStream = client.generateStream(
      request: GenerateRequest(
        model: model,
        prompt: prompt,
      ),
      cancelToken: cancelToken,
    );

    await for (final chunk in generateStream) {
      print('Generate Stream Response: ${chunk.response}');

      if (chunk.done) {
        print('Total duration: ${chunk.totalDuration}ns');
      }
    }
  } on GnrllyBttrOllamaClientException catch (e) {
    print('Generate Stream Error: ${e.message}');
  }

  // Example for getVersion
  try {
    final versionResponse = await client.getVersion(
      cancelToken: cancelToken,
    );

    print('Version: ${versionResponse.version}');
  } on GnrllyBttrOllamaClientException catch (e) {
    print('Get Version Error: ${e.message}');
  }

  // Example for listModels
  try {
    final modelList = await client.listModels(
      cancelToken: cancelToken,
    );

    for (final model in modelList.models) {
      print('Model: ${model.name}');
    }
  } on GnrllyBttrOllamaClientException catch (e) {
    print('List Models Error: ${e.message}');
  }

  // Example for listRunningModels
  try {
    final modelStatusList = await client.listRunningModels(
      cancelToken: cancelToken,
    );

    for (final modelStatus in modelStatusList.models) {
      print('Running Model: ${modelStatus.name}');
    }
  } on GnrllyBttrOllamaClientException catch (e) {
    print('List Running Models Error: ${e.message}');
  }

  // Example for pullModelStream
  try {
    final pullModelStream = client.pullModelStream(
      request: PullModelRequest(
        model: model,
      ),
      cancelToken: cancelToken,
    );

    await for (final status in pullModelStream) {
      print('Pull Model Status: ${status.status}');
    }
  } on GnrllyBttrOllamaClientException catch (e) {
    print('Pull Model Stream Error: ${e.message}');
  }

  // Example for pushModelStream
  try {
    final pushModelStream = client.pushModelStream(
      request: PushModelRequest(
        model: model,
      ),
      cancelToken: cancelToken,
    );

    await for (final status in pushModelStream) {
      print('Push Model Status: ${status.status}');
    }
  } on GnrllyBttrOllamaClientException catch (e) {
    print('Push Model Stream Error: ${e.message}');
  }

  // Example for pushBlob
  try {
    final blobData = <int>[1, 2, 3, 4, 5];

    await client.pushBlob(
      digest: 'blobDigest',
      data: blobData,
      cancelToken: cancelToken,
    );

    print('Blob pushed successfully');
  } on BlobPushFailedException catch (e) {
    print('Push Blob Error: ${e.message}');
  }

  // Example for showModel
  try {
    final modelInfo = await client.showModeInformation(
      modelName: model,
      cancelToken: cancelToken,
    );

    print('Model Info: ${modelInfo.modelfile}');
  } on GnrllyBttrOllamaClientException catch (e) {
    print('Show Model Error: ${e.message}');
  }
}
