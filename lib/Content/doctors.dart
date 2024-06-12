import 'package:digital_clinic_final/Reusables/bottom_navbar.dart';
import 'package:digital_clinic_final/Reusables/doctorscards.dart';
//import 'package:digital_clinic_final/Reusables/doctorscards.dart';
import 'package:digital_clinic_final/Reusables/news_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorsPage extends StatelessWidget {
  const DoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    //final width = MediaQuery.of(context).size.width;
    final blueHeight = height * 1 / 5; // Height for blue color

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: blueHeight,
                    color: Color.fromRGBO(106, 121, 213, 1.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 33, left: 20.0),
                          child: Row(
                            children: [
                              Text(
                                "All Doctors",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, right: 16.0, bottom: 16.0, top: 0.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search by category',
                              hintStyle: TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.white24,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              suffixIcon: Icon(Icons.search, color: Colors.white),
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, bottom: 10.0, top: 10),
                    child: Row(
                      children: [
                        Text(
                          "Doctors",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SingleChildScrollView( // Vertical scroll view for additional NewsContainers
                    child: Column(
                      children: [
                        DoctorsCards(
                          name: 'Bhanu',
                          title: 'OPD',
                          location: 'Lanka',
                        ),
                        DoctorsCards(
                          name: 'Bhanu',
                          title: 'OPD',
                          location: 'Lanka',
                        ),
                        DoctorsCards(
                          name: 'Bhanu',
                          title: 'OPD',
                          location: 'Lanka',
                        ),
                        DoctorsCards(
                          name: 'Bhanu',
                          title: 'OPD',
                          location: 'Lanka',
                        ),
                        DoctorsCards(
                          name: 'Bhanu',
                          title: 'OPD',
                          location: 'Lanka',
                        ),
                        DoctorsCards(
                          name: 'Bhanu',
                          title: 'OPD',
                          location: 'Lanka',
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomNavBar(), // Correctly placed bottom navigation bar
        ],
      ),
    );
  }
}
