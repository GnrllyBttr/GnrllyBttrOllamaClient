// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_options.freezed.dart';
part 'model_options.g.dart';

/// Represents configuration options for a machine learning model.
///
/// This class defines various parameters that can be used to customize
/// the behavior of a model during inference, such as temperature, top-k,
/// and top-p sampling.
///
/// Example Usage:
/// ```dart
/// final options = ModelOptions(
///   temperature: 0.7,
///   topK: 50,
///   topP: 0.9,
/// );
/// ```
@freezed
class ModelOptions with _$ModelOptions {
  const factory ModelOptions({
    /// Seed for random number generation.
    @JsonKey(includeIfNull: false) int? seed,

    /// Number of tokens to keep from the beginning of the sequence.
    @JsonKey(name: 'num_keep', includeIfNull: false) int? numKeep,

    /// Number of tokens to predict.
    @JsonKey(name: 'num_predict', includeIfNull: false) int? numPredict,

    /// Top-k sampling parameter.
    @JsonKey(name: 'top_k', includeIfNull: false) int? topK,

    /// Top-p sampling parameter.
    @JsonKey(name: 'top_p', includeIfNull: false) double? topP,

    /// Minimum probability for sampling.
    @JsonKey(name: 'min_p', includeIfNull: false) double? minP,

    /// Typical probability for sampling.
    @JsonKey(name: 'typical_p', includeIfNull: false) double? typicalP,

    /// Number of tokens to consider for repeat penalty.
    @JsonKey(name: 'repeat_last_n', includeIfNull: false) int? repeatLastN,

    /// Temperature for sampling.
    @JsonKey(includeIfNull: false) double? temperature,

    /// Penalty for repeating tokens.
    @JsonKey(name: 'repeat_penalty', includeIfNull: false)
    double? repeatPenalty,

    /// Penalty for new tokens based on presence.
    @JsonKey(name: 'presence_penalty', includeIfNull: false)
    double? presencePenalty,

    /// Penalty for new tokens based on frequency.
    @JsonKey(name: 'frequency_penalty', includeIfNull: false)
    double? frequencyPenalty,

    /// Mirostat sampling mode.
    @JsonKey(includeIfNull: false) int? mirostat,

    /// Mirostat tau parameter.
    @JsonKey(name: 'mirostat_tau', includeIfNull: false) double? mirostatTau,

    /// Mirostat eta parameter.
    @JsonKey(name: 'mirostat_eta', includeIfNull: false) double? mirostatEta,

    /// Whether to penalize newline tokens.
    @JsonKey(name: 'penalize_newline', includeIfNull: false)
    bool? penalizeNewline,

    /// List of stop tokens.
    @JsonKey(includeIfNull: false) List<String>? stop,

    /// Whether to use NUMA optimization.
    @JsonKey(includeIfNull: false) bool? numa,

    /// Number of context tokens.
    @JsonKey(name: 'num_ctx', includeIfNull: false) int? numCtx,

    /// Number of batches.
    @JsonKey(name: 'num_batch', includeIfNull: false) int? numBatch,

    /// Number of GPUs to use.
    @JsonKey(name: 'num_gpu', includeIfNull: false) int? numGpu,

    /// Main GPU to use.
    @JsonKey(name: 'main_gpu', includeIfNull: false) int? mainGpu,

    /// Whether to use low VRAM mode.
    @JsonKey(name: 'low_vram', includeIfNull: false) bool? lowVram,

    /// Whether to load only the vocabulary.
    @JsonKey(name: 'vocab_only', includeIfNull: false) bool? vocabOnly,

    /// Whether to use memory-mapped files.
    @JsonKey(name: 'use_mmap', includeIfNull: false) bool? useMmap,

    /// Whether to use memory locking.
    @JsonKey(name: 'use_mlock', includeIfNull: false) bool? useMlock,

    /// Number of threads to use.
    @JsonKey(name: 'num_thread', includeIfNull: false) int? numThread,
  }) = _ModelOptions;

  /// Creates a [ModelOptions] instance from a JSON map.
  factory ModelOptions.fromJson(Map<String, dynamic> json) =>
      _$ModelOptionsFromJson(json);
}
