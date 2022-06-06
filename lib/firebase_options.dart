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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBZYBXY1UnWsmIoh0oJ--5dihowDgGXNKo',
    appId: '1:521138900653:web:73396acf1540688ff54024',
    messagingSenderId: '521138900653',
    projectId: 'mod4-de132',
    authDomain: 'mod4-de132.firebaseapp.com',
    storageBucket: 'mod4-de132.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDtEwaFlw_4vU3smT8CayQjIoLm4nAixos',
    appId: '1:521138900653:android:c5c953c7bcb5250cf54024',
    messagingSenderId: '521138900653',
    projectId: 'mod4-de132',
    storageBucket: 'mod4-de132.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAzvaS6JDOGk8Fj7fL25R605kZPJ-2GAXI',
    appId: '1:521138900653:ios:db52aad4f6430876f54024',
    messagingSenderId: '521138900653',
    projectId: 'mod4-de132',
    storageBucket: 'mod4-de132.appspot.com',
    iosClientId: '521138900653-ao36tn0fs3392knrfjvqblsom927dstj.apps.googleusercontent.com',
    iosBundleId: 'com.example.kegiatan12',
  );
}