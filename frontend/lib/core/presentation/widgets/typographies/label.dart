import 'package:flutter/material.dart';
import 'package:goronyan/core/constants/app_colors.dart';

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
