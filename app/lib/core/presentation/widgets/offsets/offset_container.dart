import 'package:flutter/material.dart';
import 'offset_theme.dart';

class OffsetContainer extends StatelessWidget {
  const OffsetContainer({
    super.key,
    required this.child,
    this.offsetTheme = OffsetTheme.defaultOffsetTheme,
    this.isOffset = true,
  });

  final Widget child;
  final OffsetTheme offsetTheme;
  final bool isOffset;

  @override
  Widget build(BuildContext context) {
    if (!isOffset) {
      return child;
    }

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
        boxShadow: [
          BoxShadow(
            color: offsetTheme.offsetColor,
            offset: offsetTheme.offset,
            blurRadius: offsetTheme.blurRadius,
          ),
        ],
      ),
      child: child,
    );
  }
}
