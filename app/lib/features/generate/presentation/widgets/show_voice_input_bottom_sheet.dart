import 'package:flutter/material.dart';
import 'package:goronyan/features/generate/presentation/widgets/voice_input_bottom_sheet.dart';

Future<void> showVoiceInputBottomSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    builder: (context) => const VoiceInputBottomSheet(),
  );
}
