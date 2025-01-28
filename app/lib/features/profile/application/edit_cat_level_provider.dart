import 'package:chat_app/config/providers/firebase_providers.dart';
import 'package:chat_app/core/constants/constants.dart';
import 'package:chat_app/core/data/logger/logger.dart';
import 'package:chat_app/features/auth/application/app_user_provider.dart';
import 'package:chat_app/features/auth/data/repositories/app_user_repository_provider.dart';
import 'package:chat_app/features/profile/application/edit_cat_level_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_cat_level_provider.g.dart';

@riverpod
class EditCatLevel extends _$EditCatLevel {
  @override
  FutureOr<EditCatLevelState> build() async {
    final appUser = await ref.watch(appUserProvider.future);
    return EditCatLevelState(
      catLevel: (appUser?.catLevel ?? defaultCatLevel).toDouble(),
    );
  }

  Future<void> onChangedCatLevel(double value) async {
    await update((data) async {
      return data.copyWith(catLevel: value);
    });
  }

  Future<void> onChangedIsUpdeting({required bool value}) async {
    await update((data) async {
      return data.copyWith(isUpdating: value);
    });
  }

  Future<String?> updateCatLevel() async {
    final user = ref.read(firebaseAuthProvider).currentUser;
    final data = state.asData?.value;
    if (user == null || data == null) {
      return null;
    }

    await onChangedIsUpdeting(value: true);

    try {
      final result = await ref
          .read(appUserRepositoryProvider)
          .updateCatLevel(user.uid, data.catLevel.toInt());
      await onChangedIsUpdeting(value: false);
      return result;
    } on Exception catch (e, st) {
      logger.e('Failed to update, $e, $st');
      state = AsyncValue.error(e, st);
      return null;
    }
  }
}
