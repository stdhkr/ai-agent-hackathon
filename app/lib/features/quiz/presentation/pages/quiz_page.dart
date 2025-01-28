import 'package:chat_app/config/router/router.dart';
import 'package:chat_app/core/presentation/widgets/bars/fixed_bottom_bar.dart';
import 'package:chat_app/core/presentation/widgets/builder/async_value_builder.dart';
import 'package:chat_app/core/presentation/widgets/cards/custom_switch_list_tile.dart';
import 'package:chat_app/core/presentation/widgets/offsets/offsets.dart';
import 'package:chat_app/features/auth/application/combined_auth_provider.dart';
import 'package:chat_app/features/auth/application/combined_auth_state.dart';
import 'package:chat_app/features/quiz/application/quiz_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QuizPage extends ConsumerWidget {
  const QuizPage({super.key});

  static const String pagePath = '/quiz';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final asyncValue = ref.watch(combinedAuthProvider);
    final swithValue = ref.watch(quizStateProvider);
    final notifer = ref.read(quizStateProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: FixedBottomBar(
        isBorder: false,
        children: [
          SizedBox(
            width: double.infinity,
            child: OffsetButton(
              label: 'クイズに挑戦する',
              onPressed: () {
                QuizPlayRouteData(isOnlyUnmemorizeds: swithValue)
                    .push<void>(context);
              },
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
                OffsetText(
                  text: 'チャレンジクイズ',
                  style: theme.textTheme.displayLarge?.copyWith(
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  '問題を解いて、ポイントをゲットにゃ！\n'
                  'ポイントをあつめると、レベルアップするよ。\n'
                  '準備はいいかにゃ？ さっそく挑戦にゃ！',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    height: 1.8,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/quiz_cat.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                CustomSwitchListTile(
                  title: '覚えていない記憶カードのみ',
                  value: swithValue,
                  isTop: true,
                  isBottom: true,
                  onChanged: notifer.updateState,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
