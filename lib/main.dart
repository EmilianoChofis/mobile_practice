import 'package:flutter/material.dart';
import 'package:mobile_eoh/navigation/reservations.dart';
import 'package:mobile_eoh/widgets/splash_screen.dart';

import 'package:mobile_eoh/navigation/home.dart';

import 'package:mobile_eoh/navigation/profile.dart';
import 'package:mobile_eoh/navigation/top.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const Home(),
        '/reservations': (context) => const Reservations(),
        '/top': (context) => const Top(),
        '/profile': (context) => const Profile(),
      },
    );
  }
}
