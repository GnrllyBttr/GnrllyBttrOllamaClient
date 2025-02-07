// 🎯 Dart imports:
import 'dart:convert';

// 📦 Package imports:
import 'package:dio/dio.dart';
import 'package:faker/faker.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';
import 'package:gnrllybttr_ollama_client/src/services/services.dart';
import 'dio_service_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  final faker = Faker();
  final mockDio = MockDio();
  late DioService dioService;

  setUp(() {
    dioService = DioService(dio: mockDio);
  });

  group('Given a DioService instance', () {
    group('When sending a GET request', () {
      test(
          'Then I expect the GET method to be called with the correct parameters',
          () async {
        final path = faker.internet.httpUrl();
        final queryParameters = _generateFakeQueryParameters();
        final options = _generateFakeHttpOptions();
        final cancelToken = HttpCancelToken();

        final fakeDioResponse = _generateFakeDioResponse({'result': 'w6S1q'});
        final expectedResponse = _generateFakeHttpResponse({'result': 'w6S1q'});

        when(mockDio.get(
          any,
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
        )).thenAnswer((_) async => fakeDioResponse);

        final response = await dioService.get(
          path: path,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
        );

        verify(mockDio.get(
          any,
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
        )).called(1);

        expect(response.data, equals(expectedResponse.data));
        expect(response.statusCode, equals(expectedResponse.statusCode));
      });
    });

    group('When sending a POST request', () {
      test(
          'Then I expect the POST method to be called with the correct parameters',
          () async {
        final path = faker.internet.httpUrl();
        final data = {'key': faker.randomGenerator.string(10)};
        final queryParameters = _generateFakeQueryParameters();
        final options = _generateFakeHttpOptions();
        final cancelToken = HttpCancelToken();

        final fakeDioResponse =
            _generateFakeDioResponse({'result': 'q[\\4_|`'});
        final expectedResponse =
            _generateFakeHttpResponse({'result': 'q[\\4_|`'});

        when(mockDio.post(
          any,
          data: anyNamed('data'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onSendProgress: anyNamed('onSendProgress'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
        )).thenAnswer((_) async => fakeDioResponse);

        final response = await dioService.post(
          path: path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
        );

        verify(mockDio.post(
          any,
          data: anyNamed('data'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
          onSendProgress: anyNamed('onSendProgress'),
          onReceiveProgress: anyNamed('onReceiveProgress'),
        )).called(1);

        expect(response.data, equals(expectedResponse.data));
      });
    });

    group('When sending a PUT request', () {
      test(
          'Then I expect the PUT method to be called with the correct parameters',
          () async {
        final path = faker.internet.httpUrl();
        final data = {'key': faker.randomGenerator.string(10)};
        final queryParameters = _generateFakeQueryParameters();
        final options = _generateFakeHttpOptions();
        final cancelToken = HttpCancelToken();

        final fakeDioResponse = _generateFakeDioResponse({'result': 'updated'});
        final expectedResponse =
            _generateFakeHttpResponse({'result': 'updated'});

        when(mockDio.put(
          any,
          data: anyNamed('data'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => fakeDioResponse);

        final response = await dioService.put(
          path: path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
        );

        verify(mockDio.put(
          any,
          data: anyNamed('data'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);

        expect(response.data, equals(expectedResponse.data));
      });
    });

    group('When sending a DELETE request', () {
      test(
          'Then I expect the DELETE method to be called with the correct parameters',
          () async {
        final path = faker.internet.httpUrl();
        final data = {'key': faker.randomGenerator.string(10)};
        final queryParameters = _generateFakeQueryParameters();
        final options = _generateFakeHttpOptions();
        final cancelToken = HttpCancelToken();

        final fakeDioResponse = _generateFakeDioResponse({'result': 'Z|GTFpk'});
        final expectedResponse =
            _generateFakeHttpResponse({'result': 'Z|GTFpk'});

        when(mockDio.delete(
          any,
          data: anyNamed('data'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => fakeDioResponse);

        final response = await dioService.delete(
          path: path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
        );

        verify(mockDio.delete(
          any,
          data: anyNamed('data'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);

        expect(response.data, equals(expectedResponse.data));
      });
    });

    group('When sending a HEAD request', () {
      test(
          'Then I expect the HEAD method to be called with the correct parameters',
          () async {
        final path = faker.internet.httpUrl();
        final queryParameters = _generateFakeQueryParameters();
        final options = _generateFakeHttpOptions();
        final cancelToken = HttpCancelToken();

        final fakeDioResponse = _generateFakeDioResponse(null);
        final expectedResponse = _generateFakeHttpResponse(null);

        when(mockDio.head(
          any,
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => fakeDioResponse);

        final response = await dioService.head(
          path: path,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
        );

        verify(mockDio.head(
          any,
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).called(1);

        expect(response.statusCode, equals(expectedResponse.statusCode));
      });
    });

    group('When streaming data', () {
      test(
          'Then I expect the stream method to be called with the correct parameters',
          () async {
        final path = faker.internet.httpUrl();
        final data = {'key': faker.randomGenerator.string(10)};
        final queryParameters = _generateFakeQueryParameters();
        final options = _generateFakeHttpOptions();
        final cancelToken = HttpCancelToken();

        final fakeDioResponse = Response(
          data: ResponseBody.fromBytes(
            utf8.encode('line1\nline2\n'),
            200,
            headers: <String, List<String>>{
              'content-type': ['text/plain'],
            },
          ),
          requestOptions: RequestOptions(path: path),
        );

        when(mockDio.post(
          any,
          data: anyNamed('data'),
          queryParameters: anyNamed('queryParameters'),
          options: anyNamed('options'),
          cancelToken: anyNamed('cancelToken'),
        )).thenAnswer((_) async => fakeDioResponse);

        final stream = dioService.stream(
          path: path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
        );

        final result = await stream.toList();

        expect(result, equals(['line1', 'line2']));
      });
    });

    group('When adding interceptors', () {
      test('addRequestInterceptor should add a request interceptor', () async {
        interceptor(HttpOptions options) async {}

        dioService.addRequestInterceptor(interceptor);

        expect(dioService.requestInterceptors, contains(interceptor));
      });

      test('addResponseInterceptor should add a response interceptor',
          () async {
        interceptor(HttpResponse response) async {}

        dioService.addResponseInterceptor(interceptor);

        expect(dioService.responseInterceptors, contains(interceptor));
      });
    });
  });
}

Map<String, dynamic> _generateFakeQueryParameters() {
  return <String, dynamic>{
    'page': faker.randomGenerator.integer(10),
    'limit': faker.randomGenerator.integer(20)
  };
}

HttpOptions _generateFakeHttpOptions() {
  return HttpOptions(
    headers: <String, dynamic>{
      'Content-Type': 'application/json',
    },
    responseType: 'json',
  );
}

HttpResponse _generateFakeHttpResponse(Map<String, dynamic>? data) {
  return HttpResponse(data: data, statusCode: 200);
}

Response _generateFakeDioResponse(Map<String, dynamic>? data) {
  return Response(
    data: data,
    statusCode: 200,
    requestOptions: RequestOptions(path: '/api/data'),
  );
}
