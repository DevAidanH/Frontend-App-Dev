import 'package:flutter/material.dart';

class WhiteIconBtn extends StatelessWidget {
  final Icon inputIcon;
  const WhiteIconBtn({
    required this.inputIcon,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(100)
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: (){}, 
        icon: inputIcon
      ),
    );
  }
}