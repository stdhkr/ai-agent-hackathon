import 'package:flutter/material.dart';

class FixedBottomBar extends StatelessWidget {
  const FixedBottomBar({
    super.key,
    required this.children,
    this.isBorder = true,
  });

  final List<Widget> children;
  final bool isBorder;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.colorScheme.onSecondary,
        border: isBorder
            ? Border(
                top: BorderSide(
                  color: theme.colorScheme.outlineVariant,
                ),
              )
            : null,
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 4,
            children: children,
          ),
        ),
      ),
    );
  }
}
