import 'package:chat_app/core/presentation/widgets/offsets/offset_icon_svg.dart';
import 'package:chat_app/features/generate/presentation/widgets/show_voice_input_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AssetWithLabel {
  const AssetWithLabel({
    required this.path,
    required this.label,
  });

  final String path;
  final String label;
}

const List<AssetWithLabel> paths = [
  AssetWithLabel(path: 'ホーム', label: 'cat'),
  AssetWithLabel(path: 'リスト', label: 'paw_print'),
  AssetWithLabel(path: '作成', label: 'mic'),
  AssetWithLabel(path: 'クイズ', label: 'sticker'),
  AssetWithLabel(path: '設定', label: 'settings'),
];

class ShellPage extends StatelessWidget {
  const ShellPage({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    void goBranch(int index) {
      if (index == 2) {
        showVoiceInputBottomSheet(context);
      } else {
        navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        );
      }
    }

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        indicatorColor: Colors.transparent,
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        destinations: paths
            .asMap()
            .entries
            .map(
              (e) => NavigationDestination(
                icon: OffsetIconSvg(
                  outlineAssetPath: 'assets/images/${e.value.label}.svg',
                  fillAssetPath: 'assets/images/${e.value.label}_fill.svg',
                  size: 24,
                  isActive: navigationShell.currentIndex == e.key,
                ),
                label: e.value.path,
              ),
            )
            .toList(),
        onDestinationSelected: goBranch,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
