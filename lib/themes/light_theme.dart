import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData.light(useMaterial3: true).copyWith(
  unselectedWidgetColor: Colors.transparent,
  splashColor: const Color.fromRGBO(231, 167, 180, 1),
  highlightColor: Colors.white,
  colorScheme: const ColorScheme.light(),
  appBarTheme: const AppBarTheme(
    toolbarHeight: 120,
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Color.fromRGBO(255, 255, 255, 1.0), fontFamily: 'poppinsBold'),
    bodyMedium: TextStyle(fontSize: 26, color: Colors.white70),
    bodyLarge: TextStyle(fontSize: 28, color: Color.fromRGBO(213, 0, 126, 1)),
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: 3,
    ),
  ),
);
final ThemeData mobileLightTheme = ThemeData.light(useMaterial3: true).copyWith(
  unselectedWidgetColor: Colors.transparent,
  highlightColor: Colors.white,
  colorScheme: const ColorScheme.light(),
  appBarTheme: const AppBarTheme(
    toolbarHeight: 60,
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromRGBO(222, 183, 127,1)),
    titleMedium: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white70),
    bodyLarge: TextStyle(fontSize: 20, color: Color.fromRGBO(213, 0, 126, 1)),
    bodyMedium: TextStyle(fontSize: 16, color: Colors.white70),
    headlineMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w300,
      color: Colors.white,
      letterSpacing: 3,
    ),
  ),
);
final ThemeData mobileSmallLightTheme = mobileLightTheme.copyWith(
  textTheme: const TextTheme(
    titleLarge: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color.fromRGBO(222, 183, 127,1)),
    titleMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white70),
    bodyMedium: TextStyle(fontSize: 12, color: Colors.white70),
    bodyLarge: TextStyle(fontSize: 20, color: Color.fromRGBO(213, 0, 126, 1)),
    headlineMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
  ),
);
final ThemeData mobileMicroLightTheme = mobileLightTheme.copyWith(
  textTheme: const TextTheme(
    titleLarge: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Color.fromRGBO(222, 183, 127,1)),
    titleMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white70),
    bodyLarge: TextStyle(fontSize: 32, color: Color.fromRGBO(213, 0, 126, 1)),
    bodyMedium: TextStyle(fontSize: 10, color: Colors.white70),
  ),
);
