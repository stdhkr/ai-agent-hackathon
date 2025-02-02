import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goronyan/core/constants/constants.dart';

part 'app_user_form_state.freezed.dart';

@freezed
class AppUserFormState with _$AppUserFormState {
  factory AppUserFormState({
    @Default('') String interests,
    @Default(defaultCatLevel) double catLevel,
  }) = _AppUserFormState;

  AppUserFormState._();
}
