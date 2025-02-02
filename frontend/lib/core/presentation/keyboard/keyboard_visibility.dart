import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'keyboard_visibility.g.dart';

@Riverpod(keepAlive: true)
class KeyboardVisibility extends _$KeyboardVisibility {
  @override
  double build() {
    final observer = _KeyboardVisibilityObserver((value) => state = value);

    final binding = WidgetsBinding.instance..addObserver(observer);
    ref.onDispose(() => binding.removeObserver(observer));

    return 0;
  }
}

class _KeyboardVisibilityObserver extends WidgetsBindingObserver {
  _KeyboardVisibilityObserver(this._didChangeMetrics);

  final ValueChanged<double> _didChangeMetrics;

  @override
  void didChangeMetrics() {
    final viewInsets = EdgeInsets.fromViewPadding(
      WidgetsBinding.instance.platformDispatcher.views.first.viewInsets,
      WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio,
    );
    final bottomInsets = viewInsets.bottom;
    _didChangeMetrics(bottomInsets);
    super.didChangeMetrics();
  }
}
