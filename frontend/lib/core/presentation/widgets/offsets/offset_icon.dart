import 'package:flutter/material.dart';
import 'offset_theme.dart';

class OffsetIcon extends StatelessWidget {
  const OffsetIcon({
    super.key,
    required this.icon,
    this.size = 24.0,
    this.color = Colors.black,
    this.offsetTheme = OffsetTheme.defaultOffsetTheme,
  });

  final IconData icon;
  final double size;
  final Color color;
  final OffsetTheme offsetTheme;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.translate(
          offset: offsetTheme.offset,
          child: Icon(
            icon,
            size: size,
            color: offsetTheme.offsetColor,
          ),
        ),
        Icon(
          icon,
          size: size,
          color: color,
        ),
      ],
    );
  }
}
