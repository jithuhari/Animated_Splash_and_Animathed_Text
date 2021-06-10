import 'package:animated_splash/Screens/Home.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
          duration: 3000,
          splash: Column(
            children: [
              Text('Tofee Ride',
              style: TextStyle(
                color: Colors.pink[600],
                fontFamily: 'SeymourOne-Regular',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              )
            ],
          ),
          nextScreen: Home(),
          splashTransition: SplashTransition.scaleTransition,
          pageTransitionType: PageTransitionType.rightToLeft,
          backgroundColor: Colors.white
        )
    );
  }
}