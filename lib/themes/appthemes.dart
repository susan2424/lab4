import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.green,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.greenAccent,
      titleTextStyle: TextStyle(
        color: Colors.red,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.green,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(fontSize: 18, color: Colors.blueGrey),
      bodySmall: TextStyle(fontSize: 16, color: Colors.blue),
    ),
  );
}
