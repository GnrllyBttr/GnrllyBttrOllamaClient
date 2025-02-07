/// The base exception class for all Ollama client-related errors.
///
/// This class serves as the base for more specific exceptions that can be
/// thrown by the Ollama client.
class GnrllyBttrOllamaClientException implements Exception {
  /// Creates a new instance of [GnrllyBttrOllamaClientException].
  ///
  /// - [message]: The error message describing the exception.
  const GnrllyBttrOllamaClientException({required this.message});

  /// The error message associated with this exception.
  final String message;

  @override
  String toString() => 'OllamaClientException: $message';
}

/// Exception thrown when a blob check operation fails.
class BlobCheckFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [BlobCheckFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const BlobCheckFailedException(String message) : super(message: message);
}

/// Exception thrown when a blob push operation fails.
class BlobPushFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [BlobPushFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const BlobPushFailedException(String message) : super(message: message);
}

/// Exception thrown when a chat operation fails.
class ChatFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [ChatFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const ChatFailedException(String message) : super(message: message);
}

/// Exception thrown when a chat stream operation fails.
class ChatStreamFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [ChatStreamFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const ChatStreamFailedException(String message) : super(message: message);
}

/// Exception thrown when copying a model fails.
class CopyModelFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [CopyModelFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const CopyModelFailedException(String message) : super(message: message);
}

/// Exception thrown when creating a model fails.
class CreateModelFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [CreateModelFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const CreateModelFailedException(String message) : super(message: message);
}

/// Exception thrown when creating a model stream fails.
class CreateModelStreamFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [CreateModelStreamFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const CreateModelStreamFailedException(String message)
      : super(message: message);
}

/// Exception thrown when deleting a model fails.
class DeleteModelFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [DeleteModelFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const DeleteModelFailedException(String message) : super(message: message);
}

/// Exception thrown when an embeddings operation fails.
class EmbeddingsFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [EmbeddingsFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const EmbeddingsFailedException(String message) : super(message: message);
}

/// Exception thrown when a generate operation fails.
class GenerateFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [GenerateFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const GenerateFailedException(String message) : super(message: message);
}

/// Exception thrown when a generate stream operation fails.
class GenerateStreamFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [GenerateStreamFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const GenerateStreamFailedException(String message) : super(message: message);
}

/// Exception thrown when getting the version fails.
class GetVersionFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [GetVersionFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const GetVersionFailedException(String message) : super(message: message);
}

/// Exception thrown when listing models fails.
class ListModelsFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [ListModelsFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const ListModelsFailedException(String message) : super(message: message);
}

/// Exception thrown when listing running models fails.
class ListRunningModelsFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [ListRunningModelsFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const ListRunningModelsFailedException(String message)
      : super(message: message);
}

/// Exception thrown when pulling a model fails.
class PullModelFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [PullModelFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const PullModelFailedException(String message) : super(message: message);
}

/// Exception thrown when pulling a model stream fails.
class PullModelStreamFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [PullModelStreamFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const PullModelStreamFailedException(String message)
      : super(message: message);
}

/// Exception thrown when pushing a model fails.
class PushModelFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [PushModelFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const PushModelFailedException(String message) : super(message: message);
}

/// Exception thrown when pushing a model stream fails.
class PushModelStreamFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [PushModelStreamFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const PushModelStreamFailedException(String message)
      : super(message: message);
}

/// Exception thrown when showing a model fails.
class ShowModelFailedException extends GnrllyBttrOllamaClientException {
  /// Creates a new instance of [ShowModelFailedException].
  ///
  /// - [message]: The error message describing the exception.
  const ShowModelFailedException(String message) : super(message: message);
}
