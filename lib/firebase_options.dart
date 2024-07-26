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
///

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCJkqBv67iit1k1-capQuLDZrTJi32wOF8',
    appId: '1:686209419536:web:963dc10ec738076bcdfd95',
    messagingSenderId: '686209419536',
    projectId: 'bmicalc-6a31f',
    authDomain: 'bmicalc-6a31f.firebaseapp.com',
    storageBucket: 'bmicalc-6a31f.appspot.com',
    measurementId: 'G-TQKJM00MHT',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCfwh6D8bZp7VBbsec603SSpYiFQE3uL-4',
    appId: '1:686209419536:ios:3f270e54eb1ed43dcdfd95',
    messagingSenderId: '686209419536',
    projectId: 'bmicalc-6a31f',
    storageBucket: 'bmicalc-6a31f.appspot.com',
    iosBundleId: 'com.example.bmiCalculator',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCfwh6D8bZp7VBbsec603SSpYiFQE3uL-4',
    appId: '1:686209419536:ios:3f270e54eb1ed43dcdfd95',
    messagingSenderId: '686209419536',
    projectId: 'bmicalc-6a31f',
    storageBucket: 'bmicalc-6a31f.appspot.com',
    iosBundleId: 'com.example.bmiCalculator',
  );
}
