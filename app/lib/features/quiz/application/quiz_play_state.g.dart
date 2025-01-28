// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_play_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemorizedPlayImpl _$$MemorizedPlayImplFromJson(Map<String, dynamic> json) =>
    _$MemorizedPlayImpl(
      isFront: json['isFront'] as bool? ?? true,
      isFilteredAnswer: json['isFilteredAnswer'] as bool? ?? false,
      isMemorized: json['isMemorized'] as bool? ?? false,
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$MemorizedPlayImplToJson(_$MemorizedPlayImpl instance) =>
    <String, dynamic>{
      'isFront': instance.isFront,
      'isFilteredAnswer': instance.isFilteredAnswer,
      'isMemorized': instance.isMemorized,
      'isCompleted': instance.isCompleted,
    };
