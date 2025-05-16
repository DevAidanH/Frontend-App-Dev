import 'package:flutter/material.dart';
import 'package:notes/components/bottomnav.dart';
import 'package:notes/components/homepage/mynavbar.dart';
import 'package:notes/components/homepage/notesdisplay.dart';
import 'package:notes/components/homepage/notesfilter.dart';
import 'package:notes/data/notes.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    final List<Note> sampleNotes = [
      Note(
        title: 'Morning Routine',
        content: '''
    - Wake up at 7:00 AM
    - 10 min meditation
    - Make bed
    - Drink a glass of water
    - Review daily goals
    ''',
      ),
      Note(
        title: 'Grocery List',
        content: '''
    - Milk
    - Eggs
    - Chicken breast
    - Spinach
    - Oats
    - Greek yogurt
    ''',
      ),
      Note(
        title: 'Project Ideas',
        content: '''
    - Habit Tracker App
    - AI-Powered Flashcard Tool
    - Minimalist Blog with Markdown Support
    - Fitness Progress Logger
    ''',
      ),
      Note(
        title: 'Books to Read',
        content: '''
    - Atomic Habits by James Clear
    - Deep Work by Cal Newport
    - The Pragmatic Programmer
    - The Art of Learning by Josh Waitzkin
    ''',
      ),
      Note(
        title: 'DnD Session Prep',
        content: '''
    - Recap last session
    - Introduce merchant NPC (Galen the Greedy)
    - Forest ambush encounter
    - Map out hidden shrine
    ''',
      ),
      Note(
        title: 'Cleaning Checklist',
        content: '''
    - Wipe down desk
    - Vacuum floor
    - Organize drawers
    - Empty trash
    - Clean bathroom mirror
    ''',
      ),
      Note(
        title: 'Fitness Goals - May',
        content: '''
    - Drop to 18% body fat
    - Squat: 130 kg
    - Deadlift: 140 kg
    - Consistent 10k steps/day
    - Track macros weekly
    ''',
      ),
      Note(
        title: 'Date Night Ideas',
        content: '''
    - Picnic at the park
    - Board game cafe
    - Cook dinner together
    - Stargazing with blankets
    ''',
      ),
      Note(
        title: 'Meeting Notes - 15 May',
        content: '''
    - Team sync: blockers + progress
    - New feature rollout: ETA Friday
    - Remind everyone of code freeze
    - Discuss post-mortem review
    ''',
      ),
      Note(
        title: 'Quotes I Like',
        content: '''
    "Discipline equals freedom." – Jocko Willink
    "You do not rise to the level of your goals. You fall to the level of your systems." – James Clear
    "Absorb what is useful, discard what is not, add what is uniquely your own." – Bruce Lee
    ''',
      ),
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Stack(
          children: [
            Column(
              children: [
                //Top navigation
                Mynavbar(userImagePath: "lib/assets/profileT.jpg"),
            
                SizedBox(height: 30),
                          
                //Search bar
                SearchBar(
                  leading: Icon(Icons.search, color: theme.colorScheme.tertiary, size: 40),
                  hintText: "Search notes...",
                  hintStyle: WidgetStateProperty.all(TextStyle(color: theme.colorScheme.tertiary)),
                  elevation: WidgetStateProperty.all(0),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: theme.colorScheme.tertiary, 
                        width: 1,                        
                      ),
                    ),
                  ),
                ),
            
                SizedBox(height: 20),
              
                //Chip selection
                Notesfilter(notes: ["All", "Work", "To-Do", "Reading", "Images"]),

                SizedBox(height: 5),
              
                //Notes grid
                NotesGrid(notes: sampleNotes)
              ],
            ),              
            //Floating navigation bar
            Positioned(
              bottom: 40,
              left: 25,
              right: 25,
              child: Bottomnav()
            )
          ],
        ),
      ),
    );
  }
}