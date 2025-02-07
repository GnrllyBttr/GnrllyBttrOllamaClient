// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/model_details.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// Represents a machine learning model.
///
/// This class contains metadata about a model, such as its name, size, digest,
/// and details.
///
/// Example Usage:
/// ```dart
/// final model = Model(
///   name: 'gpt-3',
///   modifiedAt: DateTime.now(),
///   size: 1000,
///   digest: 'abc123',
///   details: ModelDetails(format: 'gguf', family: 'gpt'),
/// );
/// ```
@freezed
class Model with _$Model {
  const factory Model({
    /// The name of the model.
    required String name,

    /// The timestamp when the model was last modified.
    @JsonKey(name: 'modified_at') required DateTime modifiedAt,

    /// The size of the model in bytes.
    required int size,

    /// The digest of the model.
    required String digest,

    /// The details of the model.
    required ModelDetails details,
  }) = _Model;

  /// Creates a [Model] instance from a JSON map.
  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);
}
