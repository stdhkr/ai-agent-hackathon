import 'package:firebase_core/firebase_core.dart';
import 'package:goronyan/config/environment/firebase_options_dev.dart' as dev;
import 'package:goronyan/config/environment/firebase_options_prod.dart' as prod;

Future<void> initializeFirebaseApp() async {
  const flavor = String.fromEnvironment('flavor');
  final firebaseOptions = switch (flavor) {
    'prod' => prod.DefaultFirebaseOptions.currentPlatform,
    'dev' => dev.DefaultFirebaseOptions.currentPlatform,
    _ => throw UnsupportedError('Invalid flavor: $flavor'),
  };
  await Firebase.initializeApp(options: firebaseOptions);
}
