import 'package:chat_app/core/data/converters/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:chat_app/core/extensions/firestore_extensions.dart';

part 'quiz_log.freezed.dart';
part 'quiz_log.g.dart';

@freezed
class QuizLog with _$QuizLog {
  const factory QuizLog({
    required String id,
    required String mnemonicId,
    required bool isMemorized,
    @TimestampConverter() required DateTime createdAt,
  }) = _QuizLog;

  factory QuizLog.fromJson(Map<String, dynamic> json) =>
      _$QuizLogFromJson(json);
}
