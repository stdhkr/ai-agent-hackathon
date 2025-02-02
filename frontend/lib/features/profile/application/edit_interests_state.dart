import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_interests_state.freezed.dart';

@freezed
class EditInterestsState with _$EditInterestsState {
  factory EditInterestsState({
    @Default('') String interests,
    @Default(false) bool isUpdating,
  }) = _EditInterestsState;

  EditInterestsState._();
}
