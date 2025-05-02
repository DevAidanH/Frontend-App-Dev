import 'package:flutter/material.dart';
import 'package:travelapp/components/card_view.dart';
import 'package:travelapp/components/country_filter.dart';
import 'package:travelapp/components/heading_tile.dart';
import 'package:travelapp/components/nav_bar_button.dart';
import 'package:travelapp/components/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            //Header bar
            HeadingTile(
              username: "Aidan", 
              userImagePath: "lib/assets/profileT.jpg"
            ),

            SizedBox(height: 25),

            //Search Bar
            MySearchBar(),

            SizedBox(height: 25),
        
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

            SizedBox(height: 25),

            CountryFilter(
              countries: ["Asia", "Europe", "South America", "North America"]
            ),

            SizedBox(height: 40),

            //Image viewer
            CardView(),

            SizedBox(height: 40),

            //Nav Bar
            Container(
              padding: EdgeInsets.all(10),
              width: 280,
              decoration: BoxDecoration(
                color: theme.colorScheme.secondary,
                borderRadius: BorderRadius.circular(50)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NavBarButton(
                    iconName: Icons.home_outlined, 
                    isSelected: true
                  ),
                  SizedBox(width: 10),
                  NavBarButton(
                    iconName: Icons.article_outlined, 
                    isSelected: false
                  ),
                  SizedBox(width: 10),
                  NavBarButton(
                    iconName: Icons.favorite_outline, 
                    isSelected: false
                  ),
                  SizedBox(width: 10),
                  NavBarButton(
                    iconName: Icons.apps_outlined, 
                    isSelected: false
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}