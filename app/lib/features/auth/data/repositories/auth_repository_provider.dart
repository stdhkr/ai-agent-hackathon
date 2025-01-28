import 'package:chat_app/config/providers/firebase_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_provider.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) => AuthRepository(ref);

class AuthRepository {
  AuthRepository(this._ref);
  final Ref _ref;

  Future<void> signInAnonymously() async {
    await _ref.read(firebaseAuthProvider).signInAnonymously();
  }

  Future<void> signOut() async {
    await _ref.read(firebaseAuthProvider).signOut();
  }
}
