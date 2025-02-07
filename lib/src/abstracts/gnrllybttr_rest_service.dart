// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';
import 'package:gnrllybttr_ollama_client/src/values/values.dart';

/// A contract for making HTTP requests in a Dart/Flutter application.
///
/// This abstract class provides a consistent interface for performing common
/// HTTP operations such as `GET`, `POST`, `PUT`, `DELETE`, and streaming data.
/// It is designed to be flexible, extensible, and easy to use, while abstracting
/// away the complexities of HTTP communication.
///
/// Implementations of this class should handle the underlying HTTP client logic,
/// such as setting headers, managing timeouts, and handling errors.
abstract class GnrllyBttrRestService {
  /// A list of request interceptors that can modify the request options
  /// before the request is sent.
  ///
  /// Request interceptors are useful for adding authentication tokens,
  /// logging requests, or modifying headers globally.
  final List<RequestInterceptor> requestInterceptors = [];

  /// A list of response interceptors that can modify the response
  /// before it is returned to the caller.
  ///
  /// Response interceptors are useful for logging responses, handling
  /// global error states, or transforming response data.
  final List<ResponseInterceptor> responseInterceptors = [];

  /// Adds a request interceptor to the list of interceptors.
  ///
  /// Request interceptors are executed in the order they are added.
  ///
  /// Example:
  /// ```dart
  /// service.addRequestInterceptor((options) async {
  ///   options.headers['Authorization'] = 'Bearer $token';
  /// });
  /// ```
  void addRequestInterceptor(RequestInterceptor interceptor) {
    requestInterceptors.add(interceptor);
  }

  /// Adds a response interceptor to the list of interceptors.
  ///
  /// Response interceptors are executed in the order they are added.
  ///
  /// Example:
  /// ```dart
  /// service.addResponseInterceptor((response) async {
  ///   if (response.statusCode == 401) {
  ///     throw UnauthorizedException();
  ///   }
  /// });
  /// ```
  void addResponseInterceptor(ResponseInterceptor interceptor) {
    responseInterceptors.add(interceptor);
  }

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
  Future<HttpResponse> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    HttpOptions? options,
    HttpCancelToken? cancelToken,
  });

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
  Future<HttpResponse> post({
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    HttpOptions? options,
    HttpCancelToken? cancelToken,
  });

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
  Future<HttpResponse> put({
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    HttpOptions? options,
    HttpCancelToken? cancelToken,
  });

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
  Future<HttpResponse> delete({
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    HttpOptions? options,
    HttpCancelToken? cancelToken,
  });

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
  Future<HttpResponse> head({
    required String path,
    Map<String, dynamic>? queryParameters,
    HttpOptions? options,
    HttpCancelToken? cancelToken,
  });

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
  Stream<String> stream({
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    HttpOptions? options,
    HttpCancelToken? cancelToken,
  });
}
