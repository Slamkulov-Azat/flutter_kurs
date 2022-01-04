import 'package:flutter/material.dart';
import 'package:flutter_kurs/providers/lesson_4_provider.dart';
import 'package:flutter_kurs/widgets/custom_app_bar.dart';
import 'package:flutter_kurs/widgets/lesson_4/dice_custom_button.dart';
import 'package:provider/provider.dart';

class DicePage extends StatelessWidget {
  const DicePage({Key key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Consumer<Lesson4Provider>(
      builder: (context, provider, snapshot) {
        return Scaffold(
      //backgroundColor: Colors.red,
      appBar: CustomAppBar('4. Dice', textColor: Colors.white),
      body: Center(
        child: Row(
          children: [
            DiceCustomButton(
              diceNumber: provider.leftDiceNumber, 
              updateDices: () => provider.updateDices(),
            ),
            DiceCustomButton(
              diceNumber: provider.rightDiceNumber, 
              updateDices: () => provider.updateDices(),
            ),
          ],
        ),
      ),
    );
      });
  }
}          