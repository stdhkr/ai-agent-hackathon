import 'package:flutter/material.dart';
import 'package:goronyan/core/constants/app_colors.dart';

class OffsetTheme {
  const OffsetTheme({
    this.offsetColor = AppColors.accent1,
    this.offset = const Offset(3, 3),
    this.blurRadius = 0.0,
  });

  factory OffsetTheme.fromContext(
    BuildContext context, {
    Offset offset = const Offset(3, 3),
    double blurRadius = 0.0,
  }) {
    final color = Theme.of(context).colorScheme.primary;
    return OffsetTheme(
      offsetColor: color,
      offset: offset,
      blurRadius: blurRadius,
    );
  }

  final Color offsetColor;
  final Offset offset;
  final double blurRadius;
  static const OffsetTheme defaultOffsetTheme = OffsetTheme();

  List<Shadow> toTextShadows() => [
        Shadow(
          color: offsetColor,
          offset: offset,
          blurRadius: blurRadius,
        ),
      ];
}
