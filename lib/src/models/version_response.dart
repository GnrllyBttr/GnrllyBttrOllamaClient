// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'version_response.freezed.dart';
part 'version_response.g.dart';

/// Represents a response containing the version information.
///
/// This class contains the version of the API or service.
///
/// Example Usage:
/// ```dart
/// final versionResponse = VersionResponse(
///   version: '1.0.0',
/// );
/// ```
@freezed
class VersionResponse with _$VersionResponse {
  const factory VersionResponse({
    /// The version of the API or service.
    required String version,
  }) = _VersionResponse;

  /// Creates a [VersionResponse] instance from a JSON map.
  factory VersionResponse.fromJson(Map<String, dynamic> json) =>
      _$VersionResponseFromJson(json);
}
