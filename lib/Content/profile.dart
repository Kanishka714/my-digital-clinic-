import 'package:digital_clinic_final/Reusables/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    // Available height after removing bottom navigation bar height
    final availableHeight = height * 0.9;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: availableHeight * 0.4, // Adjusted height for top container
                decoration: BoxDecoration(
                  color: Color.fromRGBO(106, 121, 213, 1.0),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Profile",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.notifications,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.settings,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: availableHeight * 0.6, // Adjusted height for bottom container
                decoration: BoxDecoration(
                  color: Colors.white12,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center, // Center the container
            child: Container(
              height: 550, // Adjusted height
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    "https://cdn.britannica.com/95/159895-050-AB367B08/Detail-statue-Genghis-Khan-Mongolia-Ulaanbaatar.jpg",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Genghis Khan",style: TextStyle(color: Colors.black, fontSize: 24,),),
                                Text("24 years old",style: TextStyle(color: Colors.grey, fontSize: 18,),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Divider(thickness: 2),

                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //first row first container
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color.fromRGBO(106, 121, 213, 1.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(FontAwesomeIcons.user, color: Colors.white, size: 30,),
                                ],
                              ),
                            ),
                            Text("Saved\nDoctors",textAlign: TextAlign.center,),
                          ],
                        ),

                        //first row second container
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(5, 166, 254, 1.0),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(FontAwesomeIcons.file, color: Colors.white, size: 30,),
                                ],
                              ),
                            ),
                            Text("Saved\nArticles",textAlign: TextAlign.center,),
                          ],
                        ),

                        //first row third container
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(FontAwesomeIcons.heart, color: Colors.white, size: 30,),
                                ],
                              ),
                            ),
                            Text("Health\nDiary",textAlign: TextAlign.center,),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(thickness: 2),

                    //Rows
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    child: Icon(Icons.calendar_month_outlined,size: 30,color: Color.fromRGBO(106, 121, 213, 1.0),),
                                    color: Colors.white30,
                                  ),
                                  SizedBox(width: 15,),
                                  Text("Appointments",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Icon(Icons.navigate_next,size: 30,),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    child: Icon(Icons.water_drop,size: 30,color: Color.fromRGBO(106, 121, 213, 1.0),),
                                    color: Colors.white30,
                                  ),
                                  SizedBox(width: 15,),
                                  Text("Pills Reminder",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Icon(Icons.navigate_next,size: 30,),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    child: Icon(Icons.person,size: 30,color: Color.fromRGBO(106, 121, 213, 1.0),),
                                    color: Colors.white30,
                                  ),
                                  SizedBox(width: 15,),
                                  Text("My Doctors",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Icon(Icons.navigate_next,size: 30,),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    child: Icon(Icons.shopping_bag_outlined,size: 30,color: Color.fromRGBO(106, 121, 213, 1.0),),
                                    color: Colors.white30,
                                  ),
                                  SizedBox(width: 15,),
                                  Text("Insurance Plan",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Icon(Icons.navigate_next,size: 30,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
