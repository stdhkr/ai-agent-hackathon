import 'dart:async';

import 'package:chat_app/config/providers/firebase_providers.dart';
import 'package:chat_app/core/data/logger/logger.dart';
import 'package:chat_app/features/auth/application/app_user_provider.dart';
import 'package:chat_app/features/generate/application/voice_input_state.dart';
import 'package:chat_app/features/generate/data/repositories/generate_repository_provider.dart';
import 'package:chat_app/features/mnemonics/domain/entities/mnemonic.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'voice_input_providers.g.dart';

@riverpod
class VoiceInput extends _$VoiceInput {
  final _recorder = AudioRecorder();

  @override
  FutureOr<VoiceInputState> build() async {
    ref.onDispose(_recorder.dispose);

    final hasPermission = await _recorder.hasPermission();
    if (!hasPermission) {
      throw Exception('Permission denied');
    }

    return VoiceInputState(isInitialized: true);
  }

  Future<void> onChanged({
    bool? isInitialized,
    bool? isRecording,
    String? filePath,
  }) async {
    await update((data) async {
      return data.copyWith(
        isInitialized: isInitialized ?? data.isInitialized,
        isRecording: isRecording ?? data.isRecording,
        filePath: filePath ?? data.filePath,
      );
    });
  }

  Future<void> startRecording() async {
    if (!(await _recorder.hasPermission())) {
      return;
    }
    final voiceInput = state.value;
    if (voiceInput == null) {
      return;
    }
    if (!voiceInput.isInitialized || voiceInput.isRecording) {
      return;
    }

    final tempDir = await getTemporaryDirectory();
    final filePath =
        '${tempDir.path}/recorded_audio_${DateTime.now().millisecondsSinceEpoch}.aac';

    await _recorder.start(const RecordConfig(), path: filePath);

    await onChanged(
      isRecording: true,
    );
  }

  Future<Mnemonic?> stopRecordingAndGenerateMnemonic() async {
    try {
      final voiceInput = state.value;
      if (voiceInput == null) {
        return null;
      }
      if (!voiceInput.isRecording) {
        return null;
      }

      final path = await _recorder.stop();

      await onChanged(
        isRecording: false,
        filePath: path,
      );

      if (path == null) {
        logger.e('録音ファイルが取得できませんでした');
        return null;
      }

      final user = ref.read(firebaseAuthProvider).currentUser;
      final appUser = await ref.read(appUserProvider.future);
      if (user == null || appUser == null) {
        throw Exception('User is not signed in');
      }

      final repository = ref.read(generateRepositoryProvider);

      final relativePath = await repository.uploadToFirebaseStorage(
        filePath: path,
        uid: user.uid,
      );
      if (relativePath == null) {
        return null;
      }

      final generateResponse = await repository.postGenerateMnemonic(
        audioPath: relativePath,
        catLevel: appUser.catLevel,
        interests: appUser.interests,
        user: user,
      );

      final mnemonic = Mnemonic(
        id: '',
        question: generateResponse.question,
        answer: generateResponse.answer,
        meaning: generateResponse.meaning,
        episode: generateResponse.episode,
        goroText: generateResponse.goroText,
        voicePath: relativePath,
        outputImagePath: generateResponse.imagePath,
        lastQuizAt: DateTime.now(),
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      final newMnemonic = await repository.createMnemonic(
        newMnemonic: mnemonic,
        uid: user.uid,
      );

      return newMnemonic;
    } on Exception catch (e, st) {
      logger.e('Failed to stop recording and generate mnemonic, $e, $st');
      state = AsyncValue.error(e, st);
      return null; // エラー時は null を返す
    }
  }
}
