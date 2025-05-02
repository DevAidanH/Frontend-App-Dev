import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Color(0XFFf2f5f7),
    primary: Color(0xFFfcffff),
    secondary: Color(0xFF222629),
    tertiary: Color(0xFF9da0a1)
  ),
  textTheme: ThemeData.light().textTheme.apply(
    bodyColor: Color(0xFF222629),
    displayColor: Color(0xFF222629),
  )
);