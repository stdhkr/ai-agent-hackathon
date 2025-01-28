import 'package:chat_app/config/providers/firebase_providers.dart';
import 'package:chat_app/features/auth/domain/entities/app_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_user_repository_provider.g.dart';

@riverpod
AppUserRepository appUserRepository(Ref ref) => AppUserRepository(ref);

class AppUserRepository {
  AppUserRepository(this._ref);
  final Ref _ref;
  Stream<AppUser?> watchAppUser(String uid) {
    return _ref
        .read(firebaseFirestoreProvider)
        .collection('users')
        .doc(uid)
        .snapshots()
        .map((docSnap) {
      if (!docSnap.exists) {
        return null;
      }

      return docSnap.toModellFixingTimestamps<AppUser>(
        fromJson: AppUser.fromJson,
        timestampKeys: AppUser.timestampKeys,
      );
    });
  }

  Future<AppUser?> fetchAppUserById(String uid) async {
    final doc = await _ref
        .watch(firebaseFirestoreProvider)
        .collection('users')
        .doc(uid)
        .get();

    if (!doc.exists) {
      return null;
    }
    return doc.toModellFixingTimestamps<AppUser>(
      fromJson: AppUser.fromJson,
      timestampKeys: AppUser.timestampKeys,
    );
  }

  Future<AppUser?> createAppUser(AppUser newAppUser) async {
    final docData = newAppUser.toJson();
    docData['createdAt'] = FieldValue.serverTimestamp();
    docData['updatedAt'] = FieldValue.serverTimestamp();
    docData.remove('id');
    await _ref
        .read(firebaseFirestoreProvider)
        .collection('users')
        .doc(newAppUser.id)
        .set(docData);
    final fetchAppUser = await fetchAppUserById(newAppUser.id);
    return fetchAppUser;
  }

  Future<String?> updateInterests(String uid, String interests) async {
    final docData = {
      'interests': interests,
      'updatedAt': FieldValue.serverTimestamp(),
    };
    await _ref
        .read(firebaseFirestoreProvider)
        .collection('users')
        .doc(uid)
        .update(docData);
    return 'success';
  }

  Future<String?> updateCatLevel(String uid, int catLevel) async {
    final docData = {
      'catLevel': catLevel,
      'updatedAt': DateTime.now(),
    };
    await _ref
        .read(firebaseFirestoreProvider)
        .collection('users')
        .doc(uid)
        .update(docData);
    return 'success';
  }
}
