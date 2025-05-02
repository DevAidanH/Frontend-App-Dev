import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
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
                  Center(
                    child: Text("Hello"),
                  )
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