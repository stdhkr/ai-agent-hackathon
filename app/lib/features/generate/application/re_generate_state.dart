import 'package:chat_app/features/mnemonics/domain/entities/mnemonic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 're_generate_state.freezed.dart';

@freezed
class ReGenerateState with _$ReGenerateState {
  factory ReGenerateState({
    @Default(true) bool isReGenerateEnabled,
    required Mnemonic mnemonic,
  }) = _ReGenerateState;

  ReGenerateState._();
}
