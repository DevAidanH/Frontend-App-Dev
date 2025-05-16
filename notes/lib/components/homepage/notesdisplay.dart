import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// ignore: must_be_immutable
class NotesGrid extends StatelessWidget {
  List notes;
  NotesGrid({
    required this.notes,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Color(0xFFfbe79d),
      Color(0xFFf7c6ea),
      Color(0xFFc2f0ff),
      Color(0xFFd4ffb8)
    ];
    return Expanded(
      child: MasonryGridView.builder(
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
        itemCount: notes.length,
        itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  
                  decoration: BoxDecoration(
                    color: colors[index % colors.length],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notes[index].title,
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        notes[index].content,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 10,
                      )
                    ],
                  ),
                ),
              );
        }
      ),
    );
  }
}