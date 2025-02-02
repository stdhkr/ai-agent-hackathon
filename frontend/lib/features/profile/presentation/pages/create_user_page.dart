import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:goronyan/core/constants/constants.dart';
import 'package:goronyan/core/presentation/dialogs/auto_dismiss_dialog.dart';
import 'package:goronyan/core/presentation/keyboard/keyboard_visibility.dart';
import 'package:goronyan/core/presentation/widgets/bars/fixed_bottom_bar.dart';
import 'package:goronyan/core/presentation/widgets/indicators/cat_level_slider.dart';
import 'package:goronyan/core/presentation/widgets/layouts/unfocus_layout.dart';
import 'package:goronyan/core/presentation/widgets/offsets/offsets.dart';
import 'package:goronyan/features/auth/application/combined_auth_provider.dart';
import 'package:goronyan/features/profile/application/app_user_form_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateUserPage extends HookConsumerWidget {
  const CreateUserPage({super.key});

  static const String pagePath = '/create-user';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isKeyboardVisibility = ref.watch(keyboardVisibilityProvider) > 0;
    final asyncValue = ref.watch(appUserFormProvider);
    final notifier = ref.read(appUserFormProvider.notifier);
    final value = asyncValue.value;
    final formKey = useMemoized(GlobalKey<FormState>.new, const []);
    final interestsController = useTextEditingController();
    final isLoading = asyncValue.isLoading;

    Future<void> onSubmit() async {
      if (formKey.currentState?.validate() == true) {
        final appUser = await notifier.onCreateAppUser();
        if (appUser == null) {
          return;
        }
        if (!context.mounted) {
          return;
        }
        await showAutoDismissDialog(context, title: '登録が完了しました');
        await ref
            .read(combinedAuthProvider.notifier)
            .onChangedIsProfileComplete(isProfileComplete: true);
      }
    }

    return UnfocusLayout(
      child: AbsorbPointer(
        absorbing: isLoading,
        child: Scaffold(
          appBar: AppBar(title: const Text('ユーザー登録')),
          bottomNavigationBar: FixedBottomBar(
            isBorder: false,
            children: [
              SizedBox(
                width: double.infinity,
                child: OffsetButton(
                  label: '登録する',
                  isLoading: isLoading,
                  onPressed: onSubmit,
                ),
              ),
              Text(
                '内容は設定画面からいつでも変更できます',
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          body: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 8),
                  TextFormField(
                    // autofocus: true,
                    controller: interestsController,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: '趣味、興味',
                      hintText: '例: 旅行、読書、映画鑑賞',
                    ),
                    onChanged: notifier.onChangedInterests,
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'にゃーん度',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    catLevelDescription,
                    style: theme.textTheme.bodySmall,
                  ),
                  const SizedBox(height: 4),
                  Visibility(
                    visible: !isKeyboardVisibility,
                    child: Expanded(
                      child: CatLevelSlider(
                        value: value?.catLevel ?? defaultCatLevel,
                        onChanged: notifier.onChangedCatLevel,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
