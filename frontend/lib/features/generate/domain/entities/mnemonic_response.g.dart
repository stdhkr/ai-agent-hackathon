// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mnemonic_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MnemonicResponseImpl _$$MnemonicResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MnemonicResponseImpl(
      question: json['question'] as String,
      answer: json['answer'] as String,
      meaning: json['meaning'] as String,
      episode: json['episode'] as String,
      goroTexts:
          (json['goroTexts'] as List<dynamic>).map((e) => e as String).toList(),
      imagePath: json['imagePath'] as String,
    );

Map<String, dynamic> _$$MnemonicResponseImplToJson(
        _$MnemonicResponseImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
      'meaning': instance.meaning,
      'episode': instance.episode,
      'goroTexts': instance.goroTexts,
      'imagePath': instance.imagePath,
    };
