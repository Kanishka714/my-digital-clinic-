import 'package:digital_clinic_final/Custom_Buttons/custom_button_1.dart';
import 'package:digital_clinic_final/Custom_Buttons/custom_button_4.dart';
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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: CustomButton4(
          borderColor: Colors.blue,
          textColor: Colors.white,
          fillColor: Colors.blueAccent,
          text: 'Click Me',
          onPress: () {
            // Define your onPressed functionality here
            print('Button Pressed');
          },
        ),
      ),
    );
  }
}
