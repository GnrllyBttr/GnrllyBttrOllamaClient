// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'function_def.freezed.dart';
part 'function_def.g.dart';

/// Represents the definition of a function.
///
/// This class defines the name, description, and parameters of a function.
///
/// Example Usage:
/// ```dart
/// final functionDef = FunctionDef(
///   name: 'search',
///   description: 'Search for information',
///   parameters: {'query': 'string'},
/// );
/// ```
@freezed
class FunctionDef with _$FunctionDef {
  const factory FunctionDef({
    /// The name of the function.
    required String name,

    /// The description of the function.
    required String description,

    /// The parameters of the function.
    required Map<String, dynamic> parameters,
  }) = _FunctionDef;

  /// Creates a [FunctionDef] instance from a JSON map.
  factory FunctionDef.fromJson(Map<String, dynamic> json) =>
      _$FunctionDefFromJson(json);
}
