import 'package:chat_app/config/router/router.dart';
import 'package:chat_app/core/presentation/widgets/bars/fixed_bottom_bar.dart';
import 'package:chat_app/core/presentation/widgets/cards/mnemonic_card.dart';
import 'package:chat_app/core/presentation/widgets/offsets/offsets.dart';
import 'package:chat_app/features/generate/application/re_generate_provider.dart';
import 'package:chat_app/features/generate/presentation/widgets/generate_loading.dart';
import 'package:chat_app/features/mnemonics/domain/entities/mnemonic.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GeneratedResultPage extends ConsumerWidget {
  const GeneratedResultPage({
    super.key,
    required this.mnemonic,
  });

  static const String pagePath = '/generated-result';

  final Mnemonic mnemonic;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(reGenerateProvider(mnemonic));
    final notifer = ref.read(reGenerateProvider(mnemonic).notifier);
    final isReGenerateEnabled = asyncValue.value?.isReGenerateEnabled ?? false;

    Future<void> onReGenerate() async {
      final _ = showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return const GenerateLoading();
        },
      );
      await notifer.onReGenerate();
      if (!context.mounted) {
        return;
      }
      if (Navigator.canPop(context)) {
        Navigator.pop(context);
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('生成完了')),
      bottomNavigationBar: FixedBottomBar(
        isBorder: false,
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              spacing: 16,
              children: [
                OffsetButton(
                  isOffset: false,
                  label: '再生成する',
                  isLoading: asyncValue.isLoading,
                  onPressed: isReGenerateEnabled ? onReGenerate : null,
                ),
                Expanded(
                  child: OffsetButton(
                    label: 'ホームに戻る',
                    onPressed: () {
                      const HomeRouteData().go(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            MnemonicCard(mnemonic: asyncValue.value?.mnemonic ?? mnemonic),
          ],
        ),
      ),
    );
  }
}
