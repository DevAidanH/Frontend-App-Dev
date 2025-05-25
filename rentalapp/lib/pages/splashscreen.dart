import 'package:flutter/material.dart';
import 'package:rentalapp/components/orangebtn.dart';
import 'package:rentalapp/pages/homepage.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    void openPage(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage()));
    }
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("lib/assets/splash.jpg", fit: BoxFit.fitHeight),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
              ),
              height: 370,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Drive the Best,\nPay Less",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Affordable rentals with premium service\nfor every journey.",
                    style: TextStyle(
                      color: theme.colorScheme.tertiary,
                      fontSize: 16
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Orangebtn(
                    btnText: "Get Started", 
                    btnpress: openPage, 
                    width: 380, 
                    height: 60
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                          fontSize: 16,
                          color: theme.colorScheme.tertiary
                        ),
                      ),
                      Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}