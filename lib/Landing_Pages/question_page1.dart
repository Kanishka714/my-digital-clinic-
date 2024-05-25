import 'package:digital_clinic_final/Custom_Buttons/custom_buttom_2.dart';
import 'package:digital_clinic_final/Custom_Buttons/custom_button_1.dart';
import 'package:flutter/material.dart';

class QuestionPage1 extends StatefulWidget {
  const QuestionPage1({super.key});

  @override
  _QuestionPage1State createState() => _QuestionPage1State();
}

class _QuestionPage1State extends State<QuestionPage1> {
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
            Container(
              child: Column(
                children: [
                  Text(
                    "How many times a year\ndo you visit general\npractitioner?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.0),
                  //button 1
                  CustomButton2(
                    borderColor: Colors.white,
                    textColor: Colors.white,
                    fillColor: Colors.white24,
                    text: 'Once',
                    onPress: () => selectButton(0),
                    isSelected: selectedButtonIndex == 0,
                  ),
                  SizedBox(height: 10.0),
                  //button 2
                  CustomButton2(
                    borderColor: Colors.white,
                    textColor: Colors.white,
                    fillColor: Colors.white24,
                    text: 'More Than Once',
                    onPress: () => selectButton(1),
                    isSelected: selectedButtonIndex == 1,
                  ),
                  SizedBox(height: 10.0),
                  //button 3
                  CustomButton2(
                    borderColor: Colors.white,
                    textColor: Colors.white,
                    fillColor: Colors.white24,
                    text: 'Less Than Once',
                    onPress: () => selectButton(2),
                    isSelected: selectedButtonIndex == 2,
                  ),
                  SizedBox(height: height * 0.20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "QUESTION 1 OF 4",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.07),
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
            ),
          ],
        ),
      ),
    );
  }
}
