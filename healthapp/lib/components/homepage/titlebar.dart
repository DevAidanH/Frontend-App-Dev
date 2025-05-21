import 'package:flutter/material.dart';
import 'package:healthapp/components/whiteiconbtn.dart';

class Titlebar extends StatelessWidget {
  final String username;
  const Titlebar({
    required this.username,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Hello, \n$username.",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold
            ),
          ),
          Row(
            children: [
              WhiteIconBtn(inputIcon: Icon(Icons.search, size: 25)),
              SizedBox(width: 10),
              WhiteIconBtn(inputIcon: Icon(Icons.notifications_outlined, size: 25)),
              SizedBox(width: 10),
              WhiteIconBtn(inputIcon: Icon(Icons.settings_outlined, size: 25))
            ],
          )
        ],
      ),
    );
  }
}