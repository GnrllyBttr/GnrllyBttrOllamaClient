// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/model_options.dart';

part 'embed_request.freezed.dart';
part 'embed_request.g.dart';

/// Represents a request to generate embeddings using a model.
///
/// This class defines the parameters required to generate embeddings, such as the
/// model name, input data, and optional configuration options.
///
/// Example Usage:
/// ```dart
/// final request = EmbedRequest(
///   model: 'gpt-3',
///   input: 'Hello, world!',
///   options: ModelOptions(temperature: 0.7),
/// );
/// ```
@freezed
class EmbedRequest with _$EmbedRequest {
  const factory EmbedRequest({
    /// The name of the model to use.
    required String model,

    /// The input data for generating embeddings.
    required Object input,

    /// Whether to truncate the input data.
    @JsonKey(includeIfNull: false) bool? truncate,

    /// Configuration options for the model.
    @JsonKey(includeIfNull: false) ModelOptions? options,

    /// Keep-alive duration for the request.
    @JsonKey(name: 'keep_alive', includeIfNull: false) String? keepAlive,
  }) = _EmbedRequest;

  /// Creates an [EmbedRequest] instance from a JSON map.
  factory EmbedRequest.fromJson(Map<String, dynamic> json) =>
      _$EmbedRequestFromJson(json);
}
