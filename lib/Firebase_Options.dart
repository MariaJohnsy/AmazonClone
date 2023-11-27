// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAZHtyDsRqFO3MPANJf6Xl3Fsu2mR7SJRo',
    appId: '1:91060717873:web:5d1ffbbf1dd0d4f1d20810',
    messagingSenderId: '91060717873',
    projectId: 'clone-10ccc',
    authDomain: 'clone-10ccc.firebaseapp.com',
    storageBucket: 'clone-10ccc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB5_0s4fZkXZv5NikaK1SGXhfVtoVlbf1Q',
    appId: '1:91060717873:android:8a5ec18dcbab8cdcd20810',
    messagingSenderId: '91060717873',
    projectId: 'clone-10ccc',
    storageBucket: 'clone-10ccc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAWH1yfl8BQUh7eHhq5pTJp7pv_yTMZRXA',
    appId: '1:91060717873:ios:a035b26bff40eaa7d20810',
    messagingSenderId: '91060717873',
    projectId: 'clone-10ccc',
    storageBucket: 'clone-10ccc.appspot.com',
    iosBundleId: 'johnsy.app.amazonClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAWH1yfl8BQUh7eHhq5pTJp7pv_yTMZRXA',
    appId: '1:91060717873:ios:125fc25e2aac0a27d20810',
    messagingSenderId: '91060717873',
    projectId: 'clone-10ccc',
    storageBucket: 'clone-10ccc.appspot.com',
    iosBundleId: 'johnsy.app.amazonClone.RunnerTests',
  );
}
