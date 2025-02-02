// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 're_generate_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReGenerateState {
  bool get isReGenerateEnabled => throw _privateConstructorUsedError;
  Mnemonic get mnemonic => throw _privateConstructorUsedError;

  /// Create a copy of ReGenerateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReGenerateStateCopyWith<ReGenerateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReGenerateStateCopyWith<$Res> {
  factory $ReGenerateStateCopyWith(
          ReGenerateState value, $Res Function(ReGenerateState) then) =
      _$ReGenerateStateCopyWithImpl<$Res, ReGenerateState>;
  @useResult
  $Res call({bool isReGenerateEnabled, Mnemonic mnemonic});

  $MnemonicCopyWith<$Res> get mnemonic;
}

/// @nodoc
class _$ReGenerateStateCopyWithImpl<$Res, $Val extends ReGenerateState>
    implements $ReGenerateStateCopyWith<$Res> {
  _$ReGenerateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReGenerateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReGenerateEnabled = null,
    Object? mnemonic = null,
  }) {
    return _then(_value.copyWith(
      isReGenerateEnabled: null == isReGenerateEnabled
          ? _value.isReGenerateEnabled
          : isReGenerateEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      mnemonic: null == mnemonic
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as Mnemonic,
    ) as $Val);
  }

  /// Create a copy of ReGenerateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MnemonicCopyWith<$Res> get mnemonic {
    return $MnemonicCopyWith<$Res>(_value.mnemonic, (value) {
      return _then(_value.copyWith(mnemonic: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReGenerateStateImplCopyWith<$Res>
    implements $ReGenerateStateCopyWith<$Res> {
  factory _$$ReGenerateStateImplCopyWith(_$ReGenerateStateImpl value,
          $Res Function(_$ReGenerateStateImpl) then) =
      __$$ReGenerateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isReGenerateEnabled, Mnemonic mnemonic});

  @override
  $MnemonicCopyWith<$Res> get mnemonic;
}

/// @nodoc
class __$$ReGenerateStateImplCopyWithImpl<$Res>
    extends _$ReGenerateStateCopyWithImpl<$Res, _$ReGenerateStateImpl>
    implements _$$ReGenerateStateImplCopyWith<$Res> {
  __$$ReGenerateStateImplCopyWithImpl(
      _$ReGenerateStateImpl _value, $Res Function(_$ReGenerateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReGenerateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReGenerateEnabled = null,
    Object? mnemonic = null,
  }) {
    return _then(_$ReGenerateStateImpl(
      isReGenerateEnabled: null == isReGenerateEnabled
          ? _value.isReGenerateEnabled
          : isReGenerateEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      mnemonic: null == mnemonic
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as Mnemonic,
    ));
  }
}

/// @nodoc

class _$ReGenerateStateImpl extends _ReGenerateState {
  _$ReGenerateStateImpl(
      {this.isReGenerateEnabled = true, required this.mnemonic})
      : super._();

  @override
  @JsonKey()
  final bool isReGenerateEnabled;
  @override
  final Mnemonic mnemonic;

  @override
  String toString() {
    return 'ReGenerateState(isReGenerateEnabled: $isReGenerateEnabled, mnemonic: $mnemonic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReGenerateStateImpl &&
            (identical(other.isReGenerateEnabled, isReGenerateEnabled) ||
                other.isReGenerateEnabled == isReGenerateEnabled) &&
            (identical(other.mnemonic, mnemonic) ||
                other.mnemonic == mnemonic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isReGenerateEnabled, mnemonic);

  /// Create a copy of ReGenerateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReGenerateStateImplCopyWith<_$ReGenerateStateImpl> get copyWith =>
      __$$ReGenerateStateImplCopyWithImpl<_$ReGenerateStateImpl>(
          this, _$identity);
}

abstract class _ReGenerateState extends ReGenerateState {
  factory _ReGenerateState(
      {final bool isReGenerateEnabled,
      required final Mnemonic mnemonic}) = _$ReGenerateStateImpl;
  _ReGenerateState._() : super._();

  @override
  bool get isReGenerateEnabled;
  @override
  Mnemonic get mnemonic;

  /// Create a copy of ReGenerateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReGenerateStateImplCopyWith<_$ReGenerateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
