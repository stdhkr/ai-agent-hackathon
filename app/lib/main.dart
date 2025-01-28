import 'package:chat_app/config/environment/firebase_initializer.dart';
import 'package:chat_app/core/constants/constants.dart';
import 'package:chat_app/core/data/logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  logger.d('flavor: $flavor');

  final packageInfo = await PackageInfo.fromPlatform();
  final appName = packageInfo.appName;
  final packageName = packageInfo.packageName;
  final version = packageInfo.version;
  final buildNumber = packageInfo.buildNumber;

  logger
    ..d('appName: $appName')
    ..d('packageName: $packageName')
    ..d('version: $version')
    ..d('buildNumber: $buildNumber');

  await initializeFirebaseApp();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
