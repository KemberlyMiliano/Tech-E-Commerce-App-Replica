import 'package:flutter/material.dart';

abstract class AppStyleColor {
  static const MaterialColor customPalette =
      MaterialColor(_customPrimaryColor, <int, Color>{
    50: Color(0xFFE7E7E8),
    100: Color(0xFFC2C3C6),
    200: Color(0xFF999BA1),
    300: Color(0xFF70737B),
    400: Color(0xFF52555E),
    500: Color(_customPrimaryColor),
    600: Color(0xFF2E313C),
    700: Color(0xFF272A33),
    800: Color(0xFF20232B),
    900: Color(0xFF14161D),
  });
  static const int _customPrimaryColor = 0xFF333742;

  static const MaterialColor customSecondaryPalette =
      MaterialColor(_customSecondaryColor, <int, Color>{
    50: Color(0xFFE9EAEB),
    100: Color(0xFFC7CACE),
    200: Color(0xFFA2A6AD),
    300: Color(0xFF7D828C),
    400: Color(0xFF616873),
    500: Color(_customSecondaryColor),
    600: Color(0xFF3E4652),
    700: Color(0xFF363D48),
    800: Color(0xFF2E343F),
    900: Color(0xFF1F252E),
  });
  static const int _customSecondaryColor = 0xFF454D5A;
}

final theme = ThemeData(
  primarySwatch: AppStyleColor.customPalette,
  fontFamily: 'Poppins',
  scaffoldBackgroundColor: AppStyleColor.customPalette,
  textTheme: const TextTheme(
    bodyText1: TextStyle(),
    bodyText2: TextStyle(),
  ).apply(
    bodyColor: Colors.white,
  ),
  iconTheme: const IconThemeData(color: Colors.white),
);
