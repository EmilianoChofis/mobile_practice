import 'package:flutter/material.dart';
import 'package:mobile_practice/modules/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mobile_practice/modules/register.dart';
import 'package:mobile_practice/navigation/sample_map.dart';
import 'package:mobile_practice/widgets/detail_restaurant.dart';
import 'firebase_options.dart';

import 'package:mobile_practice/navigation/navigation.dart';
import 'package:mobile_practice/navigation/reservations.dart';
import 'package:mobile_practice/widgets/splash_screen.dart';
import 'package:mobile_practice/navigation/home.dart';
import 'package:mobile_practice/navigation/profile.dart';
import 'package:mobile_practice/navigation/top.dart';

import 'modules/tutorial.dart';

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
        '/menu': (context) => const Navigation(
          nextButton: false,
        ),
        '/home': (context) => const Home(),
        '/auth': (context) => const Auth(),
        '/register': (context) => const Register(),
        '/reservations': (context) => const Reservations(),
        '/top': (context) => const Top(),
        '/profile': (context) => const Profile(),
        '/detail': (context) => const DetailRestaurant(),
        '/map': (context) => const MapSample(),
        '/tutorial': (context) => const Tutorial(),
      },
    );
  }
}
