import 'package:chat_app/config/providers/firebase_providers.dart';
import 'package:chat_app/core/constants/constants.dart';
import 'package:chat_app/core/data/logger/logger.dart';
import 'package:chat_app/features/auth/data/repositories/app_user_repository_provider.dart';
import 'package:chat_app/features/auth/domain/entities/app_user.dart';
import 'package:chat_app/features/profile/application/app_user_form_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_user_form_provider.g.dart';

@riverpod
class AppUserForm extends _$AppUserForm {
  @override
  FutureOr<AppUserFormState> build() async {
    return AppUserFormState();
  }

  Future<void> onChangedInterests(String value) async {
    await update((data) async {
      return data.copyWith(interests: value);
    });
  }

  Future<void> onChangedCatLevel(double value) async {
    await update((data) async {
      return data.copyWith(catLevel: value);
    });
  }

  Future<AppUser?> onCreateAppUser() async {
    final user = ref.read(firebaseAuthProvider).currentUser;
    final data = state.asData?.value;
    if (user == null || data == null) {
      return null;
    }

    final newAppUser = AppUser(
      id: user.uid,
      displayName: '',
      interests: data.interests,
      catLevel: data.catLevel.toInt(),
      avatarURL: defaultAvatarURL,
      xp: 0,
      level: 1,
      generatedCount: 0,
      isProfileCompleted: true,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    state = const AsyncValue.loading();
    try {
      final appUser =
          await ref.read(appUserRepositoryProvider).createAppUser(newAppUser);
      return appUser;
    } on FirebaseException catch (e, st) {
      logger.e('Failed to create user, $e, $st');
      state = AsyncValue.error(e, st);
      return null;
    } on Exception catch (e, st) {
      logger.e('Failed to create user, $e, $st');
      state = AsyncValue.error(e, st);
      return null;
    }
  }
}
