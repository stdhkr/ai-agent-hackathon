import 'package:chat_app/core/presentation/widgets/bars/fixed_bottom_bar.dart';
import 'package:chat_app/core/presentation/widgets/cards/mnemonic_card.dart';
import 'package:chat_app/core/presentation/widgets/offsets/offset_button.dart';
import 'package:chat_app/features/mnemonics/application/mnemonics_details_provider.dart';
import 'package:chat_app/features/mnemonics/domain/entities/mnemonic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MnemonicsDetailsPage extends HookConsumerWidget {
  const MnemonicsDetailsPage({
    super.key,
    required this.mnemonics,
    this.initialIndex = 0,
  });

  static const String pagePath = '/mnemonics-details';

  final List<Mnemonic> mnemonics;
  final int initialIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(mnemonicsDetailsProvider(initialIndex));
    final notifer = ref.read(mnemonicsDetailsProvider(initialIndex).notifier);
    final pageController = usePageController(
      initialPage: initialIndex,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('詳細'),
      ),
      bottomNavigationBar: mnemonics.isEmpty
          ? null
          : FixedBottomBar(
              isBorder: false,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    spacing: 16,
                    children: [
                      Expanded(
                        child: OffsetButton(
                          isOffset: false,
                          label: '前に戻る',
                          onPressed: currentIndex == 0
                              ? null
                              : () {
                                  pageController.previousPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                },
                        ),
                      ),
                      Expanded(
                        child: OffsetButton(
                          isOffset: false,
                          label: '次に進む',
                          onPressed: currentIndex == mnemonics.length - 1
                              ? null
                              : () {
                                  pageController.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
      body: PageView.builder(
        controller: pageController,
        itemCount: mnemonics.length,
        onPageChanged: notifer.onChanged,
        itemBuilder: (context, index) {
          final mnemonic = mnemonics[index];
          return ListView(
            children: [
              MnemonicCard(mnemonic: mnemonic),
            ],
          );
        },
      ),
    );
  }
}
