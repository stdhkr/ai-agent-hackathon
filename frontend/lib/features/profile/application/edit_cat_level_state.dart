import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goronyan/core/constants/constants.dart';

part 'edit_cat_level_state.freezed.dart';

@freezed
class EditCatLevelState with _$EditCatLevelState {
  factory EditCatLevelState({
    @Default(defaultCatLevel) double catLevel,
    @Default(false) bool isUpdating,
  }) = _EditCatLevelState;

  EditCatLevelState._();
}
