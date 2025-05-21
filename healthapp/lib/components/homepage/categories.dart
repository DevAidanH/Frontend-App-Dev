import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final List<String> categories;
  const Categories({
    required this.categories,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          //Text
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  fontSize: 20
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 16,
                    color: theme.colorScheme.tertiary,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          //Categories cards
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index){
                  return Container(
                    width: 150,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.secondary,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "lib/assets/${categories[index]}.png",
                          width: 75,
                        ),
                        Text(
                          categories[index],
                          style: TextStyle(
                            color: theme.colorScheme.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  );
              }
            ),
          ),
        ],
      ),
    );
  }
}