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
    apiKey: 'AIzaSyCeMi_9dj15RK2q-uds1DJDOcqXTJHnvI4',
    appId: '1:1049603230475:web:26e82292ac73f7bfb1700e',
    messagingSenderId: '1049603230475',
    projectId: 'todo-app-153ed',
    authDomain: 'todo-app-153ed.firebaseapp.com',
    storageBucket: 'todo-app-153ed.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBYg-yz-jEpWgsOF8v_c3JvOLCZ3aJ7Eoc',
    appId: '1:1049603230475:android:c3c83da62ca0b44bb1700e',
    messagingSenderId: '1049603230475',
    projectId: 'todo-app-153ed',
    storageBucket: 'todo-app-153ed.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC48wW4yMG8PdQNGrPuZprWd6UGF1-oYBw',
    appId: '1:1049603230475:ios:86577229c45d91edb1700e',
    messagingSenderId: '1049603230475',
    projectId: 'todo-app-153ed',
    storageBucket: 'todo-app-153ed.appspot.com',
    iosClientId: '1049603230475-3e74qs7gijjuapasol9qjbi24m852tjg.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoTasksApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC48wW4yMG8PdQNGrPuZprWd6UGF1-oYBw',
    appId: '1:1049603230475:ios:c44ffaeb5fd2a5bfb1700e',
    messagingSenderId: '1049603230475',
    projectId: 'todo-app-153ed',
    storageBucket: 'todo-app-153ed.appspot.com',
    iosClientId: '1049603230475-s3jeg640jjc59rslo345fd41i7dlb26l.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoTasksApp.RunnerTests',
  );
}
