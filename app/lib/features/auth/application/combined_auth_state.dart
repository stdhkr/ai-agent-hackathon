import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'combined_auth_state.freezed.dart';

@freezed
class CombinedAuthState with _$CombinedAuthState {
  factory CombinedAuthState({
    User? user,
    @Default(false) bool isProfileComplete,
  }) = _CombinedAuthState;

  CombinedAuthState._();

  bool get isLoggedIn => user != null;
}
