import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:goronyan/core/data/logger/logger.dart';
import 'package:goronyan/features/auth/application/auth_state_changes_provider.dart';
import 'package:goronyan/features/auth/application/combined_auth_state.dart';
import 'package:goronyan/features/auth/data/repositories/app_user_repository_provider.dart';
import 'package:goronyan/features/auth/data/repositories/auth_repository_provider.dart';
import 'package:goronyan/features/auth/domain/entities/app_user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'combined_auth_provider.g.dart';

@riverpod
class CombinedAuth extends _$CombinedAuth {
  StreamSubscription<DocumentSnapshot<Map<String, dynamic>>>? _userSubscription;

  @override
  FutureOr<CombinedAuthState> build() async {
    ref.onDispose(() {
      _userSubscription?.cancel();
    });

    final authAsync = ref.watch(authStateChangesProvider);
    final user = authAsync.value;
    if (user == null) {
      return CombinedAuthState(isProfileComplete: false, user: null);
    }
    final appUser = await fetchAppUserById(user.uid);
    return CombinedAuthState(
      isProfileComplete: appUser?.isProfileCompleted ?? false,
      user: user,
    );
  }

  Future<void> signInAnonymously() async {
    if (state.value?.user != null) {
      return;
    }
    state = const AsyncValue.loading();
    try {
      await ref.read(authRepositoryProvider).signInAnonymously();
    } on FirebaseAuthException catch (e, st) {
      logger.e('Failed to sign in anonymously, $e, $st');
      state = AsyncValue.error(e, st);
    } on Exception catch (e, st) {
      state = AsyncValue.error(e, st);
      logger.e('Failed to sign in anonymously, $e, $st');
    }
  }

  Future<void> signOut() async {
    state = const AsyncValue.loading();
    try {
      await ref.read(authRepositoryProvider).signOut();
    } on FirebaseAuthException catch (e, st) {
      logger.e('Failed to sign out, $e, $st');
      state = AsyncValue.error(e, st);
    } on Exception catch (e, st) {
      logger.e('Failed to sign out, $e, $st');
      state = AsyncValue.error(e, st);
    }
  }

  Future<AppUser?> fetchAppUserById(String uid) async {
    try {
      final appUser =
          await ref.read(appUserRepositoryProvider).fetchAppUserById(uid);
      return appUser;
    } on FirebaseAuthException catch (e, st) {
      logger.e('Failed to fetch users, $e, $st');
      state = AsyncValue.error(e, st);
      rethrow;
    } on Exception catch (e, st) {
      logger.e('Failed to fetch users, $e, $st');
      state = AsyncValue.error(e, st);
      rethrow;
    }
  }

  Future<void> onChangedIsProfileComplete({
    required bool isProfileComplete,
  }) async {
    await update((data) async {
      return data.copyWith(isProfileComplete: isProfileComplete);
    });
  }
}
