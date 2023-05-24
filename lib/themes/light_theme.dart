import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  backgroundColor: Colors.white,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey,
    showUnselectedLabels: true,
    elevation: 0,
  ),
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      textTheme: TextTheme(
          headline6: TextStyle(
        color: Colors.black,
        fontSize: 20,
      ))),
);
