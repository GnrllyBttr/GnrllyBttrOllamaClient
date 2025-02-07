// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/values/values.dart';
import 'tool_call.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

/// Represents a message in a chat conversation.
///
/// This class defines the fields for a chat message, such as the role,
/// content, and optional images and tool calls.
///
/// Example Usage:
/// ```dart
/// final message = ChatMessage(
///   role: ChatMessageRole.user,
///   content: 'Hello!',
/// );
/// ```
@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    /// The role of the message (system, user, assistant, or tool).
    required ChatMessageRole role,

    /// The content of the message.
    required String content,

    /// A list of images to include in the message (for multimodal models).
    @JsonKey(includeIfNull: false) List<String>? images,

    /// A list of tool calls that the model wants to use.
    @JsonKey(name: 'tool_calls', includeIfNull: false)
    List<ToolCall>? toolCalls,
  }) = _ChatMessage;

  /// Creates a [ChatMessage] instance from a JSON map.
  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}
