import 'package:flutter/material.dart';

class Timeselector extends StatefulWidget {
  final List<String> times;
  const Timeselector({
    required this.times,
    super.key
  });

  @override
  State<Timeselector> createState() => _TimeselectorState();
}

class _TimeselectorState extends State<Timeselector> {
  int? selected = 0;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.times.length,
              itemBuilder: (context, index){
                final isSelected = selected == index;
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      selected = index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      color: isSelected ? theme.colorScheme.tertiary : theme.colorScheme.secondary,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      widget.times[index],
                      style: TextStyle(
                        color: isSelected ? theme.colorScheme.secondary : theme.colorScheme.primary,
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