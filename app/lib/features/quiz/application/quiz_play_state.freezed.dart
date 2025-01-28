// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_play_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemorizedPlay _$MemorizedPlayFromJson(Map<String, dynamic> json) {
  return _MemorizedPlay.fromJson(json);
}

/// @nodoc
mixin _$MemorizedPlay {
  bool get isFront => throw _privateConstructorUsedError;
  bool get isFilteredAnswer => throw _privateConstructorUsedError;
  bool get isMemorized => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this MemorizedPlay to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemorizedPlay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemorizedPlayCopyWith<MemorizedPlay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemorizedPlayCopyWith<$Res> {
  factory $MemorizedPlayCopyWith(
          MemorizedPlay value, $Res Function(MemorizedPlay) then) =
      _$MemorizedPlayCopyWithImpl<$Res, MemorizedPlay>;
  @useResult
  $Res call(
      {bool isFront,
      bool isFilteredAnswer,
      bool isMemorized,
      bool isCompleted});
}

/// @nodoc
class _$MemorizedPlayCopyWithImpl<$Res, $Val extends MemorizedPlay>
    implements $MemorizedPlayCopyWith<$Res> {
  _$MemorizedPlayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemorizedPlay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFront = null,
    Object? isFilteredAnswer = null,
    Object? isMemorized = null,
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      isFront: null == isFront
          ? _value.isFront
          : isFront // ignore: cast_nullable_to_non_nullable
              as bool,
      isFilteredAnswer: null == isFilteredAnswer
          ? _value.isFilteredAnswer
          : isFilteredAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
      isMemorized: null == isMemorized
          ? _value.isMemorized
          : isMemorized // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemorizedPlayImplCopyWith<$Res>
    implements $MemorizedPlayCopyWith<$Res> {
  factory _$$MemorizedPlayImplCopyWith(
          _$MemorizedPlayImpl value, $Res Function(_$MemorizedPlayImpl) then) =
      __$$MemorizedPlayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isFront,
      bool isFilteredAnswer,
      bool isMemorized,
      bool isCompleted});
}

/// @nodoc
class __$$MemorizedPlayImplCopyWithImpl<$Res>
    extends _$MemorizedPlayCopyWithImpl<$Res, _$MemorizedPlayImpl>
    implements _$$MemorizedPlayImplCopyWith<$Res> {
  __$$MemorizedPlayImplCopyWithImpl(
      _$MemorizedPlayImpl _value, $Res Function(_$MemorizedPlayImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemorizedPlay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFront = null,
    Object? isFilteredAnswer = null,
    Object? isMemorized = null,
    Object? isCompleted = null,
  }) {
    return _then(_$MemorizedPlayImpl(
      isFront: null == isFront
          ? _value.isFront
          : isFront // ignore: cast_nullable_to_non_nullable
              as bool,
      isFilteredAnswer: null == isFilteredAnswer
          ? _value.isFilteredAnswer
          : isFilteredAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
      isMemorized: null == isMemorized
          ? _value.isMemorized
          : isMemorized // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemorizedPlayImpl implements _MemorizedPlay {
  const _$MemorizedPlayImpl(
      {this.isFront = true,
      this.isFilteredAnswer = false,
      this.isMemorized = false,
      this.isCompleted = false});

  factory _$MemorizedPlayImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemorizedPlayImplFromJson(json);

  @override
  @JsonKey()
  final bool isFront;
  @override
  @JsonKey()
  final bool isFilteredAnswer;
  @override
  @JsonKey()
  final bool isMemorized;
  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString() {
    return 'MemorizedPlay(isFront: $isFront, isFilteredAnswer: $isFilteredAnswer, isMemorized: $isMemorized, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemorizedPlayImpl &&
            (identical(other.isFront, isFront) || other.isFront == isFront) &&
            (identical(other.isFilteredAnswer, isFilteredAnswer) ||
                other.isFilteredAnswer == isFilteredAnswer) &&
            (identical(other.isMemorized, isMemorized) ||
                other.isMemorized == isMemorized) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, isFront, isFilteredAnswer, isMemorized, isCompleted);

  /// Create a copy of MemorizedPlay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemorizedPlayImplCopyWith<_$MemorizedPlayImpl> get copyWith =>
      __$$MemorizedPlayImplCopyWithImpl<_$MemorizedPlayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemorizedPlayImplToJson(
      this,
    );
  }
}

abstract class _MemorizedPlay implements MemorizedPlay {
  const factory _MemorizedPlay(
      {final bool isFront,
      final bool isFilteredAnswer,
      final bool isMemorized,
      final bool isCompleted}) = _$MemorizedPlayImpl;

  factory _MemorizedPlay.fromJson(Map<String, dynamic> json) =
      _$MemorizedPlayImpl.fromJson;

  @override
  bool get isFront;
  @override
  bool get isFilteredAnswer;
  @override
  bool get isMemorized;
  @override
  bool get isCompleted;

  /// Create a copy of MemorizedPlay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemorizedPlayImplCopyWith<_$MemorizedPlayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuizPlayState {
  List<Mnemonic> get mnemonics => throw _privateConstructorUsedError;
  List<MemorizedPlay> get memorizeds => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Create a copy of QuizPlayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizPlayStateCopyWith<QuizPlayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizPlayStateCopyWith<$Res> {
  factory $QuizPlayStateCopyWith(
          QuizPlayState value, $Res Function(QuizPlayState) then) =
      _$QuizPlayStateCopyWithImpl<$Res, QuizPlayState>;
  @useResult
  $Res call(
      {List<Mnemonic> mnemonics,
      List<MemorizedPlay> memorizeds,
      int currentPage,
      bool isCompleted});
}

/// @nodoc
class _$QuizPlayStateCopyWithImpl<$Res, $Val extends QuizPlayState>
    implements $QuizPlayStateCopyWith<$Res> {
  _$QuizPlayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizPlayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mnemonics = null,
    Object? memorizeds = null,
    Object? currentPage = null,
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      mnemonics: null == mnemonics
          ? _value.mnemonics
          : mnemonics // ignore: cast_nullable_to_non_nullable
              as List<Mnemonic>,
      memorizeds: null == memorizeds
          ? _value.memorizeds
          : memorizeds // ignore: cast_nullable_to_non_nullable
              as List<MemorizedPlay>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizPlayStateImplCopyWith<$Res>
    implements $QuizPlayStateCopyWith<$Res> {
  factory _$$QuizPlayStateImplCopyWith(
          _$QuizPlayStateImpl value, $Res Function(_$QuizPlayStateImpl) then) =
      __$$QuizPlayStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Mnemonic> mnemonics,
      List<MemorizedPlay> memorizeds,
      int currentPage,
      bool isCompleted});
}

/// @nodoc
class __$$QuizPlayStateImplCopyWithImpl<$Res>
    extends _$QuizPlayStateCopyWithImpl<$Res, _$QuizPlayStateImpl>
    implements _$$QuizPlayStateImplCopyWith<$Res> {
  __$$QuizPlayStateImplCopyWithImpl(
      _$QuizPlayStateImpl _value, $Res Function(_$QuizPlayStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizPlayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mnemonics = null,
    Object? memorizeds = null,
    Object? currentPage = null,
    Object? isCompleted = null,
  }) {
    return _then(_$QuizPlayStateImpl(
      mnemonics: null == mnemonics
          ? _value._mnemonics
          : mnemonics // ignore: cast_nullable_to_non_nullable
              as List<Mnemonic>,
      memorizeds: null == memorizeds
          ? _value._memorizeds
          : memorizeds // ignore: cast_nullable_to_non_nullable
              as List<MemorizedPlay>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$QuizPlayStateImpl extends _QuizPlayState {
  _$QuizPlayStateImpl(
      {final List<Mnemonic> mnemonics = const <Mnemonic>[],
      final List<MemorizedPlay> memorizeds = const <MemorizedPlay>[],
      this.currentPage = 0,
      this.isCompleted = false})
      : _mnemonics = mnemonics,
        _memorizeds = memorizeds,
        super._();

  final List<Mnemonic> _mnemonics;
  @override
  @JsonKey()
  List<Mnemonic> get mnemonics {
    if (_mnemonics is EqualUnmodifiableListView) return _mnemonics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mnemonics);
  }

  final List<MemorizedPlay> _memorizeds;
  @override
  @JsonKey()
  List<MemorizedPlay> get memorizeds {
    if (_memorizeds is EqualUnmodifiableListView) return _memorizeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memorizeds);
  }

  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString() {
    return 'QuizPlayState(mnemonics: $mnemonics, memorizeds: $memorizeds, currentPage: $currentPage, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizPlayStateImpl &&
            const DeepCollectionEquality()
                .equals(other._mnemonics, _mnemonics) &&
            const DeepCollectionEquality()
                .equals(other._memorizeds, _memorizeds) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_mnemonics),
      const DeepCollectionEquality().hash(_memorizeds),
      currentPage,
      isCompleted);

  /// Create a copy of QuizPlayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizPlayStateImplCopyWith<_$QuizPlayStateImpl> get copyWith =>
      __$$QuizPlayStateImplCopyWithImpl<_$QuizPlayStateImpl>(this, _$identity);
}

abstract class _QuizPlayState extends QuizPlayState {
  factory _QuizPlayState(
      {final List<Mnemonic> mnemonics,
      final List<MemorizedPlay> memorizeds,
      final int currentPage,
      final bool isCompleted}) = _$QuizPlayStateImpl;
  _QuizPlayState._() : super._();

  @override
  List<Mnemonic> get mnemonics;
  @override
  List<MemorizedPlay> get memorizeds;
  @override
  int get currentPage;
  @override
  bool get isCompleted;

  /// Create a copy of QuizPlayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizPlayStateImplCopyWith<_$QuizPlayStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
