import 'package:flutter/material.dart';
import 'package:goronyan/config/router/router.dart';
import 'package:goronyan/core/presentation/widgets/offsets/offset_button.dart';

class AsyncErrorWidget extends StatelessWidget {
  const AsyncErrorWidget({
    super.key,
    required this.e,
    required this.st,
    this.onReload,
  });

  final Object e;
  final StackTrace? st;
  final void Function()? onReload;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error,
            color: theme.colorScheme.error,
            size: 64,
          ),
          Text(
            'エラーが発生しました\n$e',
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: 32),
          OffsetButton(
            label: 'ホームに戻る',
            onPressed: () {
              if (onReload != null) {
                onReload!();
              } else {
                const HomeRouteData().go(context);
              }
            },
          ),
        ],
      ),
    );
  }
}
