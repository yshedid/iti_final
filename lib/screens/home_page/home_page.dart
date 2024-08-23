import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_final/screens/categories/categoris-screen.dart';
import 'package:iti_final/screens/home_page/product_model.dart';
import 'package:iti_final/screens/home_page/product_provider.dart';
import 'package:iti_final/screens/profile/profile_screen.dart';

import 'home_page_content.dart';

class MainPageContent extends StatefulWidget {
  MainPageContent({super.key});

  @override
  State<MainPageContent> createState() => _HomePageChatState();
}

class _HomePageChatState extends State<MainPageContent> {
  int currentIdx = 1;
  List<Widget> screens = [
    const ProfilePage(),
    HomePageContent(),
    const CategoryPage(),
  ];



  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
      ),
      body: screens[currentIdx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIdx,
          onTap: (newIdx){
          currentIdx = newIdx;
          setState(() {

          });
          },
          items: const [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.category), label: 'categories'),
      ]),
    );
  }
}
