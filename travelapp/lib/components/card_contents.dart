import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardContents extends StatelessWidget {
  String countryName;
  String cityName;
  double numberOfStars;
  int numberOfReviews;
  CardContents({
    required this.countryName,
    required this.cityName,
    required this.numberOfStars,
    required this.numberOfReviews,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(20),
      child: Stack(
        children: [
          //Like Button
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: (){}, 
              icon: Icon(
                Icons.favorite_outline,
                color: theme.colorScheme.primary,
              )),
          ),
          //City Stats
          Positioned(
            left: 0,
            bottom: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Country Text
                Text(
                  countryName,
                  style: TextStyle(
                    color: theme.colorScheme.tertiary,
                    fontSize: 16
                  ),
                ),
                //City Text
                Text(
                  cityName,
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                  ),
                ),
                //Row with stars and reviews
                Row(
                  children: [
                    //Stars
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(Icons.star_border, size: 20, color: theme.colorScheme.primary),
                          ),
                          TextSpan(
                            text: numberOfStars.toString(),
                            style: TextStyle(color: theme.colorScheme.primary, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15),
                    //Reviews
                    Text(
                      "${numberOfReviews.toString()} reviews",
                      style: TextStyle(
                        color: theme.colorScheme.tertiary,
                        fontSize: 16
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          //Action Button
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: theme.colorScheme.secondary,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: Text(
                      "See More",
                      style: TextStyle(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      constraints: BoxConstraints(),
                      padding: EdgeInsets.zero,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.chevron_right,
                          size: 30,
                          color: theme.colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}