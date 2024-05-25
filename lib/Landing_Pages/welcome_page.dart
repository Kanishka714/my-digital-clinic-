import 'package:digital_clinic_final/Custom_Buttons/custom_button_1.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(
          106, 121, 213, 1.0),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:35.0,right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Skip",style: TextStyle(color: Colors.white),),
                ],
              ),
            ),

            SizedBox(height: height * 0.15,),

            Container(
              child: Column(
                children: [
                  Icon(
                    Icons.local_hospital,
                    size: 96.0,
                    color: Colors.white,
                  ),

                  SizedBox(height: height * 0.08,),

                  Text("Welcome!", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28.0, color: Colors.white),),
                  SizedBox(height: 10.0),
                  Text("We want to know someone personal info\nabout you to provide you with more\npersonalised data", style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,),


                  SizedBox(height: height * 0.33,),

                  CustomButton1(
                    text: "LET'S GO",
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
