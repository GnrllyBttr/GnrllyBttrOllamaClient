// 🎯 Dart imports:
import 'dart:async';
import 'dart:convert';

// 📦 Package imports:
import 'package:faker/faker.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/gnrllybttr_ollama_client.dart';
import 'gnrllybttr_ollama_client_test.mocks.dart';

@GenerateMocks([GnrllyBttrRestService])
void main() {
  group('Given an GnrllyBttrOllamaClient instance', () {
    final faker = Faker();
    late MockGnrllyBttrRestService mockRestService;
    late GnrllyBttrOllamaClient gnrllyBttrOllamaClient;

    setUp(() {
      mockRestService = MockGnrllyBttrRestService();
      gnrllyBttrOllamaClient =
          GnrllyBttrOllamaClient(restService: mockRestService);
    });

    group('When creating an GnrllyBttrOllamaClient instance', () {
      test('Then it should use the provided RestService', () {
        final mockRestService = MockGnrllyBttrRestService();
        final client = GnrllyBttrOllamaClient(restService: mockRestService);

        expect(client.restService, equals(mockRestService));
      });

      test(
          'Then it should use the default DioService if no RestService is provided',
          () {
        final client = GnrllyBttrOllamaClient();

        expect(client.restService, isA<DioService>());
      });
    });

    group('When calling chat', () {
      test('Then it should send a POST request and return ChatResponse',
          () async {
        final request = ChatRequest(
          model: faker.lorem.word(),
          messages: <ChatMessage>[],
        );
        final response = ChatResponse(
          model: request.model,
          createdAt: DateTime.now(),
          message: ChatMessage(
            role: ChatMessageRole.assistant,
            content: faker.lorem.sentence(),
          ),
          done: true,
        );

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => HttpResponse(data: response.toJson()));

        final result = await gnrllyBttrOllamaClient.chat(request: request);

        expect(result, isA<ChatResponse>());

        verify(mockRestService.post(
          path: '/chat',
          data: request.copyWith(stream: false).toJson(),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test('Then it should throw ChatFailedException when the request fails',
          () {
        final request = ChatRequest(
          model: faker.lorem.word(),
          messages: <ChatMessage>[],
        );
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expect(
          () => gnrllyBttrOllamaClient.chat(request: request),
          throwsA(isA<ChatFailedException>()),
        );
      });
    });

    group('When calling chatStream', () {
      test('Then it should return a Stream of ChatResponse', () async {
        final request = ChatRequest(
          model: faker.lorem.word(),
          messages: <ChatMessage>[],
        );
        final response = ChatResponse(
          model: request.model,
          createdAt: DateTime.now(),
          message: ChatMessage(
            role: ChatMessageRole.assistant,
            content: faker.lorem.sentence(),
          ),
          done: true,
        );

        when(mockRestService.stream(
          path: anyNamed('path'),
          data: anyNamed('data'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer(
          (_) => Stream.fromIterable(<String>[
            jsonEncode(response.toJson()),
          ]),
        );

        final result = gnrllyBttrOllamaClient.chatStream(request: request);

        expect(await result.first, isA<ChatResponse>());

        verify(mockRestService.stream(
          path: '/chat',
          data: request.copyWith(stream: true).toJson(),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw ChatStreamFailedException when the request fails',
          () {
        final request = ChatRequest(
          model: faker.lorem.word(),
          messages: <ChatMessage>[],
        );
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.stream(
          path: anyNamed('path'),
          data: anyNamed('data'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expectLater(
          gnrllyBttrOllamaClient.chatStream(request: request),
          emitsError(isA<ChatStreamFailedException>()),
        );
      });
    });

    group('When calling checkBlobExists', () {
      test(
          'Then it should send a HEAD request and return true if the blob exists',
          () async {
        final digest = faker.guid.guid();

        when(mockRestService.head(
          path: anyNamed('path'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => HttpResponse(data: {}, statusCode: 200));

        final result = await gnrllyBttrOllamaClient.checkBlobExists(
          digest: digest,
        );

        expect(result, isTrue);

        verify(mockRestService.head(
          path: '/blobs/$digest',
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test('Then it should return false if the blob does not exist', () async {
        final digest = faker.guid.guid();

        when(mockRestService.head(
          path: anyNamed('path'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => HttpResponse(data: null, statusCode: 400));

        final result =
            await gnrllyBttrOllamaClient.checkBlobExists(digest: digest);

        expect(result, isFalse);

        verify(mockRestService.head(
          path: '/blobs/$digest',
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw BlobCheckFailedException when the request fails',
          () {
        final digest = faker.guid.guid();
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.head(
          path: anyNamed('path'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expect(
          () => gnrllyBttrOllamaClient.checkBlobExists(digest: digest),
          throwsA(isA<BlobCheckFailedException>()),
        );
      });
    });

    group('When calling copyModel', () {
      test('Then it should send a POST request', () async {
        final request = CopyModelRequest(
          source: faker.lorem.word(),
          destination: faker.lorem.word(),
        );

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => HttpResponse(data: {}, statusCode: 200));

        await gnrllyBttrOllamaClient.copyModel(request: request);

        verify(mockRestService.post(
          path: '/copy',
          data: request.toJson(),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw CopyModelFailedException when the request fails',
          () {
        final request = CopyModelRequest(
          source: faker.lorem.word(),
          destination: faker.lorem.word(),
        );
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expect(
          () => gnrllyBttrOllamaClient.copyModel(request: request),
          throwsA(isA<CopyModelFailedException>()),
        );
      });
    });

    group('When calling createModel', () {
      test('Then it should send a POST request and return CreateStatus',
          () async {
        final request = CreateModelRequest(
          model: faker.lorem.word(),
          from: faker.lorem.word(),
          files: <String, String>{
            faker.lorem.word(): faker.guid.guid(),
          },
          adapters: <String, String>{
            faker.lorem.word(): faker.guid.guid(),
          },
          template: faker.lorem.sentence(),
          license: faker.lorem.word(),
          system: faker.lorem.sentence(),
          parameters: <String, dynamic>{
            faker.lorem.word(): faker.lorem.word(),
          },
          messages: <ChatMessage>[
            ChatMessage(
              role: ChatMessageRole.user,
              content: faker.lorem.sentence(),
            ),
          ],
          stream: false,
          quantize: faker.lorem.word(),
        );
        final response = CreateStatus(status: faker.lorem.word());

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async =>
            HttpResponse(data: response.toJson(), statusCode: 200));

        final result = await gnrllyBttrOllamaClient.createModel(
          request: request,
        );

        expect(result, isA<CreateStatus>());

        verify(mockRestService.post(
          path: '/create',
          data: request.copyWith(stream: false).toJson(),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw CreateModelFailedException when the request fails',
          () {
        final request = CreateModelRequest(
          model: faker.lorem.word(),
          from: faker.lorem.word(),
          files: <String, String>{
            faker.lorem.word(): faker.guid.guid(),
          },
          adapters: <String, String>{
            faker.lorem.word(): faker.guid.guid(),
          },
          template: faker.lorem.sentence(),
          license: faker.lorem.word(),
          system: faker.lorem.sentence(),
          parameters: <String, dynamic>{
            faker.lorem.word(): faker.lorem.word(),
          },
          messages: <ChatMessage>[
            ChatMessage(
              role: ChatMessageRole.user,
              content: faker.lorem.sentence(),
            )
          ],
          stream: false,
          quantize: faker.lorem.word(),
        );
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expect(
          () => gnrllyBttrOllamaClient.createModel(request: request),
          throwsA(isA<CreateModelFailedException>()),
        );
      });
    });

    group('When calling createModelStream', () {
      test('Then it should return a Stream of CreateStatus', () async {
        final request = CreateModelRequest(model: faker.lorem.word());
        final status = faker.lorem.word();
        final responseJson = jsonEncode({'status': status});

        when(mockRestService.stream(
          path: anyNamed('path'),
          data: anyNamed('data'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) => Stream.fromIterable([responseJson]));

        final result =
            gnrllyBttrOllamaClient.createModelStream(request: request);

        expect(await result.first, isA<CreateStatus>());

        verify(mockRestService.stream(
          path: '/create',
          data: request.copyWith(stream: true).toJson(),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw CreateModelStreamFailedException when the request fails',
          () {
        final request = CreateModelRequest(model: faker.lorem.word());
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.stream(
          path: anyNamed('path'),
          data: anyNamed('data'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expectLater(
          gnrllyBttrOllamaClient.createModelStream(request: request),
          emitsError(isA<CreateModelStreamFailedException>()),
        );
      });
    });

    group('When calling deleteModel', () {
      test('Then it should send a DELETE request', () async {
        final request = DeleteModelRequest(model: faker.lorem.word());

        when(mockRestService.delete(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => HttpResponse(data: {}, statusCode: 200));

        await gnrllyBttrOllamaClient.deleteModel(request: request);

        verify(mockRestService.delete(
          path: '/delete',
          data: request.toJson(),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw DeleteModelFailedException when the request fails',
          () {
        final request = DeleteModelRequest(model: faker.lorem.word());
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.delete(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expect(
          () => gnrllyBttrOllamaClient.deleteModel(request: request),
          throwsA(isA<DeleteModelFailedException>()),
        );
      });
    });

    group('When calling embeddings', () {
      test('Then it should send a POST request and return EmbedResponse',
          () async {
        final request = EmbedRequest(
          model: faker.lorem.word(),
          input: faker.lorem.sentence(),
        );
        final response = EmbedResponse(
          model: request.model,
          embeddings: <List<double>>[
            List.generate(3, (index) => faker.randomGenerator.decimal()),
          ],
        );

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => HttpResponse(
              data: response.toJson(),
              statusCode: 200,
            ));

        final result =
            await gnrllyBttrOllamaClient.embeddings(request: request);

        expect(result, isA<EmbedResponse>());

        verify(mockRestService.post(
          path: '/embed',
          data: request.toJson(),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw EmbeddingsFailedException when the request fails',
          () {
        final request = EmbedRequest(
          model: faker.lorem.word(),
          input: faker.lorem.sentence(),
        );
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expect(
          () => gnrllyBttrOllamaClient.embeddings(request: request),
          throwsA(isA<EmbeddingsFailedException>()),
        );
      });
    });

    group('When calling generate', () {
      test('Then it should send a POST request and return GenerateResponse',
          () async {
        final request = GenerateRequest(
          model: faker.lorem.word(),
          prompt: faker.lorem.sentence(),
        );
        final response = GenerateResponse(
          model: request.model,
          createdAt: DateTime.now(),
          response: faker.lorem.sentence(),
          done: true,
        );

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => HttpResponse(
              data: response.toJson(),
              statusCode: 200,
            ));

        final result = await gnrllyBttrOllamaClient.generate(request: request);

        expect(result, isA<GenerateResponse>());

        verify(mockRestService.post(
          path: '/generate',
          data: request.copyWith(stream: false).toJson(),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw GenerateFailedException when the request fails',
          () {
        final request = GenerateRequest(
          model: faker.lorem.word(),
          prompt: faker.lorem.sentence(),
        );
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expect(
          () => gnrllyBttrOllamaClient.generate(request: request),
          throwsA(isA<GenerateFailedException>()),
        );
      });
    });

    group('When calling generateStream', () {
      test('Then it should return a Stream of GenerateResponse', () async {
        final request = GenerateRequest(
          model: faker.lorem.word(),
          prompt: faker.lorem.sentence(),
        );
        final response = GenerateResponse(
          model: request.model,
          createdAt: DateTime.now(),
          response: faker.lorem.sentence(),
          done: true,
        );

        when(mockRestService.stream(
          path: anyNamed('path'),
          data: anyNamed('data'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer(
            (_) => Stream.fromIterable([jsonEncode(response.toJson())]));

        final result = gnrllyBttrOllamaClient.generateStream(request: request);

        expect(await result.first, isA<GenerateResponse>());

        verify(mockRestService.stream(
          path: '/generate',
          data: request.copyWith(stream: true).toJson(),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw GenerateStreamFailedException when the request fails',
          () {
        final request = GenerateRequest(
          model: faker.lorem.word(),
          prompt: faker.lorem.sentence(),
        );
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.stream(
          path: anyNamed('path'),
          data: anyNamed('data'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expectLater(
          gnrllyBttrOllamaClient.generateStream(request: request),
          emitsError(isA<GenerateStreamFailedException>()),
        );
      });
    });

    group('When calling getVersion', () {
      test('Then it should send a GET request and return VersionResponse',
          () async {
        final response = VersionResponse(
          version: faker.guid.guid(),
        );

        when(mockRestService.get(
          path: anyNamed('path'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => HttpResponse(
              data: response.toJson(),
              statusCode: 200,
            ));

        final result = await gnrllyBttrOllamaClient.getVersion();

        expect(result, isA<VersionResponse>());

        verify(mockRestService.get(
          path: '/version',
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw GetVersionFailedException when the request fails',
          () {
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.get(
          path: anyNamed('path'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expect(
          () => gnrllyBttrOllamaClient.getVersion(),
          throwsA(isA<GetVersionFailedException>()),
        );
      });
    });

    group('When calling listModels', () {
      test('Then it should send a GET request and return ModelList', () async {
        final response = ModelList(
            models: List<Model>.generate(
          faker.randomGenerator.integer(10, min: 0),
          (index) {
            return Model(
              name: faker.lorem.word(),
              modifiedAt: faker.date.dateTime(),
              size: faker.randomGenerator.integer(1000000),
              digest: faker.guid.guid(),
              details: ModelDetails(
                format: faker.lorem.word(),
                family: faker.lorem.word(),
              ),
            );
          },
        ));

        when(mockRestService.get(
          path: anyNamed('path'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => HttpResponse(
              data: response.toJson(),
              statusCode: 200,
            ));

        final result = await gnrllyBttrOllamaClient.listModels();

        expect(result, isA<ModelList>());

        verify(mockRestService.get(
          path: '/tags',
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw ListModelsFailedException when the request fails',
          () {
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.get(
          path: anyNamed('path'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expect(
          () => gnrllyBttrOllamaClient.listModels(),
          throwsA(isA<ListModelsFailedException>()),
        );
      });
    });

    group('When calling listRunningModels', () {
      test('Then it should send a GET request and return ModelStatusList',
          () async {
        final response = ModelStatusList(
            models: List<ModelStatus>.generate(
          faker.randomGenerator.integer(10, min: 0),
          (index) {
            return ModelStatus(
              name: faker.lorem.word(),
              model: faker.lorem.word(),
              size: faker.randomGenerator.integer(1000000),
              digest: faker.guid.guid(),
              details: ModelDetails(
                format: faker.lorem.word(),
                family: faker.lorem.word(),
              ),
              expiresAt: faker.date.dateTime(),
              sizeVram: faker.randomGenerator.integer(1000),
            );
          },
        ));

        when(mockRestService.get(
          path: anyNamed('path'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => HttpResponse(
              data: response.toJson(),
              statusCode: 200,
            ));

        final result = await gnrllyBttrOllamaClient.listRunningModels();

        expect(result, isA<ModelStatusList>());

        verify(mockRestService.get(
          path: '/ps',
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw ListRunningModelsFailedException when the request fails',
          () {
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.get(
          path: anyNamed('path'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expect(
          () => gnrllyBttrOllamaClient.listRunningModels(),
          throwsA(isA<ListRunningModelsFailedException>()),
        );
      });
    });

    group('When calling pullModel', () {
      test('Then it should send a POST request and return PullStatus',
          () async {
        final request = PullModelRequest(model: faker.lorem.word());
        final response = PullStatus(status: faker.lorem.word());

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => HttpResponse(
              data: response.toJson(),
              statusCode: 200,
            ));

        final result = await gnrllyBttrOllamaClient.pullModel(request: request);

        expect(result, isA<PullStatus>());

        verify(mockRestService.post(
          path: '/pull',
          data: request.copyWith(stream: false).toJson(),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw PullModelFailedException when the request fails',
          () {
        final request = PullModelRequest(model: faker.lorem.word());
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expect(
          () => gnrllyBttrOllamaClient.pullModel(request: request),
          throwsA(isA<PullModelFailedException>()),
        );
      });
    });

    group('When calling pullModelStream', () {
      test('Then it should return a Stream of PullStatus', () async {
        final request = PullModelRequest(model: faker.lorem.word());
        final status = faker.lorem.word();
        final responseJson = jsonEncode({'status': status});

        when(mockRestService.stream(
          path: anyNamed('path'),
          data: anyNamed('data'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) => Stream.fromIterable([responseJson]));

        final result = gnrllyBttrOllamaClient.pullModelStream(request: request);

        expect(await result.first, isA<PullStatus>());

        verify(mockRestService.stream(
          path: '/pull',
          data: request.copyWith(stream: true).toJson(),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw PullModelStreamFailedException when the request fails',
          () {
        final request = PullModelRequest(model: faker.lorem.word());
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.stream(
          path: anyNamed('path'),
          data: anyNamed('data'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expectLater(
          gnrllyBttrOllamaClient.pullModelStream(request: request),
          emitsError(isA<PullModelStreamFailedException>()),
        );
      });
    });

    group('When calling pushBlob', () {
      test('Then it should send a POST request to push the blob', () async {
        final digest = faker.guid.guid();
        final data =
            List<int>.generate(10, (_) => faker.randomGenerator.integer(256));

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => HttpResponse(data: {}, statusCode: 200));

        await gnrllyBttrOllamaClient.pushBlob(digest: digest, data: data);

        verify(mockRestService.post(
          path: '/blobs/$digest',
          data: data,
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw BlobPushFailedException when the request fails',
          () {
        final digest = faker.guid.guid();
        final data =
            List<int>.generate(10, (_) => faker.randomGenerator.integer(256));
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expect(
          () => gnrllyBttrOllamaClient.pushBlob(digest: digest, data: data),
          throwsA(isA<BlobPushFailedException>()),
        );
      });
    });

    group('When calling pushModel', () {
      test('Then it should send a POST request and return PushStatus',
          () async {
        final request = PushModelRequest(model: faker.lorem.word());
        final response = PushStatus(status: faker.lorem.word());

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => HttpResponse(
              data: response.toJson(),
              statusCode: 200,
            ));

        final result = await gnrllyBttrOllamaClient.pushModel(request: request);

        expect(result, isA<PushStatus>());

        verify(mockRestService.post(
          path: '/push',
          data: request.copyWith(stream: false).toJson(),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw PushModelFailedException when the request fails',
          () {
        final request = PushModelRequest(model: faker.lorem.word());
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expect(
          () => gnrllyBttrOllamaClient.pushModel(request: request),
          throwsA(isA<PushModelFailedException>()),
        );
      });
    });

    group('When calling pushModelStream', () {
      test('Then it should return a Stream of PushStatus', () async {
        final request = PushModelRequest(model: faker.lorem.word());
        final status = faker.lorem.word();
        final responseJson = jsonEncode({'status': status});

        when(mockRestService.stream(
          path: anyNamed('path'),
          data: anyNamed('data'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) => Stream.fromIterable([responseJson]));

        final result = gnrllyBttrOllamaClient.pushModelStream(request: request);

        expect(await result.first, isA<PushStatus>());

        verify(mockRestService.stream(
          path: '/push',
          data: request.copyWith(stream: true).toJson(),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw PushModelStreamFailedException when the request fails',
          () {
        final request = PushModelRequest(model: faker.lorem.word());
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.stream(
          path: anyNamed('path'),
          data: anyNamed('data'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expectLater(
          gnrllyBttrOllamaClient.pushModelStream(request: request),
          emitsError(isA<PushModelStreamFailedException>()),
        );
      });
    });

    group('When calling showModel', () {
      test('Then it should send a POST request and return ModelInfo', () async {
        final modelName = faker.lorem.word();
        final response = ModelInfo(
          modelfile: faker.lorem.sentence(),
          parameters: faker.lorem.sentence(),
          template: faker.lorem.sentence(),
          details: ModelDetails(
            format: faker.lorem.word(),
            family: faker.lorem.word(),
          ),
        );

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => HttpResponse(
              data: response.toJson(),
              statusCode: 200,
            ));

        final result = await gnrllyBttrOllamaClient.showModeInformation(
            modelName: modelName);

        expect(result, isA<ModelInfo>());

        verify(mockRestService.post(
          path: '/show',
          data: {'model': modelName},
          cancelToken: anyNamed('cancelToken'),
        )).called(1);
      });

      test(
          'Then it should throw ShowModelFailedException when the request fails',
          () {
        final modelName = faker.lorem.word();
        final errorMessage = faker.lorem.sentence();

        when(mockRestService.post(
          path: anyNamed('path'),
          data: anyNamed('data'),
          cancelToken: anyNamed('cancelToken'),
        )).thenThrow(Exception(errorMessage));

        expect(
          () =>
              gnrllyBttrOllamaClient.showModeInformation(modelName: modelName),
          throwsA(isA<ShowModelFailedException>()),
        );
      });
    });
  });
}
