import 'package:flutter/material.dart';

class Notesfilter extends StatefulWidget {
  final List<String> notes;
  
  const Notesfilter({
    required this.notes,
    super.key
  });

  @override
  State<Notesfilter> createState() => _NotesfilterState();
}

class _NotesfilterState extends State<Notesfilter> {
  int? selected = 0;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.notes.length,
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
                color: isSelected ? theme.colorScheme.primary : Color(0xFFedeff2),
                borderRadius: BorderRadius.circular(20)
              ),
              alignment: Alignment.center,
              child: Text(
                widget.notes[index],
                style: TextStyle(
                  color: isSelected ? Color(0xFFedeff2) : theme.colorScheme.primary,
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