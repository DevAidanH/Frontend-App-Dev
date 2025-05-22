import 'package:flutter/material.dart';
import 'package:healthapp/components/whiteiconbtn.dart';
import 'package:intl/intl.dart';

class Topbar extends StatelessWidget implements PreferredSizeWidget {
  const Topbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    String todaysDate = DateFormat('d MMMM y').format(DateTime.now());
    return AppBar(
        automaticallyImplyLeading: false,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WhiteIconBtn(inputIcon: Icon(Icons.arrow_back), isBackBtn: true,),
              Column(
                children: [
                  Text(
                    "Today",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[700],
                    ),
                  ),
                  Text(
                    todaysDate,
                    style: TextStyle(
                      fontSize: 16
                    ),
                  )
                ],
              ),
              WhiteIconBtn(inputIcon: Icon(Icons.more_vert))
            ],
          ),
      );
  }
}