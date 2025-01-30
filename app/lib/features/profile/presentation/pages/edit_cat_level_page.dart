import 'package:chat_app/core/constants/constants.dart';
import 'package:chat_app/core/presentation/dialogs/auto_dismiss_dialog.dart';
import 'package:chat_app/core/presentation/widgets/bars/fixed_bottom_bar.dart';
import 'package:chat_app/core/presentation/widgets/builder/async_value_builder.dart';
import 'package:chat_app/core/presentation/widgets/indicators/cat_level_slider.dart';
import 'package:chat_app/core/presentation/widgets/offsets/offsets.dart';
import 'package:chat_app/features/profile/application/edit_cat_level_provider.dart';
import 'package:chat_app/features/profile/application/edit_cat_level_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditCatLevelPage extends ConsumerWidget {
  const EditCatLevelPage({super.key});

  static const String pagePath = '/edit-cat-level';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final asyncValue = ref.watch(editCatLevelProvider);
    final notifer = ref.read(editCatLevelProvider.notifier);

    Future<void> onSubmit() async {
      final result = await notifer.updateCatLevel();
      if (result != null && context.mounted) {
        await showAutoDismissDialog(context, title: '保存しました。');
        if (context.mounted) {
          GoRouter.of(context).pop();
        }
      }
    }

    return AsyncValueBuilder<EditCatLevelState>(
      asyncValue: asyncValue,
      isWrapScaffoldLoading: true,
      isWrapScaffoldError: true,
      child: (data) {
        return AbsorbPointer(
          absorbing: data.isUpdating,
          child: Scaffold(
            appBar: AppBar(title: const Text('にゃーん度編集')),
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
            body: Column(
              children: [
                Expanded(
                  child: CatLevelSlider(
                    value: data.catLevel,
                    onChanged: notifer.onChangedCatLevel,
                  ),
                ),
                Text(
                  catLevelDescription,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
