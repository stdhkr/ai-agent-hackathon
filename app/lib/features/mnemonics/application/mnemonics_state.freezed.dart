// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mnemonics_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MnemonicsState {
  List<Mnemonic> get mnemonics => throw _privateConstructorUsedError;

  /// Create a copy of MnemonicsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MnemonicsStateCopyWith<MnemonicsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MnemonicsStateCopyWith<$Res> {
  factory $MnemonicsStateCopyWith(
          MnemonicsState value, $Res Function(MnemonicsState) then) =
      _$MnemonicsStateCopyWithImpl<$Res, MnemonicsState>;
  @useResult
  $Res call({List<Mnemonic> mnemonics});
}

/// @nodoc
class _$MnemonicsStateCopyWithImpl<$Res, $Val extends MnemonicsState>
    implements $MnemonicsStateCopyWith<$Res> {
  _$MnemonicsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MnemonicsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mnemonics = null,
  }) {
    return _then(_value.copyWith(
      mnemonics: null == mnemonics
          ? _value.mnemonics
          : mnemonics // ignore: cast_nullable_to_non_nullable
              as List<Mnemonic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MnemonicsStateImplCopyWith<$Res>
    implements $MnemonicsStateCopyWith<$Res> {
  factory _$$MnemonicsStateImplCopyWith(_$MnemonicsStateImpl value,
          $Res Function(_$MnemonicsStateImpl) then) =
      __$$MnemonicsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Mnemonic> mnemonics});
}

/// @nodoc
class __$$MnemonicsStateImplCopyWithImpl<$Res>
    extends _$MnemonicsStateCopyWithImpl<$Res, _$MnemonicsStateImpl>
    implements _$$MnemonicsStateImplCopyWith<$Res> {
  __$$MnemonicsStateImplCopyWithImpl(
      _$MnemonicsStateImpl _value, $Res Function(_$MnemonicsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MnemonicsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mnemonics = null,
  }) {
    return _then(_$MnemonicsStateImpl(
      mnemonics: null == mnemonics
          ? _value._mnemonics
          : mnemonics // ignore: cast_nullable_to_non_nullable
              as List<Mnemonic>,
    ));
  }
}

/// @nodoc

class _$MnemonicsStateImpl extends _MnemonicsState {
  _$MnemonicsStateImpl({final List<Mnemonic> mnemonics = const <Mnemonic>[]})
      : _mnemonics = mnemonics,
        super._();

  final List<Mnemonic> _mnemonics;
  @override
  @JsonKey()
  List<Mnemonic> get mnemonics {
    if (_mnemonics is EqualUnmodifiableListView) return _mnemonics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mnemonics);
  }

  @override
  String toString() {
    return 'MnemonicsState(mnemonics: $mnemonics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MnemonicsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._mnemonics, _mnemonics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_mnemonics));

  /// Create a copy of MnemonicsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MnemonicsStateImplCopyWith<_$MnemonicsStateImpl> get copyWith =>
      __$$MnemonicsStateImplCopyWithImpl<_$MnemonicsStateImpl>(
          this, _$identity);
}

abstract class _MnemonicsState extends MnemonicsState {
  factory _MnemonicsState({final List<Mnemonic> mnemonics}) =
      _$MnemonicsStateImpl;
  _MnemonicsState._() : super._();

  @override
  List<Mnemonic> get mnemonics;

  /// Create a copy of MnemonicsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MnemonicsStateImplCopyWith<_$MnemonicsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
