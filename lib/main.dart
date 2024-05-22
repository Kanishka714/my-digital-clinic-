import 'package:digital_clinic_final/Custom_Buttons/custom_buttom_2.dart';
import 'package:digital_clinic_final/Custom_Buttons/custom_button_1.dart';
import 'package:digital_clinic_final/Custom_Buttons/custom_button_3.dart';
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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isRadioSelected = false;

  void _toggleRadioButton() {
    setState(() {
      isRadioSelected = !isRadioSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      backgroundColor: Colors.pink,
      body: Center(
        child: CustomButton2(
          borderColor: Colors.white,
          textColor: Colors.white,
          fillColor: Colors.white38,
          text: 'Click Me',
          onPress: _toggleRadioButton,
          isSelected: isRadioSelected,
        ),
      ),
    );
  }
}