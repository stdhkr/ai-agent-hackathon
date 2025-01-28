import 'package:flutter/material.dart';

extension ColorX on Color {
  Color withDoubleOpacity(double opacity) {
    return withValues(
      alpha: opacity,
      red: r,
      green: g,
      blue: b,
    );
  }
}
