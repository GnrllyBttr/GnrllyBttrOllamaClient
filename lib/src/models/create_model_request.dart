// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:gnrllybttr_ollama_client/src/models/chat_message.dart';

part 'create_model_request.freezed.dart';
part 'create_model_request.g.dart';

/// Represents a request to create a new model.
///
/// This class defines the parameters required to create a model, such as the
/// model name, source files, and optional configuration options.
///
/// Example Usage:
/// ```dart
/// final request = CreateModelRequest(
///   model: 'my-model',
///   from: 'base-model',
///   files: {'file1': 'content1'},
/// );
/// ```
@freezed
class CreateModelRequest with _$CreateModelRequest {
  const factory CreateModelRequest({
    /// The name of the model to create.
    required String model,

    /// The base model to use for creation.
    @JsonKey(includeIfNull: false) String? from,

    /// The files to include in the model.
    @JsonKey(includeIfNull: false) Map<String, String>? files,

    /// The adapters to include in the model.
    @JsonKey(includeIfNull: false) Map<String, String>? adapters,

    /// The template to use for the model.
    @JsonKey(includeIfNull: false) String? template,

    /// The license for the model.
    @JsonKey(includeIfNull: false) String? license,

    /// The system message to include in the model.
    @JsonKey(includeIfNull: false) String? system,

    /// The parameters for the model.
    @JsonKey(includeIfNull: false) Map<String, dynamic>? parameters,

    /// The messages to include in the model.
    @JsonKey(includeIfNull: false) List<ChatMessage>? messages,

    /// Whether to stream the response.
    @JsonKey(includeIfNull: false) bool? stream,

    /// The quantization level for the model.
    @JsonKey(includeIfNull: false) String? quantize,
  }) = _CreateModelRequest;

  /// Creates a [CreateModelRequest] instance from a JSON map.
  factory CreateModelRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateModelRequestFromJson(json);
}
