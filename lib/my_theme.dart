import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightprimaryColor = Color(0xFFB7935F);
  static const Color darkPrimaryColor = Color(0xFF141A2E);
  static const Color yellow = Color(0xFFFACC1D);

  static ThemeData lightTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18), topRight: Radius.circular(18)))),
    cardColor: Colors.white,
    accentColor: lightprimaryColor,
    textTheme: const TextTheme(
        headline6: TextStyle(
          fontSize: 22,
          color: Colors.black,
        ),
        headline4: TextStyle(fontSize: 28, color: Colors.black),
        subtitle2: TextStyle(fontSize: 14, color: Colors.black)),
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

  static ThemeData darkTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkPrimaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18), topRight: Radius.circular(18)))),
    cardColor: darkPrimaryColor,
    accentColor: yellow,
    textTheme: const TextTheme(
        headline6: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
        headline4: TextStyle(fontSize: 25, color: Colors.white),
        subtitle2: TextStyle(fontSize: 14, color: Colors.white)),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
        iconTheme: IconThemeData(color: Colors.white)),
    primaryColor: darkPrimaryColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: lightprimaryColor,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(color: yellow, size: 36),
        unselectedIconTheme: IconThemeData(
          size: 24,
          color: Colors.white,
        ),
        selectedLabelStyle: TextStyle(color: yellow),
        selectedItemColor: yellow),
  );
}
