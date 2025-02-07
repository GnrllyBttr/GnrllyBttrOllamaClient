// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/function_def.dart';

part 'tool.freezed.dart';
part 'tool.g.dart';

/// Represents a tool that can be used in a chat conversation.
///
/// This class defines the type of the tool and its associated function.
///
/// Example Usage:
/// ```dart
/// final tool = Tool(
///   type: 'function',
///   function: FunctionDef(
///     name: 'search',
///     description: 'Search for information',
///     parameters: {'query': 'string'},
///   ),
/// );
/// ```
@freezed
class Tool with _$Tool {
  const factory Tool({
    /// The type of the tool.
    required String type,

    /// The function associated with the tool.
    required FunctionDef function,
  }) = _Tool;

  /// Creates a [Tool] instance from a JSON map.
  factory Tool.fromJson(Map<String, dynamic> json) => _$ToolFromJson(json);
}
