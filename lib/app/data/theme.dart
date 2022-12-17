import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData localTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xff00008b),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 35.0
      )
    )
  );
}
