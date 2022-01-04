//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_kurs/app/providers/lesson_1_provider.dart';
import 'package:flutter_kurs/app/screens/lesson_1/second_screen.dart';
import 'package:flutter_kurs/app/widgets/custom_app_bar.dart';
import 'package:flutter_kurs/app/widgets/lesson_1/counttracker_button.dart';
import 'package:flutter_kurs/app/widgets/lesson_1/custom_rec_button.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // return Consumer<Lesson1Provider>(
    //   builder: (context, provider, snapshot) {
        return Scaffold(
          appBar: CustomAppBar('1. Increment - Decrement'),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CounttrackerButton(
                  text: context.watch<Lesson1Provider>().getCount.toString(),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondScreen(),
                      ),
                    );
                  }
                ),         
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomRecButton(
                      icon: const Icon(Icons.remove),
                      onPreesed: () => context.read<Lesson1Provider>().decrement(),
                    ),
                    const SizedBox(width: 20),
                    CustomRecButton(
                      icon: const Icon(Icons.add),
                      onPreesed: () => context.read<Lesson1Provider>().increment(),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      }
    
   
}










