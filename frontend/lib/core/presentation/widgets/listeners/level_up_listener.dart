import 'package:flutter/material.dart';
import 'package:goronyan/core/constants/constants.dart';
import 'package:goronyan/core/presentation/widgets/modals/level_up_modal.dart';
import 'package:goronyan/features/auth/application/app_user_provider.dart';
import 'package:goronyan/features/auth/domain/entities/app_user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LevelUpListener extends ConsumerWidget {
  const LevelUpListener({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<AppUser?>>(appUserProvider, (previous, next) {
      final prevData = previous?.value;
      final nextData = next.value;

      if (prevData != null &&
          nextData != null &&
          prevData.level < nextData.level) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          final ctx = rootNavigatorKey.currentContext;
          if (ctx != null) {
            showDialog<void>(
              context: ctx,
              builder: (_) => LevelUpModal(
                prevLevel: prevData.level,
                nextLevel: nextData.level,
                avatarURL: nextData.avatarURL,
              ),
            );
          }
        });
      }
    });

    return child;
  }
}
