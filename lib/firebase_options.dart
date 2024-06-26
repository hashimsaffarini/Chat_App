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
    apiKey: 'AIzaSyC76xq8-px3nI7nPY_p4saM7E_1rgMgkDQ',
    appId: '1:458121390969:web:5d7dcc67a31d4d4c605da8',
    messagingSenderId: '458121390969',
    projectId: 'chat-app-be6b1',
    authDomain: 'chat-app-be6b1.firebaseapp.com',
    storageBucket: 'chat-app-be6b1.appspot.com',
    measurementId: 'G-7QN102HL8V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDes1KZVArZgH-AYtw6n_WKXSfnAtobmNk',
    appId: '1:458121390969:android:a93b0256b9acc2ff605da8',
    messagingSenderId: '458121390969',
    projectId: 'chat-app-be6b1',
    storageBucket: 'chat-app-be6b1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDDkt5vLsnJ050iqrbaHrc0Pv8qHS1Nxm4',
    appId: '1:458121390969:ios:fcf2acb31813c0da605da8',
    messagingSenderId: '458121390969',
    projectId: 'chat-app-be6b1',
    storageBucket: 'chat-app-be6b1.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDDkt5vLsnJ050iqrbaHrc0Pv8qHS1Nxm4',
    appId: '1:458121390969:ios:6a12ea500afcb68f605da8',
    messagingSenderId: '458121390969',
    projectId: 'chat-app-be6b1',
    storageBucket: 'chat-app-be6b1.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
