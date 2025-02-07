// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'function_call.freezed.dart';
part 'function_call.g.dart';

/// Represents a function call in a chat conversation.
///
/// This class defines the name of the function and its arguments.
///
/// Example Usage:
/// ```dart
/// final functionCall = FunctionCall(
///   name: 'search',
///   arguments: {'query': 'Flutter'},
/// );
/// ```
@freezed
class FunctionCall with _$FunctionCall {
  const factory FunctionCall({
    /// The name of the function.
    required String name,

    /// The arguments for the function.
    required Map<String, dynamic> arguments,
  }) = _FunctionCall;

  /// Creates a [FunctionCall] instance from a JSON map.
  factory FunctionCall.fromJson(Map<String, dynamic> json) =>
      _$FunctionCallFromJson(json);
}
