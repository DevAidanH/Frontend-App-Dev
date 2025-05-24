import 'package:flutter/material.dart';
import 'package:rentalapp/pages/splashscreen.dart';
import 'package:rentalapp/themes/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Splashscreen(),
      theme: lightMode,
      debugShowCheckedModeBanner: false,
    );
  }
}
