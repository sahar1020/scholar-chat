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
    apiKey: 'AIzaSyBoxfLJ8bgK8G8cD9bxGhGKzl6XYuAwjL4',
    appId: '1:945059005131:web:58826957043daa6c62114e',
    messagingSenderId: '945059005131',
    projectId: 'flutter-apps-bebca',
    authDomain: 'flutter-apps-bebca.firebaseapp.com',
    storageBucket: 'flutter-apps-bebca.appspot.com',
    measurementId: 'G-QV7W7QMJYL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCwtm6aYMbL5_3otItDxfV8FWDcykP7SGU',
    appId: '1:945059005131:android:9f144563b17a103262114e',
    messagingSenderId: '945059005131',
    projectId: 'flutter-apps-bebca',
    storageBucket: 'flutter-apps-bebca.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAf38rDLSctLymbrGw_5Fwk15-ygtXRnlw',
    appId: '1:945059005131:ios:deeebc5549bf105062114e',
    messagingSenderId: '945059005131',
    projectId: 'flutter-apps-bebca',
    storageBucket: 'flutter-apps-bebca.appspot.com',
    iosBundleId: 'com.example.scholarChatSetup',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAf38rDLSctLymbrGw_5Fwk15-ygtXRnlw',
    appId: '1:945059005131:ios:486296dc6bc4980162114e',
    messagingSenderId: '945059005131',
    projectId: 'flutter-apps-bebca',
    storageBucket: 'flutter-apps-bebca.appspot.com',
    iosBundleId: 'com.example.scholarChatSetup.RunnerTests',
  );
}
