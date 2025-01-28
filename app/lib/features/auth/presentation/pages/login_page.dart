import 'package:chat_app/core/presentation/widgets/bars/fixed_bottom_bar.dart';
import 'package:chat_app/core/presentation/widgets/builder/async_value_builder.dart';
import 'package:chat_app/core/presentation/widgets/offsets/offsets.dart';
import 'package:chat_app/features/auth/application/combined_auth_provider.dart';
import 'package:chat_app/features/auth/application/combined_auth_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  static const String pagePath = '/login';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final asyncValue = ref.watch(combinedAuthProvider);
    final notifer = ref.read(combinedAuthProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: FixedBottomBar(
        isBorder: false,
        children: [
          SizedBox(
            width: double.infinity,
            child: OffsetButton(
              label: 'はじめる',
              onPressed: notifer.signInAnonymously,
            ),
          ),
        ],
      ),
      body: AsyncValueBuilder<CombinedAuthState>(
        asyncValue: asyncValue,
        child: (data) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: theme.textTheme.displayLarge?.copyWith(
                      height: 1.2,
                    ),
                    children: [
                      WidgetSpan(
                        child: OffsetText(
                          text: 'Goroにゃーん',
                          style: theme.textTheme.displayLarge
                              ?.copyWith(height: 1.4),
                        ),
                      ),
                      const WidgetSpan(
                        child: SizedBox(width: 8),
                      ),
                      const TextSpan(
                        text: 'でねこに暗記をお手伝いしてもらおう！',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  '音声入力＋語呂＋イラスト＋クイズで'
                  'サクサク覚えてサクッとレベルアップにゃ！',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    height: 1.8,
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/welcome.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
