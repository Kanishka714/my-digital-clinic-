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
            Center(child: Text("Details Tab")),
            Center(child: Text("Finish Tab")),
            Center(child: Text("Finish Tab")),
          ],
        ),
      ),
    );
  }
}
