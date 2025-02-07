/// Represents configuration options for an HTTP request.
///
/// This class allows you to specify custom headers and the expected response type
/// for an HTTP request. It is used to configure requests made by the [RestService].
///
/// Example Usage:
/// ```dart
/// final options = HttpOptions(
///   headers: {'Authorization': 'Bearer token'},
///   responseType: 'json',
/// );
/// ```
class HttpOptions {
  /// Creates an [HttpOptions] instance.
  ///
  /// - [headers]: A map of custom headers to include in the request.
  ///   Defaults to an empty map.
  /// - [responseType]: The expected response type (e.g., 'json', 'text').
  ///   Defaults to `null`.
  const HttpOptions({
    this.headers = const <String, dynamic>{},
    this.responseType,
  });

  /// Custom headers to include in the HTTP request.
  ///
  /// Example:
  /// ```dart
  /// {'Authorization': 'Bearer token', 'Content-Type': 'application/json'}
  /// ```
  final Map<String, dynamic> headers;

  /// The expected response type for the HTTP request.
  ///
  /// Supported values include:
  /// - 'json': Parses the response as JSON.
  /// - 'text': Parses the response as plain text.
  /// - 'bytes': Returns the response as raw bytes.
  final String? responseType;
}
