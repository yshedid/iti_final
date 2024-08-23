import 'package:flutter/material.dart';
import 'package:iti_final/helper/app_color.dart';
import 'package:iti_final/onboarding/widget/bulid_text_fromfield.dart';
import 'package:iti_final/onboarding/widget/social_button.dart';


class LoginScreeen extends StatefulWidget {
  const LoginScreeen({super.key});
  static String id = 'LoginScreeen';

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreeen createState() => _LoginScreeen();
}

class _LoginScreeen extends State<LoginScreeen> {
  bool agreeToTerms = false;

  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myWhithe,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              const SizedBox(height: 10,),
               const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  'Begin learning with just a few clicks',
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                const SizedBox(height: 16),
                const BuildTextFromfield(label: 'Email',hint:  'Email Address'),
                const SizedBox(height: 16),
                const BuildTextFromfield(label: 'Password',hint:  'New Password', isPassword: true),
                const SizedBox(height: 16),
                Row(
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Checkbox(
                        activeColor: myBlue,
                        value: agreeToTerms,
                        onChanged: (value) {
                          setState(() {
                            agreeToTerms = value!;
                          });
                        },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text('I agree to the terms & conditions', style: TextStyle(fontSize: 14)),
                  ],
                ),
               const SizedBox(height: 24),
                ElevatedButton(
                  // ignore: sort_child_properties_last
                  child: const Text('Sign In', style: TextStyle(fontSize: 16)),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: myWhithe,
                    backgroundColor: myBlue,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
               const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey[300])),
                    const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text('Or', style: TextStyle(color: myBlack, fontSize: 14)),
                    ),
                    const Expanded(child: Divider(color: myGray)),
                  ],
                ),
               const SizedBox(height: 24),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialButton('assets/images/apple.jpg'),
                     const SizedBox(width: 20),
                     socialButton('assets/images/google.jpg'),
                     const SizedBox(width: 20),
                    socialButton('assets/images/facebook.jpg',),
                  ],
                ),
               const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text('Already Have An Account?', style: TextStyle(color: Colors.grey[600], fontSize: 14)),
                    TextButton(
                      child:const Text('Register', style: TextStyle(color: myBlue, fontWeight: FontWeight.bold)),
                      onPressed: ()
                       {
                        Navigator.of(context).pushNamed('RegestrScreeen');
                       },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}