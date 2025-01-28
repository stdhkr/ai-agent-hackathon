import 'package:chat_app/features/auth/domain/entities/app_user.dart';
import 'package:chat_app/features/mnemonics/domain/entities/mnemonic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    AppUser? appUser,
    @Default(<Mnemonic>[]) List<Mnemonic> mnemonics,
  }) = _HomeState;

  HomeState._();
}
