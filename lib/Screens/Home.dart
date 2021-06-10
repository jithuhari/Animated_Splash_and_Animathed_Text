import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: Container(
        child:  Column(
            children: [

              SizedBox(
                height: 100,
                child: Column(
                    children: [
                    
                    Center(
                    child: Text('Rotate Animation Sample'),  
                    ),

                     SizedBox(height: 10,),
                    AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts:[
                  
                  RotateAnimatedText('Helloooo' , textStyle: TextStyle(color: Colors.pink)),
                  RotateAnimatedText('How Are You' , textStyle: TextStyle(color: Colors.pink)),
                  RotateAnimatedText('This Is New Animation Page' , textStyle: TextStyle(color: Colors.pink))
                ]
                ),

                ],
                ),
              ),
             

                

                SizedBox(
                  height: 150,
                  child: Column(
                  children: [
                  Center(
                  child: Text('Fade Animation Sample'),
                ),

                 SizedBox(height: 10,),

                AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                  FadeAnimatedText('Hello'),
                  FadeAnimatedText('Hello How'),
                  FadeAnimatedText('Hello How Are'),
                  FadeAnimatedText('Hello How Are You'),

                ])


              ],
                  ),
                ),

              SizedBox(
                height: 100,
              child: Column(
                children: [
                  Center(
                  child: Text('Fade Animation Sample'),
                ),

                   AnimatedTextKit(
                  //isRepeatingAnimation: false,
                  repeatForever: true,
                  animatedTexts: [
                    
                  TyperAnimatedText(
                    'Hello This is A type animated text',
                    textStyle: TextStyle(
                      color: Colors.pink[700],
                      fontFamily: 'SeymourOne-Regular',
                      fontSize: 25
                    ),
                    speed: Duration(milliseconds: 150),
                    
                    ),
                  

                ])

                ],
              ),
              ),


              Center(child: Text('Liquid Fil Animation'),),
              

              TextLiquidFill(
              text: 'LIQUIDY',
              waveColor: Colors.blueAccent,
              boxBackgroundColor: Colors.redAccent,
              textStyle: TextStyle(
              fontSize: 80.0,
              fontWeight: FontWeight.bold,
              ),
              boxHeight: 150.0,
              )
             

              // Text('Tofee Ride',
              // style: TextStyle(
              //   color: Colors.pink[600],
              //   fontFamily: 'SeymourOne-Regular',
              //   fontWeight: FontWeight.bold,
              //   fontSize: 30,
              //   //fontStyle: FontStyle.italic
              // ),
              // )
            ],
          ),
      ),
      
    );
  }
}