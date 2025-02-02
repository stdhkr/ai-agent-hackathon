import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_state_provider.g.dart';

@riverpod
class QuizState extends _$QuizState {
  @override
  bool build() {
    return true;
  }

  Future<void> updateState({required bool value}) async {
    state = value;
  }
}
