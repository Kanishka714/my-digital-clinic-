import 'package:digital_clinic_final/AdminCare/add_article.dart';
import 'package:digital_clinic_final/AdminCare/add_user.dart';
import 'package:digital_clinic_final/AdminCare/create_posts.dart';
import 'package:digital_clinic_final/Content/booking.dart';
import 'package:digital_clinic_final/Content/clinic.dart';
import 'package:digital_clinic_final/Content/doctors.dart';
import 'package:digital_clinic_final/Content/expanded_article.dart';
import 'package:digital_clinic_final/Content/home_page.dart';
import 'package:digital_clinic_final/Content/my_doctors.dart';
import 'package:digital_clinic_final/Content/profile.dart';
import 'package:digital_clinic_final/Content/related_articles.dart';
import 'package:digital_clinic_final/Content/specialities.dart';
import 'package:digital_clinic_final/Content/test_dactor.dart';
import 'package:digital_clinic_final/Custom_Buttons/custom_buttom_2.dart';
import 'package:digital_clinic_final/Custom_Buttons/custom_button_1.dart';
import 'package:digital_clinic_final/Custom_Buttons/custom_button_3.dart';
import 'package:digital_clinic_final/Custom_Buttons/custom_button_4.dart';
import 'package:digital_clinic_final/Landing_Pages/question_page1.dart';
import 'package:digital_clinic_final/Landing_Pages/question_page2.dart';
import 'package:digital_clinic_final/Landing_Pages/question_page3.dart';
import 'package:digital_clinic_final/Landing_Pages/welcome_page.dart';
import 'package:digital_clinic_final/Login_and_Signup/login_page.dart';
import 'package:digital_clinic_final/Login_and_Signup/new_password.dart';
import 'package:digital_clinic_final/Login_and_Signup/reset_code.dart';
import 'package:digital_clinic_final/Login_and_Signup/reset_password.dart';
import 'package:digital_clinic_final/Login_and_Signup/signup_page.dart';
import 'package:digital_clinic_final/Reusables/calender.dart';
import 'package:digital_clinic_final/firebase_options.dart';
import 'package:digital_clinic_final/navigation_menu.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Clinic(),
      routes: {
        '/home': (context) => const HomePage(),
        '/doctors': (context) => const DoctorsPage(),
        '/profile': (context) => const Profile(),
        '/related_articles': (context) => const RelatedArticles(),
        '/specialisties': (context) => const Specialities(),
        '/clinic': (context) => const Clinic(),
      },
    );
  }
}

