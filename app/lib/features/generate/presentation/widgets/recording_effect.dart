import 'package:chat_app/core/extensions/color_extensions.dart';
import 'package:flutter/material.dart';

class RecordingEffect extends StatelessWidget {
  const RecordingEffect({
    super.key,
    required this.rotation,
    required this.scale,
    required this.color,
  });

  final double rotation;
  final double scale;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale,
      child: Transform.rotate(
        angle: rotation,
        child: Container(
          width: 240,
          height: 240,
          decoration: BoxDecoration(
            color: color.withDoubleOpacity(0.65),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(150),
              topRight: Radius.circular(240),
              bottomLeft: Radius.circular(220),
              bottomRight: Radius.circular(180),
            ),
          ),
        ),
      ),
    );
  }
}
