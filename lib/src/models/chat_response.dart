// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/chat_message.dart';

part 'chat_response.freezed.dart';
part 'chat_response.g.dart';

/// Represents the response from a chat request.
///
/// This class contains the generated message, metadata, and performance metrics.
///
/// Example Usage:
/// ```dart
/// final response = ChatResponse(
///   model: 'gpt-3',
///   createdAt: DateTime.now(),
///   message: ChatMessage(
///     role: ChatMessageRole.assistant,
///     content: 'Hello, how can I help you?',
///   ),
///   done: true,
/// );
/// ```
@freezed
class ChatResponse with _$ChatResponse {
  const factory ChatResponse({
    /// The name of the model used.
    required String model,

    /// The timestamp when the response was created.
    @JsonKey(name: 'created_at') required DateTime createdAt,

    /// The generated message.
    required ChatMessage message,

    /// Whether the generation is complete.
    required bool done,

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
  }) = _ChatResponse;

  /// Creates a [ChatResponse] instance from a JSON map.
  factory ChatResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatResponseFromJson(json);
}
