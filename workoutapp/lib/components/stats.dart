import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Stats extends StatelessWidget {
  String workoutTitle;
  int numberOfStars;
  int numberOfHours;
  List<String> tags;
  int streak;
  Stats({
    required this.workoutTitle,
    required this.numberOfStars,
    required this.numberOfHours,
    required this.tags,
    required this.streak,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            workoutTitle,
            style: TextStyle(
              fontSize: 55,
              fontWeight: FontWeight.w400
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: theme.colorScheme.primary)
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.star_border, size: 20, color: theme.colorScheme.primary),
                      ),
                      TextSpan(
                        text: " ${numberOfStars.toString()}",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: theme.colorScheme.primary)
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.timer_outlined, size: 20, color: theme.colorScheme.primary),
                      ),
                      TextSpan(
                        text: " ${numberOfHours.toString()} hours",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 70),
          
          //Tags
          Chip(
            label: Text(
              "#test",
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.transparent
              ),
            ),
            shape: StadiumBorder(),
          )

      
        ],
      ),
    );
  }
}