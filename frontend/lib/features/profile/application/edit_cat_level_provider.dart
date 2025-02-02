import 'package:goronyan/config/providers/firebase_providers.dart';
import 'package:goronyan/core/constants/constants.dart';
import 'package:goronyan/core/data/logger/logger.dart';
import 'package:goronyan/features/auth/application/app_user_provider.dart';
import 'package:goronyan/features/auth/data/repositories/app_user_repository_provider.dart';
import 'package:goronyan/features/profile/application/edit_cat_level_state.dart';
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
