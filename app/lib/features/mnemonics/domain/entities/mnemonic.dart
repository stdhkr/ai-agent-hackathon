import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goronyan/core/data/converters/timestamp_converter.dart';

part 'mnemonic.freezed.dart';
part 'mnemonic.g.dart';

@freezed
class Mnemonic with _$Mnemonic {
  const factory Mnemonic({
    required String id,
    String? question,
    @Default('') String answer,
    @Default('') String meaning,
    @Default('') String episode,
    @Default('') String goroText,
    String? voicePath,
    String? questionImagePath,
    String? outputImagePath,
    @Default(0) int memorizedCount,
    @Default(0) int unmemorizedCount,
    @Default(false) bool lastMemorized,
    @TimestampConverter() required DateTime lastQuizAt,
    @TimestampConverter() required DateTime createdAt,
    @TimestampConverter() required DateTime updatedAt,
  }) = _Mnemonic;

  factory Mnemonic.fromJson(Map<String, dynamic> json) =>
      _$MnemonicFromJson(json);

  const Mnemonic._();

  Map<String, dynamic> toJsonAsStringDates() {
    return {
      'id': id,
      'question': question,
      'answer': answer,
      'meaning': meaning,
      'episode': episode,
      'goroText': goroText,
      'voicePath': voicePath,
      'questionImagePath': questionImagePath,
      'outputImagePath': outputImagePath,
      'memorizedCount': memorizedCount,
      'unmemorizedCount': unmemorizedCount,
      'lastMemorized': lastMemorized,
      'lastQuizAt': lastQuizAt.toIso8601String(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  static const List<String> timestampKeys = [
    'lastQuizAt',
    'createdAt',
    'updatedAt',
  ];
}
