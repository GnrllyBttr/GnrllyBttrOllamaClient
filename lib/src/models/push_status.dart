// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_status.freezed.dart';
part 'push_status.g.dart';

/// Represents the status of a model push operation.
///
/// This class contains the current status, digest, and progress of the push operation.
///
/// Example Usage:
/// ```dart
/// final status = PushStatus(
///   status: 'pushing',
///   digest: 'abc123',
///   total: 100,
///   completed: 50,
/// );
/// ```
@freezed
class PushStatus with _$PushStatus {
  const factory PushStatus({
    /// The current status of the push operation.
    @JsonKey(includeIfNull: false) String? status,

    /// The digest of the model being pushed.
    @JsonKey(includeIfNull: false) String? digest,

    /// The total number of steps in the push operation.
    @JsonKey(includeIfNull: false) int? total,
  }) = _PushStatus;

  /// Creates a [PushStatus] instance from a JSON map.
  factory PushStatus.fromJson(Map<String, dynamic> json) =>
      _$PushStatusFromJson(json);
}
