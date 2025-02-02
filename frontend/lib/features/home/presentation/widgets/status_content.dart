import 'package:flutter/material.dart';
import 'package:goronyan/core/constants/app_colors.dart';

class StatusContent extends StatelessWidget {
  const StatusContent({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        Text(
          value,
          style: theme.textTheme.headlineMedium,
        ),
        Text(
          label,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: AppColors.textLightDark,
          ),
        ),
      ],
    );
  }
}
