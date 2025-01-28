import 'package:chat_app/config/providers/firebase_providers.dart';
import 'package:chat_app/features/quiz/application/quiz_play_state.dart';
import 'package:chat_app/features/quiz/domain/entities/quiz_log.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_repository_provider.g.dart';

@riverpod
QuizRepository quizRepository(Ref ref) => QuizRepository(ref);

class QuizRepository {
  QuizRepository(this._ref);
  final Ref _ref;

  Future<void> updateMemorizedCounts(
    String uid,
    QuizPlayState quizPlayState,
  ) async {
    final firestore = _ref.read(firebaseFirestoreProvider);

    final batch = firestore.batch();

    final userDocRef = firestore.collection('users').doc(uid);
    batch.update(userDocRef, {
      'xp': FieldValue.increment(quizPlayState.rewardPoint),
      'updatedAt': FieldValue.serverTimestamp(),
    });

    for (var i = 0; i < quizPlayState.mnemonics.length; i++) {
      final mnemonic = quizPlayState.mnemonics[i];
      final memorizedPlay = quizPlayState.memorizeds[i];

      final mnemonicsDocRef = firestore
          .collection('users')
          .doc(uid)
          .collection('mnemonics')
          .doc(mnemonic.id);

      final fieldName =
          memorizedPlay.isMemorized ? 'memorizedCount' : 'unmemorizedCount';

      batch.update(mnemonicsDocRef, {
        fieldName: FieldValue.increment(1),
        'lastMemorized': memorizedPlay.isMemorized,
        'lastQuizAt': FieldValue.serverTimestamp(),
        'updatedAt': FieldValue.serverTimestamp(),
      });

      final quizLog = QuizLog(
        id: '',
        mnemonicId: mnemonic.id,
        isMemorized: memorizedPlay.isMemorized,
        createdAt: DateTime.now(),
      );

      final quizLogDocData = quizLog.toJson();
      quizLogDocData['createdAt'] = FieldValue.serverTimestamp();
      quizLogDocData.remove('id');

      final quizLogsDocRef =
          firestore.collection('users').doc(uid).collection('quizLogs').doc();

      batch.set(quizLogsDocRef, quizLogDocData);
    }

    await batch.commit();
  }
}
