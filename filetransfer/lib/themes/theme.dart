import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Color(0xFFffffff),
    primary: Color(0xFF022559),
    secondary: Colors.grey.shade500,
    inversePrimary: Colors.grey.shade700
  ),
  textTheme: GoogleFonts.robotoTextTheme().apply(
    bodyColor: Color(0xFF022559),
    displayColor: Color(0xFF0a204f)
  )
);