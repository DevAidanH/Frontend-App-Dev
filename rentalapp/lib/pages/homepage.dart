import 'package:flutter/material.dart';
import 'package:rentalapp/components/topnavbar.dart';
import 'package:rentalapp/pages/searchfilter.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          children: [
            //Nav bar
            Topnavbar(
              profileImagePath: "lib/assets/profile.jpg", 
              pendingNotifcations: 2
            ),
            SizedBox(height: 20),
        
            //Search
            Padding(
              padding: const EdgeInsets.all(10),
              child: Searchfilter(),
            )
        
            //Vehicle view
        
            //Bottom nav?
          ]
        ),
      )
    );
  }
}