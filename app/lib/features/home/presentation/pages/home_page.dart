import 'package:chat_app/config/router/app_routes.dart';
import 'package:chat_app/core/presentation/widgets/builder/async_value_builder.dart';
import 'package:chat_app/core/presentation/widgets/cards/mnemonic_list_card.dart';
import 'package:chat_app/core/presentation/widgets/offsets/offsets.dart';
import 'package:chat_app/features/home/application/home_provider.dart';
import 'package:chat_app/features/home/application/home_state.dart';
import 'package:chat_app/features/home/presentation/widgets/status_content.dart';
import 'package:chat_app/features/mnemonics/domain/entities/mnemonic_detail_page_extra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  static const String pagePath = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(homeProvider);
    final scrollController = useScrollController();

    return Scaffold(
      appBar: AppBar(title: const Text('ホーム')),
      body: AsyncValueBuilder<HomeState?>(
        asyncValue: asyncValue,
        child: (data) {
          final appUser = data?.appUser;
          final mnemonics = data?.mnemonics ?? [];
          if (data == null || appUser == null) {
            return const Center(child: CircularProgressIndicator());
          }

          return CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
                  child: SizedBox(
                    width: 240,
                    height: 240,
                    child: Image.network(
                      appUser.avatarURL,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
                sliver: SliverToBoxAdapter(
                  child: OffsetContainer(
                    offsetTheme: grayOffsetTheme,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: StatusContent(
                              label: 'レベル',
                              value: appUser.level.toString(),
                            ),
                          ),
                          Expanded(
                            child: StatusContent(
                              label: 'ポイント',
                              value: appUser.xp.toString(),
                            ),
                          ),
                          Expanded(
                            child: StatusContent(
                              label: '生成回数',
                              value: appUser.generatedCount.toString(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    '最近作成した記憶カード',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ),
              data.mnemonics.isEmpty
                  ? const SliverPadding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      sliver: SliverToBoxAdapter(
                        child: Text('記憶カードがありません'),
                      ),
                    )
                  : SliverPadding(
                      padding: const EdgeInsets.all(8),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            final mnemonic = mnemonics[index];
                            return MnemonicListCard(
                              mnemonic: mnemonic,
                              isDivider: index != data.mnemonics.length - 1,
                              onTap: () {
                                final extra = MnemonicDetailPageExtra(
                                  mnemonics: mnemonics,
                                  initialIndex: index,
                                );
                                MnemonicsDetailsRouteData(extra)
                                    .push<void>(context);
                              },
                            );
                          },
                          childCount: mnemonics.length,
                        ),
                      ),
                    ),
            ],
          );
        },
      ),
    );
  }
}
