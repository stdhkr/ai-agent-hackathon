import 'package:flutter/material.dart';
import 'package:goronyan/core/presentation/keyboard/keyboard.dart';

class UnfocusLayout extends StatelessWidget {
  const UnfocusLayout({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: dismissKeyboard,
      behavior: HitTestBehavior.opaque,
      child: child,
    );
  }
}
