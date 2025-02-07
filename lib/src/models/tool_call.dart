// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/function_call.dart';

part 'tool_call.freezed.dart';
part 'tool_call.g.dart';

/// Represents a tool call in a chat conversation.
///
/// This class defines the function call associated with the tool.
///
/// Example Usage:
/// ```dart
/// final toolCall = ToolCall(
///   function: FunctionCall(
///     name: 'search',
///     arguments: {'query': 'Flutter'},
///   ),
/// );
/// ```
@freezed
class ToolCall with _$ToolCall {
  const factory ToolCall({
    /// The function call associated with the tool.
    required FunctionCall function,
  }) = _ToolCall;

  /// Creates a [ToolCall] instance from a JSON map.
  factory ToolCall.fromJson(Map<String, dynamic> json) =>
      _$ToolCallFromJson(json);
}
