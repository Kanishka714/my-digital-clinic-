import 'package:digital_clinic_final/AdminCare/add_article.dart';
import 'package:digital_clinic_final/AdminCare/add_user.dart';
import 'package:digital_clinic_final/AdminCare/create_posts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdminCareAll extends StatelessWidget {
  const AdminCareAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( // Center widget added here
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centering vertically
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddUser()),
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white10,
                          width: 2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.userNurse,
                            color: Color.fromRGBO(106, 121, 213, 1.0),
                            size: 60,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Add User",
                            style: TextStyle(
                              color: Color.fromRGBO(106, 121, 213, 1.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddArticle()),
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white10,
                          width: 2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.houseMedicalFlag,
                            color: Color.fromRGBO(106, 121, 213, 1.0),
                            size: 60,
                          ),
                          SizedBox(height: 5),
                          Text("Create Posts", style: TextStyle(color: Color.fromRGBO(106, 121, 213, 1.0))),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreatePosts()),
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white10,
                          width: 2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.heartPulse,
                            color: Color.fromRGBO(106, 121, 213, 1.0),
                            size: 60,
                          ),
                          SizedBox(height: 5),
                          Text("Specialities", style: TextStyle(color: Color.fromRGBO(106, 121, 213, 1.0))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //SizedBox(height: 15),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Container(
              //       height: 100,
              //       width: 100,
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         border: Border.all(
              //           color: Colors.white10,
              //           width: 2,
              //         ),
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.grey.withOpacity(0.3),
              //             spreadRadius: 5,
              //             blurRadius: 7,
              //             offset: Offset(0, 3),
              //           ),
              //         ],
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           FaIcon(
              //             FontAwesomeIcons.flaskVial,
              //             color: Color.fromRGBO(106, 121, 213, 1.0),
              //             size: 60,
              //           ),
              //           SizedBox(height: 5),
              //           Text("Labs", style: TextStyle(color: Color.fromRGBO(106, 121, 213, 1.0))),
              //         ],
              //       ),
              //     ),
              //     Container(
              //       height: 100,
              //       width: 100,
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         border: Border.all(
              //           color: Colors.white10,
              //           width: 2,
              //         ),
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.grey.withOpacity(0.3),
              //             spreadRadius: 5,
              //             blurRadius: 7,
              //             offset: Offset(0, 3),
              //           ),
              //         ],
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           FaIcon(
              //             FontAwesomeIcons.fileInvoice,
              //             color: Color.fromRGBO(106, 121, 213, 1.0),
              //             size: 60,
              //           ),
              //           SizedBox(height: 5),
              //           Text("Insurance", style: TextStyle(color: Color.fromRGBO(106, 121, 213, 1.0))),
              //         ],
              //       ),
              //     ),
              //     Container(
              //       height: 100,
              //       width: 100,
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         border: Border.all(
              //           color: Colors.white10,
              //           width: 2,
              //         ),
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.grey.withOpacity(0.3),
              //             spreadRadius: 5,
              //             blurRadius: 7,
              //             offset: Offset(0, 3),
              //           ),
              //         ],
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           FaIcon(
              //             FontAwesomeIcons.biohazard,
              //             color: Color.fromRGBO(106, 121, 213, 1.0),
              //             size: 60,
              //           ),
              //           SizedBox(height: 5),
              //           Text("Emergency", style: TextStyle(color: Color.fromRGBO(106, 121, 213, 1.0))),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
