import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightprimaryColor = Color(0xFFB7935F);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
        iconTheme: IconThemeData(color: Colors.black)),
    primaryColor: lightprimaryColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: lightprimaryColor,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(color: Colors.black, size: 36),
        unselectedIconTheme: IconThemeData(
          size: 24,
          color: Colors.white,
        ),
        selectedLabelStyle: TextStyle(color: Colors.black),
        selectedItemColor: Colors.black),
  );
}
