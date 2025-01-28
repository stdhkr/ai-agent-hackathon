import 'package:flutter/material.dart';
import 'offset_theme.dart';

class OffsetButton extends StatelessWidget {
  const OffsetButton({
    super.key,
    required this.label,
    this.onPressed,
    this.offsetTheme = OffsetTheme.defaultOffsetTheme,
    this.isLoading = false,
    this.isOffset = true,
  });

  final String label;
  final VoidCallback? onPressed;
  final OffsetTheme offsetTheme;
  final bool isLoading;
  final bool isOffset;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final disabled = onPressed == null;
    final buttonStyle = ButtonStyle(
      side: disabled
          ? WidgetStateProperty.resolveWith(
              (states) {
                return const BorderSide(color: Colors.transparent);
              },
            )
          : null,
      overlayColor: isOffset
          ? WidgetStateProperty.resolveWith(
              (states) {
                return Colors.transparent;
              },
            )
          : null,
      backgroundColor: disabled
          ? WidgetStateProperty.resolveWith(
              (states) {
                return theme.colorScheme.outlineVariant;
              },
            )
          : null,
      backgroundBuilder: (context, states, child) {
        final isPressed = states.contains(WidgetState.pressed) || isLoading;
        const duration = Duration(milliseconds: 200);
        final offset = isPressed ? Offset.zero : offsetTheme.offset;

        if (!isOffset) {
          return child ?? const SizedBox.shrink();
        }

        return AnimatedContainer(
          duration: duration,
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: offsetTheme.offsetColor,
                offset: offset,
                blurRadius: offsetTheme.blurRadius,
              ),
            ],
          ),
          child: child,
        );
      },
    );

    return OutlinedButton(
      style: buttonStyle,
      clipBehavior: Clip.none,
      onPressed: isLoading ? null : onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          if (isLoading)
            SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: isOffset
                    ? theme.colorScheme.onSecondary
                    : theme.colorScheme.onPrimary,
              ),
            ),
          Text(
            label,
            style: theme.textTheme.titleSmall?.copyWith(
              color: isOffset
                  ? theme.colorScheme.onSecondary
                  : disabled
                      ? Colors.white
                      : null,
            ),
          ),
        ],
      ),
    );
  }
}
