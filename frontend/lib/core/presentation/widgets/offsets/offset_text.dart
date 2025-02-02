import 'package:flutter/material.dart';
import 'offset_theme.dart';

class OffsetText extends StatelessWidget {
  const OffsetText({
    super.key,
    required this.text,
    this.style,
    this.offsetTheme = OffsetTheme.defaultOffsetTheme,
  });

  final String text;
  final TextStyle? style;
  final OffsetTheme offsetTheme;

  @override
  Widget build(BuildContext context) {
    final baseStyle = style ?? Theme.of(context).textTheme.bodyMedium;
    final mergedStyle = baseStyle?.copyWith(
      shadows: offsetTheme.toTextShadows(),
    );

    return Text(
      text,
      style: mergedStyle,
    );
  }
}
