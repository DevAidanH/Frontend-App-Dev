import 'package:flutter/material.dart';

class Customsearchbar extends StatelessWidget {
  final String searchBarText;
  final bool displayIcon;
  final String searchBarLabel;
  final double borderRadius;
  final double gapStart;
  final double gapWidth;
  const Customsearchbar({
    required this.searchBarLabel,
    required this.displayIcon,
    required this.searchBarText,
    required this.borderRadius,
    required this.gapStart,
    required this.gapWidth,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topLeft,
      children: [
        CustomPaint(
          painter: BrokenRoundedBorderPainter(
            borderColor: theme.colorScheme.tertiary,
            gapStart: gapStart,
            gapWidth: gapWidth,
            borderRadius: borderRadius
          ),
          child: Container(
            color: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: searchBarText,
                      hintStyle: TextStyle(
                        fontSize: 14
                      )
                    ),
                  )
                ),
                displayIcon ? IconButton(
                  onPressed: (){}, 
                  icon: Icon(
                    Icons.location_pin,
                    color: theme.colorScheme.tertiary,
                  )
                ) : SizedBox(width: 10)
              ],
            ),
          ),
        ),
        Positioned(
          top: -10,
          left: 14,
          child: Text(
            searchBarLabel,
            style: TextStyle(fontSize: 12, color: theme.colorScheme.tertiary),
          ),
        )
      ],
    );
  }
}

class BrokenRoundedBorderPainter extends CustomPainter {
  final Color borderColor;
  final double borderRadius;
  final double gapStart;
  final double gapWidth;

  BrokenRoundedBorderPainter({
    required this.borderColor,
    this.borderRadius = 10.0,
    this.gapStart = 11.0,
    this.gapWidth = 170.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = borderColor
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final rrect = RRect.fromRectAndRadius(rect, Radius.circular(borderRadius));

    // Top border with break (we draw each border separately to control gaps)
    final path = Path();

    // Top-left rounded corner to gapStart
    path.moveTo(rrect.tlRadiusX, 0);
    path.lineTo(gapStart, 0);

    // Gap: skip from gapStart to gapStart + gapWidth
    path.moveTo(gapStart + gapWidth, 0);
    path.lineTo(size.width - rrect.trRadiusX, 0);

    // Top-right to bottom-right
    path.arcToPoint(
      Offset(size.width, rrect.trRadiusY),
      radius: Radius.circular(borderRadius),
    );
    path.lineTo(size.width, size.height - rrect.brRadiusY);

    // Bottom-right corner
    path.arcToPoint(
      Offset(size.width - rrect.brRadiusX, size.height),
      radius: Radius.circular(borderRadius),
    );
    path.lineTo(rrect.blRadiusX, size.height);

    // Bottom-left corner
    path.arcToPoint(
      Offset(0, size.height - rrect.blRadiusY),
      radius: Radius.circular(borderRadius),
    );
    path.lineTo(0, rrect.tlRadiusY);

    // Top-left corner
    path.arcToPoint(
      Offset(rrect.tlRadiusX, 0),
      radius: Radius.circular(borderRadius),
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
