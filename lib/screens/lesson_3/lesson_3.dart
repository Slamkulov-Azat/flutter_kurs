import 'package:flutter/material.dart';
import 'package:flutter_kurs/widgets/custom_app_bar.dart';


class DiamondScreen extends StatelessWidget {
  const DiamondScreen({Key key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xffFDC801),
      appBar: CustomAppBar("3. I'm Rich"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("I'm Rich",
              style: TextStyle(fontFamily: 'Cookie', color: Colors.white, fontSize: 70)
            ),
            Image.asset('assets/images/lesson_3/clipart.png',
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
