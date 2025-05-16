import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Splashnote extends StatelessWidget {
  Color backgroundColor;
  Color iconColor;
  String displayText;
  Splashnote({
    required this.backgroundColor,
    required this.iconColor,
    required this.displayText,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 200,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      displayText,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: iconColor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                    )
                  ],
                ),
              ),
            );
  }
}