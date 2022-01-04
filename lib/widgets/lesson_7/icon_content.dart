
import 'package:flutter/material.dart';
import 'package:flutter_kurs/utilities/constants/app_text_style.dart';


class IconContent extends StatelessWidget {
  const IconContent({Key key, this.icon, this.label}) : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: AppTextStyle.labelTextStyle,
        )
      ],
    );
  }
}
