// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'copy_model_request.freezed.dart';
part 'copy_model_request.g.dart';

/// Represents a request to copy a model.
///
/// This class defines the source and destination for the model copy operation.
///
/// Example Usage:
/// ```dart
/// final request = CopyModelRequest(
///   source: 'source-model',
///   destination: 'destination-model',
/// );
/// ```
@freezed
class CopyModelRequest with _$CopyModelRequest {
  const factory CopyModelRequest({
    /// The source model to copy.
    required String source,

    /// The destination for the copied model.
    required String destination,
  }) = _CopyModelRequest;

  /// Creates a [CopyModelRequest] instance from a JSON map.
  factory CopyModelRequest.fromJson(Map<String, dynamic> json) =>
      _$CopyModelRequestFromJson(json);
}
