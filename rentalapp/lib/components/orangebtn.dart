import 'package:flutter/material.dart';

class Orangebtn extends StatelessWidget {
  final String btnText;
  final Function btnpress;
  final double width;
  final double height;
  const Orangebtn({
    required this.btnText,
    required this.btnpress,
    required this.width,
    required this.height,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: () => btnpress(),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: theme.colorScheme.secondary,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(
            btnText,
            style: TextStyle(
              color: theme.colorScheme.surface,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}