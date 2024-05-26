import 'package:digital_clinic_final/Custom_Buttons/custom_button_1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResetPage extends StatelessWidget {
  const ResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final blueHeight = height * 1 / 3; // Height for blue color

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: blueHeight,
              color: Color.fromRGBO(106, 121, 213, 1.0), // Blue color
              child: Column(
                children: [
                  Row(
                    // Adding an icon
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: height * .05,
                          left: width * .02,
                        ),
                        child: Icon(
                          Icons.local_hospital,
                          size: 96.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: height * 0.02),

                  // Text in blue background with right padding
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * 0.02,left: width * 0.02), // Adjust right padding as needed
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Reset Password",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "Please enter your email address. A code will\nbe sent to your email",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white, // White color
              padding: EdgeInsets.only(top: height * 0.02), // Apply top padding
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Email textfield
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Text(
                      "Email",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500],
                          fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05), // Apply horizontal padding
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10), // Adjust the content padding
                      ),
                    ),
                  ),

                  SizedBox(height: height * 0.47,),

                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 8.0),
                    child: CustomButton1(
                      text: "Continue",
                      fillColor: Color.fromRGBO(106, 121, 213, 1.0),
                      textColor: Colors.white,
                      borderColor: Colors.transparent,
                      onPress: () {
                        // Define your onPress function here
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
