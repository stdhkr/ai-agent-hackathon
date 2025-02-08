import 'package:flutter/material.dart';
import 'package:goronyan/core/presentation/widgets/layouts/async_error_widget.dart';
import 'package:goronyan/core/presentation/widgets/layouts/wrap_scaffold.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AsyncValueBuilder<T> extends StatelessWidget {
  const AsyncValueBuilder({
    super.key,
    required this.asyncValue,
    required this.child,
    this.errorBuilder,
    this.loadingWidget,
    this.isWrapScaffoldLoading = false,
    this.isWrapScaffoldError = false,
    this.isErrorHomeButton = true,
    this.onReload,
  });

  final AsyncValue<T> asyncValue;
  final Widget Function(T data) child;
  final Widget Function(Object e, StackTrace? st)? errorBuilder;
  final Widget? loadingWidget;
  final bool isWrapScaffoldLoading;
  final bool isWrapScaffoldError;
  final bool isErrorHomeButton;
  final void Function()? onReload;

  @override
  Widget build(BuildContext context) {
    return switch (asyncValue) {
      AsyncData(value: final data) => child(data),
      AsyncError(error: final e, stackTrace: final st) => errorBuilder != null
          ? errorBuilder!(e, st)
          : WrapScaffold(
              isWrap: isWrapScaffoldError,
              child: AsyncErrorWidget(
                e: e,
                st: st,
                isHomeButton: isErrorHomeButton,
                onReload: onReload,
              ),
            ),
      _ => loadingWidget ??
          WrapScaffold(
            isWrap: isWrapScaffoldLoading,
            child: const Center(child: CircularProgressIndicator()),
          ),
    };
  }
}
