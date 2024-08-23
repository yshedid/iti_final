import 'package:flutter/material.dart';
import 'package:iti_final/helper/app_color.dart';
import 'package:iti_final/onboarding/on_boarding_view.dart';

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
     Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) => const OnBoardingView(),
  ),
);
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
