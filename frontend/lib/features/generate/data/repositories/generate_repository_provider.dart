import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:goronyan/config/providers/firebase_providers.dart';
import 'package:goronyan/core/constants/constants.dart';
import 'package:goronyan/core/data/logger/logger.dart';
import 'package:goronyan/core/extensions//firestore_extensions.dart';
import 'package:goronyan/core/extensions/ref_extentions.dart';
import 'package:goronyan/features/generate/domain/entities/mnemonic_response.dart';
import 'package:goronyan/features/mnemonics/domain/entities/mnemonic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generate_repository_provider.g.dart';

@riverpod
GenerateRepository generateRepository(Ref ref) => GenerateRepository(ref);

class GenerateRepository {
  GenerateRepository(this._ref);
  final Ref _ref;

  Future<Mnemonic?> fetchMnemonicById({
    required String mnemonicId,
    required String uid,
  }) async {
    try {
      final doc = await _ref
          .watch(firebaseFirestoreProvider)
          .collection('users')
          .doc(uid)
          .collection('mnemonics')
          .doc(mnemonicId)
          .get();

      if (!doc.exists) {
        return null;
      }
      final mnemonic =
          await doc.toModelFixingTimestampsAndDownloadUrl<Mnemonic>(
        fromJson: Mnemonic.fromJson,
        timestampKeys: Mnemonic.timestampKeys,
        storagePathKey: 'outputImagePath',
      );
      return mnemonic;
    } on FirebaseException catch (e, st) {
      logger.e('Failed to fetch mnemonic, $e, $st');
      rethrow;
    } on Exception catch (e, st) {
      logger.e('Failed to fetch mnemonic, $e, $st');
      rethrow;
    }
  }

  Future<String?> uploadToFirebaseStorage({
    required String filePath,
    required String uid,
  }) async {
    try {
      final file = File(filePath);

      final storageRef = _ref.read(firebaseStorageProvider).ref();

      final relativePath =
          'voices/$uid/${DateTime.now().millisecondsSinceEpoch}.aac';

      final fileRef = storageRef.child(relativePath);

      final uploadTask = fileRef.putFile(file);

      await uploadTask;

      logger.d('Uploaded to $relativePath');

      return relativePath;
    } on FirebaseException catch (e, st) {
      logger.e('Failed to upload, $e, $st');
      rethrow;
    } on Exception catch (e, st) {
      logger.e('Failed to upload, $e, $st');
      rethrow;
    }
  }

  Future<Mnemonic?> createMnemonic({
    required Mnemonic newMnemonic,
    required String uid,
  }) async {
    try {
      final firestore = _ref.read(firebaseFirestoreProvider);

      final batch = firestore.batch();

      final userDocRef = firestore.collection('users').doc(uid);
      batch.update(userDocRef, {
        'xp': FieldValue.increment(10),
        'generatedCount': FieldValue.increment(1),
        'updatedAt': FieldValue.serverTimestamp(),
      });

      final docData = newMnemonic.toJson();
      docData['createdAt'] = FieldValue.serverTimestamp();
      docData['updatedAt'] = FieldValue.serverTimestamp();
      docData.remove('id');
      final mnemonicsDocRef =
          firestore.collection('users').doc(uid).collection('mnemonics').doc();
      final newDocId = mnemonicsDocRef.id;
      batch.set(mnemonicsDocRef, docData);

      await batch.commit();

      _ref.invalidateProviders();

      final fetchMnemonic = await fetchMnemonicById(
        mnemonicId: newDocId,
        uid: uid,
      );
      return fetchMnemonic;
    } on FirebaseException catch (e, st) {
      logger.e('Failed to create user, $e, $st');
      rethrow;
    } on Exception catch (e, st) {
      logger.e('Failed to create user, $e, $st');
      rethrow;
    }
  }

  Future<Mnemonic?> udpateMnemonic({
    required Mnemonic newMnemonic,
    required String uid,
  }) async {
    try {
      final user = _ref.read(firebaseAuthProvider).currentUser;
      if (user == null) {
        throw Exception('User is not signed in');
      }

      await _ref
          .read(firebaseFirestoreProvider)
          .collection('users')
          .doc(user.uid)
          .collection('mnemonics')
          .doc(newMnemonic.id)
          .update({
        'question': newMnemonic.question,
        'answer': newMnemonic.answer,
        'meaning': newMnemonic.meaning,
        'episode': newMnemonic.episode,
        'goroTexts': newMnemonic.goroTexts,
        'outputImagePath': newMnemonic.outputImagePath,
        'updatedAt': FieldValue.serverTimestamp(),
      });

      _ref.invalidateProviders();

      final fetchMnemonic = await fetchMnemonicById(
        mnemonicId: newMnemonic.id,
        uid: uid,
      );
      return fetchMnemonic;
    } on FirebaseException catch (e, st) {
      logger.e('Failed to create user, $e, $st');
      rethrow;
    } on Exception catch (e, st) {
      logger.e('Failed to create user, $e, $st');
      rethrow;
    }
  }

  Future<Mnemonic?> reGenerateMnemonic({
    required Mnemonic prevMnemonic,
    required User user,
    required int catLevel,
    required String interests,
  }) async {
    try {
      final user = _ref.read(firebaseAuthProvider).currentUser;
      if (user == null) {
        throw Exception('User is not signed in');
      }
      if (prevMnemonic.voicePath == null) {
        throw Exception('Voice Path is null');
      }
      final generateResponse = await postGenerateMnemonic(
        audioPath: prevMnemonic.voicePath!,
        user: user,
        catLevel: catLevel,
        interests: interests,
      );

      final mnemonic = Mnemonic(
        id: prevMnemonic.id,
        question: generateResponse.question,
        answer: generateResponse.answer,
        meaning: generateResponse.meaning,
        episode: generateResponse.episode,
        goroTexts: generateResponse.goroTexts,
        voicePath: prevMnemonic.voicePath,
        outputImagePath: generateResponse.imagePath,
        lastQuizAt: DateTime.now(),
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      final newMnemonic = await udpateMnemonic(
        newMnemonic: mnemonic,
        uid: user.uid,
      );

      return newMnemonic;
    } on FirebaseException catch (e, st) {
      logger.e('Failed to re generate mnemonic, $e, $st');
      rethrow;
    } on Exception catch (e, st) {
      logger.e('Failed to re generate mnemonic, $e, $st');
      rethrow;
    }
  }

  Future<MnemonicResponse> postGenerateMnemonic({
    required String audioPath,
    required User user,
    required int catLevel,
    required String interests,
  }) async {
    final idToken = await user.getIdToken();

    try {
      final dio = Dio();
      final response = await dio.post<Map<String, dynamic>>(
        '$apiBaseUrl/api/generate-mnemonic',
        data: {
          'audioPath': audioPath,
          'catLevel': catLevel,
          'interests': interests,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer $idToken',
          },
        ),
      );

      if (response.statusCode == 200) {
        final data = response.data;
        if (data == null) {
          logger.e('Failed to post audio, data is null');
          throw Exception('Failed to post audio, data is null');
        }
        final memorizeResponse = MnemonicResponse.fromJson(data);
        logger.d('Memorize response: $data');
        return memorizeResponse;
      } else {
        logger.e('Failed to post audio, ${response.statusCode}');
        throw Exception('Failed to post audio, ${response.statusCode}');
      }
    } on DioException catch (e, st) {
      logger.e('DioError, $e, $st');
      rethrow;
    }
  }
}
