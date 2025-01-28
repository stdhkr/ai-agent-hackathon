import 'package:flutter/material.dart';

class HalftoneBackground extends StatelessWidget {
  const HalftoneBackground({
    super.key,
    required this.child,
    this.color,
    this.spacing = 6,
    this.radius = 2.0,
    this.offset,
  });

  final Widget child;
  final Color? color;
  final double spacing;
  final double radius;
  final Offset? offset;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RetroHalftonePainter(
        color: color ?? Theme.of(context).colorScheme.secondary,
        spacing: spacing,
        radius: radius,
        offset: offset,
      ),
      child: child,
    );
  }
}

class RetroHalftonePainter extends CustomPainter {
  RetroHalftonePainter({
    required this.color,
    required this.spacing,
    required this.radius,
    this.offset,
  });

  final Color color;
  final double spacing;
  final double radius;
  final Offset? offset;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final effectiveOffset =
        offset ?? Offset.zero;

    for (var y = -spacing + effectiveOffset.dy;
        y < size.height;
        y += spacing) {
      for (var x = -spacing + effectiveOffset.dx;
          x < size.width;
          x += spacing) {
        canvas.drawCircle(Offset(x, y), radius, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
