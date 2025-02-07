// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/model_status.dart';

part 'model_status_list.freezed.dart';
part 'model_status_list.g.dart';

/// Represents a list of model statuses.
///
/// This class contains a list of [ModelStatus] instances.
///
/// Example Usage:
/// ```dart
/// final modelStatusList = ModelStatusList(
///   models: [
///     ModelStatus(
///       name: 'gpt-3',
///       model: 'gpt-3',
///       size: 1000,
///       digest: 'abc123',
///       details: ModelDetails(format: 'gguf', family: 'gpt'),
///       expiresAt: DateTime.now(),
///       sizeVram: 500,
///     ),
///   ],
/// );
/// ```
@freezed
class ModelStatusList with _$ModelStatusList {
  const factory ModelStatusList({
    /// The list of model statuses.
    required List<ModelStatus> models,
  }) = _ModelStatusList;

  /// Creates a [ModelStatusList] instance from a JSON map.
  factory ModelStatusList.fromJson(Map<String, dynamic> json) =>
      _$ModelStatusListFromJson(json);
}
