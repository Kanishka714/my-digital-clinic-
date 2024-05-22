import 'package:digital_clinic_final/Custom_Buttons/custom_buttom_2.dart';
import 'package:digital_clinic_final/Custom_Buttons/custom_button_1.dart';
import 'package:digital_clinic_final/Custom_Buttons/custom_button_3.dart';
import 'package:digital_clinic_final/Custom_Buttons/custom_button_4.dart';
import 'package:digital_clinic_final/Login_and_Signup/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}

