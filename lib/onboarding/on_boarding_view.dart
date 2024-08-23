import 'package:flutter/material.dart';
import 'package:iti_final/helper/app_color.dart';
import 'package:iti_final/onboarding/on_boarding_item.dart';
import 'package:iti_final/onboarding/widget/skip_button.dart';

class OnBoardingView extends StatefulWidget {
  static String id = 'OnBoardingView';

  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final controler = OnBoardingItem();
  final pageController = PageController();
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void _goToNextPageOrRegister() {
    if (currentPageIndex < controler.items.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      
      Navigator.of(context).pushNamed('RegestrScreeen');
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myWhithe,
      appBar: AppBar(
        backgroundColor: myWhithe,
        actions: const [
          SkipButton(),
        ],
      ),
      body: PageView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(controler.items[index].image),
                      const SizedBox(height: 15),
                      Text(
                        controler.items[index].title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: myBlack,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 50),
                      Text(
                        controler.items[index].description,
                        style: const TextStyle(
                          color: myGray,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      // Dots indicator
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          controler.items.length,
                          (i) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: i == currentPageIndex ? myBlue : myGray,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Next button
                      SizedBox(
                        width: double.infinity,
                        height: 54,
                        child: FloatingActionButton(
                          onPressed: _goToNextPageOrRegister,
                          child: Text(
                            currentPageIndex == controler.items.length - 1 ? 'Get Started' : 'Next',
                            style:   const TextStyle(color: Colors.white),
                          ),
                          backgroundColor: myBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        controller: pageController,
        itemCount: controler.items.length,
      ),
    );
  }
}