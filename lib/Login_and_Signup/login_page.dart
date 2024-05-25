import 'package:digital_clinic_final/Custom_Buttons/custom_button_1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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

                  SizedBox(height: height * 0.05),

                  // Text in blue background with right padding
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * 0.2), // Adjust right padding as needed
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 44,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "Please enter your credentials to proceed",
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

                  SizedBox(height: 5),

                  //Password textfield
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Text(
                      "Password",
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
                        hintText: 'Password',
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

                  //forgot password
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Forget Password?",
                            style: TextStyle(
                                color: Color.fromRGBO(106, 121, 213, 1.0),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),

                  //button
                  SizedBox(height: height *0.18),

                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 8.0),
                    child: CustomButton1(
                      text: "Sign Up",
                      fillColor: Color.fromRGBO(106, 121, 213, 1.0),
                      textColor: Colors.white,
                      borderColor: Colors.transparent,
                      onPress: () {
                        // Define your onPress function here
                      },
                    ),
                  ),

                  SizedBox(height: 5),

                  Center(
                      child: Text("OR",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold))),

                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //google
                      Container(
                        width: 50, // Adjust the size as needed
                        height: 50, // Adjust the size as needed
                        decoration: BoxDecoration(
                          color: Colors.transparent, // Set the background color
                          shape: BoxShape
                              .circle, // Make the inner container circular
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape
                                .circle, // Make the outer container circular
                            border: Border.all(
                              color: Color.fromRGBO(
                                  106, 121, 213, 1.0), // Border color
                            ),
                          ),
                          child: Icon(
                            FontAwesomeIcons.google, // FontAwesome icon
                            color: Color.fromRGBO(
                                106, 121, 213, 1.0), // Icon color
                            size: 25, // Icon size
                          ),
                        ),
                      ),

                      SizedBox(width: 10),

                      //facebook
                      Container(
                        width: 50, // Adjust the size as needed
                        height: 50, // Adjust the size as needed
                        decoration: BoxDecoration(
                          color: Colors.transparent, // Set the background color
                          shape: BoxShape
                              .circle, // Make the inner container circular
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape
                                .circle, // Make the outer container circular
                            border: Border.all(
                              color: Color.fromRGBO(
                                  106, 121, 213, 1.0), // Border color
                            ),
                          ),
                          child: Icon(
                            FontAwesomeIcons.facebookF, // FontAwesome icon
                            color: Color.fromRGBO(
                                106, 121, 213, 1.0), // Icon color
                            size: 25, // Icon size
                          ),
                        ),
                      ),

                      SizedBox(width: 10),

                      //twitter(X)
                      Container(
                        width: 50, // Adjust the size as needed
                        height: 50, // Adjust the size as needed
                        decoration: BoxDecoration(
                          color: Colors.transparent, // Set the background color
                          shape: BoxShape
                              .circle, // Make the inner container circular
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape
                                .circle, // Make the outer container circular
                            border: Border.all(
                              color: Color.fromRGBO(
                                  106, 121, 213, 1.0), // Border color
                            ),
                          ),
                          child: Icon(
                            FontAwesomeIcons.xTwitter, // FontAwesome icon
                            color: Color.fromRGBO(
                                106, 121, 213, 1.0), // Icon color
                            size: 25, // Icon size
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: height * 0.02),

                  //Already have an account?

                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(color: Colors.grey[500]),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign in',
                            style: TextStyle(
                                color: Color.fromRGBO(106, 121, 213, 1.0),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: height * 0.1,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
