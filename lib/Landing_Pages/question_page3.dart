import 'package:digital_clinic_final/Custom_Buttons/custom_button_1.dart';
import 'package:digital_clinic_final/Custom_Buttons/custom_button_3.dart';
import 'package:flutter/material.dart';

class QuestionPage3 extends StatefulWidget {
  const QuestionPage3({super.key});

  @override
  _QuestionPage3State createState() => _QuestionPage3State();
}

class _QuestionPage3State extends State<QuestionPage3> {
  int? selectedButtonIndex;

  void selectButton(int index) {
    setState(() {
      selectedButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(106, 121, 213, 1.0),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Skip", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            SizedBox(height: height * 0.15),
            Expanded(
              child: Column(
                children: [
                  Text(
                    "Do you have a chronic\ncondition?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Button 1
                      CustomButton3(
                        borderColor: Colors.white,
                        textColor: Colors.white,
                        fillColor: Colors.white24,
                        text: 'No',
                        onPress: () => selectButton(0),
                        isSelected: selectedButtonIndex == 0,
                      ),
                      // Button 2
                      CustomButton3(
                        borderColor: Colors.white,
                        textColor: Colors.white,
                        fillColor: Colors.white24,
                        text: 'Yes',
                        onPress: () => selectButton(1),
                        isSelected: selectedButtonIndex == 1,
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "QUESTION 2 OF 4",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: height * 0.02), // Adjust the spacing as needed
                      CustomButton1(
                        text: "NEXT",
                        fillColor: Colors.white,
                        textColor: Color.fromRGBO(106, 121, 213, 1.0),
                        borderColor: Colors.transparent,
                        onPress: () {
                          // Define your onPress function here
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02), // Space to position the button at 20% of screen height
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
