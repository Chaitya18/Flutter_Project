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
    apiKey: 'AIzaSyAhAaNtvejNkxCXBOPUY89WvMdoptFiiQo',
    appId: '1:587247416987:web:fa69c4a4e8766c9e66f83e',
    messagingSenderId: '587247416987',
    projectId: 'chatappclass-8141e',
    authDomain: 'chatappclass-8141e.firebaseapp.com',
    storageBucket: 'chatappclass-8141e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD0zhot8g1qkppbVwoAxUEofkD-lZKsERw',
    appId: '1:587247416987:android:28595add78d4d18366f83e',
    messagingSenderId: '587247416987',
    projectId: 'chatappclass-8141e',
    storageBucket: 'chatappclass-8141e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAp2hvYKsFzldo4sT_3knrPA68Tc6iuncg',
    appId: '1:587247416987:ios:4eab7c31962a067966f83e',
    messagingSenderId: '587247416987',
    projectId: 'chatappclass-8141e',
    storageBucket: 'chatappclass-8141e.appspot.com',
    iosBundleId: 'com.example.myproject4',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAp2hvYKsFzldo4sT_3knrPA68Tc6iuncg',
    appId: '1:587247416987:ios:b70b13a731e3b23566f83e',
    messagingSenderId: '587247416987',
    projectId: 'chatappclass-8141e',
    storageBucket: 'chatappclass-8141e.appspot.com',
    iosBundleId: 'com.example.myproject4.RunnerTests',
  );
}
