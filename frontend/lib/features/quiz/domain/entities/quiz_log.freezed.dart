// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizLog _$QuizLogFromJson(Map<String, dynamic> json) {
  return _QuizLog.fromJson(json);
}

/// @nodoc
mixin _$QuizLog {
  String get id => throw _privateConstructorUsedError;
  String get mnemonicId => throw _privateConstructorUsedError;
  bool get isMemorized => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this QuizLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizLogCopyWith<QuizLog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizLogCopyWith<$Res> {
  factory $QuizLogCopyWith(QuizLog value, $Res Function(QuizLog) then) =
      _$QuizLogCopyWithImpl<$Res, QuizLog>;
  @useResult
  $Res call(
      {String id,
      String mnemonicId,
      bool isMemorized,
      @TimestampConverter() DateTime createdAt});
}

/// @nodoc
class _$QuizLogCopyWithImpl<$Res, $Val extends QuizLog>
    implements $QuizLogCopyWith<$Res> {
  _$QuizLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mnemonicId = null,
    Object? isMemorized = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonicId: null == mnemonicId
          ? _value.mnemonicId
          : mnemonicId // ignore: cast_nullable_to_non_nullable
              as String,
      isMemorized: null == isMemorized
          ? _value.isMemorized
          : isMemorized // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizLogImplCopyWith<$Res> implements $QuizLogCopyWith<$Res> {
  factory _$$QuizLogImplCopyWith(
          _$QuizLogImpl value, $Res Function(_$QuizLogImpl) then) =
      __$$QuizLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String mnemonicId,
      bool isMemorized,
      @TimestampConverter() DateTime createdAt});
}

/// @nodoc
class __$$QuizLogImplCopyWithImpl<$Res>
    extends _$QuizLogCopyWithImpl<$Res, _$QuizLogImpl>
    implements _$$QuizLogImplCopyWith<$Res> {
  __$$QuizLogImplCopyWithImpl(
      _$QuizLogImpl _value, $Res Function(_$QuizLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mnemonicId = null,
    Object? isMemorized = null,
    Object? createdAt = null,
  }) {
    return _then(_$QuizLogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonicId: null == mnemonicId
          ? _value.mnemonicId
          : mnemonicId // ignore: cast_nullable_to_non_nullable
              as String,
      isMemorized: null == isMemorized
          ? _value.isMemorized
          : isMemorized // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizLogImpl implements _QuizLog {
  const _$QuizLogImpl(
      {required this.id,
      required this.mnemonicId,
      required this.isMemorized,
      @TimestampConverter() required this.createdAt});

  factory _$QuizLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizLogImplFromJson(json);

  @override
  final String id;
  @override
  final String mnemonicId;
  @override
  final bool isMemorized;
  @override
  @TimestampConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'QuizLog(id: $id, mnemonicId: $mnemonicId, isMemorized: $isMemorized, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizLogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mnemonicId, mnemonicId) ||
                other.mnemonicId == mnemonicId) &&
            (identical(other.isMemorized, isMemorized) ||
                other.isMemorized == isMemorized) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, mnemonicId, isMemorized, createdAt);

  /// Create a copy of QuizLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizLogImplCopyWith<_$QuizLogImpl> get copyWith =>
      __$$QuizLogImplCopyWithImpl<_$QuizLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizLogImplToJson(
      this,
    );
  }
}

abstract class _QuizLog implements QuizLog {
  const factory _QuizLog(
      {required final String id,
      required final String mnemonicId,
      required final bool isMemorized,
      @TimestampConverter() required final DateTime createdAt}) = _$QuizLogImpl;

  factory _QuizLog.fromJson(Map<String, dynamic> json) = _$QuizLogImpl.fromJson;

  @override
  String get id;
  @override
  String get mnemonicId;
  @override
  bool get isMemorized;
  @override
  @TimestampConverter()
  DateTime get createdAt;

  /// Create a copy of QuizLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizLogImplCopyWith<_$QuizLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
