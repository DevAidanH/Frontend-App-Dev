import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HorizontalDateSelector extends StatefulWidget {
  const HorizontalDateSelector({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HorizontalDateSelectorState createState() => _HorizontalDateSelectorState();
}

class _HorizontalDateSelectorState extends State<HorizontalDateSelector> {
  final int daysToShow = 30;
  final DateTime today = DateTime.now();
  int selectedIndex = 0;

  List<DateTime> get dateList => List.generate(
        daysToShow,
        (index) => today.add(Duration(days: index)),
      );

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dateList.length,
        itemBuilder: (context, index) {
          final date = dateList[index];
          final bool isWeekend = date.weekday == DateTime.saturday || date.weekday == DateTime.sunday;
          final bool isSelected = index == selectedIndex && !isWeekend;

          final Color bgColor = isSelected
              ? theme.colorScheme.tertiary
              : isWeekend
                  ? Colors.grey[300]!
                  : theme.colorScheme.surface;

          final Color textColor = isSelected
              ? theme.colorScheme.secondary
              : isWeekend
                  ? Colors.grey
                  : theme.colorScheme.primary;

          return GestureDetector(
            onTap: isWeekend
                ? null // Disable selection
                : () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
            child: Container(
              width: 60,
              margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    DateFormat('E').format(date),
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    DateFormat('d').format(date),
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
