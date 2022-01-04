import 'package:flutter/material.dart';
import 'package:flutter_kurs/app/providers/lesson_1_provider.dart';
import 'package:flutter_kurs/app/widgets/custom_app_bar.dart';
import 'package:flutter_kurs/app/widgets/lesson_1/counttracker_button.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return Consumer<Lesson1Provider>(
      builder: (context, provider, snapshot) {
        return Scaffold(
          appBar: CustomAppBar('2. Navigation'),
          body: Center(                              
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CounttrackerButton(
                  text: provider.getCount.toString(),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 100)
              ],
            ),
          ),
        );
      }
    );
  }
}