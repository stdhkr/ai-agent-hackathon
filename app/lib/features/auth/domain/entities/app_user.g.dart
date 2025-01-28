// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUserImpl _$$AppUserImplFromJson(Map<String, dynamic> json) =>
    _$AppUserImpl(
      id: json['id'] as String,
      displayName: json['displayName'] as String? ?? '',
      interests: json['interests'] as String? ?? '',
      xp: (json['xp'] as num?)?.toInt() ?? 0,
      level: (json['level'] as num?)?.toInt() ?? 1,
      catLevel: (json['catLevel'] as num?)?.toInt() ?? 2,
      avatarURL: json['avatarURL'] as String? ?? defaultAvatarURL,
      generatedCount: (json['generatedCount'] as num?)?.toInt() ?? 0,
      isProfileCompleted: json['isProfileCompleted'] as bool? ?? false,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as Timestamp),
    );

Map<String, dynamic> _$$AppUserImplToJson(_$AppUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'interests': instance.interests,
      'xp': instance.xp,
      'level': instance.level,
      'catLevel': instance.catLevel,
      'avatarURL': instance.avatarURL,
      'generatedCount': instance.generatedCount,
      'isProfileCompleted': instance.isProfileCompleted,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
    };
