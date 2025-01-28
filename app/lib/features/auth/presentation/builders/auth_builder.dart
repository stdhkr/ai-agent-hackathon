import 'package:chat_app/core/presentation/widgets/builder/async_value_builder.dart';
import 'package:chat_app/features/auth/application/combined_auth_provider.dart';
import 'package:chat_app/features/auth/application/combined_auth_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthBuilder extends ConsumerWidget {
  const AuthBuilder({
    super.key,
    required this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(combinedAuthProvider);

    return AsyncValueBuilder<CombinedAuthState>(
      asyncValue: asyncValue,
      isWrapScaffoldError: true,
      isWrapScaffoldLoading: true,
      onReload: () {
        ref.invalidate(combinedAuthProvider);
      },
      child: (_) => child ?? const SizedBox.shrink(),
    );
  }
}
