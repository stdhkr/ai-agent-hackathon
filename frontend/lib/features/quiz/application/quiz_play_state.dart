import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goronyan/features/mnemonics/domain/entities/mnemonic.dart';

part 'quiz_play_state.freezed.dart';
part 'quiz_play_state.g.dart';

@freezed
class MemorizedPlay with _$MemorizedPlay {
  const factory MemorizedPlay({
    @Default(true) bool isFront,
    @Default(false) bool isFilteredAnswer,
    @Default(false) bool isMemorized,
    @Default(false) bool isCompleted,
  }) = _MemorizedPlay;

  factory MemorizedPlay.fromJson(Map<String, dynamic> json) =>
      _$MemorizedPlayFromJson(json);
}

@freezed
class QuizPlayState with _$QuizPlayState {
  factory QuizPlayState({
    @Default(<Mnemonic>[]) List<Mnemonic> mnemonics,
    @Default(<MemorizedPlay>[]) List<MemorizedPlay> memorizeds,
    @Default(0) int currentPage,
    @Default(false) bool isCompleted,
  }) = _QuizPlayState;

  QuizPlayState._();

  int get totalMemorizedCount => memorizeds.where((e) => e.isMemorized).length;
  int get rewardPoint => totalMemorizedCount * 5 + 5;
}
