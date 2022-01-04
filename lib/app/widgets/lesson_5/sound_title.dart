import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SoundTitle extends StatelessWidget {
  const SoundTitle({Key key, 
    @required this.color,
    @required this.soundNumber,
  }) : super(key: key);

  final Color color;
  final String soundNumber;

  @override
  Widget build(BuildContext context) {

    final player = AudioCache();

    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        onPressed: () {
          player.play('notes/note$soundNumber.wav');
        },
        child: const Text(''),
      ),
    );
  }
}