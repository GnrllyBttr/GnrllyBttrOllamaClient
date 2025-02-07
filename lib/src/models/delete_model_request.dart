// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_model_request.freezed.dart';
part 'delete_model_request.g.dart';

/// Represents a request to delete a model.
///
/// This class defines the model to delete.
///
/// Example Usage:
/// ```dart
/// final request = DeleteModelRequest(
///   model: 'my-model',
/// );
/// ```
@freezed
class DeleteModelRequest with _$DeleteModelRequest {
  const factory DeleteModelRequest({
    /// The name of the model to delete.
    required String model,
  }) = _DeleteModelRequest;

  /// Creates a [DeleteModelRequest] instance from a JSON map.
  factory DeleteModelRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteModelRequestFromJson(json);
}
