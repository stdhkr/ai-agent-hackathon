// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'combined_auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CombinedAuthState {
  User? get user => throw _privateConstructorUsedError;
  bool get isProfileComplete => throw _privateConstructorUsedError;

  /// Create a copy of CombinedAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CombinedAuthStateCopyWith<CombinedAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CombinedAuthStateCopyWith<$Res> {
  factory $CombinedAuthStateCopyWith(
          CombinedAuthState value, $Res Function(CombinedAuthState) then) =
      _$CombinedAuthStateCopyWithImpl<$Res, CombinedAuthState>;
  @useResult
  $Res call({User? user, bool isProfileComplete});
}

/// @nodoc
class _$CombinedAuthStateCopyWithImpl<$Res, $Val extends CombinedAuthState>
    implements $CombinedAuthStateCopyWith<$Res> {
  _$CombinedAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CombinedAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isProfileComplete = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isProfileComplete: null == isProfileComplete
          ? _value.isProfileComplete
          : isProfileComplete // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CombinedAuthStateImplCopyWith<$Res>
    implements $CombinedAuthStateCopyWith<$Res> {
  factory _$$CombinedAuthStateImplCopyWith(_$CombinedAuthStateImpl value,
          $Res Function(_$CombinedAuthStateImpl) then) =
      __$$CombinedAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, bool isProfileComplete});
}

/// @nodoc
class __$$CombinedAuthStateImplCopyWithImpl<$Res>
    extends _$CombinedAuthStateCopyWithImpl<$Res, _$CombinedAuthStateImpl>
    implements _$$CombinedAuthStateImplCopyWith<$Res> {
  __$$CombinedAuthStateImplCopyWithImpl(_$CombinedAuthStateImpl _value,
      $Res Function(_$CombinedAuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CombinedAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isProfileComplete = null,
  }) {
    return _then(_$CombinedAuthStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isProfileComplete: null == isProfileComplete
          ? _value.isProfileComplete
          : isProfileComplete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CombinedAuthStateImpl extends _CombinedAuthState {
  _$CombinedAuthStateImpl({this.user, this.isProfileComplete = false})
      : super._();

  @override
  final User? user;
  @override
  @JsonKey()
  final bool isProfileComplete;

  @override
  String toString() {
    return 'CombinedAuthState(user: $user, isProfileComplete: $isProfileComplete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CombinedAuthStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isProfileComplete, isProfileComplete) ||
                other.isProfileComplete == isProfileComplete));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isProfileComplete);

  /// Create a copy of CombinedAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CombinedAuthStateImplCopyWith<_$CombinedAuthStateImpl> get copyWith =>
      __$$CombinedAuthStateImplCopyWithImpl<_$CombinedAuthStateImpl>(
          this, _$identity);
}

abstract class _CombinedAuthState extends CombinedAuthState {
  factory _CombinedAuthState({final User? user, final bool isProfileComplete}) =
      _$CombinedAuthStateImpl;
  _CombinedAuthState._() : super._();

  @override
  User? get user;
  @override
  bool get isProfileComplete;

  /// Create a copy of CombinedAuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CombinedAuthStateImplCopyWith<_$CombinedAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
