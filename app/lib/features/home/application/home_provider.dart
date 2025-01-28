import 'package:chat_app/core/data/logger/logger.dart';
import 'package:chat_app/features/auth/application/app_user_provider.dart';
import 'package:chat_app/features/home/application/home_state.dart';
import 'package:chat_app/features/mnemonics/data/repositories/mnemonics_repository_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';

@riverpod
class Home extends _$Home {
  @override
  FutureOr<HomeState> build() async {
    try {
      final appUser = await ref.watch(appUserProvider.future);
      if (appUser == null) {
        throw Exception('User is not signed in');
      }

      final mnemonics =
          await ref.read(mnemonicsRepositoryProvider).fetchMnemonics(
                uid: appUser.id,
                createAtdescending: true,
                limit: 10,
              );

      return HomeState(mnemonics: mnemonics ?? [], appUser: appUser);
    } on FirebaseException catch (e, st) {
      logger.e('Failed to fetch mnemonics: $e, $st');
      rethrow;
    } on Exception catch (e, st) {
      logger.e('Failed to fetch mnemonics: $e, $st');
      rethrow;
    }
  }
}
