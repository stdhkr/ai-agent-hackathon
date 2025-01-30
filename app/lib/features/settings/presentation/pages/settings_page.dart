import 'package:chat_app/config/router/router.dart';
import 'package:chat_app/core/constants/app_colors.dart';
import 'package:chat_app/core/constants/constants.dart';
import 'package:chat_app/core/presentation/widgets/bars/custom_divider.dart';
import 'package:chat_app/core/presentation/widgets/builder/async_value_builder.dart';
import 'package:chat_app/core/presentation/widgets/cards/custom_list_tile.dart';
import 'package:chat_app/features/auth/application/app_user_provider.dart';
import 'package:chat_app/features/auth/application/combined_auth_provider.dart';
import 'package:chat_app/features/auth/domain/entities/app_user.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  static const String pagePath = '/settings';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final asyncValue = ref.watch(appUserProvider);

    Widget labelWidget(String label) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          label,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: AppColors.textLightDark,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('設定')),
      body: AsyncValueBuilder<AppUser?>(
        asyncValue: asyncValue,
        child: (data) {
          if (data == null) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            children: <Widget>[
              labelWidget('Profile'),
              const SizedBox(height: 16),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomListTile(
                        label: '趣味、興味',
                        title: data.interests,
                        isTop: true,
                        onTap: () {
                          const EditInterestsRouteData().push<void>(context);
                        },
                      ),
                      const CustomDivider(),
                      CustomListTile(
                        label: 'にゃーん度',
                        title: catLevelTexts[data.catLevel - 1],
                        isBottom: true,
                        onTap: () {
                          const EditCatLevelRouteData().push<void>(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              labelWidget('Account'),
              const SizedBox(height: 16),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomListTile(
                        title: 'ログアウト',
                        isBottom: true,
                        onTap: ref.read(combinedAuthProvider.notifier).signOut,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
