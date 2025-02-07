// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_details.freezed.dart';
part 'model_details.g.dart';

/// Represents the details of a machine learning model.
///
/// This class contains information about the model's format, family, and
/// other technical details.
///
/// Example Usage:
/// ```dart
/// final details = ModelDetails(
///   format: 'gguf',
///   family: 'gpt',
///   families: ['gpt'],
///   parameterSize: '7B',
///   quantizationLevel: 'Q4_0',
/// );
/// ```
@freezed
class ModelDetails with _$ModelDetails {
  const factory ModelDetails({
    /// The format of the model.
    required String format,

    /// The family of the model.
    required String family,

    /// The families of the model.
    @JsonKey(includeIfNull: false) List<String>? families,

    /// The size of the model's parameters.
    @JsonKey(name: 'parameter_size', includeIfNull: false)
    String? parameterSize,

    /// The quantization level of the model.
    @JsonKey(name: 'quantization_level', includeIfNull: false)
    String? quantizationLevel,
  }) = _ModelDetails;

  /// Creates a [ModelDetails] instance from a JSON map.
  factory ModelDetails.fromJson(Map<String, dynamic> json) =>
      _$ModelDetailsFromJson(json);
}
