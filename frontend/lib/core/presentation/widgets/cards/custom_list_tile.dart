import 'package:flutter/material.dart';
import 'package:goronyan/core/constants/app_colors.dart';
import 'package:goronyan/core/extensions/string_extensions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomListTile extends ConsumerWidget {
  const CustomListTile({
    super.key,
    required this.title,
    this.label,
    this.isTop = false,
    this.isBottom = false,
    this.onTap,
  });

  final String title;
  final String? label;
  final bool isTop;
  final bool isBottom;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return ListTile(
      onTap: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: isTop ? const Radius.circular(16) : Radius.zero,
          bottom: isBottom ? const Radius.circular(16) : Radius.zero,
        ),
      ),
      leading: label.isNotNullOrEmpty
          ? SizedBox(
              width: 72,
              child: Text(
                label!,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: AppColors.textLightDark,
                ),
              ),
            )
          : null,
      title: Text(
        title,
        style: label.isNotNullOrEmpty
            ? null
            : theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
      ),
      trailing: const Icon(Icons.chevron_right_rounded),
    );
  }
}
