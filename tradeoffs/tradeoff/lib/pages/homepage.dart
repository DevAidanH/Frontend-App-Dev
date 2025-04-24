import 'package:flutter/material.dart';
import 'package:tradeoff/components/pageone.dart';
import 'package:tradeoff/components/pagethree.dart';
import 'package:tradeoff/components/pagetwo.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Pageone(),
          Pagetwo(),
          Pagethree()
        ],
      ),
    );
  }
}