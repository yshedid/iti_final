import 'package:flutter/material.dart';
import 'package:iti_final/helper/app_color.dart';
import 'package:iti_final/login/register_screen.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const RegestrScreeen(),
          ),
        );
      },
      child: const Text(
        'Skip',
        style: TextStyle(color: myGray, fontSize: 18),
      ),
    );
  }
}
