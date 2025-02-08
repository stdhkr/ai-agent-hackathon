// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mnemonic_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MnemonicResponse _$MnemonicResponseFromJson(Map<String, dynamic> json) {
  return _MnemonicResponse.fromJson(json);
}

/// @nodoc
mixin _$MnemonicResponse {
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String get meaning => throw _privateConstructorUsedError;
  String get episode => throw _privateConstructorUsedError;
  List<String> get goroTexts => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  /// Serializes this MnemonicResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MnemonicResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MnemonicResponseCopyWith<MnemonicResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MnemonicResponseCopyWith<$Res> {
  factory $MnemonicResponseCopyWith(
          MnemonicResponse value, $Res Function(MnemonicResponse) then) =
      _$MnemonicResponseCopyWithImpl<$Res, MnemonicResponse>;
  @useResult
  $Res call(
      {String question,
      String answer,
      String meaning,
      String episode,
      List<String> goroTexts,
      String imagePath});
}

/// @nodoc
class _$MnemonicResponseCopyWithImpl<$Res, $Val extends MnemonicResponse>
    implements $MnemonicResponseCopyWith<$Res> {
  _$MnemonicResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MnemonicResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
    Object? meaning = null,
    Object? episode = null,
    Object? goroTexts = null,
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
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
      goroTexts: null == goroTexts
          ? _value.goroTexts
          : goroTexts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MnemonicResponseImplCopyWith<$Res>
    implements $MnemonicResponseCopyWith<$Res> {
  factory _$$MnemonicResponseImplCopyWith(_$MnemonicResponseImpl value,
          $Res Function(_$MnemonicResponseImpl) then) =
      __$$MnemonicResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String question,
      String answer,
      String meaning,
      String episode,
      List<String> goroTexts,
      String imagePath});
}

/// @nodoc
class __$$MnemonicResponseImplCopyWithImpl<$Res>
    extends _$MnemonicResponseCopyWithImpl<$Res, _$MnemonicResponseImpl>
    implements _$$MnemonicResponseImplCopyWith<$Res> {
  __$$MnemonicResponseImplCopyWithImpl(_$MnemonicResponseImpl _value,
      $Res Function(_$MnemonicResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MnemonicResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
    Object? meaning = null,
    Object? episode = null,
    Object? goroTexts = null,
    Object? imagePath = null,
  }) {
    return _then(_$MnemonicResponseImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
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
      goroTexts: null == goroTexts
          ? _value._goroTexts
          : goroTexts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MnemonicResponseImpl implements _MnemonicResponse {
  const _$MnemonicResponseImpl(
      {required this.question,
      required this.answer,
      required this.meaning,
      required this.episode,
      required final List<String> goroTexts,
      required this.imagePath})
      : _goroTexts = goroTexts;

  factory _$MnemonicResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MnemonicResponseImplFromJson(json);

  @override
  final String question;
  @override
  final String answer;
  @override
  final String meaning;
  @override
  final String episode;
  final List<String> _goroTexts;
  @override
  List<String> get goroTexts {
    if (_goroTexts is EqualUnmodifiableListView) return _goroTexts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goroTexts);
  }

  @override
  final String imagePath;

  @override
  String toString() {
    return 'MnemonicResponse(question: $question, answer: $answer, meaning: $meaning, episode: $episode, goroTexts: $goroTexts, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MnemonicResponseImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.meaning, meaning) || other.meaning == meaning) &&
            (identical(other.episode, episode) || other.episode == episode) &&
            const DeepCollectionEquality()
                .equals(other._goroTexts, _goroTexts) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer, meaning,
      episode, const DeepCollectionEquality().hash(_goroTexts), imagePath);

  /// Create a copy of MnemonicResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MnemonicResponseImplCopyWith<_$MnemonicResponseImpl> get copyWith =>
      __$$MnemonicResponseImplCopyWithImpl<_$MnemonicResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MnemonicResponseImplToJson(
      this,
    );
  }
}

abstract class _MnemonicResponse implements MnemonicResponse {
  const factory _MnemonicResponse(
      {required final String question,
      required final String answer,
      required final String meaning,
      required final String episode,
      required final List<String> goroTexts,
      required final String imagePath}) = _$MnemonicResponseImpl;

  factory _MnemonicResponse.fromJson(Map<String, dynamic> json) =
      _$MnemonicResponseImpl.fromJson;

  @override
  String get question;
  @override
  String get answer;
  @override
  String get meaning;
  @override
  String get episode;
  @override
  List<String> get goroTexts;
  @override
  String get imagePath;

  /// Create a copy of MnemonicResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MnemonicResponseImplCopyWith<_$MnemonicResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
