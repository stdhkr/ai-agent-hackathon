import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditTextForm extends HookConsumerWidget {
  const EditTextForm({
    super.key,
    required this.originalText,
    required this.formKey,
    required this.onChanged,
    this.validator,
    required this.label,
    required this.hint,
  });

  final String originalText;
  final GlobalKey<FormState> formKey;
  final void Function(String) onChanged;
  final String? Function(String?)? validator;
  final String label;
  final String hint;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController(text: originalText);

    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 8),
            TextFormField(
              controller: textController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: label,
                hintText: hint,
              ),
              validator: validator,
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
