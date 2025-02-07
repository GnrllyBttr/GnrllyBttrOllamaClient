// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/model_details.dart';

part 'model_status.freezed.dart';
part 'model_status.g.dart';

/// Represents the status of a machine learning model.
///
/// This class contains metadata about a model's status, such as its name, size,
/// digest, details, expiration date, and VRAM size.
///
/// Example Usage:
/// ```dart
/// final modelStatus = ModelStatus(
///   name: 'gpt-3',
///   model: 'gpt-3',
///   size: 1000,
///   digest: 'abc123',
///   details: ModelDetails(format: 'gguf', family: 'gpt'),
///   expiresAt: DateTime.now(),
///   sizeVram: 500,
/// );
/// ```
@freezed
class ModelStatus with _$ModelStatus {
  const factory ModelStatus({
    /// The name of the model.
    required String name,

    /// The name of the model (alias for `name`).
    required String model,

    /// The size of the model in bytes.
    required int size,

    /// The digest of the model.
    required String digest,

    /// The details of the model.
    required ModelDetails details,

    /// The expiration date of the model.
    @JsonKey(name: 'expires_at') required DateTime expiresAt,

    /// The size of the model in VRAM.
    @JsonKey(name: 'size_vram') required int sizeVram,
  }) = _ModelStatus;

  /// Creates a [ModelStatus] instance from a JSON map.
  factory ModelStatus.fromJson(Map<String, dynamic> json) =>
      _$ModelStatusFromJson(json);
}
