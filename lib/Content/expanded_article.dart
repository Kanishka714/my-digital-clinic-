import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExpandedArticle extends StatelessWidget {
  const ExpandedArticle({super.key});

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
          SingleChildScrollView(
            child: Expanded(child: Column(
              children: [
                Row(
                  children: [
                    Text("Title"),
                  ],
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
