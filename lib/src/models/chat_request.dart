// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/chat_message.dart';
import 'package:gnrllybttr_ollama_client/src/models/model_options.dart';
import 'package:gnrllybttr_ollama_client/src/models/tool.dart';

part 'chat_request.freezed.dart';
part 'chat_request.g.dart';

/// Represents a request to generate a chat response using a model.
///
/// This class defines the parameters required to generate a chat response,
/// such as the model name, messages, and optional configuration options.
///
/// Example Usage:
/// ```dart
/// final request = ChatRequest(
///   model: 'gpt-3',
///   messages: [
///     ChatMessage(
///       role: ChatMessageRole.user,
///       content: 'Hello!',
///     ),
///   ],
/// );
/// ```
@freezed
class ChatRequest with _$ChatRequest {
  const factory ChatRequest({
    /// The name of the model to use.
    required String model,

    /// The list of messages in the chat conversation.
    required List<ChatMessage> messages,

    /// The list of tools available for the model to use.
    @JsonKey(includeIfNull: false) List<Tool>? tools,

    /// The format of the output (json or a JSON schema).
    @JsonKey(includeIfNull: false) dynamic format,

    /// Configuration options for the model.
    @JsonKey(includeIfNull: false) ModelOptions? options,

    /// Whether to stream the response. If false, the response will be returned
    /// as a single response object.
    @JsonKey(includeIfNull: false) bool? stream,

    /// Keep-alive duration for the request (default: 5m).
    @JsonKey(name: 'keep_alive', includeIfNull: false) String? keepAlive,
  }) = _ChatRequest;

  /// Creates a [ChatRequest] instance from a JSON map.
  factory ChatRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatRequestFromJson(json);
}
