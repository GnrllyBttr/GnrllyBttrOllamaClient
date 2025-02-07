// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelOptions _$ModelOptionsFromJson(Map<String, dynamic> json) {
  return _ModelOptions.fromJson(json);
}

/// @nodoc
mixin _$ModelOptions {
  /// Seed for random number generation.
  @JsonKey(includeIfNull: false)
  int? get seed => throw _privateConstructorUsedError;

  /// Number of tokens to keep from the beginning of the sequence.
  @JsonKey(name: 'num_keep', includeIfNull: false)
  int? get numKeep => throw _privateConstructorUsedError;

  /// Number of tokens to predict.
  @JsonKey(name: 'num_predict', includeIfNull: false)
  int? get numPredict => throw _privateConstructorUsedError;

  /// Top-k sampling parameter.
  @JsonKey(name: 'top_k', includeIfNull: false)
  int? get topK => throw _privateConstructorUsedError;

  /// Top-p sampling parameter.
  @JsonKey(name: 'top_p', includeIfNull: false)
  double? get topP => throw _privateConstructorUsedError;

  /// Minimum probability for sampling.
  @JsonKey(name: 'min_p', includeIfNull: false)
  double? get minP => throw _privateConstructorUsedError;

  /// Typical probability for sampling.
  @JsonKey(name: 'typical_p', includeIfNull: false)
  double? get typicalP => throw _privateConstructorUsedError;

  /// Number of tokens to consider for repeat penalty.
  @JsonKey(name: 'repeat_last_n', includeIfNull: false)
  int? get repeatLastN => throw _privateConstructorUsedError;

  /// Temperature for sampling.
  @JsonKey(includeIfNull: false)
  double? get temperature => throw _privateConstructorUsedError;

  /// Penalty for repeating tokens.
  @JsonKey(name: 'repeat_penalty', includeIfNull: false)
  double? get repeatPenalty => throw _privateConstructorUsedError;

  /// Penalty for new tokens based on presence.
  @JsonKey(name: 'presence_penalty', includeIfNull: false)
  double? get presencePenalty => throw _privateConstructorUsedError;

  /// Penalty for new tokens based on frequency.
  @JsonKey(name: 'frequency_penalty', includeIfNull: false)
  double? get frequencyPenalty => throw _privateConstructorUsedError;

  /// Mirostat sampling mode.
  @JsonKey(includeIfNull: false)
  int? get mirostat => throw _privateConstructorUsedError;

  /// Mirostat tau parameter.
  @JsonKey(name: 'mirostat_tau', includeIfNull: false)
  double? get mirostatTau => throw _privateConstructorUsedError;

  /// Mirostat eta parameter.
  @JsonKey(name: 'mirostat_eta', includeIfNull: false)
  double? get mirostatEta => throw _privateConstructorUsedError;

  /// Whether to penalize newline tokens.
  @JsonKey(name: 'penalize_newline', includeIfNull: false)
  bool? get penalizeNewline => throw _privateConstructorUsedError;

  /// List of stop tokens.
  @JsonKey(includeIfNull: false)
  List<String>? get stop => throw _privateConstructorUsedError;

  /// Whether to use NUMA optimization.
  @JsonKey(includeIfNull: false)
  bool? get numa => throw _privateConstructorUsedError;

  /// Number of context tokens.
  @JsonKey(name: 'num_ctx', includeIfNull: false)
  int? get numCtx => throw _privateConstructorUsedError;

  /// Number of batches.
  @JsonKey(name: 'num_batch', includeIfNull: false)
  int? get numBatch => throw _privateConstructorUsedError;

  /// Number of GPUs to use.
  @JsonKey(name: 'num_gpu', includeIfNull: false)
  int? get numGpu => throw _privateConstructorUsedError;

  /// Main GPU to use.
  @JsonKey(name: 'main_gpu', includeIfNull: false)
  int? get mainGpu => throw _privateConstructorUsedError;

  /// Whether to use low VRAM mode.
  @JsonKey(name: 'low_vram', includeIfNull: false)
  bool? get lowVram => throw _privateConstructorUsedError;

  /// Whether to load only the vocabulary.
  @JsonKey(name: 'vocab_only', includeIfNull: false)
  bool? get vocabOnly => throw _privateConstructorUsedError;

  /// Whether to use memory-mapped files.
  @JsonKey(name: 'use_mmap', includeIfNull: false)
  bool? get useMmap => throw _privateConstructorUsedError;

  /// Whether to use memory locking.
  @JsonKey(name: 'use_mlock', includeIfNull: false)
  bool? get useMlock => throw _privateConstructorUsedError;

  /// Number of threads to use.
  @JsonKey(name: 'num_thread', includeIfNull: false)
  int? get numThread => throw _privateConstructorUsedError;

  /// Serializes this ModelOptions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModelOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelOptionsCopyWith<ModelOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelOptionsCopyWith<$Res> {
  factory $ModelOptionsCopyWith(
          ModelOptions value, $Res Function(ModelOptions) then) =
      _$ModelOptionsCopyWithImpl<$Res, ModelOptions>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? seed,
      @JsonKey(name: 'num_keep', includeIfNull: false) int? numKeep,
      @JsonKey(name: 'num_predict', includeIfNull: false) int? numPredict,
      @JsonKey(name: 'top_k', includeIfNull: false) int? topK,
      @JsonKey(name: 'top_p', includeIfNull: false) double? topP,
      @JsonKey(name: 'min_p', includeIfNull: false) double? minP,
      @JsonKey(name: 'typical_p', includeIfNull: false) double? typicalP,
      @JsonKey(name: 'repeat_last_n', includeIfNull: false) int? repeatLastN,
      @JsonKey(includeIfNull: false) double? temperature,
      @JsonKey(name: 'repeat_penalty', includeIfNull: false)
      double? repeatPenalty,
      @JsonKey(name: 'presence_penalty', includeIfNull: false)
      double? presencePenalty,
      @JsonKey(name: 'frequency_penalty', includeIfNull: false)
      double? frequencyPenalty,
      @JsonKey(includeIfNull: false) int? mirostat,
      @JsonKey(name: 'mirostat_tau', includeIfNull: false) double? mirostatTau,
      @JsonKey(name: 'mirostat_eta', includeIfNull: false) double? mirostatEta,
      @JsonKey(name: 'penalize_newline', includeIfNull: false)
      bool? penalizeNewline,
      @JsonKey(includeIfNull: false) List<String>? stop,
      @JsonKey(includeIfNull: false) bool? numa,
      @JsonKey(name: 'num_ctx', includeIfNull: false) int? numCtx,
      @JsonKey(name: 'num_batch', includeIfNull: false) int? numBatch,
      @JsonKey(name: 'num_gpu', includeIfNull: false) int? numGpu,
      @JsonKey(name: 'main_gpu', includeIfNull: false) int? mainGpu,
      @JsonKey(name: 'low_vram', includeIfNull: false) bool? lowVram,
      @JsonKey(name: 'vocab_only', includeIfNull: false) bool? vocabOnly,
      @JsonKey(name: 'use_mmap', includeIfNull: false) bool? useMmap,
      @JsonKey(name: 'use_mlock', includeIfNull: false) bool? useMlock,
      @JsonKey(name: 'num_thread', includeIfNull: false) int? numThread});
}

/// @nodoc
class _$ModelOptionsCopyWithImpl<$Res, $Val extends ModelOptions>
    implements $ModelOptionsCopyWith<$Res> {
  _$ModelOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seed = freezed,
    Object? numKeep = freezed,
    Object? numPredict = freezed,
    Object? topK = freezed,
    Object? topP = freezed,
    Object? minP = freezed,
    Object? typicalP = freezed,
    Object? repeatLastN = freezed,
    Object? temperature = freezed,
    Object? repeatPenalty = freezed,
    Object? presencePenalty = freezed,
    Object? frequencyPenalty = freezed,
    Object? mirostat = freezed,
    Object? mirostatTau = freezed,
    Object? mirostatEta = freezed,
    Object? penalizeNewline = freezed,
    Object? stop = freezed,
    Object? numa = freezed,
    Object? numCtx = freezed,
    Object? numBatch = freezed,
    Object? numGpu = freezed,
    Object? mainGpu = freezed,
    Object? lowVram = freezed,
    Object? vocabOnly = freezed,
    Object? useMmap = freezed,
    Object? useMlock = freezed,
    Object? numThread = freezed,
  }) {
    return _then(_value.copyWith(
      seed: freezed == seed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as int?,
      numKeep: freezed == numKeep
          ? _value.numKeep
          : numKeep // ignore: cast_nullable_to_non_nullable
              as int?,
      numPredict: freezed == numPredict
          ? _value.numPredict
          : numPredict // ignore: cast_nullable_to_non_nullable
              as int?,
      topK: freezed == topK
          ? _value.topK
          : topK // ignore: cast_nullable_to_non_nullable
              as int?,
      topP: freezed == topP
          ? _value.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double?,
      minP: freezed == minP
          ? _value.minP
          : minP // ignore: cast_nullable_to_non_nullable
              as double?,
      typicalP: freezed == typicalP
          ? _value.typicalP
          : typicalP // ignore: cast_nullable_to_non_nullable
              as double?,
      repeatLastN: freezed == repeatLastN
          ? _value.repeatLastN
          : repeatLastN // ignore: cast_nullable_to_non_nullable
              as int?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      repeatPenalty: freezed == repeatPenalty
          ? _value.repeatPenalty
          : repeatPenalty // ignore: cast_nullable_to_non_nullable
              as double?,
      presencePenalty: freezed == presencePenalty
          ? _value.presencePenalty
          : presencePenalty // ignore: cast_nullable_to_non_nullable
              as double?,
      frequencyPenalty: freezed == frequencyPenalty
          ? _value.frequencyPenalty
          : frequencyPenalty // ignore: cast_nullable_to_non_nullable
              as double?,
      mirostat: freezed == mirostat
          ? _value.mirostat
          : mirostat // ignore: cast_nullable_to_non_nullable
              as int?,
      mirostatTau: freezed == mirostatTau
          ? _value.mirostatTau
          : mirostatTau // ignore: cast_nullable_to_non_nullable
              as double?,
      mirostatEta: freezed == mirostatEta
          ? _value.mirostatEta
          : mirostatEta // ignore: cast_nullable_to_non_nullable
              as double?,
      penalizeNewline: freezed == penalizeNewline
          ? _value.penalizeNewline
          : penalizeNewline // ignore: cast_nullable_to_non_nullable
              as bool?,
      stop: freezed == stop
          ? _value.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      numa: freezed == numa
          ? _value.numa
          : numa // ignore: cast_nullable_to_non_nullable
              as bool?,
      numCtx: freezed == numCtx
          ? _value.numCtx
          : numCtx // ignore: cast_nullable_to_non_nullable
              as int?,
      numBatch: freezed == numBatch
          ? _value.numBatch
          : numBatch // ignore: cast_nullable_to_non_nullable
              as int?,
      numGpu: freezed == numGpu
          ? _value.numGpu
          : numGpu // ignore: cast_nullable_to_non_nullable
              as int?,
      mainGpu: freezed == mainGpu
          ? _value.mainGpu
          : mainGpu // ignore: cast_nullable_to_non_nullable
              as int?,
      lowVram: freezed == lowVram
          ? _value.lowVram
          : lowVram // ignore: cast_nullable_to_non_nullable
              as bool?,
      vocabOnly: freezed == vocabOnly
          ? _value.vocabOnly
          : vocabOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      useMmap: freezed == useMmap
          ? _value.useMmap
          : useMmap // ignore: cast_nullable_to_non_nullable
              as bool?,
      useMlock: freezed == useMlock
          ? _value.useMlock
          : useMlock // ignore: cast_nullable_to_non_nullable
              as bool?,
      numThread: freezed == numThread
          ? _value.numThread
          : numThread // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelOptionsImplCopyWith<$Res>
    implements $ModelOptionsCopyWith<$Res> {
  factory _$$ModelOptionsImplCopyWith(
          _$ModelOptionsImpl value, $Res Function(_$ModelOptionsImpl) then) =
      __$$ModelOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? seed,
      @JsonKey(name: 'num_keep', includeIfNull: false) int? numKeep,
      @JsonKey(name: 'num_predict', includeIfNull: false) int? numPredict,
      @JsonKey(name: 'top_k', includeIfNull: false) int? topK,
      @JsonKey(name: 'top_p', includeIfNull: false) double? topP,
      @JsonKey(name: 'min_p', includeIfNull: false) double? minP,
      @JsonKey(name: 'typical_p', includeIfNull: false) double? typicalP,
      @JsonKey(name: 'repeat_last_n', includeIfNull: false) int? repeatLastN,
      @JsonKey(includeIfNull: false) double? temperature,
      @JsonKey(name: 'repeat_penalty', includeIfNull: false)
      double? repeatPenalty,
      @JsonKey(name: 'presence_penalty', includeIfNull: false)
      double? presencePenalty,
      @JsonKey(name: 'frequency_penalty', includeIfNull: false)
      double? frequencyPenalty,
      @JsonKey(includeIfNull: false) int? mirostat,
      @JsonKey(name: 'mirostat_tau', includeIfNull: false) double? mirostatTau,
      @JsonKey(name: 'mirostat_eta', includeIfNull: false) double? mirostatEta,
      @JsonKey(name: 'penalize_newline', includeIfNull: false)
      bool? penalizeNewline,
      @JsonKey(includeIfNull: false) List<String>? stop,
      @JsonKey(includeIfNull: false) bool? numa,
      @JsonKey(name: 'num_ctx', includeIfNull: false) int? numCtx,
      @JsonKey(name: 'num_batch', includeIfNull: false) int? numBatch,
      @JsonKey(name: 'num_gpu', includeIfNull: false) int? numGpu,
      @JsonKey(name: 'main_gpu', includeIfNull: false) int? mainGpu,
      @JsonKey(name: 'low_vram', includeIfNull: false) bool? lowVram,
      @JsonKey(name: 'vocab_only', includeIfNull: false) bool? vocabOnly,
      @JsonKey(name: 'use_mmap', includeIfNull: false) bool? useMmap,
      @JsonKey(name: 'use_mlock', includeIfNull: false) bool? useMlock,
      @JsonKey(name: 'num_thread', includeIfNull: false) int? numThread});
}

/// @nodoc
class __$$ModelOptionsImplCopyWithImpl<$Res>
    extends _$ModelOptionsCopyWithImpl<$Res, _$ModelOptionsImpl>
    implements _$$ModelOptionsImplCopyWith<$Res> {
  __$$ModelOptionsImplCopyWithImpl(
      _$ModelOptionsImpl _value, $Res Function(_$ModelOptionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seed = freezed,
    Object? numKeep = freezed,
    Object? numPredict = freezed,
    Object? topK = freezed,
    Object? topP = freezed,
    Object? minP = freezed,
    Object? typicalP = freezed,
    Object? repeatLastN = freezed,
    Object? temperature = freezed,
    Object? repeatPenalty = freezed,
    Object? presencePenalty = freezed,
    Object? frequencyPenalty = freezed,
    Object? mirostat = freezed,
    Object? mirostatTau = freezed,
    Object? mirostatEta = freezed,
    Object? penalizeNewline = freezed,
    Object? stop = freezed,
    Object? numa = freezed,
    Object? numCtx = freezed,
    Object? numBatch = freezed,
    Object? numGpu = freezed,
    Object? mainGpu = freezed,
    Object? lowVram = freezed,
    Object? vocabOnly = freezed,
    Object? useMmap = freezed,
    Object? useMlock = freezed,
    Object? numThread = freezed,
  }) {
    return _then(_$ModelOptionsImpl(
      seed: freezed == seed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as int?,
      numKeep: freezed == numKeep
          ? _value.numKeep
          : numKeep // ignore: cast_nullable_to_non_nullable
              as int?,
      numPredict: freezed == numPredict
          ? _value.numPredict
          : numPredict // ignore: cast_nullable_to_non_nullable
              as int?,
      topK: freezed == topK
          ? _value.topK
          : topK // ignore: cast_nullable_to_non_nullable
              as int?,
      topP: freezed == topP
          ? _value.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double?,
      minP: freezed == minP
          ? _value.minP
          : minP // ignore: cast_nullable_to_non_nullable
              as double?,
      typicalP: freezed == typicalP
          ? _value.typicalP
          : typicalP // ignore: cast_nullable_to_non_nullable
              as double?,
      repeatLastN: freezed == repeatLastN
          ? _value.repeatLastN
          : repeatLastN // ignore: cast_nullable_to_non_nullable
              as int?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      repeatPenalty: freezed == repeatPenalty
          ? _value.repeatPenalty
          : repeatPenalty // ignore: cast_nullable_to_non_nullable
              as double?,
      presencePenalty: freezed == presencePenalty
          ? _value.presencePenalty
          : presencePenalty // ignore: cast_nullable_to_non_nullable
              as double?,
      frequencyPenalty: freezed == frequencyPenalty
          ? _value.frequencyPenalty
          : frequencyPenalty // ignore: cast_nullable_to_non_nullable
              as double?,
      mirostat: freezed == mirostat
          ? _value.mirostat
          : mirostat // ignore: cast_nullable_to_non_nullable
              as int?,
      mirostatTau: freezed == mirostatTau
          ? _value.mirostatTau
          : mirostatTau // ignore: cast_nullable_to_non_nullable
              as double?,
      mirostatEta: freezed == mirostatEta
          ? _value.mirostatEta
          : mirostatEta // ignore: cast_nullable_to_non_nullable
              as double?,
      penalizeNewline: freezed == penalizeNewline
          ? _value.penalizeNewline
          : penalizeNewline // ignore: cast_nullable_to_non_nullable
              as bool?,
      stop: freezed == stop
          ? _value._stop
          : stop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      numa: freezed == numa
          ? _value.numa
          : numa // ignore: cast_nullable_to_non_nullable
              as bool?,
      numCtx: freezed == numCtx
          ? _value.numCtx
          : numCtx // ignore: cast_nullable_to_non_nullable
              as int?,
      numBatch: freezed == numBatch
          ? _value.numBatch
          : numBatch // ignore: cast_nullable_to_non_nullable
              as int?,
      numGpu: freezed == numGpu
          ? _value.numGpu
          : numGpu // ignore: cast_nullable_to_non_nullable
              as int?,
      mainGpu: freezed == mainGpu
          ? _value.mainGpu
          : mainGpu // ignore: cast_nullable_to_non_nullable
              as int?,
      lowVram: freezed == lowVram
          ? _value.lowVram
          : lowVram // ignore: cast_nullable_to_non_nullable
              as bool?,
      vocabOnly: freezed == vocabOnly
          ? _value.vocabOnly
          : vocabOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      useMmap: freezed == useMmap
          ? _value.useMmap
          : useMmap // ignore: cast_nullable_to_non_nullable
              as bool?,
      useMlock: freezed == useMlock
          ? _value.useMlock
          : useMlock // ignore: cast_nullable_to_non_nullable
              as bool?,
      numThread: freezed == numThread
          ? _value.numThread
          : numThread // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelOptionsImpl implements _ModelOptions {
  const _$ModelOptionsImpl(
      {@JsonKey(includeIfNull: false) this.seed,
      @JsonKey(name: 'num_keep', includeIfNull: false) this.numKeep,
      @JsonKey(name: 'num_predict', includeIfNull: false) this.numPredict,
      @JsonKey(name: 'top_k', includeIfNull: false) this.topK,
      @JsonKey(name: 'top_p', includeIfNull: false) this.topP,
      @JsonKey(name: 'min_p', includeIfNull: false) this.minP,
      @JsonKey(name: 'typical_p', includeIfNull: false) this.typicalP,
      @JsonKey(name: 'repeat_last_n', includeIfNull: false) this.repeatLastN,
      @JsonKey(includeIfNull: false) this.temperature,
      @JsonKey(name: 'repeat_penalty', includeIfNull: false) this.repeatPenalty,
      @JsonKey(name: 'presence_penalty', includeIfNull: false)
      this.presencePenalty,
      @JsonKey(name: 'frequency_penalty', includeIfNull: false)
      this.frequencyPenalty,
      @JsonKey(includeIfNull: false) this.mirostat,
      @JsonKey(name: 'mirostat_tau', includeIfNull: false) this.mirostatTau,
      @JsonKey(name: 'mirostat_eta', includeIfNull: false) this.mirostatEta,
      @JsonKey(name: 'penalize_newline', includeIfNull: false)
      this.penalizeNewline,
      @JsonKey(includeIfNull: false) final List<String>? stop,
      @JsonKey(includeIfNull: false) this.numa,
      @JsonKey(name: 'num_ctx', includeIfNull: false) this.numCtx,
      @JsonKey(name: 'num_batch', includeIfNull: false) this.numBatch,
      @JsonKey(name: 'num_gpu', includeIfNull: false) this.numGpu,
      @JsonKey(name: 'main_gpu', includeIfNull: false) this.mainGpu,
      @JsonKey(name: 'low_vram', includeIfNull: false) this.lowVram,
      @JsonKey(name: 'vocab_only', includeIfNull: false) this.vocabOnly,
      @JsonKey(name: 'use_mmap', includeIfNull: false) this.useMmap,
      @JsonKey(name: 'use_mlock', includeIfNull: false) this.useMlock,
      @JsonKey(name: 'num_thread', includeIfNull: false) this.numThread})
      : _stop = stop;

  factory _$ModelOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelOptionsImplFromJson(json);

  /// Seed for random number generation.
  @override
  @JsonKey(includeIfNull: false)
  final int? seed;

  /// Number of tokens to keep from the beginning of the sequence.
  @override
  @JsonKey(name: 'num_keep', includeIfNull: false)
  final int? numKeep;

  /// Number of tokens to predict.
  @override
  @JsonKey(name: 'num_predict', includeIfNull: false)
  final int? numPredict;

  /// Top-k sampling parameter.
  @override
  @JsonKey(name: 'top_k', includeIfNull: false)
  final int? topK;

  /// Top-p sampling parameter.
  @override
  @JsonKey(name: 'top_p', includeIfNull: false)
  final double? topP;

  /// Minimum probability for sampling.
  @override
  @JsonKey(name: 'min_p', includeIfNull: false)
  final double? minP;

  /// Typical probability for sampling.
  @override
  @JsonKey(name: 'typical_p', includeIfNull: false)
  final double? typicalP;

  /// Number of tokens to consider for repeat penalty.
  @override
  @JsonKey(name: 'repeat_last_n', includeIfNull: false)
  final int? repeatLastN;

  /// Temperature for sampling.
  @override
  @JsonKey(includeIfNull: false)
  final double? temperature;

  /// Penalty for repeating tokens.
  @override
  @JsonKey(name: 'repeat_penalty', includeIfNull: false)
  final double? repeatPenalty;

  /// Penalty for new tokens based on presence.
  @override
  @JsonKey(name: 'presence_penalty', includeIfNull: false)
  final double? presencePenalty;

  /// Penalty for new tokens based on frequency.
  @override
  @JsonKey(name: 'frequency_penalty', includeIfNull: false)
  final double? frequencyPenalty;

  /// Mirostat sampling mode.
  @override
  @JsonKey(includeIfNull: false)
  final int? mirostat;

  /// Mirostat tau parameter.
  @override
  @JsonKey(name: 'mirostat_tau', includeIfNull: false)
  final double? mirostatTau;

  /// Mirostat eta parameter.
  @override
  @JsonKey(name: 'mirostat_eta', includeIfNull: false)
  final double? mirostatEta;

  /// Whether to penalize newline tokens.
  @override
  @JsonKey(name: 'penalize_newline', includeIfNull: false)
  final bool? penalizeNewline;

  /// List of stop tokens.
  final List<String>? _stop;

  /// List of stop tokens.
  @override
  @JsonKey(includeIfNull: false)
  List<String>? get stop {
    final value = _stop;
    if (value == null) return null;
    if (_stop is EqualUnmodifiableListView) return _stop;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Whether to use NUMA optimization.
  @override
  @JsonKey(includeIfNull: false)
  final bool? numa;

  /// Number of context tokens.
  @override
  @JsonKey(name: 'num_ctx', includeIfNull: false)
  final int? numCtx;

  /// Number of batches.
  @override
  @JsonKey(name: 'num_batch', includeIfNull: false)
  final int? numBatch;

  /// Number of GPUs to use.
  @override
  @JsonKey(name: 'num_gpu', includeIfNull: false)
  final int? numGpu;

  /// Main GPU to use.
  @override
  @JsonKey(name: 'main_gpu', includeIfNull: false)
  final int? mainGpu;

  /// Whether to use low VRAM mode.
  @override
  @JsonKey(name: 'low_vram', includeIfNull: false)
  final bool? lowVram;

  /// Whether to load only the vocabulary.
  @override
  @JsonKey(name: 'vocab_only', includeIfNull: false)
  final bool? vocabOnly;

  /// Whether to use memory-mapped files.
  @override
  @JsonKey(name: 'use_mmap', includeIfNull: false)
  final bool? useMmap;

  /// Whether to use memory locking.
  @override
  @JsonKey(name: 'use_mlock', includeIfNull: false)
  final bool? useMlock;

  /// Number of threads to use.
  @override
  @JsonKey(name: 'num_thread', includeIfNull: false)
  final int? numThread;

  @override
  String toString() {
    return 'ModelOptions(seed: $seed, numKeep: $numKeep, numPredict: $numPredict, topK: $topK, topP: $topP, minP: $minP, typicalP: $typicalP, repeatLastN: $repeatLastN, temperature: $temperature, repeatPenalty: $repeatPenalty, presencePenalty: $presencePenalty, frequencyPenalty: $frequencyPenalty, mirostat: $mirostat, mirostatTau: $mirostatTau, mirostatEta: $mirostatEta, penalizeNewline: $penalizeNewline, stop: $stop, numa: $numa, numCtx: $numCtx, numBatch: $numBatch, numGpu: $numGpu, mainGpu: $mainGpu, lowVram: $lowVram, vocabOnly: $vocabOnly, useMmap: $useMmap, useMlock: $useMlock, numThread: $numThread)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelOptionsImpl &&
            (identical(other.seed, seed) || other.seed == seed) &&
            (identical(other.numKeep, numKeep) || other.numKeep == numKeep) &&
            (identical(other.numPredict, numPredict) ||
                other.numPredict == numPredict) &&
            (identical(other.topK, topK) || other.topK == topK) &&
            (identical(other.topP, topP) || other.topP == topP) &&
            (identical(other.minP, minP) || other.minP == minP) &&
            (identical(other.typicalP, typicalP) ||
                other.typicalP == typicalP) &&
            (identical(other.repeatLastN, repeatLastN) ||
                other.repeatLastN == repeatLastN) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.repeatPenalty, repeatPenalty) ||
                other.repeatPenalty == repeatPenalty) &&
            (identical(other.presencePenalty, presencePenalty) ||
                other.presencePenalty == presencePenalty) &&
            (identical(other.frequencyPenalty, frequencyPenalty) ||
                other.frequencyPenalty == frequencyPenalty) &&
            (identical(other.mirostat, mirostat) ||
                other.mirostat == mirostat) &&
            (identical(other.mirostatTau, mirostatTau) ||
                other.mirostatTau == mirostatTau) &&
            (identical(other.mirostatEta, mirostatEta) ||
                other.mirostatEta == mirostatEta) &&
            (identical(other.penalizeNewline, penalizeNewline) ||
                other.penalizeNewline == penalizeNewline) &&
            const DeepCollectionEquality().equals(other._stop, _stop) &&
            (identical(other.numa, numa) || other.numa == numa) &&
            (identical(other.numCtx, numCtx) || other.numCtx == numCtx) &&
            (identical(other.numBatch, numBatch) ||
                other.numBatch == numBatch) &&
            (identical(other.numGpu, numGpu) || other.numGpu == numGpu) &&
            (identical(other.mainGpu, mainGpu) || other.mainGpu == mainGpu) &&
            (identical(other.lowVram, lowVram) || other.lowVram == lowVram) &&
            (identical(other.vocabOnly, vocabOnly) ||
                other.vocabOnly == vocabOnly) &&
            (identical(other.useMmap, useMmap) || other.useMmap == useMmap) &&
            (identical(other.useMlock, useMlock) ||
                other.useMlock == useMlock) &&
            (identical(other.numThread, numThread) ||
                other.numThread == numThread));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        seed,
        numKeep,
        numPredict,
        topK,
        topP,
        minP,
        typicalP,
        repeatLastN,
        temperature,
        repeatPenalty,
        presencePenalty,
        frequencyPenalty,
        mirostat,
        mirostatTau,
        mirostatEta,
        penalizeNewline,
        const DeepCollectionEquality().hash(_stop),
        numa,
        numCtx,
        numBatch,
        numGpu,
        mainGpu,
        lowVram,
        vocabOnly,
        useMmap,
        useMlock,
        numThread
      ]);

  /// Create a copy of ModelOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelOptionsImplCopyWith<_$ModelOptionsImpl> get copyWith =>
      __$$ModelOptionsImplCopyWithImpl<_$ModelOptionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelOptionsImplToJson(
      this,
    );
  }
}

abstract class _ModelOptions implements ModelOptions {
  const factory _ModelOptions(
      {@JsonKey(includeIfNull: false) final int? seed,
      @JsonKey(name: 'num_keep', includeIfNull: false) final int? numKeep,
      @JsonKey(name: 'num_predict', includeIfNull: false) final int? numPredict,
      @JsonKey(name: 'top_k', includeIfNull: false) final int? topK,
      @JsonKey(name: 'top_p', includeIfNull: false) final double? topP,
      @JsonKey(name: 'min_p', includeIfNull: false) final double? minP,
      @JsonKey(name: 'typical_p', includeIfNull: false) final double? typicalP,
      @JsonKey(name: 'repeat_last_n', includeIfNull: false)
      final int? repeatLastN,
      @JsonKey(includeIfNull: false) final double? temperature,
      @JsonKey(name: 'repeat_penalty', includeIfNull: false)
      final double? repeatPenalty,
      @JsonKey(name: 'presence_penalty', includeIfNull: false)
      final double? presencePenalty,
      @JsonKey(name: 'frequency_penalty', includeIfNull: false)
      final double? frequencyPenalty,
      @JsonKey(includeIfNull: false) final int? mirostat,
      @JsonKey(name: 'mirostat_tau', includeIfNull: false)
      final double? mirostatTau,
      @JsonKey(name: 'mirostat_eta', includeIfNull: false)
      final double? mirostatEta,
      @JsonKey(name: 'penalize_newline', includeIfNull: false)
      final bool? penalizeNewline,
      @JsonKey(includeIfNull: false) final List<String>? stop,
      @JsonKey(includeIfNull: false) final bool? numa,
      @JsonKey(name: 'num_ctx', includeIfNull: false) final int? numCtx,
      @JsonKey(name: 'num_batch', includeIfNull: false) final int? numBatch,
      @JsonKey(name: 'num_gpu', includeIfNull: false) final int? numGpu,
      @JsonKey(name: 'main_gpu', includeIfNull: false) final int? mainGpu,
      @JsonKey(name: 'low_vram', includeIfNull: false) final bool? lowVram,
      @JsonKey(name: 'vocab_only', includeIfNull: false) final bool? vocabOnly,
      @JsonKey(name: 'use_mmap', includeIfNull: false) final bool? useMmap,
      @JsonKey(name: 'use_mlock', includeIfNull: false) final bool? useMlock,
      @JsonKey(name: 'num_thread', includeIfNull: false)
      final int? numThread}) = _$ModelOptionsImpl;

  factory _ModelOptions.fromJson(Map<String, dynamic> json) =
      _$ModelOptionsImpl.fromJson;

  /// Seed for random number generation.
  @override
  @JsonKey(includeIfNull: false)
  int? get seed;

  /// Number of tokens to keep from the beginning of the sequence.
  @override
  @JsonKey(name: 'num_keep', includeIfNull: false)
  int? get numKeep;

  /// Number of tokens to predict.
  @override
  @JsonKey(name: 'num_predict', includeIfNull: false)
  int? get numPredict;

  /// Top-k sampling parameter.
  @override
  @JsonKey(name: 'top_k', includeIfNull: false)
  int? get topK;

  /// Top-p sampling parameter.
  @override
  @JsonKey(name: 'top_p', includeIfNull: false)
  double? get topP;

  /// Minimum probability for sampling.
  @override
  @JsonKey(name: 'min_p', includeIfNull: false)
  double? get minP;

  /// Typical probability for sampling.
  @override
  @JsonKey(name: 'typical_p', includeIfNull: false)
  double? get typicalP;

  /// Number of tokens to consider for repeat penalty.
  @override
  @JsonKey(name: 'repeat_last_n', includeIfNull: false)
  int? get repeatLastN;

  /// Temperature for sampling.
  @override
  @JsonKey(includeIfNull: false)
  double? get temperature;

  /// Penalty for repeating tokens.
  @override
  @JsonKey(name: 'repeat_penalty', includeIfNull: false)
  double? get repeatPenalty;

  /// Penalty for new tokens based on presence.
  @override
  @JsonKey(name: 'presence_penalty', includeIfNull: false)
  double? get presencePenalty;

  /// Penalty for new tokens based on frequency.
  @override
  @JsonKey(name: 'frequency_penalty', includeIfNull: false)
  double? get frequencyPenalty;

  /// Mirostat sampling mode.
  @override
  @JsonKey(includeIfNull: false)
  int? get mirostat;

  /// Mirostat tau parameter.
  @override
  @JsonKey(name: 'mirostat_tau', includeIfNull: false)
  double? get mirostatTau;

  /// Mirostat eta parameter.
  @override
  @JsonKey(name: 'mirostat_eta', includeIfNull: false)
  double? get mirostatEta;

  /// Whether to penalize newline tokens.
  @override
  @JsonKey(name: 'penalize_newline', includeIfNull: false)
  bool? get penalizeNewline;

  /// List of stop tokens.
  @override
  @JsonKey(includeIfNull: false)
  List<String>? get stop;

  /// Whether to use NUMA optimization.
  @override
  @JsonKey(includeIfNull: false)
  bool? get numa;

  /// Number of context tokens.
  @override
  @JsonKey(name: 'num_ctx', includeIfNull: false)
  int? get numCtx;

  /// Number of batches.
  @override
  @JsonKey(name: 'num_batch', includeIfNull: false)
  int? get numBatch;

  /// Number of GPUs to use.
  @override
  @JsonKey(name: 'num_gpu', includeIfNull: false)
  int? get numGpu;

  /// Main GPU to use.
  @override
  @JsonKey(name: 'main_gpu', includeIfNull: false)
  int? get mainGpu;

  /// Whether to use low VRAM mode.
  @override
  @JsonKey(name: 'low_vram', includeIfNull: false)
  bool? get lowVram;

  /// Whether to load only the vocabulary.
  @override
  @JsonKey(name: 'vocab_only', includeIfNull: false)
  bool? get vocabOnly;

  /// Whether to use memory-mapped files.
  @override
  @JsonKey(name: 'use_mmap', includeIfNull: false)
  bool? get useMmap;

  /// Whether to use memory locking.
  @override
  @JsonKey(name: 'use_mlock', includeIfNull: false)
  bool? get useMlock;

  /// Number of threads to use.
  @override
  @JsonKey(name: 'num_thread', includeIfNull: false)
  int? get numThread;

  /// Create a copy of ModelOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelOptionsImplCopyWith<_$ModelOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
