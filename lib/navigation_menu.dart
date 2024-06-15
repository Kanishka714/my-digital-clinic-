import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(
          icon: GestureDetector(
            child: Icon(FontAwesomeIcons.home),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          label: 'Home',
        ),
        NavigationDestination(
          icon: GestureDetector(
            child: Icon(FontAwesomeIcons.message),
            onTap: () {
              Navigator.pushNamed(context, '/chat');
            },
          ),
          label: 'Chat',
        ),
        NavigationDestination(
          icon: GestureDetector(
            child: Icon(FontAwesomeIcons.stethoscope),
            onTap: () {
              Navigator.pushNamed(context, '/doctors');
            },
          ),
          label: 'Doctors',
        ),
        NavigationDestination(
          icon: GestureDetector(
            child: Icon(FontAwesomeIcons.calendarAlt),
            onTap: () {
              Navigator.pushNamed(context, '/calendar');
            },
          ),
          label: 'Calendar',
        ),
        NavigationDestination(
          icon: GestureDetector(
            child: Icon(FontAwesomeIcons.user),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
