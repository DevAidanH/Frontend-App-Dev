import 'package:flutter/material.dart';
import 'package:rentalapp/components/orangebtn.dart';
import 'package:rentalapp/pages/customsearchbar.dart';

class Searchfilter extends StatelessWidget {
  const Searchfilter({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Text(
          "Search for a car",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Find the perfect car for any trip, anytime, anywhere",
          style: TextStyle(
            color: theme.colorScheme.tertiary,
            fontSize: 14
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 30),
        //Search bar with custom border from gpt
       Customsearchbar(
          searchBarLabel: "Pick-up & Return Location", 
          displayIcon: true, 
          searchBarText: "Search Location", 
          borderRadius: 10, 
          gapStart: 11, 
          gapWidth: 170
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 175,
              child: Customsearchbar(
                searchBarLabel: "Pick-up", 
                displayIcon: false, 
                searchBarText: "23/03/25 - 10:30", 
                borderRadius: 10, 
                gapStart: 11, 
                gapWidth: 53
              ),
            ),
            SizedBox(
              width: 175,
              child: Customsearchbar(
                searchBarLabel: "Return", 
                displayIcon: false, 
                searchBarText: "25/03/25 - 16:30", 
                borderRadius: 10, 
                gapStart: 11, 
                gapWidth: 50
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Orangebtn(
          btnText: "Search", 
          btnpress: (){}, 
          width: double.infinity, 
          height: 60
        )
      ]
    );
  }
}