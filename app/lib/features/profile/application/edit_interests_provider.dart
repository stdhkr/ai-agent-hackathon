import 'package:chat_app/config/providers/firebase_providers.dart';
import 'package:chat_app/core/data/logger/logger.dart';
import 'package:chat_app/features/auth/application/app_user_provider.dart';
import 'package:chat_app/features/auth/data/repositories/app_user_repository_provider.dart';
import 'package:chat_app/features/profile/application/edit_interests_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_interests_provider.g.dart';

@riverpod
class EditInterests extends _$EditInterests {
  @override
  FutureOr<EditInterestsState> build() async {
    final appUser = await ref.watch(appUserProvider.future);
    return EditInterestsState(interests: appUser?.interests ?? '');
  }

  Future<void> onChangedInterests(String value) async {
    await update((data) {
      return data.copyWith(interests: value);
    });
  }

  Future<void> onChangedIsUpdeting({required bool value}) async {
    await update((data) {
      return data.copyWith(isUpdating: value);
    });
  }

  Future<String?> updateInterests() async {
    final user = ref.read(firebaseAuthProvider).currentUser;
    final data = state.asData?.value;
    if (user == null || data == null) {
      return null;
    }

    await onChangedIsUpdeting(value: true);

    try {
      final result = await ref
          .read(appUserRepositoryProvider)
          .updateInterests(user.uid, data.interests);
      await onChangedIsUpdeting(value: false);
      return result;
    } on Exception catch (e, st) {
      logger.e('Failed to update, $e, $st');
      state = AsyncValue.error(e, st);
      return null;
    }
  }
}
