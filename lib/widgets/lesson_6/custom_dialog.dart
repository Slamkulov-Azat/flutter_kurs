import 'package:flutter/material.dart';
import 'package:flutter_kurs/generated/l10n.dart';
import 'package:flutter_kurs/providers/lesson_6_provider.dart';
import 'package:provider/provider.dart';

class CustomDialod {
  
  static showCustomDialog (BuildContext parentContext) {
    showDialog(
          barrierDismissible: false,
          context: parentContext,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                S.of(context).customDialogTitleText
              ),
              content: Text(
                '${S.of(context).customDialogContentText}${context.watch<Lesson6Provider>().generalScore}/100'
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                                        child: Text(S.of(context).elevatedButtonText_1),
                                        onPressed: () {
                        Navigator.pop(context);
                        context.read<Lesson6Provider>().resetGeneralScore();
                                        },
                                      ),
                      ),
                      const SizedBox(width: 15,),
                      Expanded(
                        child: ElevatedButton(
                          child: Text(S.of(context).elevatedButtonText_2),
                          onPressed: () {
                            Navigator.pop(context);
                            context.read<Lesson6Provider>().resetGeneralScore();
                            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                          },
                        ),
                      ),
                    ],
                  ),
                ),             
              ],
            );
          },
        );
  }
}