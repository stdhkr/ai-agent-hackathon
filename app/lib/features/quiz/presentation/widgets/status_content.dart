import 'package:chat_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class StatusContent extends StatelessWidget {
  const StatusContent({
    super.key,
    required this.label,
    required this.value,
    this.subText,
  });

  final String label;
  final String value;
  final String? subText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        Text(
          label,
          style: theme.textTheme.titleSmall?.copyWith(
            color: AppColors.textLightDark,
          ),
        ),
        RichText(
          text: TextSpan(
            style: theme.textTheme.displayLarge,
            children: [
              TextSpan(text: value),
              if (subText != null)
                const WidgetSpan(
                  child: SizedBox(width: 4),
                ),
              if (subText != null)
                TextSpan(
                  text: subText,
                  style: theme.textTheme.bodySmall,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
