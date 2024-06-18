import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import for Firestore

class ExpandedArticle extends StatelessWidget {
  final QueryDocumentSnapshot article; // Declare the article variable

  const ExpandedArticle({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.3,
            width: double.infinity,
            color: const Color.fromRGBO(106, 121, 213, 1.0),
            child: Padding(
              padding: EdgeInsets.only(top: height * 0.18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Heart icon container
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white30,
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.heart,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  // Bookmark icon container
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white30,
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.bookmark,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  // Share icon container
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white30,
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.shareNodes,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          article['title'],
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          article['timestamp'].toDate().toString().substring(0, 10),
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Image.network(article['imageUrl']),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      article['description'],
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}