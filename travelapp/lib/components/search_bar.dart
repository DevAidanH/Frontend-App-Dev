import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SearchBar(
      backgroundColor: WidgetStateProperty.all(theme.colorScheme.primary),
      elevation: WidgetStateProperty.all(0),
      leading: Icon(Icons.search, color: theme.colorScheme.secondary, size: 40),
      hintText: "Search",
      hintStyle: WidgetStateProperty.all(TextStyle(color: theme.colorScheme.tertiary)),
      trailing: [Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: theme.colorScheme.secondary,
        ),
        child: IconButton(
            onPressed: () {
              
            },
            color: theme.colorScheme.primary,
            icon: Icon(Icons.tune)
          ),
      )],
    );
  }
}