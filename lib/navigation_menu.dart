import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(FontAwesomeIcons.home), label: 'Home'),
          NavigationDestination(icon: Icon(FontAwesomeIcons.comment), label: 'Chat'),
          NavigationDestination(icon: Icon(FontAwesomeIcons.stethoscope), label: 'Doctors'),
          NavigationDestination(icon: Icon(FontAwesomeIcons.calendarAlt), label: 'Calender'),
          NavigationDestination(icon: Icon(FontAwesomeIcons.user), label: 'Profile'),
        ],
      ),
    );
  }
}
