import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData localTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xff00008b),
    textTheme: TextTheme(
      titleLarge: const TextStyle(
        color: Colors.white,
        fontSize: 35.0,
        overflow: TextOverflow.ellipsis
      ),

      titleSmall: const TextStyle(
        fontSize: 14.0,
        overflow: TextOverflow.ellipsis,
        fontWeight: FontWeight.bold
      ),

      displaySmall: TextStyle(
        color: Colors.lightBlue.withOpacity(0.4),
        overflow: TextOverflow.ellipsis,
        fontSize: 17.0
      ),
      displayMedium: const TextStyle(
        color: Color(0xff00008b),
        overflow: TextOverflow.ellipsis,
        fontSize: 20.0,
        fontWeight: FontWeight.bold
      ),
      displayLarge: const TextStyle(
        overflow: TextOverflow.ellipsis,
        color: Colors.white,
        fontSize: 25.0,
        fontWeight: FontWeight.bold
      )
    ),
    iconTheme: const IconThemeData(
      color: Colors.white
    ),
  );
}
