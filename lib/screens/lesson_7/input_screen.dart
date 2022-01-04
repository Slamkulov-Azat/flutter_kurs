import 'package:flutter/material.dart';
import 'package:flutter_kurs/generated/l10n.dart';
import 'package:flutter_kurs/providers/lesson_7_provider.dart';
import 'package:flutter_kurs/utilities/constants/app_colors.dart';
import 'package:flutter_kurs/utilities/constants/app_text_style.dart';
import 'package:flutter_kurs/repositories/lesson_7/calculator_repo.dart';
import 'package:flutter_kurs/screens/lesson_7/results_screen.dart';
import 'package:flutter_kurs/widgets/lesson_7/bottom_buttons.dart';
import 'package:flutter_kurs/widgets/lesson_7/gender_card_widget.dart';
import 'package:flutter_kurs/widgets/lesson_7/parameters_card_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Consumer<Lesson7Provider>(
      builder: (context, provider, snapshot) {
        return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        centerTitle: true,
        title: const Text('7. BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                GenderCardWidget(
                  onPressed: () => provider.genderMale(),
                  color: provider.selectedGenderMale(),
                  genderIcon: FontAwesomeIcons.mars,
                  text: S.of(context).gendeMale
                ),
                GenderCardWidget(
                  onPressed: () =>  provider.genderFemale(),
                  color: provider.selectedGenderFemale(),
                  genderIcon: FontAwesomeIcons.venus,
                  text: S.of(context).genderFemale
                ),
              ],
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      S.of(context).height,
                      style: AppTextStyle.labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          provider.height.toString(),
                          style: AppTextStyle.numberTextStyle,
                        ),
                        const Text(
                          '  см',
                          style: AppTextStyle.labelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: const Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: const Color(0xFFEB1555),
                        overlayColor: const Color(0x29EB1555),
                        thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: provider.height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          provider.updateHeight(newValue);
                        },
                      ),
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: AppColors.activeCardColour,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),          
          Expanded(
            child: Row(
              children: <Widget>[
                ParametersCardwidget(
                  text: S.of(context).weight,
                  parameters: provider.weight,
                ),
                ParametersCardwidget(
                  text: S.of(context).age,
                  parameters: provider.age,                    
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: S.of(context).result,
            onTap: () {
              CalculatorRepo calc =
                  CalculatorRepo(
                    height: provider.height, 
                    weight: provider.weight,
                  );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                        bmiResult: calc.calculateBMI(),
                        resultText: calc.getResult(context),
                        interpretation: calc.getInterpretation(context),
                      ),
                ),
              );
            },
          ),
        ],
      ),
    );
      });
    
  }
}
