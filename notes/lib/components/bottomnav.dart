import 'package:flutter/material.dart';

class Bottomnav extends StatelessWidget {
  const Bottomnav({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(30)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.check_box_outlined, color: theme.colorScheme.tertiary,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.date_range_outlined, color: theme.colorScheme.tertiary,)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add, color: Colors.white),
                  iconSize: 30,
                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.mic_outlined, color: theme.colorScheme.tertiary,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.image_outlined, color: theme.colorScheme.tertiary,)),
            ],
          ),
        );
  }
}