import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorsCards extends StatelessWidget {
  final String name;
  final String title;
  final String? location;

  const DoctorsCards({
    Key? key,
    required this.name,
    required this.title,
    this.location,
  }) : super(key: key);

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
                            image: NetworkImage(
                              "https://lovelytelugu.com/wp-content/uploads/2023/06/bhani-tripathi-girl-friend-restaurantthumb.jpg",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 25),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                          Text(title, style: TextStyle(color: Colors.grey)),
                          Text(location ?? 'Location not specified', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.video_camera_back, color: Color.fromRGBO(106, 121, 213, 1.0), size: 35,),
                          SizedBox(width: 5),
                          Text("Video Visit", style: TextStyle(color: Color.fromRGBO(106, 121, 213, 1.0), fontSize: 18)),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(106, 121, 213, 1.0),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(
                              Icons.calendar_month_outlined,
                              color: Color.fromRGBO(106, 121, 213, 1.0),
                              size: 35,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(106, 121, 213, 1.0),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(
                              Icons.chat,
                              color: Color.fromRGBO(106, 121, 213, 1.0),
                              size: 35,
                            ),
                          ),
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
                    Icon(Icons.star_rounded, color: Color.fromRGBO(106, 121, 213, 1.0), size: 26,),
                    Text("4.7", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromRGBO(106, 121, 213, 1.0))),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 5,
              child: Container(
                height: 35,
                width: 25,
                child: Column(
                  children: [
                    Icon(Icons.bookmark_border, size: 35, color: Color.fromRGBO(106, 121, 213, 1.0)),
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
