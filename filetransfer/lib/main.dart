import 'package:filetransfer/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:filetransfer/themes/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Splash(),
      debugShowCheckedModeBanner: false,
      theme: lightMode,
    );
  }
}
