import 'package:flutter/material.dart';

class CountryFilter extends StatefulWidget {
  final List<String> countries;
  
  const CountryFilter({
    required this.countries,
    super.key
  });

  @override
  State<CountryFilter> createState() => _CountryFilterState();
}

class _CountryFilterState extends State<CountryFilter> {
  int? selected = 2;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.countries.length,
        itemBuilder: (context, index){
          final isSelected = selected == index;
          return GestureDetector(
            onTap: (){
              setState(() {
                selected = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: isSelected ? theme.colorScheme.secondary : theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(20)
              ),
              alignment: Alignment.center,
              child: Text(
                widget.countries[index],
                style: TextStyle(
                  color: isSelected ? theme.colorScheme.primary : theme.colorScheme.secondary,
                  fontSize: 16
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}