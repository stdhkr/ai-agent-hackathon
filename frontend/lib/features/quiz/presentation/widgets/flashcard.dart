import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:goronyan/core/presentation/widgets/bars/fixed_bottom_bar.dart';
import 'package:goronyan/core/presentation/widgets/cards/mnemonic_card.dart';
import 'package:goronyan/core/presentation/widgets/offsets/offset_button.dart';
import 'package:goronyan/features/mnemonics/domain/entities/mnemonic.dart';
import 'package:goronyan/features/quiz/application/quiz_play_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Flashcard extends HookConsumerWidget {
  const Flashcard({
    super.key,
    required this.mnemonic,
    required this.memorized,
    required this.updateMemorized,
  });

  final Mnemonic mnemonic;
  final MemorizedPlay memorized;
  final FutureOr<void> Function({
    bool? isFront,
    bool? isFilteredAnswer,
    bool? isMemorized,
    bool? isCompleted,
  }) updateMemorized;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final vsync = useSingleTickerProvider();
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: vsync,
    );

    final animation = useMemoized(
      () => Tween<double>(begin: 0, end: 1).animate(controller),
      [controller],
    );

    final animationValue = useAnimation(animation);

    void flipCard() {
      if (memorized.isFront) {
        controller.forward();
      } else {
        controller.reverse();
      }
      updateMemorized(isFront: !memorized.isFront);
    }

    final angle = animationValue * pi;
    final scale = 1.0 - 0.15 * sin(angle).abs();
    final isFrontSideVisible = angle < pi / 2;

    final transform = Matrix4.identity()
      ..setEntry(3, 2, 0.001)
      ..rotateY(angle)
      ..scale(scale);

    Widget buildFront() {
      return Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                mnemonic.question ?? '',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          ColoredBox(
            color: theme.scaffoldBackgroundColor,
            child: FixedBottomBar(
              isBorder: false,
              children: [
                Row(
                  spacing: 16,
                  children: [
                    Expanded(
                      child: OffsetButton(
                        label: 'ヒントを見る',
                        onPressed: () async {
                          await updateMemorized(isFilteredAnswer: true);
                          flipCard();
                        },
                        isOffset: false,
                      ),
                    ),
                    Expanded(
                      child: OffsetButton(
                        label: '答えを見る',
                        onPressed: flipCard,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget buildBack() {
      return Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 16),
              children: [
                MnemonicCard(
                  mnemonic: mnemonic,
                  isFilteredAnswer: memorized.isFilteredAnswer,
                ),
              ],
            ),
          ),
          ColoredBox(
            color: theme.scaffoldBackgroundColor,
            child: FixedBottomBar(
              isBorder: false,
              children: [
                if (memorized.isFilteredAnswer)
                  SizedBox(
                    width: size.width - 48,
                    child: OffsetButton(
                      label: '答えを表示する',
                      onPressed: () {
                        updateMemorized(isFilteredAnswer: false);
                      },
                    ),
                  )
                else
                  Row(
                    spacing: 16,
                    children: [
                      OffsetButton(
                        label: 'まだ覚えてない',
                        onPressed: () {
                          updateMemorized(
                            isMemorized: false,
                            isCompleted: true,
                          );
                        },
                        isOffset: false,
                      ),
                      Expanded(
                        child: OffsetButton(
                          label: '覚えた！',
                          onPressed: () {
                            updateMemorized(
                              isMemorized: true,
                              isCompleted: true,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      );
    }

    return Transform(
      alignment: Alignment.center,
      transform: transform,
      child: isFrontSideVisible
          ? buildFront()
          : Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(pi),
              child: buildBack(),
            ),
    );
  }
}
