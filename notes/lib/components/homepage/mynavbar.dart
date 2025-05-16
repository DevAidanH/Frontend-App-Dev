import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mynavbar extends StatelessWidget {
  String userImagePath;
  Mynavbar({
    required this.userImagePath,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      //Title text
      title: Text(
        "My Notes",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),
      ),
      //Menu button
      leading: IconButton(
        onPressed: (){}, 
        icon: Icon(
          Icons.menu,
          size: 40,
        )
      ),
      //Profile Image
      trailing: CircleAvatar(
        radius: 32,
        backgroundImage: AssetImage(userImagePath),
      )
    );
  }
}