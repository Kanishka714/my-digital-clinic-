import 'package:flutter/material.dart';

class MyDoctors extends StatelessWidget {
  const MyDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final blueHeight = height * 1.1 / 5; // Height for blue color

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: blueHeight,
                    color: Color.fromRGBO(106, 121, 213, 1.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 33, left: 20.0),
                          child: Row(
                            children: [
                              Text(
                                "My Doctors",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search by category',
                              hintStyle: TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.white24,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              suffixIcon: Icon(Icons.search, color: Colors.white),
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      //bottomNavigationBar: NavigationMenu(), // Correctly placed bottom navigation bar
    );
  }
}
