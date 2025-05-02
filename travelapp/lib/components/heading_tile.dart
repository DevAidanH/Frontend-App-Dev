import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeadingTile extends StatelessWidget {
  String username;
  String userImagePath;
  
  HeadingTile({
    required this.username,
    required this.userImagePath,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      //Title text
      title: Text(
        "Hello, $username",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
      ),
      //Subtitle text
      subtitle: Text(
        "Welcome to TripGlide",
        style: TextStyle(
          fontSize: 16,
          color: theme.colorScheme.tertiary
        ),
      ),
      //Profile Image
      trailing: CircleAvatar(
        radius: 32,
        backgroundImage: AssetImage(userImagePath),
      )
    );
  }
}