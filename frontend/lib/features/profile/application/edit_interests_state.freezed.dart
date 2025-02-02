// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_interests_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditInterestsState {
  String get interests => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;

  /// Create a copy of EditInterestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditInterestsStateCopyWith<EditInterestsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditInterestsStateCopyWith<$Res> {
  factory $EditInterestsStateCopyWith(
          EditInterestsState value, $Res Function(EditInterestsState) then) =
      _$EditInterestsStateCopyWithImpl<$Res, EditInterestsState>;
  @useResult
  $Res call({String interests, bool isUpdating});
}

/// @nodoc
class _$EditInterestsStateCopyWithImpl<$Res, $Val extends EditInterestsState>
    implements $EditInterestsStateCopyWith<$Res> {
  _$EditInterestsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditInterestsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interests = null,
    Object? isUpdating = null,
  }) {
    return _then(_value.copyWith(
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditInterestsStateImplCopyWith<$Res>
    implements $EditInterestsStateCopyWith<$Res> {
  factory _$$EditInterestsStateImplCopyWith(_$EditInterestsStateImpl value,
          $Res Function(_$EditInterestsStateImpl) then) =
      __$$EditInterestsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String interests, bool isUpdating});
}

/// @nodoc
class __$$EditInterestsStateImplCopyWithImpl<$Res>
    extends _$EditInterestsStateCopyWithImpl<$Res, _$EditInterestsStateImpl>
    implements _$$EditInterestsStateImplCopyWith<$Res> {
  __$$EditInterestsStateImplCopyWithImpl(_$EditInterestsStateImpl _value,
      $Res Function(_$EditInterestsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditInterestsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interests = null,
    Object? isUpdating = null,
  }) {
    return _then(_$EditInterestsStateImpl(
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EditInterestsStateImpl extends _EditInterestsState {
  _$EditInterestsStateImpl({this.interests = '', this.isUpdating = false})
      : super._();

  @override
  @JsonKey()
  final String interests;
  @override
  @JsonKey()
  final bool isUpdating;

  @override
  String toString() {
    return 'EditInterestsState(interests: $interests, isUpdating: $isUpdating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditInterestsStateImpl &&
            (identical(other.interests, interests) ||
                other.interests == interests) &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, interests, isUpdating);

  /// Create a copy of EditInterestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditInterestsStateImplCopyWith<_$EditInterestsStateImpl> get copyWith =>
      __$$EditInterestsStateImplCopyWithImpl<_$EditInterestsStateImpl>(
          this, _$identity);
}

abstract class _EditInterestsState extends EditInterestsState {
  factory _EditInterestsState({final String interests, final bool isUpdating}) =
      _$EditInterestsStateImpl;
  _EditInterestsState._() : super._();

  @override
  String get interests;
  @override
  bool get isUpdating;

  /// Create a copy of EditInterestsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditInterestsStateImplCopyWith<_$EditInterestsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
