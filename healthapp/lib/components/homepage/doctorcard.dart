import 'package:flutter/material.dart';
import 'package:healthapp/data/doctor.dart';
import 'package:healthapp/pages/bookingpage.dart';

class Doctorcard extends StatelessWidget {
  final Doctor doctor;
  final bool reducedCard;
  const Doctorcard({
    required this.doctor,
    this.reducedCard = false,
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
              doctor.imagePath,
              height: reducedCard ? 100 : 150,
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
                      doctor.name,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    RichText(text: TextSpan(
                        style: TextStyle(
                        color: theme.colorScheme.primary,
                        fontSize: 13,
                      ),
                      children: [
                        WidgetSpan(child: Icon(Icons.star, color: Colors.amber, size: 16,)),
                        TextSpan(text: doctor.stars)
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
                      TextSpan(text: " ${doctor.hours}"),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                reducedCard ?  SizedBox() : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Book Button
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Bookingpage(doctor: doctor)));
                      },
                      child: Container(
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