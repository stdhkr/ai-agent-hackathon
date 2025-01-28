// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mnemonic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Mnemonic _$MnemonicFromJson(Map<String, dynamic> json) {
  return _Mnemonic.fromJson(json);
}

/// @nodoc
mixin _$Mnemonic {
  String get id => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String get meaning => throw _privateConstructorUsedError;
  String get episode => throw _privateConstructorUsedError;
  String get goroText => throw _privateConstructorUsedError;
  String? get voicePath => throw _privateConstructorUsedError;
  String? get questionImagePath => throw _privateConstructorUsedError;
  String? get outputImagePath => throw _privateConstructorUsedError;
  int get memorizedCount => throw _privateConstructorUsedError;
  int get unmemorizedCount => throw _privateConstructorUsedError;
  bool get lastMemorized => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get lastQuizAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Mnemonic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Mnemonic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MnemonicCopyWith<Mnemonic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MnemonicCopyWith<$Res> {
  factory $MnemonicCopyWith(Mnemonic value, $Res Function(Mnemonic) then) =
      _$MnemonicCopyWithImpl<$Res, Mnemonic>;
  @useResult
  $Res call(
      {String id,
      String? question,
      String answer,
      String meaning,
      String episode,
      String goroText,
      String? voicePath,
      String? questionImagePath,
      String? outputImagePath,
      int memorizedCount,
      int unmemorizedCount,
      bool lastMemorized,
      @TimestampConverter() DateTime lastQuizAt,
      @TimestampConverter() DateTime createdAt,
      @TimestampConverter() DateTime updatedAt});
}

/// @nodoc
class _$MnemonicCopyWithImpl<$Res, $Val extends Mnemonic>
    implements $MnemonicCopyWith<$Res> {
  _$MnemonicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Mnemonic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = freezed,
    Object? answer = null,
    Object? meaning = null,
    Object? episode = null,
    Object? goroText = null,
    Object? voicePath = freezed,
    Object? questionImagePath = freezed,
    Object? outputImagePath = freezed,
    Object? memorizedCount = null,
    Object? unmemorizedCount = null,
    Object? lastMemorized = null,
    Object? lastQuizAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String,
      goroText: null == goroText
          ? _value.goroText
          : goroText // ignore: cast_nullable_to_non_nullable
              as String,
      voicePath: freezed == voicePath
          ? _value.voicePath
          : voicePath // ignore: cast_nullable_to_non_nullable
              as String?,
      questionImagePath: freezed == questionImagePath
          ? _value.questionImagePath
          : questionImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      outputImagePath: freezed == outputImagePath
          ? _value.outputImagePath
          : outputImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      memorizedCount: null == memorizedCount
          ? _value.memorizedCount
          : memorizedCount // ignore: cast_nullable_to_non_nullable
              as int,
      unmemorizedCount: null == unmemorizedCount
          ? _value.unmemorizedCount
          : unmemorizedCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastMemorized: null == lastMemorized
          ? _value.lastMemorized
          : lastMemorized // ignore: cast_nullable_to_non_nullable
              as bool,
      lastQuizAt: null == lastQuizAt
          ? _value.lastQuizAt
          : lastQuizAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MnemonicImplCopyWith<$Res>
    implements $MnemonicCopyWith<$Res> {
  factory _$$MnemonicImplCopyWith(
          _$MnemonicImpl value, $Res Function(_$MnemonicImpl) then) =
      __$$MnemonicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? question,
      String answer,
      String meaning,
      String episode,
      String goroText,
      String? voicePath,
      String? questionImagePath,
      String? outputImagePath,
      int memorizedCount,
      int unmemorizedCount,
      bool lastMemorized,
      @TimestampConverter() DateTime lastQuizAt,
      @TimestampConverter() DateTime createdAt,
      @TimestampConverter() DateTime updatedAt});
}

/// @nodoc
class __$$MnemonicImplCopyWithImpl<$Res>
    extends _$MnemonicCopyWithImpl<$Res, _$MnemonicImpl>
    implements _$$MnemonicImplCopyWith<$Res> {
  __$$MnemonicImplCopyWithImpl(
      _$MnemonicImpl _value, $Res Function(_$MnemonicImpl) _then)
      : super(_value, _then);

  /// Create a copy of Mnemonic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = freezed,
    Object? answer = null,
    Object? meaning = null,
    Object? episode = null,
    Object? goroText = null,
    Object? voicePath = freezed,
    Object? questionImagePath = freezed,
    Object? outputImagePath = freezed,
    Object? memorizedCount = null,
    Object? unmemorizedCount = null,
    Object? lastMemorized = null,
    Object? lastQuizAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$MnemonicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String,
      goroText: null == goroText
          ? _value.goroText
          : goroText // ignore: cast_nullable_to_non_nullable
              as String,
      voicePath: freezed == voicePath
          ? _value.voicePath
          : voicePath // ignore: cast_nullable_to_non_nullable
              as String?,
      questionImagePath: freezed == questionImagePath
          ? _value.questionImagePath
          : questionImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      outputImagePath: freezed == outputImagePath
          ? _value.outputImagePath
          : outputImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      memorizedCount: null == memorizedCount
          ? _value.memorizedCount
          : memorizedCount // ignore: cast_nullable_to_non_nullable
              as int,
      unmemorizedCount: null == unmemorizedCount
          ? _value.unmemorizedCount
          : unmemorizedCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastMemorized: null == lastMemorized
          ? _value.lastMemorized
          : lastMemorized // ignore: cast_nullable_to_non_nullable
              as bool,
      lastQuizAt: null == lastQuizAt
          ? _value.lastQuizAt
          : lastQuizAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MnemonicImpl extends _Mnemonic {
  const _$MnemonicImpl(
      {required this.id,
      this.question,
      this.answer = '',
      this.meaning = '',
      this.episode = '',
      this.goroText = '',
      this.voicePath,
      this.questionImagePath,
      this.outputImagePath,
      this.memorizedCount = 0,
      this.unmemorizedCount = 0,
      this.lastMemorized = false,
      @TimestampConverter() required this.lastQuizAt,
      @TimestampConverter() required this.createdAt,
      @TimestampConverter() required this.updatedAt})
      : super._();

  factory _$MnemonicImpl.fromJson(Map<String, dynamic> json) =>
      _$$MnemonicImplFromJson(json);

  @override
  final String id;
  @override
  final String? question;
  @override
  @JsonKey()
  final String answer;
  @override
  @JsonKey()
  final String meaning;
  @override
  @JsonKey()
  final String episode;
  @override
  @JsonKey()
  final String goroText;
  @override
  final String? voicePath;
  @override
  final String? questionImagePath;
  @override
  final String? outputImagePath;
  @override
  @JsonKey()
  final int memorizedCount;
  @override
  @JsonKey()
  final int unmemorizedCount;
  @override
  @JsonKey()
  final bool lastMemorized;
  @override
  @TimestampConverter()
  final DateTime lastQuizAt;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  @TimestampConverter()
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Mnemonic(id: $id, question: $question, answer: $answer, meaning: $meaning, episode: $episode, goroText: $goroText, voicePath: $voicePath, questionImagePath: $questionImagePath, outputImagePath: $outputImagePath, memorizedCount: $memorizedCount, unmemorizedCount: $unmemorizedCount, lastMemorized: $lastMemorized, lastQuizAt: $lastQuizAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MnemonicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.meaning, meaning) || other.meaning == meaning) &&
            (identical(other.episode, episode) || other.episode == episode) &&
            (identical(other.goroText, goroText) ||
                other.goroText == goroText) &&
            (identical(other.voicePath, voicePath) ||
                other.voicePath == voicePath) &&
            (identical(other.questionImagePath, questionImagePath) ||
                other.questionImagePath == questionImagePath) &&
            (identical(other.outputImagePath, outputImagePath) ||
                other.outputImagePath == outputImagePath) &&
            (identical(other.memorizedCount, memorizedCount) ||
                other.memorizedCount == memorizedCount) &&
            (identical(other.unmemorizedCount, unmemorizedCount) ||
                other.unmemorizedCount == unmemorizedCount) &&
            (identical(other.lastMemorized, lastMemorized) ||
                other.lastMemorized == lastMemorized) &&
            (identical(other.lastQuizAt, lastQuizAt) ||
                other.lastQuizAt == lastQuizAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      question,
      answer,
      meaning,
      episode,
      goroText,
      voicePath,
      questionImagePath,
      outputImagePath,
      memorizedCount,
      unmemorizedCount,
      lastMemorized,
      lastQuizAt,
      createdAt,
      updatedAt);

  /// Create a copy of Mnemonic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MnemonicImplCopyWith<_$MnemonicImpl> get copyWith =>
      __$$MnemonicImplCopyWithImpl<_$MnemonicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MnemonicImplToJson(
      this,
    );
  }
}

abstract class _Mnemonic extends Mnemonic {
  const factory _Mnemonic(
          {required final String id,
          final String? question,
          final String answer,
          final String meaning,
          final String episode,
          final String goroText,
          final String? voicePath,
          final String? questionImagePath,
          final String? outputImagePath,
          final int memorizedCount,
          final int unmemorizedCount,
          final bool lastMemorized,
          @TimestampConverter() required final DateTime lastQuizAt,
          @TimestampConverter() required final DateTime createdAt,
          @TimestampConverter() required final DateTime updatedAt}) =
      _$MnemonicImpl;
  const _Mnemonic._() : super._();

  factory _Mnemonic.fromJson(Map<String, dynamic> json) =
      _$MnemonicImpl.fromJson;

  @override
  String get id;
  @override
  String? get question;
  @override
  String get answer;
  @override
  String get meaning;
  @override
  String get episode;
  @override
  String get goroText;
  @override
  String? get voicePath;
  @override
  String? get questionImagePath;
  @override
  String? get outputImagePath;
  @override
  int get memorizedCount;
  @override
  int get unmemorizedCount;
  @override
  bool get lastMemorized;
  @override
  @TimestampConverter()
  DateTime get lastQuizAt;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @TimestampConverter()
  DateTime get updatedAt;

  /// Create a copy of Mnemonic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MnemonicImplCopyWith<_$MnemonicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
