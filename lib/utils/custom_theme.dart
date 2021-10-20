import 'package:flutter/material.dart';

class CustomTheme {
  static final ThemeData theme = ThemeData(
    textTheme: ThemeData.dark().textTheme.copyWith(
          headline6: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          headline5: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          headline4: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          bodyText2: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          caption: TextStyle(
            color: Colors.grey[400],
            fontSize: 14,
          ),
          button: const TextStyle(
            backgroundColor: Colors.white,
            color: Colors.black,
            fontSize: 18,
          ),
        ),
    colorScheme: const ColorScheme.dark(
      primary: Colors.black,
      primaryVariant: Colors.black,
      secondary: Colors.white,
      secondaryVariant: Colors.black,
      background: Colors.black,
      surface: Color(0xFF151515),
    ),
  );
}
