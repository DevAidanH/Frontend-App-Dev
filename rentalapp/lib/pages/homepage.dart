import 'package:flutter/material.dart';
import 'package:rentalapp/components/topnavbar.dart';

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
              pendingNotifcations: 3
            )
        
            //Search
        
            //Vehicle view
        
            //Bottom nav?
          ]
        ),
      )
    );
  }
}