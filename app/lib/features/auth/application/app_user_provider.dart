import 'dart:async';

import 'package:chat_app/features/auth/application/auth_state_changes_provider.dart';
import 'package:chat_app/features/auth/data/repositories/app_user_repository_provider.dart';
import 'package:chat_app/features/auth/domain/entities/app_user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_user_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<AppUser?> appUser(Ref ref) {
  final user = ref.watch(authStateChangesProvider).value;
  if (user == null) {
    return const Stream.empty();
  }
  return ref.read(appUserRepositoryProvider).watchAppUser(user.uid);
}
