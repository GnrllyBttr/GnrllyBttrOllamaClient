// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pull_status.freezed.dart';
part 'pull_status.g.dart';

/// Represents the status of a model pull operation.
///
/// This class contains the current status, digest, and progress of the pull operation.
///
/// Example Usage:
/// ```dart
/// final status = PullStatus(
///   status: 'pulling',
///   digest: 'abc123',
///   total: 100,
///   completed: 50,
/// );
/// ```
@freezed
class PullStatus with _$PullStatus {
  const factory PullStatus({
    /// The current status of the pull operation.
    required String status,

    /// The digest of the model being pulled.
    @JsonKey(includeIfNull: false) String? digest,

    /// The total number of steps in the pull operation.
    @JsonKey(includeIfNull: false) int? total,

    /// The number of steps completed in the pull operation.
    @JsonKey(includeIfNull: false) int? completed,
  }) = _PullStatus;

  /// Creates a [PullStatus] instance from a JSON map.
  factory PullStatus.fromJson(Map<String, dynamic> json) =>
      _$PullStatusFromJson(json);
}
