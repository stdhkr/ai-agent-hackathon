import 'package:chat_app/config/router/app_routes.dart';
import 'package:chat_app/core/presentation/widgets/builder/async_value_builder.dart';
import 'package:chat_app/core/presentation/widgets/cards/mnemonic_list_card.dart';
import 'package:chat_app/features/mnemonics/application/mnemonics_provider.dart';
import 'package:chat_app/features/mnemonics/application/mnemonics_state.dart';
import 'package:chat_app/features/mnemonics/domain/entities/mnemonic_detail_page_extra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MnemonicsTabView extends HookConsumerWidget {
  const MnemonicsTabView({
    super.key,
    required this.type,
  });

  final MenemonicsStateType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final asyncValue = ref.watch(mnemonicsProvider(type));

    return AsyncValueBuilder<MnemonicsState>(
      asyncValue: asyncValue,
      child: (data) {
        return data.mnemonics.isEmpty
            ? const Center(
                child: Text('記憶カードがありません'),
              )
            : ListView.builder(
                itemCount: data.mnemonics.length,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemBuilder: (context, index) {
                  final mnemonic = data.mnemonics[index];
                  return MnemonicListCard(
                    mnemonic: mnemonic,
                    isDivider: index != data.mnemonics.length - 1,
                    onTap: () {
                      final extra = MnemonicDetailPageExtra(
                        mnemonics: data.mnemonics,
                        initialIndex: index,
                      );
                      MnemonicsDetailsRouteData(extra).push<void>(context);
                    },
                  );
                },
              );
      },
    );
  }
}
