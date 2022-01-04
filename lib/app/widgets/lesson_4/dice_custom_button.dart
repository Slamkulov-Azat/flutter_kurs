import 'package:flutter/material.dart';

class DiceCustomButton extends StatelessWidget {
  const DiceCustomButton({
    @required this.diceNumber, 
    @required  this.updateDices,
    Key key, 
    
  }) : super(key: key);

  final int diceNumber;
  final VoidCallback updateDices;

  @override
  Widget build(BuildContext context) {
    return Expanded(
              child: GestureDetector(
                onTap: updateDices,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('assets/images/lesson_4/dice$diceNumber.png'),
                ),
              ),
            );
  }
}