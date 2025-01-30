import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:goronyan/core/constants/constants.dart';
import 'package:goronyan/core/presentation/widgets/bars/sliver_tab_bar.dart';
import 'package:goronyan/core/presentation/widgets/bars/sticky_bar_delegate.dart';
import 'package:goronyan/features/mnemonics/application/mnemonics_state.dart';
import 'package:goronyan/features/mnemonics/presentation/widgets/mnemonics_tab_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const tabs = [
  '覚えていない',
  'すべて',
];

class MnemonicsPage extends HookConsumerWidget {
  const MnemonicsPage({super.key});

  static const String pagePath = '/mnemonics';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    final tabController = useTabController(
      initialIndex: 0,
      initialLength: tabs.length,
    );

    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          controller: scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const SliverAppBar(title: Text('記憶カード')),
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverPersistentHeader(
                  pinned: true,
                  delegate: StickyBarDelegate(
                    child: SliverTabBar(
                      tabController: tabController,
                      tabs: tabs,
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Padding(
            padding: const EdgeInsets.only(top: tabBarHeight),
            child: TabBarView(
              controller: tabController,
              children: const [
                MnemonicsTabView(type: MenemonicsStateType.unmemorized),
                MnemonicsTabView(type: MenemonicsStateType.all),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
