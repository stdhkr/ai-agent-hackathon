import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goronyan/core/data/converters/timestamp_converter.dart';

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
