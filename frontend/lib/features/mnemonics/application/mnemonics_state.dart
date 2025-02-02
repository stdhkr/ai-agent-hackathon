import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goronyan/features/mnemonics/domain/entities/mnemonic.dart';

part 'mnemonics_state.freezed.dart';

enum MenemonicsStateType {
  all,
  unmemorized,
}

@freezed
class MnemonicsState with _$MnemonicsState {
  factory MnemonicsState({
    @Default(<Mnemonic>[]) List<Mnemonic> mnemonics,
  }) = _MnemonicsState;

  MnemonicsState._();
}
