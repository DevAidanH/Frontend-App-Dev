import 'package:filetransfer/pages/homepage.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Banner image
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.asset("lib/assets/splashImage.png"),
            ),
          ),

          SizedBox(height: 10),

          //Header
          Container(
            padding: EdgeInsets.symmetric(horizontal: 27),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "File transfer, \nbookmark anything \nmade simple",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),
          ),

          //row with text and login button 
          Padding(
            padding: const EdgeInsets.all(27),
            child: Row(
              children: [
                SizedBox(
                  width: 150,
                  child: RichText(
                    text: TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.primary
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Log In", 
                          style: TextStyle(
                            color: Colors.lightBlue,
                            decoration: TextDecoration.underline
                          )
                        )
                      ]
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40), 
                        color:Theme.of(context).colorScheme.primary,
                      ),
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.surface,
                          fontSize: 18
                        ),
                      )
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}