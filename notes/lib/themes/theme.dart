import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Color(0XFFffffff),
    primary: Color(0xFF181818),
    secondary: Color(0xFF23232f),
    tertiary: Color(0xFFa7a7b6)
  ),
  textTheme: GoogleFonts.lexendTextTheme( // Replace 'inter' with any Google Font
    ThemeData.light().textTheme,
  ).apply(
    bodyColor: const Color(0xFF181818),
    displayColor: const Color(0xFF181818),
  ),
);