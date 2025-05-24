import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Color(0xFFffffff),
    primary: Color(0xFF000000),
    secondary: Color(0xFFc73f00),
    tertiary: Color(0xFFa8a8a8)
  ),
  textTheme: GoogleFonts.montserratTextTheme( 
    ThemeData.light().textTheme,
  ).apply(
    bodyColor: const Color(0xFF000000),
    displayColor: const Color(0xFF000000),
  ),  
);  