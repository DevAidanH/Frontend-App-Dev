import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tradeoff/components/mypage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Pages
          PageView(
            controller: _pageController,
            children: [
              Mypage( //Page 0
                imagePath: "lib/assets/swordT.png", 
                titleText: "Risk Ready", 
                bodyText: "Boldy Risk to accelerate AI and\nsecure a competitive edge."
              ),
              Mypage( //Page 1
                imagePath: "lib/assets/swordT.png", 
                titleText: "Tradeoffs", 
                bodyText: "Weigh risks, take steps and drive\nAI innovation strategically"
              ),
              Mypage( //Page 2
                imagePath: "lib/assets/swordT.png", 
                titleText: "Risk Averse", 
                bodyText: "Significantly reduce risk through\ncompliance and careful use of AI"
              )
            ],
          ),
          ///Top Bar
          Container(
            alignment: Alignment(-0.9, -0.9),
            child: SmoothPageIndicator(
              controller: _pageController, 
              count: 3,
              effect: ExpandingDotsEffect(
                dotColor: Color(0xFF1b1d1f),
                activeDotColor: Color(0xFF1b1d1f),
                dotHeight: 10,
                dotWidth: 15,
                spacing: 5
              ),
            )
          ),
          GestureDetector(
            onTap: () {
              _pageController.jumpToPage(2);
            },
            child: Container(
              alignment: Alignment(0.9, -0.9),
              child: Text(
                "Skip",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFcccccc)
                ),
              ),
            ),
          )
        ]
      ),
    );
  }
}