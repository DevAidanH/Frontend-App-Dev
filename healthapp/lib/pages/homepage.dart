import 'package:flutter/material.dart';
import 'package:healthapp/components/homepage/categories.dart';
import 'package:healthapp/components/homepage/doctorcard.dart';
import 'package:healthapp/components/homepage/doctorsfilter.dart';
import 'package:healthapp/components/homepage/titlebar.dart';
import 'package:healthapp/data/doctor.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Doctor> doctors = [
      Doctor(
        name: "Bruno Rodrigues", 
        hours: "09:00 am - 02:00 pm", 
        stars: "4.9", 
        imagePath: "lib/assets/doc1.jpg"
      ),
      Doctor(
        name: "Salman Pacheco", 
        hours: "10:00 am - 04:00 pm", 
        stars: "4.8", 
        imagePath: "lib/assets/doc3.jpg"
      ),
      Doctor(
        name: "Helena Mcneil", 
        hours: "09:00 am - 05:00 pm", 
        stars: "4.5", 
        imagePath: "lib/assets/doc2.jpg"
      )

    ];
    return Scaffold(
      body: Column(
            children: [
              //Title and option buttons
              Titlebar(username: "Aidan H"),
              
              //Categories
              Categories(categories: ["Check-up", "Dental", "Cardiology"]),
              SizedBox(height: 40),

              //Doctors filter
              Doctorsfilter(doctors: ["All doctors", "General Practitioners","Cardiologists"]),

              //Doctors card view
              Expanded(
                child: ListView.builder(
                  itemCount: doctors.length,
                  itemBuilder: (context, index){
                    final doctor = doctors[index];
                    return Doctorcard(
                      name: doctor.name, 
                      hours: doctor.hours, 
                      imagePath: doctor.imagePath, 
                      stars: doctor.stars
                    );
                  }
                ),
              )
              
            ],
          )
    );
  }
}