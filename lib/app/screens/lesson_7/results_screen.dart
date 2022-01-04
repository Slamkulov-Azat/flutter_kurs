
import 'package:flutter/material.dart';
import 'package:flutter_kurs/generated/l10n.dart';
import 'package:flutter_kurs/app/utilities/constants/app_colors.dart';
import 'package:flutter_kurs/app/utilities/constants/app_text_style.dart';
import 'package:flutter_kurs/app/widgets/lesson_7/bottom_buttons.dart';
import 'package:flutter_kurs/app/widgets/lesson_7/reusable_card.dart';


class ResultsPage extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  ResultsPage({Key key, 
    @required this.interpretation,
    @required this.bmiResult,
     @required this.resultText
  }) : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        centerTitle: true,
        title: const Text('7. BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: Text(
                S.of(context).yourResult,
                style: AppTextStyle.titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: AppColors.activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: AppTextStyle.resultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: AppTextStyle.BMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.bodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: S.of(context).bottomButtonTitle,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          
        ],
      ),
    );
  }
}
