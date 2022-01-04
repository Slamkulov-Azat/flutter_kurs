
import 'package:flutter/material.dart';
import 'package:flutter_kurs/utilities/constants/app_colors.dart';
import 'package:flutter_kurs/utilities/constants/app_sizes.dart';
import 'package:flutter_kurs/utilities/constants/app_text_style.dart';


class BottomButton extends StatelessWidget {
  const BottomButton({Key key, 
    @required this.onTap, 
    @required this.buttonTitle
  }) : super(key: key);

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(buttonTitle,
            style: AppTextStyle.largeButtonTextStyle,
          ),
        ),
        color: AppColors.bottomContainerColour,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: AppSizes.bottomContainerHeight,
      ),
    );
  }
}