import 'package:flutter/material.dart';

class Doctorcard extends StatelessWidget {
  final String name;
  final String hours;
  final String imagePath;
  final String stars;
  const Doctorcard({
    required this.name,
    required this.hours,
    required this.imagePath,
    required this.stars,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(20)
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Doctor image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          // Doctor info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    RichText(text: TextSpan(
                        style: TextStyle(
                        color: theme.colorScheme.primary,
                        fontSize: 13,
                      ),
                      children: [
                        WidgetSpan(child: Icon(Icons.star, color: Colors.amber, size: 16,)),
                        TextSpan(text: stars)
                      ]
                    ))
                  ],
                ),
                SizedBox(height: 5),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: theme.colorScheme.primary,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(text: "General Practitioner\n"),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Icon(Icons.access_time, size: 16),
                      ),
                      TextSpan(text: " $hours"),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Book Button
                    Container(
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.tertiary,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                            color: theme.colorScheme.secondary,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    //Chat Button
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: theme.colorScheme.primary),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.chat_bubble_outline_rounded)
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}