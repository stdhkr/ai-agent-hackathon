import 'package:chat_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label({
    super.key,
    required this.text,
    this.style,
  });

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ??
          Theme.of(context).textTheme.labelSmall?.copyWith(
                color: AppColors.textLightDark,
              ),
    );
  }
}
