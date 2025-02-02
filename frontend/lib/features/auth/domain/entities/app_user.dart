import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goronyan/core/constants/constants.dart';
import 'package:goronyan/core/data/converters/timestamp_converter.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String id,
    @Default('') String displayName,
    @Default('') String interests,
    @Default(0) int xp,
    @Default(1) int level,
    @Default(2) int catLevel,
    @Default(defaultAvatarURL) String avatarURL,
    @Default(0) int generatedCount,
    @Default(false) bool isProfileCompleted,
    @TimestampConverter() required DateTime createdAt,
    @TimestampConverter() required DateTime updatedAt,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);

  static const List<String> timestampKeys = ['createdAt', 'updatedAt'];
}
