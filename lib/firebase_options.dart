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
    apiKey: 'AIzaSyDwmyZH0nr4QlSJAm8kYBUORIFRpa3Wo4g',
    appId: '1:45066686417:web:bf67c988584ad526075af0',
    messagingSenderId: '45066686417',
    projectId: 'fresh-span-440417-c5',
    authDomain: 'fresh-span-440417-c5.firebaseapp.com',
    storageBucket: 'fresh-span-440417-c5.firebasestorage.app',
    measurementId: 'G-RYFS5HMGVB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCnjEQdKWkRjVvP8pT_SzCHV6jMnCi7hS4',
    appId: '1:45066686417:android:b2dbb8ddebc0fbf2075af0',
    messagingSenderId: '45066686417',
    projectId: 'fresh-span-440417-c5',
    storageBucket: 'fresh-span-440417-c5.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCFZHweOTbrtCrRdx4kNWZvXOvvhet2Z8c',
    appId: '1:45066686417:ios:5feca3b270cbca25075af0',
    messagingSenderId: '45066686417',
    projectId: 'fresh-span-440417-c5',
    storageBucket: 'fresh-span-440417-c5.firebasestorage.app',
    iosBundleId: 'com.example.flutterCompleteProject',
  );
}
