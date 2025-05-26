import 'package:flutter/material.dart';

class Topnavbar extends StatelessWidget {
  final String profileImagePath;
  final int pendingNotifcations;
  const Topnavbar({
    required this.profileImagePath,
    required this.pendingNotifcations,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Profile Image
        CircleAvatar(
          backgroundImage: AssetImage(profileImagePath),
          radius: 30,
        ),
        //Notifcations icon
        Stack(
          children: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(
                Icons.notifications_outlined,
                size: 40,
              )
            ),
            if (pendingNotifcations > 0)
            Positioned(
              top: 4,
              right: 4,
              child: Container(
                padding: EdgeInsets.all(2),
                constraints: const BoxConstraints(
                  minWidth: 20,
                  minHeight: 20,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.secondary,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  "$pendingNotifcations",
                  style: TextStyle(
                    color: theme.colorScheme.surface,
                    fontSize: 14
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            )
          ],
        )
      ],
    );
  }
}