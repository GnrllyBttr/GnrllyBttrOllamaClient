// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/model_details.dart';

part 'model_info.freezed.dart';
part 'model_info.g.dart';

/// Represents detailed information about a machine learning model.
///
/// This class contains the model's modelfile, parameters, template, and details.
///
/// Example Usage:
/// ```dart
/// final modelInfo = ModelInfo(
///   modelfile: '...',
///   parameters: '...',
///   template: '...',
///   details: ModelDetails(format: 'gguf', family: 'gpt'),
/// );
/// ```
@freezed
class ModelInfo with _$ModelInfo {
  const factory ModelInfo({
    /// The modelfile of the model.
    required String modelfile,

    /// The parameters of the model.
    required String parameters,

    /// The template of the model.
    required String template,

    /// The details of the model.
    required ModelDetails details,

    /// Additional information about the model.
    @JsonKey(includeIfNull: false) Map<String, dynamic>? modelInfo,
  }) = _ModelInfo;

  /// Creates a [ModelInfo] instance from a JSON map.
  factory ModelInfo.fromJson(Map<String, dynamic> json) =>
      _$ModelInfoFromJson(json);
}
