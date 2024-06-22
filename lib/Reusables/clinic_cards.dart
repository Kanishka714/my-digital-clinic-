import 'package:flutter/material.dart';

class ClinicCard extends StatelessWidget {
  const ClinicCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 12.0),
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 35),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(40),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage('https://via.placeholder.com/70'),
                          ),
                        ),
                      ),
                      SizedBox(width: 25),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Physiotherapy",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.assistant_navigation, color: Colors.grey,),
                                Text(
                                  "45km away",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 5,),

                Container(
                  child: Divider(
                    color: Colors.grey, // The color of the line
                    thickness: 1.0, // The thickness of the line
                    indent: 16.0, // The left indent of the line
                    endIndent: 16.0, // The right indent of the line
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 15, top: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined, color: Color.fromRGBO(106, 121, 213, 1.0), size: 35),
                          SizedBox(width: 5),
                          Text(
                            "987 Baslair Drive Suite 420",
                            style: TextStyle(color: Color.fromRGBO(106, 121, 213, 1.0), fontSize: 18),
                          ),
                          SizedBox(width: 60),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                height: 30,
                width: 60,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star_rounded, color: Color.fromRGBO(106, 121, 213, 1.0), size: 26),
                    Text(
                      "4.7",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromRGBO(106, 121, 213, 1.0)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}