// 🎯 Dart imports:
import 'dart:convert';

// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/abstracts/abstracts.dart';
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

/// A concrete implementation of [GnrllyBttrRestService] using the Dio HTTP client.
///
/// This class provides methods for making HTTP requests (GET, POST, PUT, DELETE)
/// and streaming data. It uses the Dio package under the hood for handling
/// network requests and responses.
///
/// Example Usage:
/// ```dart
/// final dioService = DioService();
/// final response = await dioService.get(path: '/api/data');
/// print('Data: ${response.data}');
/// ```
class DioService extends GnrllyBttrRestService {
  /// Creates a [DioService] instance.
  ///
  /// - [dio]: An optional Dio instance. If not provided, a default instance
  ///   with base URL `'http://localhost:11434/api'`, connection timeout of 10 seconds,
  ///   and receive timeout of 300 seconds will be used.
  DioService({Dio? dio})
      : _dio = dio ??
            Dio(BaseOptions(
              baseUrl: 'http://localhost:11434/api',
              connectTimeout: const Duration(seconds: 10),
              receiveTimeout: const Duration(seconds: 300),
            ));

  /// The Dio HTTP client used for making requests.
  final Dio _dio;

  /// Sends an HTTP GET request to the specified [path].
  ///
  /// This method is typically used to retrieve data from the server.
  ///
  /// - [path]: The endpoint path for the request (e.g., `/api/users`).
  /// - [queryParameters]: Optional query parameters to include in the request URL.
  /// - [options]: Additional HTTP options such as headers or timeouts.
  /// - [cancelToken]: A token that can be used to cancel the request.
  ///
  /// Returns a [Future] that resolves to an [HttpResponse] containing the
  /// response data, status code, and other metadata.
  @override
  Future<HttpResponse> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    HttpOptions? options,
    HttpCancelToken? cancelToken,
  }) async {
    final response = await _dio.get(
      path,
      queryParameters: queryParameters,
      options: _toDioOptions(options),
      cancelToken: _toDioCancelToken(cancelToken),
    );

    return _toHttpResponse(response);
  }

  /// Sends an HTTP POST request to the specified [path].
  ///
  /// This method is typically used to submit data to the server, such as
  /// creating a new resource.
  ///
  /// - [path]: The endpoint path for the request (e.g., `/api/users`).
  /// - [data]: The request body data to send. This can be a `Map`, `List`, or
  ///   any serializable object.
  /// - [queryParameters]: Optional query parameters to include in the request URL.
  /// - [options]: Additional HTTP options such as headers or timeouts.
  /// - [cancelToken]: A token that can be used to cancel the request.
  ///
  /// Returns a [Future] that resolves to an [HttpResponse] containing the
  /// response data, status code, and other metadata.
  @override
  Future<HttpResponse> post({
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    HttpOptions? options,
    HttpCancelToken? cancelToken,
  }) async {
    final response = await _dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: _toDioOptions(options),
      cancelToken: _toDioCancelToken(cancelToken),
    );

    return _toHttpResponse(response);
  }

  /// Sends an HTTP PUT request to the specified [path].
  ///
  /// This method is typically used to update an existing resource on the server.
  ///
  /// - [path]: The endpoint path for the request (e.g., `/api/users/1`).
  /// - [data]: The request body data to send. This can be a `Map`, `List`, or
  ///   any serializable object.
  /// - [queryParameters]: Optional query parameters to include in the request URL.
  /// - [options]: Additional HTTP options such as headers or timeouts.
  /// - [cancelToken]: A token that can be used to cancel the request.
  ///
  /// Returns a [Future] that resolves to an [HttpResponse] containing the
  /// response data, status code, and other metadata.
  @override
  Future<HttpResponse> put({
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    HttpOptions? options,
    HttpCancelToken? cancelToken,
  }) async {
    final response = await _dio.put(
      path,
      data: data,
      queryParameters: queryParameters,
      options: _toDioOptions(options),
      cancelToken: _toDioCancelToken(cancelToken),
    );

    return _toHttpResponse(response);
  }

  /// Sends an HTTP DELETE request to the specified [path].
  ///
  /// This method is typically used to delete a resource on the server.
  ///
  /// - [path]: The endpoint path for the request (e.g., `/api/users/1`).
  /// - [data]: Optional request body data to send. This can be a `Map`, `List`,
  ///   or any serializable object.
  /// - [queryParameters]: Optional query parameters to include in the request URL.
  /// - [options]: Additional HTTP options such as headers or timeouts.
  /// - [cancelToken]: A token that can be used to cancel the request.
  ///
  /// Returns a [Future] that resolves to an [HttpResponse] containing the
  /// response data, status code, and other metadata.
  @override
  Future<HttpResponse> delete({
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    HttpOptions? options,
    HttpCancelToken? cancelToken,
  }) async {
    final response = await _dio.delete(
      path,
      data: data,
      queryParameters: queryParameters,
      options: _toDioOptions(options),
      cancelToken: _toDioCancelToken(cancelToken),
    );

    return _toHttpResponse(response);
  }

  /// Sends an HTTP HEAD request to the specified [path].
  ///
  /// This method is typically used to check if a resource exists on the server.
  ///
  /// - [path]: The endpoint path for the request (e.g., `/api/resource`).
  /// - [queryParameters]: Optional query parameters to include in the request URL.
  /// - [options]: Additional HTTP options such as headers or timeouts.
  /// - [cancelToken]: A token that can be used to cancel the request.
  ///
  /// Returns a [Future] that resolves to an [HttpResponse] containing the
  /// response data, status code, and other metadata.
  @override
  Future<HttpResponse> head({
    required String path,
    Map<String, dynamic>? queryParameters,
    HttpOptions? options,
    HttpCancelToken? cancelToken,
  }) async {
    final response = await _dio.head(
      path,
      queryParameters: queryParameters,
      options: _toDioOptions(options),
      cancelToken: _toDioCancelToken(cancelToken),
    );

    return _toHttpResponse(response);
  }

  /// Streams data from an HTTP request to the specified [path].
  ///
  /// This method is typically used for real-time data streaming, such as
  /// receiving server-sent events (SSE) or chunked responses.
  ///
  /// - [path]: The endpoint path for the request (e.g., `/api/stream`).
  /// - [data]: Optional request body data to send. This can be a `Map`, `List`,
  ///   or any serializable object.
  /// - [queryParameters]: Optional query parameters to include in the request URL.
  /// - [options]: Additional HTTP options such as headers or timeouts.
  /// - [cancelToken]: A token that can be used to cancel the request.
  ///
  /// Returns a [Stream] of [String] that emits data chunks as they are received
  /// from the server.
  @override
  Stream<String> stream({
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    HttpOptions? options,
    HttpCancelToken? cancelToken,
  }) async* {
    final response = await _dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: _toDioOptions(options)?.copyWith(
        responseType: ResponseType.stream,
      ),
      cancelToken: _toDioCancelToken(cancelToken),
    );

    final stream = response.data.stream
        .cast<List<int>>()
        .transform(utf8.decoder)
        .transform(const LineSplitter());

    await for (final line in stream) {
      if (line.isEmpty) continue;

      yield line;
    }
  }

  /// Converts [HttpOptions] to Dio's [Options].
  Options? _toDioOptions(HttpOptions? options) {
    return options != null
        ? Options(
            headers: options.headers,
            responseType: options.responseType != null
                ? ResponseType.values.firstWhere((responseType) {
                    return responseType.toString() ==
                        'ResponseType.${options.responseType}';
                  })
                : ResponseType.json,
          )
        : null;
  }

  /// Converts [HttpCancelToken] to Dio's [CancelToken].
  CancelToken? _toDioCancelToken(HttpCancelToken? cancelToken) {
    return cancelToken != null ? CancelToken() : null;
  }

  /// Converts Dio's [Response] to [HttpResponse].
  HttpResponse _toHttpResponse(Response response) {
    return HttpResponse(
      data: response.data,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      headers: response.headers.map,
    );
  }
}
