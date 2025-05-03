import 'package:flutter/material.dart';
import 'package:workoutapp/components/circle_button.dart';
import 'package:workoutapp/components/stats.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            //Background image
            Positioned.fill(
              child: Image.asset(
                "lib/assets/background.jpg",
                fit: BoxFit.cover,
              )
            ),
            //Top bar
            Positioned(
              top: 40,
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleButton(setIcon: Icon(Icons.arrow_back)),
                  SizedBox(width: 90),
                  Text(
                    "Time stack",
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                  SizedBox(width: 90),
                  CircleButton(setIcon: Icon(Icons.edit_outlined))
                ],
              )
            ),

            //Stats
            Positioned(
              top: 150,
              left: 20,
              child: Stats(
                workoutTitle: "Morning \nWorkout", 
                numberOfStars: 74, 
                numberOfHours: 8, 
                tags: ["hydration", "liftstyle", "healthy"], 
                streak: 4),
            )

            //Start button
          ],
        ),
    );
  }
}