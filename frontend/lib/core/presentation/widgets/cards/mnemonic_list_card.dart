import 'package:flutter/material.dart';
import 'package:goronyan/core/constants/app_colors.dart';
import 'package:goronyan/core/extensions/color_extensions.dart';
import 'package:goronyan/core/presentation/widgets/bars/custom_divider.dart';
import 'package:goronyan/features/mnemonics/domain/entities/mnemonic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MnemonicListCard extends ConsumerWidget {
  const MnemonicListCard({
    super.key,
    required this.mnemonic,
    this.isDivider = false,
    required this.onTap,
  });

  final Mnemonic mnemonic;
  final bool isDivider;
  final void Function() onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final totalMemorizedCount =
        mnemonic.memorizedCount + mnemonic.unmemorizedCount;

    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: Visibility(
            visible: totalMemorizedCount > 0,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: Text(
              '${mnemonic.memorizedCount}/$totalMemorizedCount',
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall?.copyWith(
                color: AppColors.textLightDark,
              ),
            ),
          ),
          title: Text(
            mnemonic.question ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall?.copyWith(
              color: AppColors.textLightDark,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              mnemonic.answer,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall,
            ),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_up,
            size: 24,
            color: AppColors.textLightDark.withDoubleOpacity(0.5),
          ),
        ),
        if (isDivider) const CustomDivider(),
      ],
    );
  }
}
