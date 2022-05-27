import 'package:calc2/pages/home_screen.dart';
import 'package:calc2/pages/introscreen.dart';
import 'package:calc2/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Economy Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        '/intro': (context) => IntroScreen(),
        '/home': (context) => HomeScreen()
      },
    );
  }
}
