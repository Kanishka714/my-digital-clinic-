import 'package:digital_clinic_final/Reusables/doctorscards.dart';
import 'package:flutter/material.dart';

class TestDoc extends StatelessWidget {
  const TestDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DoctorsCards(
          name: 'Kanishka',
          position: 'OPD',
          location: 'Kirindiwela',
          //imageUrl: "",
        ),
      ),
    );
  }
}
