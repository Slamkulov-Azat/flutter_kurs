import 'package:flutter/material.dart';

class CustomRecButton extends StatelessWidget {
  const CustomRecButton({Key key,    
    @required this.icon, 
    @required this.onPreesed, 
  }) : super(key: key);

  final Icon icon;
  final Function onPreesed;
 

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        primary: const Color(0xff005EA6)
      ),
      child: icon,
      onPressed: onPreesed   
    );
  }
}