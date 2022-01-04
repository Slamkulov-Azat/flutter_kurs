import 'package:flutter/material.dart';
import 'package:flutter_kurs/generated/l10n.dart';
import 'package:flutter_kurs/app/providers/lesson_6_provider.dart';
import 'package:flutter_kurs/app/providers/locale_provider.dart';
import 'package:flutter_kurs/app/widgets/custom_app_bar.dart';
import 'package:flutter_kurs/app/widgets/lesson_6/custom_quiz_button.dart';
import 'package:provider/provider.dart';


class Quizzler extends StatelessWidget {
  const Quizzler({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Consumer<Lesson6Provider>(
      builder: (context, provider, snapshot) {
        var _lang = context.watch<LocaleProvider>().locale ?? Localizations.localeOf(context);
        return Scaffold(
          appBar: CustomAppBar('6. Quizz'),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        '${S.of(context).quizzQuestionNumber}: ${provider.getQuestionNumber()}',
                        style: const TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),  
                      ),
                    )),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(                   
                        child: Text(
                          provider.getQuestionText(_lang),                      
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    child: Row(
                      children: provider.icons,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      CustomQuizButton(
                        onPressed: () => provider.checkAnswer(false, context), 
                        buttonText: S.of(context).quizzCustomButtonFalse,
                        buttonBgColor: Colors.red,
                      ),
                      CustomQuizButton(
                        onPressed: () => provider.checkAnswer(true, context), 
                        buttonText: S.of(context).quizzCustomButtonTrue,
                        buttonBgColor: Colors.green,
                      ),      
                    ],
                  ),
                  const SizedBox(height: 30),             
                ],
              ),
            ),
          ),
        );
      }
    );    
  }
}