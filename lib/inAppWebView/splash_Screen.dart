import 'package:advance_flutter_ch3/inAppWebView/web_Screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Color(0xffF7F5C9),
      splash: Image.asset('assets/images/images-removebg-preview.png'),
      splashIconSize: 300,
      nextScreen: WebScreen(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      duration: 3000,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: const Center(
        child: Text("Welcome to Home Screen!"),
      ),
    );
  }
}
