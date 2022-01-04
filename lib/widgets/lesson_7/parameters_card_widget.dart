import 'package:flutter/material.dart';
import 'package:flutter_kurs/providers/lesson_7_provider.dart';
import 'package:flutter_kurs/utilities/constants/app_colors.dart';
import 'package:flutter_kurs/utilities/constants/app_text_style.dart';
import 'package:flutter_kurs/widgets/lesson_7/round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class ParametersCardwidget extends StatelessWidget {

  const ParametersCardwidget({Key key, 
    @required this.text,
    @required this.parameters,  
    this.onPressed}) : super(key: key);

  final Function onPressed;
  final String text;
  final int parameters; 
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                style: AppTextStyle.labelTextStyle,
              ),
              Text(
                parameters.toString(),
                style: AppTextStyle.numberTextStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RoundIconButton(
                    icon: FontAwesomeIcons.minus,
                    onPressed: () {
                      context.read<Lesson7Provider>().decrementParameters(parameters);
                    }),
                  const SizedBox(width: 10.0),
                  RoundIconButton(
                    icon: FontAwesomeIcons.plus,
                    onPressed: () {
                      context.read<Lesson7Provider>().incrementParameters(parameters);
                    },
                  ),
                ],
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
    );
  }
}
