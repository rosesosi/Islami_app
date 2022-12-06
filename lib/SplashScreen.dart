import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/Home/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 8), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/splash_image.png'),
              fit: BoxFit.cover)),
    );
  }
}
