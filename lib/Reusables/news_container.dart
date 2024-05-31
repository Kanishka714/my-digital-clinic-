import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  final String date;
  final String title;
  final String description;
  final String imageUrl;
  final String orientation; // New parameter for orientation

  const NewsContainer({
    Key? key,
    required this.date,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.orientation, // Updated constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double containerWidth = orientation == 'vertical' ? 360.0 : 300.0;

    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0,bottom: 12.0),
      child: Container(
        height: 170,
        width: containerWidth, // Use dynamic width
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 8.0),
                    child: Text(
                      date,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, top: 8.0),
                    child: Icon(
                      Icons.bookmark_border,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.white,
                    ),
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
