/// Represents the response from an HTTP request.
///
/// This class encapsulates the data, status code, status message, and headers
/// returned by an HTTP request. It is returned by methods in the [RestService].
///
/// Example Usage:
/// ```dart
/// final response = await restService.get(path: '/api/data');
/// print('Status: ${response.statusCode}, Data: ${response.data}');
/// ```
class HttpResponse {
  /// Creates an [HttpResponse] instance.
  ///
  /// - [data]: The response body data, which can be of any type (e.g., JSON, text).
  /// - [statusCode]: The HTTP status code of the response (e.g., 200, 404).
  /// - [statusMessage]: The HTTP status message (e.g., 'OK', 'Not Found').
  /// - [headers]: A map of headers included in the response.
  const HttpResponse({
    required this.data,
    this.statusCode,
    this.statusMessage,
    this.headers = const <String, dynamic>{},
  });

  /// The response body data.
  ///
  /// The type of this data depends on the `responseType` specified in the request.
  /// For example, if the response type is 'json', this will be a parsed JSON object.
  final dynamic data;

  /// The HTTP status code of the response.
  ///
  /// Common status codes include:
  /// - 200: OK
  /// - 404: Not Found
  /// - 500: Internal Server Error
  final int? statusCode;

  /// The HTTP status message of the response.
  ///
  /// Example: 'OK', 'Not Found', 'Internal Server Error'.
  final String? statusMessage;

  /// A map of headers included in the response.
  ///
  /// Example:
  /// ```dart
  /// {'Content-Type': 'application/json', 'Content-Length': '123'}
  /// ```
  final Map<String, dynamic> headers;
}
