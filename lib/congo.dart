import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:confetti/confetti.dart';
class GreetingPage extends StatefulWidget {
  const GreetingPage({Key? key}) : super(key: key);

  @override
  State<GreetingPage> createState() => _GreetingPageState();
}

class _GreetingPageState extends State<GreetingPage> {
  bool isPlaying = false;
  final controller = ConfettiController();
  @override
  void dispose(){
    super.dispose();
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children:[ Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white60,
        ),
        body: Column(
          children: [MaterialButton(onPressed: (){
            if(isPlaying){
              controller.stop();
            }
            else {
              controller.play();
            }
            isPlaying=!isPlaying;
          },
          child: Text('Click here to Celebrate!',style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),),
          color: Colors.greenAccent),
            SizedBox(height: 275),
            Center(
              child:
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('  Congratulations User  ',textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo,
                    ),
                    speed: Duration(milliseconds: 100)),
                    TyperAnimatedText(' Your account',textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo
                    ),
                        speed: Duration(milliseconds: 100)),

                    TyperAnimatedText('is successfully created!!!!  ',textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo
                    ),
                        speed: Duration(milliseconds: 100))
                  ],
                ),
              ),
          ],
        )
        ),

        ConfettiWidget(confettiController: controller,
        gravity: 0.05,
        emissionFrequency: 0.02,)
    ]
    );
  }
}
