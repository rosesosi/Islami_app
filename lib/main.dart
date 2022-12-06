import 'package:flutter/material.dart';
import 'package:islami_app/Home/HomeScreen.dart';
import 'package:islami_app/SplashScreen.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/sura_details/sura_details_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami ',
      theme: MyTheme.lightTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
      },
    );
  }
}
