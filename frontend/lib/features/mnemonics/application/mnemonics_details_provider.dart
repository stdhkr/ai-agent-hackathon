import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mnemonics_details_provider.g.dart';

@riverpod
class MnemonicsDetails extends _$MnemonicsDetails {
  @override
  int build(int initialIndex) {
    return initialIndex;
  }

  // ignore: use_setters_to_change_properties
  void onChanged(int newIndex) {
    state = newIndex;
  }
}
