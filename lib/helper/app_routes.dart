// import 'package:flutter/material.dart';

// class AppRouter {
//   Route generateRoute(RouteSettings settings){
//     //this arguments to be Pased in any screen like this arguments as 'class name '
//       // ignore: unused_local_variable
//       final arguments = settings.arguments;

//     switch (settings.name) {
//       case Routes.OnBoardingView:
//       return MaterialPageRoute(
//         builder: (_)=> const OnBoardingView(),
        
//         );
//         case Routes.loginScreen:
//         return MaterialPageRoute(builder: (_)=>const LoginScreen(),
//         );
//       default:
//       return MaterialPageRoute(builder: (_)=>Scaffold(
//         body: Text('no route states for ${settings.name}'),
//       ));
//     }
//   }
// }