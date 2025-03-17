import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animatedsplashscreen/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Center(
            child:
                LottieBuilder.asset("assets/lottie/cash_animated_splash_screen.json"),
          )
        ],
      ),
      nextScreen: MyHomePage(title: "Home Page"),
      splashIconSize: 200,
      backgroundColor: Colors.white,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      duration: 4000,
    );
  }
}
