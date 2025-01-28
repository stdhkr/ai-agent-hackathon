import 'package:chat_app/features/generate/presentation/widgets/voice_input_bottom_sheet.dart';
import 'package:flutter/material.dart';

Future<void> showVoiceInputBottomSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    builder: (context) => const VoiceInputBottomSheet(),
  );
}
