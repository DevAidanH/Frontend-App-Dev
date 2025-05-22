import 'package:flutter/material.dart';
import 'package:healthapp/components/bookingpage/dateselector.dart';
import 'package:healthapp/components/bookingpage/timeselector.dart';
import 'package:healthapp/components/bookingpage/topbar.dart';
import 'package:healthapp/components/homepage/doctorcard.dart';
import 'package:healthapp/data/doctor.dart';

class Bookingpage extends StatefulWidget {
  final Doctor doctor;
  const Bookingpage({
    required this.doctor,
    super.key
  });

  @override
  State<Bookingpage> createState() => _BookingpageState();
}

class _BookingpageState extends State<Bookingpage> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: Topbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            //Text
            Text(
              "Appointment",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
        
            //Doctor Card
            Doctorcard(doctor: widget.doctor, reducedCard: true),
            SizedBox(height: 20),
        
            //Calander select
            Text(
              "Appointment slot",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            HorizontalDateSelector(),
            SizedBox(height: 20),
        
            //Time select
            Timeselector(times: ["09:00 am","10:00 am", "12:00 pm", "02:00 pm", "04:00 pm"]),
            SizedBox(height: 30),
        
            //Text field
            Text(
              "Reason for doctor's visit",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              height: 225,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: theme.colorScheme.secondary,
              ),
              child: TextField(
                expands: true,
                maxLines: null,
                minLines: null,
                decoration: InputDecoration(
                  hintText: "Describe your symptoms & complaints",
                  hintStyle: TextStyle(
                    color: Colors.grey[500]
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20),
        
            //Book button
            Container(
              width: double.infinity,
              height: 75,
              decoration: BoxDecoration(
                color: theme.colorScheme.tertiary,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: Text(
                  "Book Now",
                  style: TextStyle(
                    fontSize: 20,
                    color: theme.colorScheme.secondary
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}