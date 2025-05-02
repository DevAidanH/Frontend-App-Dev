import 'package:flutter/material.dart';
import 'package:travelapp/components/card_view.dart';
import 'package:travelapp/components/country_filter.dart';
import 'package:travelapp/components/heading_tile.dart';
import 'package:travelapp/components/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Bottom App Bar
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            //Header bar
            HeadingTile(
              username: "Aidan", 
              userImagePath: "lib/assets/profileT.jpg"
            ),

            SizedBox(height: 20),

            //Search Bar
            MySearchBar(),

            SizedBox(height: 20),
        
            //Country selection
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Select your next trip",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            SizedBox(height: 20),

            CountryFilter(
              countries: ["Asia", "Europe", "South America", "North America"]
            ),

            SizedBox(height: 20),

            //Image viewer
            CardView()
          ],
        ),
      ),
    );
  }
}