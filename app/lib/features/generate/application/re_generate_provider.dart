import 'dart:async';

import 'package:chat_app/config/providers/firebase_providers.dart';
import 'package:chat_app/core/data/logger/logger.dart';
import 'package:chat_app/features/auth/application/app_user_provider.dart';
import 'package:chat_app/features/generate/application/re_generate_state.dart';
import 'package:chat_app/features/generate/data/repositories/generate_repository_provider.dart';
import 'package:chat_app/features/mnemonics/domain/entities/mnemonic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 're_generate_provider.g.dart';

@riverpod
class ReGenerate extends _$ReGenerate {
  @override
  FutureOr<ReGenerateState> build(Mnemonic originalMnemonic) async {
    return ReGenerateState(mnemonic: originalMnemonic);
  }

  Future<void> onReGenerate() async {
    final mnemonic = state.value?.mnemonic;
    if (mnemonic == null) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final user = ref.read(firebaseAuthProvider).currentUser;
      final appUser = await ref.read(appUserProvider.future);
      if (user == null || appUser == null) {
        throw Exception('User is not signed in');
      }

      final newMemonic =
          await ref.read(generateRepositoryProvider).reGenerateMnemonic(
                prevMnemonic: mnemonic,
                user: user,
                catLevel: appUser.catLevel,
                interests: appUser.interests,
              );
      if (newMemonic == null) {
        logger.e('Failed to re generate mnemonic');
        throw Exception('Failed to re generate mnemonic');
      }
      return ReGenerateState(
        mnemonic: newMemonic,
        isReGenerateEnabled: false,
      );
    });
  }
}
