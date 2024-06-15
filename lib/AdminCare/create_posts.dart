import 'package:digital_clinic_final/Custom_Buttons/custom_button_1.dart';
import 'package:flutter/material.dart';

class CreatePosts extends StatelessWidget {
  const CreatePosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton1(
              borderColor: Colors.red,
              textColor: Colors.black,
              fillColor: Colors.white,
              text: 'Add Article',
              onPress: () {
              },
            ),
            SizedBox(height: 20), // Add some spacing between buttons
            CustomButton1(
              borderColor: Colors.red,
              textColor: Colors.black,
              fillColor: Colors.white,
              text: 'Add Doctor',
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
