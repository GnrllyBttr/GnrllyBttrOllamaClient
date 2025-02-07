// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pull_model_request.freezed.dart';
part 'pull_model_request.g.dart';

/// Represents a request to pull a model from a remote source.
///
/// This class defines the model to pull and optional parameters like
/// whether to use an insecure connection or stream the response.
///
/// Example Usage:
/// ```dart
/// final request = PullModelRequest(
///   model: 'gpt-3',
///   insecure: false,
///   stream: true,
/// );
/// ```
@freezed
class PullModelRequest with _$PullModelRequest {
  const factory PullModelRequest({
    /// The name of the model to pull.
    required String model,

    /// Whether to use an insecure connection.
    @JsonKey(includeIfNull: false) bool? insecure,

    /// Whether to stream the response.
    @JsonKey(includeIfNull: false) bool? stream,
  }) = _PullModelRequest;

  /// Creates a [PullModelRequest] instance from a JSON map.
  factory PullModelRequest.fromJson(Map<String, dynamic> json) =>
      _$PullModelRequestFromJson(json);
}
