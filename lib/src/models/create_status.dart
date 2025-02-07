// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_status.freezed.dart';
part 'create_status.g.dart';

/// Represents the status of a model creation process.
///
/// This class contains the current status, digest, and progress of the creation process.
///
/// Example Usage:
/// ```dart
/// final status = CreateStatus(
///   status: 'creating',
///   digest: 'abc123',
///   total: 100,
///   completed: 50,
/// );
/// ```
@freezed
class CreateStatus with _$CreateStatus {
  const factory CreateStatus({
    /// The current status of the creation process.
    required String status,

    /// The digest of the model being created.
    @JsonKey(includeIfNull: false) String? digest,

    /// The total number of steps in the creation process.
    @JsonKey(includeIfNull: false) int? total,

    /// The number of steps completed in the creation process.
    @JsonKey(includeIfNull: false) int? completed,
  }) = _CreateStatus;

  /// Creates a [CreateStatus] instance from a JSON map.
  factory CreateStatus.fromJson(Map<String, dynamic> json) =>
      _$CreateStatusFromJson(json);
}
