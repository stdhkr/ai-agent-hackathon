import 'package:chat_app/core/extensions/string_extensions.dart';
import 'package:flutter/material.dart';

Future<void> showAutoDismissDialog(
  BuildContext context, {
  required String title,
  String? message,
  Duration duration = const Duration(seconds: 2),
}) async {
  await showDialog<void>(
    context: context,
    builder: (context) {
      Future.delayed(duration, () {
        if (!context.mounted) {
          return;
        }
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        }
      });
      return AlertDialog(
        title: Text(title),
        content: message.isNotNullOrEmpty ? Text(message!) : null,
        actions: [
          TextButton(
            onPressed: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
            },
            child: const Text('とじる'),
          ),
        ],
      );
    },
  );
}
