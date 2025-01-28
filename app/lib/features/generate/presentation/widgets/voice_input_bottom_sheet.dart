import 'package:chat_app/config/router/router.dart';
import 'package:chat_app/core/constants/app_colors.dart';
import 'package:chat_app/core/presentation/widgets/builder/async_value_builder.dart';
import 'package:chat_app/features/generate/application/voice_input_providers.dart';
import 'package:chat_app/features/generate/application/voice_input_state.dart';
import 'package:chat_app/features/generate/presentation/widgets/generate_loading.dart';
import 'package:chat_app/features/generate/presentation/widgets/mic_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VoiceInputBottomSheet extends ConsumerWidget {
  const VoiceInputBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(voiceInputProvider);
    final notifer = ref.read(voiceInputProvider.notifier);
    final theme = Theme.of(context);

    Future<void> stopRecording() async {
      final _ = showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return const GenerateLoading();
        },
      );
      final result = await notifer.stopRecordingAndGenerateMnemonic();
      if (!context.mounted) {
        return;
      }
      if (Navigator.canPop(context)) {
        Navigator.pop(context);
      }
      if (Navigator.canPop(context)) {
        Navigator.pop(context);
      }
      await GeneratedResultRouteData(result).push<void>(context);
    }

    return AsyncValueBuilder<VoiceInputState>(
      asyncValue: asyncValue,
      isWrapScaffoldError: true,
      child: (data) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                data.isRecording ? '録音中...' : '記憶カード作成',
                style: theme.textTheme.headlineLarge,
              ),
              const SizedBox(height: 8),
              Text(
                '記憶したい内容を音声入力するにゃ！',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: AppColors.textLightDark,
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: 100,
                height: 100,
                child: MicButton(
                  startRecording: notifer.startRecording,
                  stopRecording: stopRecording,
                  isRecording: data.isRecording,
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        );
      },
    );
  }
}
