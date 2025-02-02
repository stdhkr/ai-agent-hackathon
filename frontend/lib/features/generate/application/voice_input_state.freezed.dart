// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voice_input_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VoiceInputState {
  bool get isInitialized => throw _privateConstructorUsedError;
  bool get isRecording => throw _privateConstructorUsedError;
  String? get filePath => throw _privateConstructorUsedError;

  /// Create a copy of VoiceInputState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VoiceInputStateCopyWith<VoiceInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoiceInputStateCopyWith<$Res> {
  factory $VoiceInputStateCopyWith(
          VoiceInputState value, $Res Function(VoiceInputState) then) =
      _$VoiceInputStateCopyWithImpl<$Res, VoiceInputState>;
  @useResult
  $Res call({bool isInitialized, bool isRecording, String? filePath});
}

/// @nodoc
class _$VoiceInputStateCopyWithImpl<$Res, $Val extends VoiceInputState>
    implements $VoiceInputStateCopyWith<$Res> {
  _$VoiceInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoiceInputState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitialized = null,
    Object? isRecording = null,
    Object? filePath = freezed,
  }) {
    return _then(_value.copyWith(
      isInitialized: null == isInitialized
          ? _value.isInitialized
          : isInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      isRecording: null == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoiceInputStateImplCopyWith<$Res>
    implements $VoiceInputStateCopyWith<$Res> {
  factory _$$VoiceInputStateImplCopyWith(_$VoiceInputStateImpl value,
          $Res Function(_$VoiceInputStateImpl) then) =
      __$$VoiceInputStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isInitialized, bool isRecording, String? filePath});
}

/// @nodoc
class __$$VoiceInputStateImplCopyWithImpl<$Res>
    extends _$VoiceInputStateCopyWithImpl<$Res, _$VoiceInputStateImpl>
    implements _$$VoiceInputStateImplCopyWith<$Res> {
  __$$VoiceInputStateImplCopyWithImpl(
      _$VoiceInputStateImpl _value, $Res Function(_$VoiceInputStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoiceInputState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitialized = null,
    Object? isRecording = null,
    Object? filePath = freezed,
  }) {
    return _then(_$VoiceInputStateImpl(
      isInitialized: null == isInitialized
          ? _value.isInitialized
          : isInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      isRecording: null == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VoiceInputStateImpl extends _VoiceInputState {
  _$VoiceInputStateImpl(
      {this.isInitialized = false, this.isRecording = false, this.filePath})
      : super._();

  @override
  @JsonKey()
  final bool isInitialized;
  @override
  @JsonKey()
  final bool isRecording;
  @override
  final String? filePath;

  @override
  String toString() {
    return 'VoiceInputState(isInitialized: $isInitialized, isRecording: $isRecording, filePath: $filePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoiceInputStateImpl &&
            (identical(other.isInitialized, isInitialized) ||
                other.isInitialized == isInitialized) &&
            (identical(other.isRecording, isRecording) ||
                other.isRecording == isRecording) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isInitialized, isRecording, filePath);

  /// Create a copy of VoiceInputState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoiceInputStateImplCopyWith<_$VoiceInputStateImpl> get copyWith =>
      __$$VoiceInputStateImplCopyWithImpl<_$VoiceInputStateImpl>(
          this, _$identity);
}

abstract class _VoiceInputState extends VoiceInputState {
  factory _VoiceInputState(
      {final bool isInitialized,
      final bool isRecording,
      final String? filePath}) = _$VoiceInputStateImpl;
  _VoiceInputState._() : super._();

  @override
  bool get isInitialized;
  @override
  bool get isRecording;
  @override
  String? get filePath;

  /// Create a copy of VoiceInputState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoiceInputStateImplCopyWith<_$VoiceInputStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
