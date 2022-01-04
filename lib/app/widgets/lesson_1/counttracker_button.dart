import 'package:flutter/material.dart';

class CounttrackerButton extends StatelessWidget {
  const CounttrackerButton({Key key,  
    @required this.onPressed, 
    @required this.text,
  }) : super(key: key);
 
  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        primary: Colors.white70
      ),
      child: Text(text, style: const TextStyle(fontSize: 18, color: Colors.black)),
      onPressed: onPressed,
    );
  }
}