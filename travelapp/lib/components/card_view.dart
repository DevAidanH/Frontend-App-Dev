import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/components/card_contents.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  List<CardContents> cards = [
    CardContents(
      countryName: "Brazil",
      cityName: "Rio de Janeiro",
      numberOfStars: 5.0,
      numberOfReviews: 143,
    ),
    CardContents(
      countryName: "North America",
      cityName: "New York",
      numberOfStars: 3.0,
      numberOfReviews: 200,
    ),
    CardContents(
      countryName: "Great Britain",
      cityName: "London",
      numberOfStars: 5.0,
      numberOfReviews: 333,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30)
      ),
      child: Swiper(
          itemCount: 3,
          itemBuilder: (context, index){
            return ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Stack(
                fit: StackFit.expand,
                children: [ 
                  Image.asset("lib/assets/${index + 1}.jpg", fit: BoxFit.fill),
                  cards[index]
                ]
              ),
            );
          },
          viewportFraction: 0.8,
          scale: 0.9,
          layout: SwiperLayout.DEFAULT,
        )
    );
  }
}