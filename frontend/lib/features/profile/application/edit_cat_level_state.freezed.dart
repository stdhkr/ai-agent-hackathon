// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_cat_level_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditCatLevelState {
  double get catLevel => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;

  /// Create a copy of EditCatLevelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditCatLevelStateCopyWith<EditCatLevelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCatLevelStateCopyWith<$Res> {
  factory $EditCatLevelStateCopyWith(
          EditCatLevelState value, $Res Function(EditCatLevelState) then) =
      _$EditCatLevelStateCopyWithImpl<$Res, EditCatLevelState>;
  @useResult
  $Res call({double catLevel, bool isUpdating});
}

/// @nodoc
class _$EditCatLevelStateCopyWithImpl<$Res, $Val extends EditCatLevelState>
    implements $EditCatLevelStateCopyWith<$Res> {
  _$EditCatLevelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditCatLevelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catLevel = null,
    Object? isUpdating = null,
  }) {
    return _then(_value.copyWith(
      catLevel: null == catLevel
          ? _value.catLevel
          : catLevel // ignore: cast_nullable_to_non_nullable
              as double,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditCatLevelStateImplCopyWith<$Res>
    implements $EditCatLevelStateCopyWith<$Res> {
  factory _$$EditCatLevelStateImplCopyWith(_$EditCatLevelStateImpl value,
          $Res Function(_$EditCatLevelStateImpl) then) =
      __$$EditCatLevelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double catLevel, bool isUpdating});
}

/// @nodoc
class __$$EditCatLevelStateImplCopyWithImpl<$Res>
    extends _$EditCatLevelStateCopyWithImpl<$Res, _$EditCatLevelStateImpl>
    implements _$$EditCatLevelStateImplCopyWith<$Res> {
  __$$EditCatLevelStateImplCopyWithImpl(_$EditCatLevelStateImpl _value,
      $Res Function(_$EditCatLevelStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditCatLevelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catLevel = null,
    Object? isUpdating = null,
  }) {
    return _then(_$EditCatLevelStateImpl(
      catLevel: null == catLevel
          ? _value.catLevel
          : catLevel // ignore: cast_nullable_to_non_nullable
              as double,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EditCatLevelStateImpl extends _EditCatLevelState {
  _$EditCatLevelStateImpl(
      {this.catLevel = defaultCatLevel, this.isUpdating = false})
      : super._();

  @override
  @JsonKey()
  final double catLevel;
  @override
  @JsonKey()
  final bool isUpdating;

  @override
  String toString() {
    return 'EditCatLevelState(catLevel: $catLevel, isUpdating: $isUpdating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditCatLevelStateImpl &&
            (identical(other.catLevel, catLevel) ||
                other.catLevel == catLevel) &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, catLevel, isUpdating);

  /// Create a copy of EditCatLevelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditCatLevelStateImplCopyWith<_$EditCatLevelStateImpl> get copyWith =>
      __$$EditCatLevelStateImplCopyWithImpl<_$EditCatLevelStateImpl>(
          this, _$identity);
}

abstract class _EditCatLevelState extends EditCatLevelState {
  factory _EditCatLevelState({final double catLevel, final bool isUpdating}) =
      _$EditCatLevelStateImpl;
  _EditCatLevelState._() : super._();

  @override
  double get catLevel;
  @override
  bool get isUpdating;

  /// Create a copy of EditCatLevelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditCatLevelStateImplCopyWith<_$EditCatLevelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
