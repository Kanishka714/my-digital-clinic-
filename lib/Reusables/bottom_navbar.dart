import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return GNav(
      tabs: [
        GButton(
          icon: Icons.home_outlined,
          iconSize: 37,
          iconColor: Color.fromRGBO(106, 121, 213, 1.0),
        ),
        GButton(
          icon: FontAwesomeIcons.message,
          iconColor: Color.fromRGBO(106, 121, 213, 1.0),
        ),
        GButton(
          icon: FontAwesomeIcons.stethoscope,
          iconColor: Color.fromRGBO(106, 121, 213, 1.0),
        ),
        GButton(
          icon: FontAwesomeIcons.calendar,
          iconColor: Color.fromRGBO(106, 121, 213, 1.0),
        ),
        GButton(
          icon: FontAwesomeIcons.user,
          iconColor: Color.fromRGBO(106, 121, 213, 1.0),
        ),
      ],
    );
  }
}