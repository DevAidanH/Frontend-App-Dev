import 'package:flutter/material.dart';
import 'package:tradeoff/components/mybutton.dart';

class Pageone extends StatelessWidget {
  const Pageone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffffff),
      body: Column(
        children: [
          const Row(
            children: [
             
            ],
          ),
          const SizedBox(height: 130),
          const Text(
            "Risk Ready",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 50),
          Image.asset(
            "lib/assets/swordT.png",
            width: 300,
          ),
          const SizedBox(height: 30),
          const Text(
            "Boldy Risk to accelerate AI and\nsecure a competitive edge.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20
            ),
          ),
          const SizedBox(height: 30),
          Mybutton(buttonText: "Log In", inputColor: Color(0xFF1b1d1f), textColor: Color(0xFFfcfcfa)),
          const SizedBox(height: 15),
          Mybutton(buttonText: "Sign Up", inputColor: Color(0xFFfcfcfa), textColor: Color(0xFFcccccc)),
        ],
      ),
    );
  }
}