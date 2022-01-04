import 'package:flutter/material.dart';
import 'package:flutter_kurs/widgets/custom_app_bar.dart';
import 'package:flutter_kurs/widgets/lesson_5/sound_title.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          '5. Xylophone', 
          textColor: Colors.white, 
          backgroundColor: Colors.black 
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            SoundTitle(color: Colors.red, soundNumber: '1'),
            SoundTitle(color: Colors.orange, soundNumber: '2'),
            SoundTitle(color: Colors.yellow, soundNumber: '3'),
            SoundTitle(color: Colors.green, soundNumber: '4'),
            SoundTitle(color: Colors.teal, soundNumber: '5'),
            SoundTitle(color: Colors.blue, soundNumber: '6'),
            SoundTitle(color: Colors.purple, soundNumber: '7'),
          ],
        ),       
      ),
    );
  }
}