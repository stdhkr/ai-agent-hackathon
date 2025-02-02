import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:goronyan/config/providers/firebase_providers.dart';
import 'package:goronyan/core/data/logger/logger.dart';
import 'package:goronyan/features/mnemonics/application/mnemonics_state.dart';
import 'package:goronyan/features/mnemonics/data/repositories/mnemonics_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mnemonics_provider.g.dart';

@riverpod
class Mnemonics extends _$Mnemonics {
  @override
  FutureOr<MnemonicsState> build(MenemonicsStateType type) async {
    try {
      final user = ref.read(firebaseAuthProvider).currentUser;
      if (user == null) {
        throw Exception('User is not signed in');
      }

      final mnemonics =
          await ref.read(mnemonicsRepositoryProvider).fetchMnemonics(
                uid: user.uid,
                lastMemorized:
                    type == MenemonicsStateType.unmemorized ? false : null,
                createAtdescending: true,
              );

      return MnemonicsState(mnemonics: mnemonics ?? []);
    } on FirebaseException catch (e, st) {
      logger.e('Failed to fetch mnemonics: $e, $st');
      rethrow;
    } on Exception catch (e, st) {
      logger.e('Failed to fetch mnemonics: $e, $st');
      rethrow;
    }
  }
}
