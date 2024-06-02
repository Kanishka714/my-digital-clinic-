import 'package:digital_clinic_final/Reusables/bottom_navbar.dart';
import 'package:digital_clinic_final/Reusables/news_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import the Font Awesome package

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final blueHeight = height * 1 / 5; // Height for blue color

    return Scaffold(
      body: Column(
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
                        "Homepage",
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
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0, top: 0.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for Doctors, Clinics ...',
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
            padding: const EdgeInsets.only(left: 10.0, bottom: 10.0, top: 15),
            child: Row(
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),

          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //first row first container
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white10, // Set the border color (you can change it as needed)
                        width: 2, // Set the border thickness
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Set a subtle gray color with reduced opacity
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.userNurse, color: Color.fromRGBO(106, 121, 213, 1.0), size: 60,),
                        SizedBox(height: 5,),
                        Text("Doctor",style: TextStyle(color: Color.fromRGBO(106, 121, 213, 1.0),),),
                      ],
                    ),
                  ),

                  //first row second container
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white10, // Set the border color (you can change it as needed)
                        width: 2, // Set the border thickness
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Set a subtle gray color with reduced opacity
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.houseMedicalFlag, color: Color.fromRGBO(106, 121, 213, 1.0), size: 60,),
                        SizedBox(height: 5,),
                        Text("Clinic",style: TextStyle(color: Color.fromRGBO(106, 121, 213, 1.0),),),
                      ],
                    ),
                  ),

                  //first row third container
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white10, // Set the border color (you can change it as needed)
                        width: 2, // Set the border thickness
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Set a subtle gray color with reduced opacity
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.heartPulse, color: Color.fromRGBO(106, 121, 213, 1.0), size: 60,),
                        SizedBox(height: 5,),
                        Text("Specialities",style: TextStyle(color: Color.fromRGBO(106, 121, 213, 1.0),),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //second row first container
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white10, // Set the border color (you can change it as needed)
                        width: 2, // Set the border thickness
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Set a subtle gray color with reduced opacity
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.flaskVial, color: Color.fromRGBO(106, 121, 213, 1.0), size: 60,),
                        SizedBox(height: 5,),
                        Text("Labs",style: TextStyle(color: Color.fromRGBO(106, 121, 213, 1.0),),),
                      ],
                    ),
                  ),

                  //second row second container
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white10, // Set the border color (you can change it as needed)
                        width: 2, // Set the border thickness
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Set a subtle gray color with reduced opacity
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.fileInvoice, color: Color.fromRGBO(106, 121, 213, 1.0), size: 60,),
                        SizedBox(height: 5,),
                        Text("Insurance",style: TextStyle(color: Color.fromRGBO(106, 121, 213, 1.0),),),
                      ],
                    ),
                  ),

                  //second row third container
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white10, // Set the border color (you can change it as needed)
                        width: 2, // Set the border thickness
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Set a subtle gray color with reduced opacity
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.biohazard, color: Color.fromRGBO(106, 121, 213, 1.0), size: 60,),
                        SizedBox(height: 5,),
                        Text("Emergency",style: TextStyle(color: Color.fromRGBO(106, 121, 213, 1.0),),),
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 20.0,bottom: 15.0),
                child: Row(
                  children: [
                    Text(
                      "Hot Themes",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    NewsContainer(
                      date: "31.06.2024",
                      title: "Covid-19 Vaccination",
                      description: "Some Description",
                      imageUrl: "https://www.aamc.org/sites/default/files/styles/scale_and_crop_1200_x_666/public/vaccine-skeptics-1291678676.jpg?itok=b6MP_kaI",
                      orientation: "horizontal",
                    ),
                    NewsContainer(
                      date: "31.12.1624",
                      title: "Heart Transplant",
                      description: "Some Description",
                      imageUrl: "https://talkstar-photos.s3.amazonaws.com/uploads/286a195b-c576-4e00-b28e-e3aeac637f9f/hearttextless.jpg",
                      orientation: "horizontal",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(), // Correctly placed bottom navigation bar
    );
  }
}
