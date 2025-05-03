import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final setIcon;
  const CircleButton({
    required this.setIcon,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: theme.colorScheme.primary 
      ),
      child: IconButton(
        onPressed: (){}, 
        icon: setIcon
      ),
    );
  }
}