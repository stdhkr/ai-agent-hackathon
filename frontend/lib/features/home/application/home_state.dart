import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goronyan/features/auth/domain/entities/app_user.dart';
import 'package:goronyan/features/mnemonics/domain/entities/mnemonic.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    AppUser? appUser,
    @Default(<Mnemonic>[]) List<Mnemonic> mnemonics,
  }) = _HomeState;

  HomeState._();
}
