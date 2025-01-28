import 'package:chat_app/config/providers/firebase_providers.dart';
import 'package:chat_app/core/data/logger/logger.dart';
import 'package:chat_app/features/mnemonics/domain/entities/mnemonic.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mnemonics_repository_provider.g.dart';

@riverpod
MnemonicsRepository mnemonicsRepository(Ref ref) => MnemonicsRepository(ref);

class MnemonicsRepository {
  MnemonicsRepository(this._ref);
  final Ref _ref;

  Future<List<Mnemonic>?> fetchMnemonics({
    required String uid,
    int? limit,
    bool? lastMemorized,
    bool? createAtdescending,
    bool? memorizedCountdescending,
  }) async {
    try {
      Query query = _ref
          .read(firebaseFirestoreProvider)
          .collection('users')
          .doc(uid)
          .collection('mnemonics');

      if (lastMemorized != null) {
        query = query.where('lastMemorized', isEqualTo: lastMemorized);
      }

      if (createAtdescending != null) {
        query = query.orderBy('createdAt', descending: createAtdescending);
      }

      if (memorizedCountdescending != null) {
        query = query.orderBy(
          'memorizedCount',
          descending: memorizedCountdescending,
        );
      }

      if (limit != null) {
        query = query.limit(limit);
      }

      final querySnapshot = await query.get();
      final futures = querySnapshot.docs.map((docSnap) {
        return docSnap.toModelFixingTimestampsAndDownloadUrl<Mnemonic>(
          fromJson: Mnemonic.fromJson,
          timestampKeys: Mnemonic.timestampKeys,
          storagePathKey: 'outputImagePath',
        );
      });

      final mnemonics = await Future.wait(futures);

      return mnemonics;
    } catch (e, st) {
      logger.e('Failed to fetch mnemonics, $e, $st');
      rethrow;
    }
  }
}
