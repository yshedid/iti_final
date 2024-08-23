import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_final/helper/app_color.dart';
import 'package:iti_final/screens/categories/categoris-screen.dart';
import 'package:iti_final/screens/contant/contant_screen.dart';
import 'package:iti_final/screens/home_page/product_model.dart';
import 'package:iti_final/screens/home_page/product_provider.dart';
import 'package:iti_final/screens/profile/profile_screen.dart';
import 'package:iti_final/screens/us/about_us_screen.dart';

import 'home_page_content.dart';

class MainPageContent extends StatefulWidget {
  MainPageContent({super.key});

  @override
  State<MainPageContent> createState() => _HomePageChatState();
}

class _HomePageChatState extends State<MainPageContent> {
  int currentIdx = 2;
  List<Widget> screens = [
    const ProfilePage(),
    const CategoryPage(),
    HomePageContent(),
    const AboutUsScreen(),
    const ContantScreen()

  ];



  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Terarya Store'),
            Image.asset('assets/images/splash_android12_logo.png',width: 30,height: 30,),
          ],
        ),
        centerTitle: true,
      ),
      body: screens[currentIdx],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIdx,
          onTap: (newIdx){
          currentIdx = newIdx;
          setState(() {

          });
          },
          items: const [

        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        BottomNavigationBarItem(icon: Icon(Icons.category,), label: 'categories'),
        BottomNavigationBarItem(icon: Icon(Icons.home,), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.people_alt), label: 'US'),
        BottomNavigationBarItem(icon: Icon(Icons.add_alert_outlined,), label: 'content'),
      ]),
    );
  }
}
