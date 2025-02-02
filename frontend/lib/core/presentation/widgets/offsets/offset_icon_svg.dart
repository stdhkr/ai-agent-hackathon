import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'offset_theme.dart';

class OffsetIconSvg extends StatelessWidget {
  const OffsetIconSvg({
    super.key,
    required this.outlineAssetPath,
    required this.fillAssetPath,
    this.size = 24.0,
    this.borderColor,
    this.offsetTheme = OffsetTheme.defaultOffsetTheme,
    required this.isActive,
  });

  final String outlineAssetPath;
  final String fillAssetPath;
  final double size;
  final Color? borderColor;
  final OffsetTheme offsetTheme;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      switchInCurve: Curves.easeOutBack,
      switchOutCurve: Curves.easeInBack,
      transitionBuilder: (child, animation) {
        final key = child.key;
        if (key is ValueKey<String>) {
          final keyStr = key.value;
          if (keyStr == 'fill') {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(animation),
              child: SizeTransition(
                sizeFactor: animation,
                fixedCrossAxisSizeFactor: 1,
                axis: Axis.vertical,
                child: child,
              ),
            );
          } else {
            return RotationTransition(
              turns: animation,
              child: child,
            );
          }
        } else {
          return RotationTransition(
            turns: animation,
            child: child,
          );
        }
      },
      layoutBuilder: (currentChild, previousChildren) {
        return Stack(
          children: [
            if (currentChild != null) currentChild,
          ],
        );
      },
      child: _buildWidget(
        key: ValueKey(isActive ? 'fill' : 'outline'),
        context: context,
      ),
    );
  }

  Widget _buildWidget({Key? key, required BuildContext context}) {
    return Stack(
      key: key,
      children: [
        if (isActive)
          Transform.translate(
            offset: offsetTheme.offset,
            child: SvgPicture.asset(
              fillAssetPath,
              width: size,
              height: size,
              colorFilter: ColorFilter.mode(
                offsetTheme.offsetColor,
                BlendMode.srcIn,
              ),
            ),
          ),
        SvgPicture.asset(
          outlineAssetPath,
          width: size,
          height: size,
          colorFilter: ColorFilter.mode(
            borderColor ?? Theme.of(context).colorScheme.onSurface,
            BlendMode.srcIn,
          ),
        ),
      ],
    );
  }
}
