import 'package:digital_clinic_final/Custom_Buttons/custom_button_1.dart';
import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  List<DateTime?> _dates = [DateTime.now()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CalendarDatePicker2(
              config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.single,
              ),
              value: _dates,
              onValueChanged: (dates) => setState(() {
                _dates = dates;
              }),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 30.0,top: 20),
            child: Text("Available Time", style: TextStyle(fontWeight: FontWeight.bold),),
          ),

          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(106, 121, 213, 1.0), // Fill color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Rectangular shape
                  ),
                ),
                child: Text("13.00", style: TextStyle(color: Colors.white),),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(106, 121, 213, 1.0), // Fill color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Rectangular shape
                  ),
                ),
                child: Text("13.30", style: TextStyle(color: Colors.white),),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(106, 121, 213, 1.0), // Fill color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Rectangular shape
                  ),
                ),
                child: Text("14.00", style: TextStyle(color: Colors.white),),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(106, 121, 213, 1.0), // Fill color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Rectangular shape
                  ),
                ),
                child: Text("14.30", style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(106, 121, 213, 1.0), // Fill color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Rectangular shape
                  ),
                ),
                child: Text("15.00", style: TextStyle(color: Colors.white),),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(106, 121, 213, 1.0), // Fill color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Rectangular shape
                  ),
                ),
                child: Text("15.30", style: TextStyle(color: Colors.white),),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(106, 121, 213, 1.0), // Fill color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Rectangular shape
                  ),
                ),
                child: Text("16.00", style: TextStyle(color: Colors.white),),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(106, 121, 213, 1.0), // Fill color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Rectangular shape
                  ),
                ),
                child: Text("16.30", style: TextStyle(color: Colors.white),),
              ),
            ],
          ),

          SizedBox(height: 70),

          //next button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton1(
                  borderColor: Color.fromRGBO(106, 121, 213, 1.0),
                  textColor: Colors.white,
                  fillColor: Color.fromRGBO(106, 121, 213, 1.0),
                  text: 'NEXY',
                  onPress: (){}),
            ],
          ),
        ],
      ),
    );
  }
}
