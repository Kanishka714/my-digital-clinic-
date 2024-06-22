import 'package:digital_clinic_final/navigation_menu.dart';
import 'package:flutter/material.dart';

class Specialities extends StatelessWidget {
  const Specialities({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final blueHeight = height * 1.1 / 5; // Height for blue color
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
                                "Specialities",
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
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search by speciality',
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
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          "Recent Search",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: height * 0.13,
                          width: width * 0.45,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(244, 244, 252, 1.0), // Updated color
                            border: Border(
                              top: BorderSide(width: 5.0, color: Color.fromRGBO(106, 121, 213, 1.0)), // Top border
                            ),
                          ),
                          
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Dermatology",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                ],
                              ),
                              SizedBox(height: 5.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.person,color: Colors.grey,),
                                  Text("50 Specialist", style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: height * 0.13,
                          width: width * 0.45,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(235, 248, 255, 1.0), // Updated color
                            border: Border(
                              top: BorderSide(width: 5.0, color: Colors.blue), // Top border
                            ),
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Neurology",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                ],
                              ),
                              SizedBox(height: 5.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.person,color: Colors.grey,),
                                  Text("50 Specialist", style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: height * 0.13,
                          width: width * 0.45,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(237, 251, 242, 1.0), // Updated color
                            border: Border(
                              top: BorderSide(width: 5.0, color: Colors.greenAccent), // Top border
                            ),
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Pulmonology",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                ],
                              ),
                              SizedBox(height: 5.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.person,color: Colors.grey,),
                                  Text("50 Specialist", style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: height * 0.13,
                          width: width * 0.45,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 250, 235, 1.0), // Updated color
                            border: Border(
                              top: BorderSide(width: 5.0, color: Colors.yellow), // Top border
                            ),
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Neurology",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                ],
                              ),
                              SizedBox(height: 5.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.person,color: Colors.grey,),
                                  Text("50 Specialist", style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  //all specialists
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          "All specialists",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //list of specialists
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.grey), // Top border
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Radiology", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              Icon(Icons.navigate_next_rounded,size: 30,color: Colors.grey,)
                            ],
                          ),
                          Row(
                            children: [
                              Text("18 Specialists", style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.grey), // Top border
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Gynaecology", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              Icon(Icons.navigate_next_rounded,size: 30,color: Colors.grey,)
                            ],
                          ),
                          Row(
                            children: [
                              Text("11 Specialists", style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.grey), // Top border
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Neurology", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              Icon(Icons.navigate_next_rounded,size: 30,color: Colors.grey,)
                            ],
                          ),
                          Row(
                            children: [
                              Text("50 Specialists", style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1.0, color: Colors.grey), // Top border
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Pulmonology", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              Icon(Icons.navigate_next_rounded,size: 30,color: Colors.grey,)
                            ],
                          ),
                          Row(
                            children: [
                              Text("18 Specialists", style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationMenu(), // Correctly placed bottom navigation bar
    );
  }
}