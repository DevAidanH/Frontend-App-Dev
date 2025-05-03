import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Color(0xFFe0dfda),
    primary: Color(0xFFffffff),
    secondary: Color(0xFFbd986d),
    tertiary: Color(0xFFed614e),
    inversePrimary: Color(0xFF0d0d0d)
  ),
  textTheme: ThemeData.light().textTheme.apply(
    bodyColor: Color(0xFFffffff),
    displayColor: Color(0xFFffffff),
  )
);