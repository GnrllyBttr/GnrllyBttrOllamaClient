// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/models.dart';

/// A typedef for a request interceptor.
///
/// Request interceptors are asynchronous functions that take [HttpOptions] as
/// input and can modify the request options before the request is sent.
///
/// Example:
/// ```dart
/// Future<void> myRequestInterceptor(HttpOptions options) async {
///   options.headers['Authorization'] = 'Bearer $token';
/// }
/// ```
typedef RequestInterceptor = Future<void> Function(HttpOptions options);

/// A typedef for a response interceptor.
///
/// Response interceptors are asynchronous functions that take [HttpResponse] as
/// input and can modify the response before it is returned to the caller.
///
/// Example:
/// ```dart
/// Future<void> myResponseInterceptor(HttpResponse response) async {
///   if (response.statusCode == 401) {
///     throw UnauthorizedException();
///   }
/// }
/// ```
typedef ResponseInterceptor = Future<void> Function(HttpResponse response);
