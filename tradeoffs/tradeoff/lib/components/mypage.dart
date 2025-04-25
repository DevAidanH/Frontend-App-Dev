import 'package:flutter/material.dart';
import 'package:tradeoff/components/mybutton.dart';

class Mypage extends StatelessWidget {
  final String imagePath;
  final String titleText;
  final String bodyText;
  const Mypage({
    super.key,
    required this.imagePath,
    required this.titleText,
    required this.bodyText
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffffff),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 130),
            Text(
              titleText,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 50),
            Image.asset(
              imagePath,
              width: 300,
            ),
            const SizedBox(height: 30),
            Text(
              bodyText,
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
      ),
    );
  }
}