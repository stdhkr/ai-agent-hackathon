import 'package:chat_app/config/router/router.dart';
import 'package:chat_app/config/theme/theme.dart';
import 'package:chat_app/core/presentation/widgets/listeners/level_up_listener.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'features/auth/presentation/builders/auth_builder.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return LevelUpListener(
      child: MaterialApp.router(
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider,
        theme: theme,
        builder: (context, child) {
          return AuthBuilder(child: child);
        },
      ),
    );
  }
}
