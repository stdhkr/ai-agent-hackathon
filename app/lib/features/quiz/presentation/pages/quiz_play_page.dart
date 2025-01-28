import 'package:chat_app/config/router/app_routes.dart';
import 'package:chat_app/config/router/branches/shell_route.dart';
import 'package:chat_app/core/constants/app_colors.dart';
import 'package:chat_app/core/presentation/widgets/bars/fixed_bottom_bar.dart';
import 'package:chat_app/core/presentation/widgets/builder/async_value_builder.dart';
import 'package:chat_app/core/presentation/widgets/offsets/offsets.dart';
import 'package:chat_app/features/quiz/application/quiz_play_provider.dart';
import 'package:chat_app/features/quiz/application/quiz_play_state.dart';
import 'package:chat_app/features/quiz/presentation/widgets/flashcard.dart';
import 'package:chat_app/features/quiz/presentation/widgets/status_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QuizPlayPage extends HookConsumerWidget {
  const QuizPlayPage({
    super.key,
    required this.isOnlyUnmemorizeds,
  });

  static const String pagePath = '/quiz-play';

  final bool isOnlyUnmemorizeds;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final asyncValue = ref.watch(quizPlayProvider(isOnlyUnmemorizeds));
    final notifer = ref.read(quizPlayProvider(isOnlyUnmemorizeds).notifier);
    final pageController = usePageController();

    void goToNextPage({
      required int maxPage,
      required int currentPage,
      required bool isCompleted,
    }) {
      if (maxPage == 0) {
        return;
      }
      if (currentPage < maxPage - 1) {
        pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      } else {
        notifer.updateIsCompleted(isCompleted: true);
      }
    }

    return AsyncValueBuilder<QuizPlayState>(
      asyncValue: asyncValue,
      isWrapScaffoldError: true,
      isWrapScaffoldLoading: true,
      child: (data) {
        return Scaffold(
          bottomNavigationBar: data.isCompleted || data.mnemonics.isEmpty
              ? FixedBottomBar(
                  isBorder: false,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: OffsetButton(
                        label: 'ホームに戻る',
                        onPressed: () {
                          const HomeRouteData().go(context);
                        },
                      ),
                    ),
                  ],
                )
              : null,
          body: data.isCompleted
              ? SafeArea(
                  bottom: false,
                  child: ListView(
                    children: [
                      const SizedBox(height: 24),
                      Center(
                        child: Text(
                          'お疲れ様でした！',
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/is_completed.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: OffsetContainer(
                          offsetTheme: grayOffsetTheme,
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              children: [
                                Expanded(
                                  child: StatusContent(
                                    label: '覚えた数',
                                    value: data.totalMemorizedCount.toString(),
                                    subText: '/${data.mnemonics.length} 個',
                                  ),
                                ),
                                Expanded(
                                  child: StatusContent(
                                    label: '獲得ポイント',
                                    value: data.rewardPoint.toString(),
                                    subText: 'ポイント',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          '勉強のあとはゴロンとお昼寝、にゃんと記憶に効果バツグンにゃ 🐈🐈',
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                )
              : data.mnemonics.isEmpty
                  ? Center(
                      child: Text(
                        '覚えていない記憶カードがありません',
                        style: theme.textTheme.titleSmall,
                      ),
                    )
                  : SafeArea(
                      bottom: false,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (int i = 0; i < data.mnemonics.length; i++)
                                Container(
                                  width: 8,
                                  height: 8,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: i == data.currentPage
                                        ? AppColors.accent2
                                        : AppColors.lightGray,
                                  ),
                                ),
                            ],
                          ),
                          Expanded(
                            child: PageView.builder(
                              controller: pageController,
                              itemCount: data.mnemonics.length,
                              physics: const NeverScrollableScrollPhysics(),
                              onPageChanged: notifer.updateCurrentPage,
                              itemBuilder: (context, index) {
                                return Flashcard(
                                  mnemonic: data.mnemonics[index],
                                  memorized: data.memorizeds[index],
                                  updateMemorized: ({
                                    bool? isFront,
                                    bool? isFilteredAnswer,
                                    bool? isMemorized,
                                    bool? isCompleted,
                                  }) async {
                                    await notifer.updateMemorized(
                                      index: index,
                                      isFront: isFront,
                                      isFilteredAnswer: isFilteredAnswer,
                                      isMemorized: isMemorized,
                                      isCompleted: isCompleted,
                                    );
                                    if (isCompleted == true) {
                                      goToNextPage(
                                        maxPage: data.mnemonics.length,
                                        currentPage: data.currentPage,
                                        isCompleted: data.isCompleted,
                                      );
                                    }
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
        );
      },
    );
  }
}
