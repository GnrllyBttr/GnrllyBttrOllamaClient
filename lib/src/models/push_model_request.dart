// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_model_request.freezed.dart';
part 'push_model_request.g.dart';

/// Represents a request to push a model to a remote destination.
///
/// This class defines the model to push and optional parameters like
/// whether to use an insecure connection or stream the response.
///
/// Example Usage:
/// ```dart
/// final request = PushModelRequest(
///   model: 'gpt-3',
///   insecure: false,
///   stream: true,
/// );
/// ```
@freezed
class PushModelRequest with _$PushModelRequest {
  const factory PushModelRequest({
    /// The name of the model to push.
    required String model,

    /// Whether to use an insecure connection.
    @JsonKey(includeIfNull: false) bool? insecure,

    /// Whether to stream the response.
    @JsonKey(includeIfNull: false) bool? stream,
  }) = _PushModelRequest;

  /// Creates a [PushModelRequest] instance from a JSON map.
  factory PushModelRequest.fromJson(Map<String, dynamic> json) =>
      _$PushModelRequestFromJson(json);
}
