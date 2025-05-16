import 'dart:math';

import 'package:flutter/material.dart';
import 'package:notes/components/splashnote.dart';
import 'package:notes/pages/homepage.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //Title text
            SizedBox(height: 100),
            Text(
              "All-in-Notes",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Start turning thoughts into action with\na smart, simple note-taking experience",
              style: TextStyle(
                fontSize: 16,
                color: theme.colorScheme.tertiary
              ),
            ),
            SizedBox(height: 25),

            //Open button
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Center(
                child: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                  }, 
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: theme.colorScheme.surface,
                    size: 16,
                  )
                ),
              ),
            ),
            SizedBox(height: 70),
        
            //Example notes
            Expanded(
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -15,
                      left: 0,
                      right: 0,
                      child: Splashnote(backgroundColor: Color(0xFFfbe79d), iconColor: Color(0xFFf5cc00), displayText: "Work")
                    ),
                    Positioned(
                      top: 100,
                      left: -5,
                      right: 0,
                      child: Transform.rotate(
                        angle: 2 * pi / 180,
                        child: Splashnote(backgroundColor: Color(0xFFf7c6ea), iconColor: Color(0xFFf056c2), displayText: "Clean Up")
                      ),
                    ),
                    Positioned(
                      top: 230,
                      left: -10,
                      right: 0,
                      child: Transform.rotate(
                        angle: 4 * pi / 180,
                        child: Splashnote(backgroundColor: Color(0xFFc2f0ff), iconColor: Color(0xFF78ddff), displayText: "Meeting")
                      ),
                    ),
                    Positioned(
                      top: 350,
                      left: -20,
                      right: 0,
                      child: Transform.rotate(
                        angle: 6 * pi / 180,
                        child: Splashnote(backgroundColor: Color(0xFFd4ffb8), iconColor: Color(0xFF96f250), displayText: "Drink Coffee")
                      ),
                    ),
                  ],
                ),
              )))
          ],
        ),
      ),
    );
  }
}