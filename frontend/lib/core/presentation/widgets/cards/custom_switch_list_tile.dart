import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomSwitchListTile extends ConsumerWidget {
  const CustomSwitchListTile({
    super.key,
    required this.title,
    required this.value,
    this.isTop = false,
    this.isBottom = false,
    required this.onChanged,
  });

  final String title;
  final bool value;
  final bool isTop;
  final bool isBottom;
  final void Function({required bool value}) onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return SwitchListTile(
      value: value,
      onChanged: (value) {
        onChanged(value: value);
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: isTop ? const Radius.circular(16) : Radius.zero,
          bottom: isBottom ? const Radius.circular(16) : Radius.zero,
        ),
      ),
      title: Text(
        title,
        style: theme.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
