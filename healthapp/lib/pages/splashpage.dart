import 'package:flutter/material.dart';

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.tertiary,
      body: Column(
        children: [
          //Image
          SizedBox(height: 100),
          Center(
            child: Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("lib/assets/cross.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          //Text
          SizedBox(height: 30),
          Text(
            "Your Health,\nOne Tap Away",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.secondary,
              
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            "Find trusted doctors and book appointments\nin seconds - anytime, anywhere",
            style: TextStyle(
              fontSize: 16,
              color: theme.colorScheme.secondary
            ),
            textAlign: TextAlign.center,
          ),

          //Button
          SizedBox(height: 50),
          GestureDetector(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.all(10),
              width: 275,
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 25),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Get started',
                        style: TextStyle(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.arrow_forward, 
                      color: theme.colorScheme.secondary,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}