import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:goronyan/config/providers/firebase_providers.dart';
import 'package:goronyan/core/data/logger/logger.dart';
import 'package:goronyan/core/extensions/ref_extentions.dart';
import 'package:goronyan/features/mnemonics/data/repositories/mnemonics_repository_provider.dart';
import 'package:goronyan/features/quiz/application/quiz_play_state.dart';
import 'package:goronyan/features/quiz/data/repositories/quiz_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_play_provider.g.dart';

@riverpod
class QuizPlay extends _$QuizPlay {
  @override
  FutureOr<QuizPlayState> build(bool isOnlyUnmemorizeds) async {
    try {
      final user = ref.read(firebaseAuthProvider).currentUser;
      if (user == null) {
        throw Exception('User is not signed in');
      }

      final mnemonics =
          await ref.read(mnemonicsRepositoryProvider).fetchMnemonics(
                uid: user.uid,
                lastMemorized: isOnlyUnmemorizeds ? false : null,
                createAtdescending: isOnlyUnmemorizeds ? true : null,
                memorizedCountdescending: isOnlyUnmemorizeds ? null : true,
                limit: 5,
              );

      if (mnemonics == null) {
        return QuizPlayState(
          mnemonics: [],
          memorizeds: [],
        );
      }
      final memorizeds =
          List.generate(mnemonics.length, (index) => const MemorizedPlay());
      return QuizPlayState(
        mnemonics: mnemonics,
        memorizeds: memorizeds,
      );
    } on FirebaseException catch (e, st) {
      logger.e('Failed to fetch mnemonics: $e, $st');
      rethrow;
    } on Exception catch (e, st) {
      logger.e('Failed to fetch mnemonics: $e, $st');
      rethrow;
    }
  }

  Future<void> updateMemorized({
    required int index,
    bool? isFront,
    bool? isFilteredAnswer,
    bool? isMemorized,
    bool? isCompleted,
  }) async {
    await update((data) async {
      final updatedMemorizeds = data.memorizeds
          .asMap()
          .entries
          .map(
            (entry) => entry.key == index
                ? entry.value.copyWith(
                    isFront: isFront ?? entry.value.isFront,
                    isFilteredAnswer:
                        isFilteredAnswer ?? entry.value.isFilteredAnswer,
                    isMemorized: isMemorized ?? entry.value.isMemorized,
                    isCompleted: isCompleted ?? entry.value.isCompleted,
                  )
                : entry.value,
          )
          .toList();
      return data.copyWith(memorizeds: updatedMemorizeds);
    });
  }

  Future<void> updateCurrentPage(int currentPage) async {
    await update((data) async {
      return data.copyWith(currentPage: currentPage);
    });
  }

  Future<void> updateIsCompleted({required bool isCompleted}) async {
    await update((data) async {
      return data.copyWith(isCompleted: isCompleted);
    });
    await updateMemorizedCounts();
  }

  Future<void> updateMemorizedCounts() async {
    final user = ref.read(firebaseAuthProvider).currentUser;
    if (user == null) {
      throw Exception('User is not signed in');
    }

    final quizPlayState = state.value;

    if (quizPlayState == null) {
      throw Exception('QuizPlayState is not initialized');
    }

    try {
      await ref
          .read(quizRepositoryProvider)
          .updateMemorizedCounts(user.uid, quizPlayState);
      ref.invalidateProviders();
    } on FirebaseException catch (e, st) {
      logger.e('Failed to create user, $e, $st');
      state = AsyncValue.error(e, st);
      rethrow;
    } on Exception catch (e, st) {
      logger.e('Failed to create user, $e, $st');
      state = AsyncValue.error(e, st);
      rethrow;
    }
  }
}
