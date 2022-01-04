import 'package:flutter/material.dart';

class CustomQuizButton extends StatelessWidget {
  const CustomQuizButton({
    @required this.onPressed,
    @required this.buttonText,
    this.buttonBgColor,
    Key key,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String buttonText;
  final Color buttonBgColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: buttonBgColor),
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white
            ), 
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
