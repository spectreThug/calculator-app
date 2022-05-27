import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:calc2/pages/introscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/logo.png',
      nextScreen: IntroScreen(),
      backgroundColor: const Color(0xff0a0e20),
      duration: 2500,
      splashIconSize: MediaQuery.of(context).size.height * 0.3,
      curve: Curves.easeInCirc,
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
