// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mnemonic_detail_page_extra.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MnemonicDetailPageExtraImpl _$$MnemonicDetailPageExtraImplFromJson(
        Map<String, dynamic> json) =>
    _$MnemonicDetailPageExtraImpl(
      mnemonics: (json['mnemonics'] as List<dynamic>)
          .map((e) => Mnemonic.fromJson(e as Map<String, dynamic>))
          .toList(),
      initialIndex: (json['initialIndex'] as num).toInt(),
    );

Map<String, dynamic> _$$MnemonicDetailPageExtraImplToJson(
        _$MnemonicDetailPageExtraImpl instance) =>
    <String, dynamic>{
      'mnemonics': instance.mnemonics,
      'initialIndex': instance.initialIndex,
    };
