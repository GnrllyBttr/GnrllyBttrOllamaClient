// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/model.dart';

part 'model_list.freezed.dart';
part 'model_list.g.dart';

/// Represents a list of models.
///
/// This class contains a list of [Model] instances.
///
/// Example Usage:
/// ```dart
/// final modelList = ModelList(
///   models: [
///     Model(
///       name: 'gpt-3',
///       modifiedAt: DateTime.now(),
///       size: 1000,
///       digest: 'abc123',
///       details: ModelDetails(format: 'gguf', family: 'gpt'),
///     ),
///   ],
/// );
/// ```
@freezed
class ModelList with _$ModelList {
  const factory ModelList({
    /// The list of models.
    required List<Model> models,
  }) = _ModelList;

  /// Creates a [ModelList] instance from a JSON map.
  factory ModelList.fromJson(Map<String, dynamic> json) =>
      _$ModelListFromJson(json);
}
