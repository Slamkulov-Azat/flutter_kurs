import 'package:flutter/material.dart';

class LoadScreen extends StatelessWidget {
  const LoadScreen ({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 46),
            Image.asset(
              'assets/images/load/logo.png',
              width: 142,
              height: 86,
            ),
            Image.asset(
              'assets/images/load/main_image.png',
              width: 266,
              height: 245,
            ),
          ],
        ),
      ),
    );
  }
}