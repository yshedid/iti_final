import 'package:flutter/material.dart';
import 'package:iti_final/helper/app_color.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'About Us',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                'We are students in the Faculty of Computers and Information, Mansoura University. We are studying in the fourth year. We are designing this project for ITI , We are mobile application developers using the framework filters. We thank ITI Engineer Adham El-Naggar for all the extensive information and the great deal of interaction.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),
              const Text(
                'Contact Us',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Row(
                children: [],
              ),
              _buildContactItem(Icons.phone, '01012229627', 'Yousef Elkholy'),
              _buildContactItem(Icons.phone, '01126459846', 'Yousef Shedid'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.facebook,
                          color: myBlue,
                        ),
                        onPressed: () {
                          
                        },
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.link,
                          color: myBlue,
                        ),
                        onPressed: () {
                         
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.facebook,
                          color: myBlue,
                        ),
                        onPressed: () {
                          // TODO: Implement Facebook link
                        },
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.link,
                          color: myBlue,
                        ),
                        onPressed: () {
                          // TODO: Implement website link
                        },
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'Developed By',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Expanded(
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/Yousef_Elkholy.jpg'),
                      radius: 30,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text('Yousef Elkholy', style: TextStyle(fontSize: 15)),
                  Expanded(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/shedid.jpg',
                      ),
                      radius: 30,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text('Yousef Shedid', style: TextStyle(fontSize: 15)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String number, String name) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: myBlue,
          ),
          Text(number, style: const TextStyle(fontSize: 15)),
          const Spacer(flex: 1,),
          Text(name, style: const TextStyle(fontSize: 17)),
          Spacer(flex: 2,)
        ],
      ),
    );
  }
}
