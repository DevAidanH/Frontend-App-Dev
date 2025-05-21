import 'package:flutter/material.dart';
import 'package:healthapp/pages/splashpage.dart';
import 'package:healthapp/themes/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Splashpage(),
      debugShowCheckedModeBanner: false,
      theme: lightMode,
    );
  }
}
