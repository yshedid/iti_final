import 'package:flutter/material.dart';
import 'package:iti_final/screens/categories/categoris-screen.dart';
import 'package:iti_final/screens/home_page/home_page.dart';
import 'package:iti_final/screens/profile/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPageContent()
    );
  }
}
