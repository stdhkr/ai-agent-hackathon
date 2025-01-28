// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizLogImpl _$$QuizLogImplFromJson(Map<String, dynamic> json) =>
    _$QuizLogImpl(
      id: json['id'] as String,
      mnemonicId: json['mnemonicId'] as String,
      isMemorized: json['isMemorized'] as bool,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$QuizLogImplToJson(_$QuizLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mnemonicId': instance.mnemonicId,
      'isMemorized': instance.isMemorized,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
