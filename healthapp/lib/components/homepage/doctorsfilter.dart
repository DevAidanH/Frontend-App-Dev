import 'package:flutter/material.dart';

class Doctorsfilter extends StatefulWidget {
  final List<String> doctors;
  const Doctorsfilter({
    required this.doctors,
    super.key
  });

  @override
  State<Doctorsfilter> createState() => _DoctorsfilterState();
}

class _DoctorsfilterState extends State<Doctorsfilter> {
  int? selected = 0;
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
                "Our Doctors",
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
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.doctors.length,
              itemBuilder: (context, index){
                final isSelected = selected == index;
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      selected = index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      color: isSelected ? theme.colorScheme.tertiary : theme.colorScheme.secondary,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      widget.doctors[index],
                      style: TextStyle(
                        color: isSelected ? theme.colorScheme.secondary : theme.colorScheme.primary,
                        fontSize: 16
                      ),
                    ),
                  ),
                );
              }
            ),
          )
        ],
      ),
    );
  }
}