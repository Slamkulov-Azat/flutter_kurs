import 'package:flutter/material.dart';
import 'package:flutter_kurs/widgets/lesson_7/icon_content.dart';

class GenderCardWidget extends StatelessWidget {
  const GenderCardWidget({Key key, 
    @required this.color,
    @required this.genderIcon,
    @required this.text,  
    @required this.onPressed}) : super(key: key);

  final Function onPressed;
  final Color color;
  final IconData genderIcon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          child: IconContent(
            icon: genderIcon,
            label: text,
          ),
          margin: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
