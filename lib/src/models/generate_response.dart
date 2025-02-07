// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_response.freezed.dart';
part 'generate_response.g.dart';

/// Represents the response from a text generation request.
///
/// This class contains the generated text, metadata, and performance metrics.
///
/// Example Usage:
/// ```dart
/// final response = GenerateResponse(
///   model: 'gpt-3',
///   createdAt: DateTime.now(),
///   response: 'Hello, world!',
///   done: true,
/// );
/// ```
@freezed
class GenerateResponse with _$GenerateResponse {
  const factory GenerateResponse({
    /// The name of the model used.
    required String model,

    /// The timestamp when the response was created.
    @JsonKey(name: 'created_at') required DateTime createdAt,

    /// The generated text.
    required String response,

    /// Whether the generation is complete.
    required bool done,

    /// A list of context tokens.
    @JsonKey(includeIfNull: false) List<int>? context,

    /// Total duration of the generation process.
    @JsonKey(name: 'total_duration', includeIfNull: false) int? totalDuration,

    /// Duration spent loading the model.
    @JsonKey(name: 'load_duration', includeIfNull: false) int? loadDuration,

    /// Number of tokens evaluated in the prompt.
    @JsonKey(name: 'prompt_eval_count', includeIfNull: false)
    int? promptEvalCount,

    /// Duration spent evaluating the prompt.
    @JsonKey(name: 'prompt_eval_duration', includeIfNull: false)
    int? promptEvalDuration,

    /// Number of tokens evaluated during generation.
    @JsonKey(name: 'eval_count', includeIfNull: false) int? evalCount,

    /// Duration spent evaluating tokens during generation.
    @JsonKey(name: 'eval_duration', includeIfNull: false) int? evalDuration,
  }) = _GenerateResponse;

  /// Creates a [GenerateResponse] instance from a JSON map.
  factory GenerateResponse.fromJson(Map<String, dynamic> json) =>
      _$GenerateResponseFromJson(json);
}
