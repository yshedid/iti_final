import 'package:flutter/material.dart';
import 'package:iti_final/helper/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  
  static String id =  'SplashScreen';




  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamed('OnBoardingView');
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:myWhithe,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
               
               Image.asset('assets/images/splash_android12_logo.png',width: 300,height: 300,)
          ],
        ),
      )
    );
  }
}
