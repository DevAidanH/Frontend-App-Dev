import 'package:flutter/material.dart';
import 'package:workoutapp/pages/home_page.dart';
import 'package:workoutapp/themes/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: lightMode,
      debugShowCheckedModeBanner: false,
    );
  }
}
