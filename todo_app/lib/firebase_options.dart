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
    apiKey: 'AIzaSyCnhtNVaNRwKYUL8kOYTooXHC9XQJw1bOE',
    appId: '1:15146326904:web:ac53a7958fe7f42e0d068d',
    messagingSenderId: '15146326904',
    projectId: 'fir-todo-app-38da2',
    authDomain: 'fir-todo-app-38da2.firebaseapp.com',
    storageBucket: 'fir-todo-app-38da2.appspot.com',
    measurementId: 'G-P940G5E9Q9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBTTdif0RPyjJlw653WRvnKsXZqtrp3IBk',
    appId: '1:15146326904:android:9b4a68184621b83b0d068d',
    messagingSenderId: '15146326904',
    projectId: 'fir-todo-app-38da2',
    storageBucket: 'fir-todo-app-38da2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAM_PMybVyHUIg9N8od9uugTDNX8Xc-vcI',
    appId: '1:15146326904:ios:9a06d0cef678c1a10d068d',
    messagingSenderId: '15146326904',
    projectId: 'fir-todo-app-38da2',
    storageBucket: 'fir-todo-app-38da2.appspot.com',
    iosClientId: '15146326904-0grbfpqn6rob5m17in76f4uqb4cvuatk.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAM_PMybVyHUIg9N8od9uugTDNX8Xc-vcI',
    appId: '1:15146326904:ios:9a06d0cef678c1a10d068d',
    messagingSenderId: '15146326904',
    projectId: 'fir-todo-app-38da2',
    storageBucket: 'fir-todo-app-38da2.appspot.com',
    iosClientId: '15146326904-0grbfpqn6rob5m17in76f4uqb4cvuatk.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoApp',
  );
}
