import 'package:freezed_annotation/freezed_annotation.dart';

part 'voice_input_state.freezed.dart';

@freezed
class VoiceInputState with _$VoiceInputState {
  factory VoiceInputState({
    @Default(false) bool isInitialized,
    @Default(false) bool isRecording,
    String? filePath,
  }) = _VoiceInputState;

  VoiceInputState._();
}
