/// A token that can be used to cancel an ongoing HTTP request.
///
/// This class provides a mechanism to cancel HTTP requests in progress.
/// It is particularly useful for long-running requests or when the user
/// navigates away from the current screen, ensuring that resources are
/// not wasted on unnecessary network operations.
///
/// Example Usage:
/// ```dart
/// final cancelToken = HttpCancelToken();
///
/// // Start a long-running request
/// restService.get(
///   path: '/api/data',
///   cancelToken: cancelToken,
/// );
///
/// // Cancel the request if needed
/// cancelToken.cancel();
/// ```
///
/// See also:
/// - [RestService], which uses this token to support cancellable requests.
class HttpCancelToken {
  /// Creates an [HttpCancelToken].
  ///
  /// - [isCancelled]: Initial cancellation state. Defaults to `false`.
  HttpCancelToken({
    bool isCancelled = false,
  }) : _isCancelled = isCancelled;

  /// Internal flag to track whether the token has been cancelled.
  bool _isCancelled;

  /// Whether the token has been cancelled.
  ///
  /// This property is `true` if [cancel] has been called, otherwise `false`.
  bool get isCancelled => _isCancelled;

  /// Cancels the token.
  ///
  /// Once cancelled, any HTTP request associated with this token should
  /// be aborted. This method sets the [_isCancelled] flag to `true`.
  ///
  /// Example:
  /// ```dart
  /// cancelToken.cancel();
  /// ```
  void cancel() {
    _isCancelled = true;
  }
}
