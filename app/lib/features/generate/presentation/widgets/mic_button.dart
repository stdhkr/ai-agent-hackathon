import 'dart:math' show pi;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:goronyan/core/constants/app_colors.dart';
import 'package:goronyan/core/presentation/widgets/offsets/offsets.dart';
import 'package:goronyan/features/generate/presentation/widgets/recording_effect.dart';

class MicButton extends HookWidget {
  const MicButton({
    super.key,
    required this.startRecording,
    required this.stopRecording,
    required this.isRecording,
  });

  final VoidCallback startRecording;
  final VoidCallback stopRecording;
  final bool isRecording;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final rotationController = useAnimationController(
      duration: const Duration(seconds: 5),
    )..repeat();

    final scaleController = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );

    final rotationValue = useAnimation(rotationController);
    final scaleValue = useAnimation(scaleController);

    final rotation = rotationValue * 2 * pi;
    final currentScale = 0.85 + scaleValue * 0.3;

    void toggleRecording() {
      if (isRecording) {
        stopRecording();
      } else {
        startRecording();
      }

      if (scaleController.isCompleted) {
        scaleController.reverse();
      } else {
        scaleController.forward();
      }
    }

    final showBlobs = !scaleController.isDismissed;

    return GestureDetector(
      onTap: toggleRecording,
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (showBlobs) ...[
            RecordingEffect(
              color: const Color(0xffa098f9),
              scale: currentScale,
              rotation: rotation,
            ),
            RecordingEffect(
              color: const Color(0xfff457f0),
              scale: currentScale,
              rotation: rotation * 2 - 30,
            ),
            RecordingEffect(
              color: const Color(0xff6865f9),
              scale: currentScale,
              rotation: rotation * 3 - 45,
            ),
            RecordingEffect(
              color: const Color(0xff0092ff),
              scale: currentScale,
              rotation: rotation * 1.5 - 60,
            ),
          ],
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.background,
            ),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: isRecording
                  ? Icon(
                      Icons.stop,
                      color: theme.colorScheme.secondary,
                      size: 50,
                    )
                  : const OffsetIconSvg(
                      outlineAssetPath: 'assets/images/mic.svg',
                      fillAssetPath: 'assets/images/mic_fill.svg',
                      size: 50,
                      isActive: true,
                      offsetTheme: micOffsetTheme,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
