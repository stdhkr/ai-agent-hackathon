import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:goronyan/core/constants/constants.dart';
import 'package:goronyan/core/presentation/dialogs/auto_dismiss_dialog.dart';
import 'package:goronyan/core/presentation/keyboard/keyboard.dart';
import 'package:goronyan/core/presentation/widgets/bars/fixed_bottom_bar.dart';
import 'package:goronyan/core/presentation/widgets/builder/async_value_builder.dart';
import 'package:goronyan/core/presentation/widgets/layouts/unfocus_layout.dart';
import 'package:goronyan/core/presentation/widgets/offsets/offsets.dart';
import 'package:goronyan/features/profile/application/edit_interests_provider.dart';
import 'package:goronyan/features/profile/application/edit_interests_state.dart';
import 'package:goronyan/features/profile/presentation/widgets/edit_text_form.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditInterestsPage extends HookConsumerWidget {
  const EditInterestsPage({super.key});

  static const String pagePath = '/edit-interests';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(editInterestsProvider);
    final notifier = ref.read(editInterestsProvider.notifier);
    final formKey = useMemoized(GlobalKey<FormState>.new, const []);

    Future<void> onSubmit() async {
      if (formKey.currentState?.validate() == true) {
        dismissKeyboard();
        final appUser = await notifier.updateInterests();
        if (appUser == null) {
          return;
        }
        if (!context.mounted) {
          return;
        }
        await showAutoDismissDialog(context, title: '保存しました。');
        if (context.mounted) {
          GoRouter.of(context).pop();
        }
      }
    }

    return UnfocusLayout(
      child: AsyncValueBuilder<EditInterestsState>(
        asyncValue: asyncValue,
        isWrapScaffoldLoading: true,
        isWrapScaffoldError: true,
        child: (data) {
          return AbsorbPointer(
            absorbing: data.isUpdating,
            child: Scaffold(
              appBar: AppBar(title: const Text('趣味、興味編集')),
              bottomNavigationBar: FixedBottomBar(
                isBorder: false,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: OffsetButton(
                      label: '保存する',
                      isLoading: data.isUpdating,
                      onPressed: onSubmit,
                    ),
                  ),
                ],
              ),
              body: EditTextForm(
                originalText: data.interests,
                formKey: formKey,
                onChanged: notifier.onChangedInterests,
                label: '趣味、興味',
                hint: '例: 旅行、読書、映画鑑賞',
                helper: interestsText,
              ),
            ),
          );
        },
      ),
    );
  }
}
