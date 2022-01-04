import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kurs/screens/lesson_9/login_screen.dart';
import 'package:flutter_kurs/screens/lesson_9/registr_screen.dart';
import 'package:flutter_kurs/widgets/lesson_9/custom_elevated_button.dart';

class WelcomeScreen extends StatefulWidget {
   const WelcomeScreen({Key key}) : super(key: key);

  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation animation;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(animationController);

    animationController.forward();
    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      appBar: AppBar(
        backgroundColor: animation.value,
        title: const Text('Chat'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedTextKit(
            //   repeatForever: true,
            //   animatedTexts: [
            //     FlickerAnimatedText(
            //       'FLASH',
            //       textStyle: const TextStyle(
            //         fontSize: 32.0,
            //       ),
            //     ),
            //     FlickerAnimatedText(
            //       'CHAT',
            //       textStyle: const TextStyle(
            //         fontSize: 32.0,
            //       ),
            //     ),
            //   ],
            //   onTap: () {
            //     print("Tap Event");
            //   },
            // ),
            const SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    child: Image.asset('assets/images/chat/logo.png'),
                    height: 70.0,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      'Flash Chat',
                      textStyle: const TextStyle(
                        fontSize: 32.0,
                      ),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {
                   // print("Tap Event");
                  },
                ),
              ],
            ),
            const SizedBox(height: 25.0),
            const CustomElevatedButton(
              backgroundColor: Color(0xff41C3FF),
              buttonText: 'Login',
              screenRouteId: LoginScreen.id,
              horizontal: 130.0,
            ),
            const SizedBox(height: 25.0),
            const CustomElevatedButton(
              backgroundColor: Color(0xff4489FF),
              buttonText: 'Register',
              screenRouteId: RegisterScreen.id,
            ),
          ],
        ),
      ),
    );
  }
}