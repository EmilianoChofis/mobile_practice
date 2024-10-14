import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user != null) {
        Navigator.pushReplacementNamed(context, '/menu');
        print(user.uid);
      }else{
        Navigator.pushReplacementNamed(context, '/auth');
      }
    });
    //Future.delayed(const Duration(seconds: 3), () {
     // Navigator.pushReplacementNamed(context, '/auth');
    //});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Image.asset('assets/starbucks.png', width: 200, height: 200,),
      ),
    );
  }
}
