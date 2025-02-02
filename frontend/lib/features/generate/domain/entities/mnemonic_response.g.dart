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
      goroText: json['goroText'] as String,
      imagePath: json['imagePath'] as String,
    );

Map<String, dynamic> _$$MnemonicResponseImplToJson(
        _$MnemonicResponseImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
      'meaning': instance.meaning,
      'episode': instance.episode,
      'goroText': instance.goroText,
      'imagePath': instance.imagePath,
    };
