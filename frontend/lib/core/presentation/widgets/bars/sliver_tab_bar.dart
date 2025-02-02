import 'package:flutter/material.dart';

class SliverTabBar extends StatelessWidget implements PreferredSizeWidget {
  const SliverTabBar({
    super.key,
    required this.tabController,
    required this.tabs,
  });

  final TabController tabController;
  final List<String> tabs;

  @override
  Size get preferredSize => const Size.fromHeight(40);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      padding: const EdgeInsets.only(bottom: 8),
      tabs: tabs
          .map(
            (String value) => Tab(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 2),
                child: Text(value),
              ),
            ),
          )
          .toList(),
    );
  }
}
