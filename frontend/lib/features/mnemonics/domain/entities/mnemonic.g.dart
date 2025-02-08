// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mnemonic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MnemonicImpl _$$MnemonicImplFromJson(Map<String, dynamic> json) =>
    _$MnemonicImpl(
      id: json['id'] as String,
      question: json['question'] as String?,
      answer: json['answer'] as String? ?? '',
      meaning: json['meaning'] as String? ?? '',
      episode: json['episode'] as String? ?? '',
      goroTexts: (json['goroTexts'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      voicePath: json['voicePath'] as String?,
      questionImagePath: json['questionImagePath'] as String?,
      outputImagePath: json['outputImagePath'] as String?,
      memorizedCount: (json['memorizedCount'] as num?)?.toInt() ?? 0,
      unmemorizedCount: (json['unmemorizedCount'] as num?)?.toInt() ?? 0,
      lastMemorized: json['lastMemorized'] as bool? ?? false,
      lastQuizAt:
          const TimestampConverter().fromJson(json['lastQuizAt'] as Timestamp),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as Timestamp),
    );

Map<String, dynamic> _$$MnemonicImplToJson(_$MnemonicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answer': instance.answer,
      'meaning': instance.meaning,
      'episode': instance.episode,
      'goroTexts': instance.goroTexts,
      'voicePath': instance.voicePath,
      'questionImagePath': instance.questionImagePath,
      'outputImagePath': instance.outputImagePath,
      'memorizedCount': instance.memorizedCount,
      'unmemorizedCount': instance.unmemorizedCount,
      'lastMemorized': instance.lastMemorized,
      'lastQuizAt': const TimestampConverter().toJson(instance.lastQuizAt),
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
    };
