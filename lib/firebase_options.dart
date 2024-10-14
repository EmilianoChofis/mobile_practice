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
    apiKey: 'AIzaSyD_qIwtdxkH5JiAsfRscN_ZDhJIpYJVE-c',
    appId: '1:925294265291:web:7d51936657a42a07232c4e',
    messagingSenderId: '925294265291',
    projectId: 'restaurante-2f717',
    authDomain: 'restaurante-2f717.firebaseapp.com',
    storageBucket: 'restaurante-2f717.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA2dU9ubE4iVImL7Ts1On0_xJmgnzUGA-4',
    appId: '1:925294265291:android:e85e17c74c3270b3232c4e',
    messagingSenderId: '925294265291',
    projectId: 'restaurante-2f717',
    storageBucket: 'restaurante-2f717.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDHUoeD5zl9UjTXgccw44CQkIOMpxzuqu0',
    appId: '1:925294265291:ios:cab8b46bf10fd648232c4e',
    messagingSenderId: '925294265291',
    projectId: 'restaurante-2f717',
    storageBucket: 'restaurante-2f717.appspot.com',
    iosBundleId: 'com.example.mobilePractice',
  );
}
