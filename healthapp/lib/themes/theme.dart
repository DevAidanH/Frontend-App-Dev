import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Color(0xFFf2f3f5),
    primary: Color(0xFF1c1e21),
    secondary: Color(0xFFffffff),
    tertiary: Color(0xFF1681ff)
  ),
  textTheme: GoogleFonts.figtreeTextTheme( 
    ThemeData.light().textTheme,
  ).apply(
    bodyColor: const Color(0xFF1c1e21),
    displayColor: const Color(0xFF1c1e21),
  ),
);