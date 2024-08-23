import 'package:flutter/material.dart';
import 'package:iti_final/login/login_screeen.dart';
import 'package:iti_final/login/register_screen.dart';
import 'package:iti_final/onboarding/on_boarding_view.dart';
import 'package:iti_final/screens/home_page/home_page.dart';
import 'package:iti_final/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home:  SplashScreen()
    );
  }
}
