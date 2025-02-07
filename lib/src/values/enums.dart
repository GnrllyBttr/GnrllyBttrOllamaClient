/// Represents the role of a message in a chat conversation.
///
/// This enum is used to distinguish between different types of messages
/// in a chat-based interaction, such as system messages, user messages,
/// assistant messages, and tool messages.
///
/// Example Usage:
/// ```dart
/// final message = ChatMessage(role: ChatMessageRole.user, content: 'Hello!');
/// ```
enum ChatMessageRole {
  /// A message generated by the system (e.g., instructions or metadata).
  system,

  /// A message sent by the user.
  user,

  /// A message generated by the assistant (e.g., a response to the user).
  assistant,

  /// A message generated by a tool or external service.
  tool,
}
