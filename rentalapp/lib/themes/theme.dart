import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Color(0xFFffffff),
    primary: Color(0xFF000000),
    secondary: Color.fromARGB(255, 228, 86, 20),
    tertiary: Color.fromARGB(255, 117, 117, 117)
  ),
  textTheme: GoogleFonts.montserratTextTheme( 
    ThemeData.light().textTheme,
  ).apply(
    bodyColor: const Color(0xFF000000),
    displayColor: const Color(0xFF000000),
  ),  
);  