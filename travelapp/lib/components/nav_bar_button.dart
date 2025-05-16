import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NavBarButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final iconName;
  bool isSelected;
  NavBarButton({
    required this.iconName,
    required this.isSelected,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? theme.colorScheme.primary : theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(32)
      ),
      child: IconButton(
        onPressed: (){}, 
        icon: Icon(
          iconName,
          color: isSelected ? theme.colorScheme.secondary.withValues(alpha: 0.9) : theme.colorScheme.primary.withValues(alpha: 0.9),
          size: 40,
        )
      ),
    );
  }
}