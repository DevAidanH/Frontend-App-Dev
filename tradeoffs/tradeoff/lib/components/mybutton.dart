import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mybutton extends StatelessWidget {
  String buttonText;
  Color inputColor;
  Color textColor;
  Mybutton({required this.buttonText, required this.inputColor, required this.textColor, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 45,
      decoration: BoxDecoration(
        color: inputColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1, color: inputColor)
      ),
      child: Center(child: Text(
        buttonText, 
        style: TextStyle(
          color: textColor,
          fontSize: 16
        )
      )),
    );
  }
}