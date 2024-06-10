import 'package:digital_clinic_final/Custom_Buttons/custom_button_1.dart';
import 'package:digital_clinic_final/Custom_Buttons/custom_button_3.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  bool _type1Checked = false;
  bool _type2Checked = false;
  String? _selectedInsuranceOption = "Select one";

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: AppBar(
            leading: Icon(Icons.arrow_back),
            title: Text(
              'Booking',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "1.TIME",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Tab(
                  child: Text(
                    "2.DETAILS",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Tab(
                  child: Text(
                    "3.FINISH",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            // Time tab
            Center(child: Text("Time Tab")),

            // Details tab
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Set type of visit",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: _type1Checked,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onChanged: (bool? value) {
                          setState(() {
                            _type1Checked = value ?? false;
                          });
                        },
                      ),
                      Text(
                        "Video Call",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: _type2Checked,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onChanged: (bool? value) {
                          setState(() {
                            _type2Checked = value ?? false;
                          });
                        },
                      ),
                      Text(
                        "Audio Call",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Do you have Insurance?",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: DropdownButtonFormField<String>(
                      value: _selectedInsuranceOption,
                      items: [
                        DropdownMenuItem(
                          value: "Select one",
                          child: Text("Select one"),
                        ),
                        DropdownMenuItem(
                          value: "Yes",
                          child: Text("Yes"),
                        ),
                        DropdownMenuItem(
                          value: "No",
                          child: Text("No"),
                        ),
                      ],
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedInsuranceOption = newValue!;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You may upload related EHR files, if you wish",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "These files will only be available for your doctor",
                          style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Have you visit this doctor before",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: _type1Checked,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onChanged: (bool? value) {
                          setState(() {
                            _type1Checked = value ?? false;
                          });
                        },
                      ),
                      Text(
                        "Yes",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: _type2Checked,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onChanged: (bool? value) {
                          setState(() {
                            _type2Checked = value ?? false;
                          });
                        },
                      ),
                      Text(
                        "No",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Payment Process",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: _type1Checked,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onChanged: (bool? value) {
                          setState(() {
                            _type1Checked = value ?? false;
                          });
                        },
                      ),
                      Text(
                        "After Visit",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: _type2Checked,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onChanged: (bool? value) {
                          setState(() {
                            _type2Checked = value ?? false;
                          });
                        },
                      ),
                      Text(
                        "Before Visit",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.01),
                  CustomButton1(
                    text: "NEXT",
                    fillColor: Color.fromRGBO(106, 121, 213, 1.0),
                    textColor: Colors.white,
                    borderColor: Colors.transparent,
                    onPress: () {
                      // Define your onPress function here
                    },
                  ),
                ],
              ),
            ),

            // Finish tab
            Center(child: Text("Finish Tab")),
          ],
        ),
      ),
    );
  }
}
