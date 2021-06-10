import 'package:animated_splash/Screens/Home.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        
        home: AnimatedSplashScreen(
          
          splashIconSize: 150,
          duration: 5000,
          splash: Column(
            children: [
              Image(
                height: 100,
                width: 100,
                image: AssetImage('Assets/images/train.gif')),

                AnimatedTextKit(
                  totalRepeatCount: 2,
                  animatedTexts: [
                  TyperAnimatedText('Toffee Ride',
                  textStyle: TextStyle(
                    color: Colors.pink[600]
                  )
                  )
                ]),
              
              // Text('Tofee Ride',
              // style: TextStyle(
              //   color: Colors.pink[600],
              //   fontFamily: 'SeymourOne-Regular',
              //   fontWeight: FontWeight.bold,
              //   fontSize: 30,
              // ),
              // )
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