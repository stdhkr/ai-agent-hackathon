import 'package:chat_app/core/presentation/keyboard/keyboard.dart';
import 'package:flutter/material.dart';

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
