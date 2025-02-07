// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'embed_response.freezed.dart';
part 'embed_response.g.dart';

/// Represents the response from an embedding request.
///
/// This class contains the generated embeddings, metadata, and performance metrics.
///
/// Example Usage:
/// ```dart
/// final response = EmbedResponse(
///   model: 'gpt-3',
///   embeddings: [
///     [0.1, 0.2, 0.3],
///     [0.4, 0.5, 0.6],
///   ],
/// );
/// ```
@freezed
class EmbedResponse with _$EmbedResponse {
  const factory EmbedResponse({
    /// The name of the model used.
    required String model,

    /// The generated embeddings.
    required List<List<double>> embeddings,

    /// Total duration of the embedding process.
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
  }) = _EmbedResponse;

  /// Creates an [EmbedResponse] instance from a JSON map.
  factory EmbedResponse.fromJson(Map<String, dynamic> json) =>
      _$EmbedResponseFromJson(json);
}
