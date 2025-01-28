import 'dart:ui';

import 'package:chat_app/core/presentation/widgets/typographies/label.dart';
import 'package:chat_app/features/mnemonics/domain/entities/mnemonic.dart';
import 'package:flutter/material.dart';

class MnemonicCard extends StatelessWidget {
  const MnemonicCard({
    super.key,
    required this.mnemonic,
    this.isFilteredAnswer = false,
  });

  final Mnemonic mnemonic;
  final bool isFilteredAnswer;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final blurFilter = isFilteredAnswer
        ? ImageFilter.blur(sigmaX: 10, sigmaY: 10)
        : ImageFilter.blur(sigmaX: 0, sigmaY: 0);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (mnemonic.question != null)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Label(text: '質問'),
                    const SizedBox(height: 4),
                    Text(
                      mnemonic.question ?? '',
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
              const SizedBox(height: 16),
              const Label(text: '答え'),
              const SizedBox(height: 4),
              ImageFiltered(
                imageFilter: blurFilter,
                child: Text(
                  mnemonic.answer,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              const SizedBox(height: 16),
              const Label(text: '意味'),
              const SizedBox(height: 4),
              Text(
                mnemonic.meaning,
                style: theme.textTheme.bodyMedium,
              ),
              if (mnemonic.episode.isNotEmpty) ...[
                const SizedBox(height: 16),
                const Label(text: 'エピソード'),
                const SizedBox(height: 4),
                Text(
                  mnemonic.episode,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
              const SizedBox(height: 16),
              const Label(text: '語呂合わせ'),
              const SizedBox(height: 4),
              Text(
                mnemonic.goroText,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
        if (mnemonic.outputImagePath != null)
          SizedBox(
            child: Image.network(
              mnemonic.outputImagePath!,
              fit: BoxFit.contain,
            ),
          ),
      ],
    );
  }
}
