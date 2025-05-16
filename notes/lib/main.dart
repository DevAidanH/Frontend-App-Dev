import 'package:flutter/material.dart';
import 'package:notes/pages/splashscreen.dart';
import 'package:notes/themes/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen(),
      theme: lightMode,
      debugShowCheckedModeBanner: false,
    );
  }
}
