import 'package:flutter/material.dart';

class WrapScaffold extends StatelessWidget {
  const WrapScaffold({
    super.key,
    required this.isWrap,
    required this.child,
  });

  final bool isWrap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return isWrap
        ? Scaffold(
            body: child,
          )
        : child;
  }
}
