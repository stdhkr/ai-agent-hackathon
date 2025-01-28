import 'package:chat_app/core/constants/app_colors.dart';
import 'package:chat_app/core/constants/constants.dart';
import 'package:chat_app/core/presentation/widgets/offsets/offset_icon_svg.dart';
import 'package:flutter/material.dart';

final _icons = [
  'assets/images/laugh.svg',
  'assets/images/smile.svg',
  'assets/images/meh.svg',
];

final _reversedCatLevelTexts = catLevelTexts.reversed.toList();

class CatLevelSlider extends StatelessWidget {
  const CatLevelSlider({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final double value;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(_reversedCatLevelTexts.length, (index) {
                final levelText = _reversedCatLevelTexts[index];
                final isHighlighted =
                    (_reversedCatLevelTexts.length - index) == value;
                return Text(
                  levelText,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: isHighlighted ? FontWeight.bold : null,
                    color: isHighlighted
                        ? theme.colorScheme.secondary
                        : AppColors.textLightDark,
                  ),
                );
              }),
            ),
          ),
          const SizedBox(width: 24),
          RotatedBox(
            quarterTurns: -1,
            child: Slider(
              value: value,
              min: 1,
              max: 3,
              divisions: 2,
              onChanged: onChanged,
            ),
          ),
          const SizedBox(width: 24),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(_icons.length, (index) {
                final assetPath = _icons[index];
                final isHighlighted = (_icons.length - index) == value;
                return OffsetIconSvg(
                  outlineAssetPath: assetPath,
                  fillAssetPath: assetPath,
                  borderColor: isHighlighted
                      ? theme.colorScheme.secondary
                      : AppColors.textLightDark,
                  size: 32,
                  isActive: false,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
