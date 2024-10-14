import 'package:flutter/material.dart';
import 'package:mobile_practice/modules/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:mobile_practice/navigation/navigation.dart';
import 'package:mobile_practice/navigation/reservations.dart';
import 'package:mobile_practice/widgets/splash_screen.dart';
import 'package:mobile_practice/navigation/home.dart';
import 'package:mobile_practice/navigation/profile.dart';
import 'package:mobile_practice/navigation/top.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {


  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/menu',
      routes: {
        '/': (context) => const SplashScreen(),
        '/menu': (context) => const Navigation(),
        '/home': (context) => const Home(),
        '/auth': (context) => const Auth(),
        '/reservations': (context) => const Reservations(),
        '/top': (context) => const Top(),
        '/profile': (context) => const Profile(),
      },
    );
  }
}
