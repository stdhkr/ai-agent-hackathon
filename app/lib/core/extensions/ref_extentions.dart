import 'package:goronyan/features/home/application/home_provider.dart';
import 'package:goronyan/features/mnemonics/application/mnemonics_provider.dart';
import 'package:goronyan/features/mnemonics/application/mnemonics_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension RefExtensions on Ref {
  void invalidateProviders() {
    final _ = refresh(homeProvider);
    invalidate(mnemonicsProvider(MenemonicsStateType.all));
    invalidate(mnemonicsProvider(MenemonicsStateType.unmemorized));
  }
}
