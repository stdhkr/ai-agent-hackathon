// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mnemonic_detail_page_extra.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MnemonicDetailPageExtra _$MnemonicDetailPageExtraFromJson(
    Map<String, dynamic> json) {
  return _MnemonicDetailPageExtra.fromJson(json);
}

/// @nodoc
mixin _$MnemonicDetailPageExtra {
  List<Mnemonic> get mnemonics => throw _privateConstructorUsedError;
  int get initialIndex => throw _privateConstructorUsedError;

  /// Serializes this MnemonicDetailPageExtra to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MnemonicDetailPageExtra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MnemonicDetailPageExtraCopyWith<MnemonicDetailPageExtra> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MnemonicDetailPageExtraCopyWith<$Res> {
  factory $MnemonicDetailPageExtraCopyWith(MnemonicDetailPageExtra value,
          $Res Function(MnemonicDetailPageExtra) then) =
      _$MnemonicDetailPageExtraCopyWithImpl<$Res, MnemonicDetailPageExtra>;
  @useResult
  $Res call({List<Mnemonic> mnemonics, int initialIndex});
}

/// @nodoc
class _$MnemonicDetailPageExtraCopyWithImpl<$Res,
        $Val extends MnemonicDetailPageExtra>
    implements $MnemonicDetailPageExtraCopyWith<$Res> {
  _$MnemonicDetailPageExtraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MnemonicDetailPageExtra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mnemonics = null,
    Object? initialIndex = null,
  }) {
    return _then(_value.copyWith(
      mnemonics: null == mnemonics
          ? _value.mnemonics
          : mnemonics // ignore: cast_nullable_to_non_nullable
              as List<Mnemonic>,
      initialIndex: null == initialIndex
          ? _value.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MnemonicDetailPageExtraImplCopyWith<$Res>
    implements $MnemonicDetailPageExtraCopyWith<$Res> {
  factory _$$MnemonicDetailPageExtraImplCopyWith(
          _$MnemonicDetailPageExtraImpl value,
          $Res Function(_$MnemonicDetailPageExtraImpl) then) =
      __$$MnemonicDetailPageExtraImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Mnemonic> mnemonics, int initialIndex});
}

/// @nodoc
class __$$MnemonicDetailPageExtraImplCopyWithImpl<$Res>
    extends _$MnemonicDetailPageExtraCopyWithImpl<$Res,
        _$MnemonicDetailPageExtraImpl>
    implements _$$MnemonicDetailPageExtraImplCopyWith<$Res> {
  __$$MnemonicDetailPageExtraImplCopyWithImpl(
      _$MnemonicDetailPageExtraImpl _value,
      $Res Function(_$MnemonicDetailPageExtraImpl) _then)
      : super(_value, _then);

  /// Create a copy of MnemonicDetailPageExtra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mnemonics = null,
    Object? initialIndex = null,
  }) {
    return _then(_$MnemonicDetailPageExtraImpl(
      mnemonics: null == mnemonics
          ? _value._mnemonics
          : mnemonics // ignore: cast_nullable_to_non_nullable
              as List<Mnemonic>,
      initialIndex: null == initialIndex
          ? _value.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MnemonicDetailPageExtraImpl implements _MnemonicDetailPageExtra {
  const _$MnemonicDetailPageExtraImpl(
      {required final List<Mnemonic> mnemonics, required this.initialIndex})
      : _mnemonics = mnemonics;

  factory _$MnemonicDetailPageExtraImpl.fromJson(Map<String, dynamic> json) =>
      _$$MnemonicDetailPageExtraImplFromJson(json);

  final List<Mnemonic> _mnemonics;
  @override
  List<Mnemonic> get mnemonics {
    if (_mnemonics is EqualUnmodifiableListView) return _mnemonics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mnemonics);
  }

  @override
  final int initialIndex;

  @override
  String toString() {
    return 'MnemonicDetailPageExtra(mnemonics: $mnemonics, initialIndex: $initialIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MnemonicDetailPageExtraImpl &&
            const DeepCollectionEquality()
                .equals(other._mnemonics, _mnemonics) &&
            (identical(other.initialIndex, initialIndex) ||
                other.initialIndex == initialIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_mnemonics), initialIndex);

  /// Create a copy of MnemonicDetailPageExtra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MnemonicDetailPageExtraImplCopyWith<_$MnemonicDetailPageExtraImpl>
      get copyWith => __$$MnemonicDetailPageExtraImplCopyWithImpl<
          _$MnemonicDetailPageExtraImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MnemonicDetailPageExtraImplToJson(
      this,
    );
  }
}

abstract class _MnemonicDetailPageExtra implements MnemonicDetailPageExtra {
  const factory _MnemonicDetailPageExtra(
      {required final List<Mnemonic> mnemonics,
      required final int initialIndex}) = _$MnemonicDetailPageExtraImpl;

  factory _MnemonicDetailPageExtra.fromJson(Map<String, dynamic> json) =
      _$MnemonicDetailPageExtraImpl.fromJson;

  @override
  List<Mnemonic> get mnemonics;
  @override
  int get initialIndex;

  /// Create a copy of MnemonicDetailPageExtra
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MnemonicDetailPageExtraImplCopyWith<_$MnemonicDetailPageExtraImpl>
      get copyWith => throw _privateConstructorUsedError;
}
