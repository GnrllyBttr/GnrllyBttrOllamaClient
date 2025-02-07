// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/model_options.dart';

part 'generate_request.freezed.dart';
part 'generate_request.g.dart';

/// Represents a request to generate text using a model.
///
/// This class defines the parameters required to generate text, such as the
/// model name, prompt, and optional configuration options.
///
/// Example Usage:
/// ```dart
/// final request = GenerateRequest(
///   model: 'gpt-3',
///   prompt: 'Hello, world!',
///   options: ModelOptions(temperature: 0.7),
/// );
/// ```
@freezed
class GenerateRequest with _$GenerateRequest {
  const factory GenerateRequest({
    /// The name of the model to use.
    required String model,

    /// The input prompt for text generation.
    required String prompt,

    /// A suffix to append to the generated text.
    @JsonKey(includeIfNull: false) String? suffix,

    /// A list of base64-encoded images to include in the prompt (for multimodal models).
    @JsonKey(includeIfNull: false) List<String>? images,

    /// The format of the output (json or a JSON schema).
    @JsonKey(includeIfNull: false) dynamic format,

    /// Configuration options for the model.
    @JsonKey(includeIfNull: false) ModelOptions? options,

    /// A system message to include in the prompt (overrides what is defined in the Modelfile).
    @JsonKey(includeIfNull: false) String? system,

    /// A template for the prompt (overrides what is defined in the Modelfile).
    @JsonKey(includeIfNull: false) String? template,

    /// Whether to stream the response. If false, the response will be returned as a single response object.
    @JsonKey(includeIfNull: false) bool? stream,

    /// Whether to return raw output. If true, no formatting will be applied to the prompt.
    @JsonKey(includeIfNull: false) bool? raw,

    /// Keep-alive duration for the request (default: 5m).
    @JsonKey(name: 'keep_alive', includeIfNull: false) String? keepAlive,

    /// A list of context tokens (deprecated).
    @JsonKey(includeIfNull: false) List<int>? context,
  }) = _GenerateRequest;

  /// Creates a [GenerateRequest] instance from a JSON map.
  factory GenerateRequest.fromJson(Map<String, dynamic> json) =>
      _$GenerateRequestFromJson(json);
}
