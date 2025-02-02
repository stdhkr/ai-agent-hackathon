// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  AppUser? get appUser => throw _privateConstructorUsedError;
  List<Mnemonic> get mnemonics => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({AppUser? appUser, List<Mnemonic> mnemonics});

  $AppUserCopyWith<$Res>? get appUser;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = freezed,
    Object? mnemonics = null,
  }) {
    return _then(_value.copyWith(
      appUser: freezed == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      mnemonics: null == mnemonics
          ? _value.mnemonics
          : mnemonics // ignore: cast_nullable_to_non_nullable
              as List<Mnemonic>,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get appUser {
    if (_value.appUser == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.appUser!, (value) {
      return _then(_value.copyWith(appUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppUser? appUser, List<Mnemonic> mnemonics});

  @override
  $AppUserCopyWith<$Res>? get appUser;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = freezed,
    Object? mnemonics = null,
  }) {
    return _then(_$HomeStateImpl(
      appUser: freezed == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      mnemonics: null == mnemonics
          ? _value._mnemonics
          : mnemonics // ignore: cast_nullable_to_non_nullable
              as List<Mnemonic>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl extends _HomeState {
  _$HomeStateImpl(
      {this.appUser, final List<Mnemonic> mnemonics = const <Mnemonic>[]})
      : _mnemonics = mnemonics,
        super._();

  @override
  final AppUser? appUser;
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
    return 'HomeState(appUser: $appUser, mnemonics: $mnemonics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.appUser, appUser) || other.appUser == appUser) &&
            const DeepCollectionEquality()
                .equals(other._mnemonics, _mnemonics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, appUser, const DeepCollectionEquality().hash(_mnemonics));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  factory _HomeState({final AppUser? appUser, final List<Mnemonic> mnemonics}) =
      _$HomeStateImpl;
  _HomeState._() : super._();

  @override
  AppUser? get appUser;
  @override
  List<Mnemonic> get mnemonics;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
