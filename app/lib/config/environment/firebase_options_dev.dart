// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBi38T55t7rWs9tmKEcUaBAlQNX29EiJdw',
    appId: '1:1005658646293:android:99fbdd9127e3bb9a312b1c',
    messagingSenderId: '1005658646293',
    projectId: 'hackathon2024-4cb8e',
    storageBucket: 'hackathon2024-4cb8e.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD9CoPAWUje1WeSOz6UYDi88WxvI7oTXNw',
    appId: '1:1005658646293:ios:946756d7702b4ed8312b1c',
    messagingSenderId: '1005658646293',
    projectId: 'hackathon2024-4cb8e',
    storageBucket: 'hackathon2024-4cb8e.firebasestorage.app',
    iosClientId: '1005658646293-71oi1mr5mlsdm0bd8re8b6nqbl15ov6d.apps.googleusercontent.com',
    iosBundleId: 'com.goronyan.goronyan.dev',
  );
}
