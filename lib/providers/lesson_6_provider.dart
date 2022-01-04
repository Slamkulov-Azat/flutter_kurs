import 'package:flutter/material.dart';
import 'package:flutter_kurs/models/lesson_6/question.dart';
import 'package:flutter_kurs/widgets/lesson_6/custom_dialog.dart';

class Lesson6Provider with ChangeNotifier {
 
 List<Icon> icons = <Icon>[];
  int questionIndex = 0;
  int generalScore = 0;
  //Locale _locale = context.of<LocaleProvider>().;

 //int get getCount => _count;

  // ignore: prefer_final_fields
  List<Question> _questionBank = [
    Question(
      1, 'У некоторых кошек на самом деле аллергия на людей.',
      'Some cats are actually allergic to humans.',
      'Кээ бир мышыктардын адамдарга аллергиясы бар.', true),
    Question(
      2, 'Вы можете вести корову вниз по лестнице, но не вверх по лестнице.',
      'You can lead the cow down the stairs, but not up the stairs.',
      'Уйду тепкич менен ылдый алып барууга болот, бирок тепкич менен эмес.', false),
    Question(
      3, 'Примерно четверть человеческих костей находится в стопах.',
      'About a quarter of human bones are found in the feet.',
      'Адамдын сөөктөрүнүн төрттөн бирине жакыны бутта кездешет.', true),
    Question(
      4, 'Кровь слизняка зеленая.',
      "The slug's blood is green.",
      'Шүлүктүн каны жашыл.', true),
    Question(
      5, 'В Португалии запрещено мочиться в Океан.',
      'In Portugal, it is forbidden to urinate in the Ocean.',
      'Португалияда океанга заара кылууга тыюу салынган.', true),
    Question(
      6, 'Ни один квадратный кусок сухой бумаги нельзя сложить пополам более 7 раз.',
      'No square piece of dry paper can be folded in half more than 7 times.',
      'Бир да чарчы формадагы кургак кагазды 7 эседен ашык экиге бүктөөгө болбойт.', false),
    Question(
      7, 'Самый громкий звук, производимый любым животным, - 188 децибел. Это животное - африканский слон.',
      'The loudest sound produced by any animal is 188 decibels. This animal is an African elephant.',
      'Ар бир жаныбар чыгарган эң катуу үн 188 децибелди түзөт. Бул жаныбар африкалык пили болуп саналат.', false),
    Question(
      8, 'Общая площадь двух легких человека составляет примерно 70 квадратных метров.',
      'The total area of ​​two human lungs is approximately 70 square meters.',
      'Адамдын эки өпкөсүнүн жалпы аянты болжол менен 70 чарчы метрди түзөт.', true),
    Question(
      9, 'Изначально Google назывался "Backrub".',
      "Google's name was originally 'Backrub'.",
      "Google'дун аты башында 'Backrub' болгон.", true),
    Question(
      10, 'Шоколад влияет на сердце и нервную систему собаки; нескольких унций достаточно, чтобы убить маленькую собаку.',
      "Chocolate affects the dog's heart and nervous system; a few ounces is enough to kill a small dog.",
      'Шоколад иттин жүрөгүнө жана нерв системасына таасир этет; кичинекей итти өлтүрүү үчүн бир нече унция жетиштүү.', true),
    // Question(11, 'В Западной Вирджинии, США, если вы случайно сбили животное своей машиной, вы можете забрать его домой, чтобы поесть.',
    //  true),
  ];

  void nextQuestion() {
    if (questionIndex < _questionBank.length - 1) {
      questionIndex++;
    }
  }

  String getQuestionNumber() {
    return _questionBank[questionIndex].questionNumber.toString();
  }

  String getQuestionText(Locale locale) {

    switch (locale.languageCode) {
        case 'ru':
          return _questionBank[questionIndex].questionRuText;
        case 'en':
          return _questionBank[questionIndex].questionEnText;
        case 'it':
          return _questionBank[questionIndex].questionKgText;   
    }
  }

  bool getCorrectAnswer() {
    return _questionBank[questionIndex].questionAnswer;
  }

  bool isFinished() {
    if (questionIndex >= _questionBank.length - 1) {  
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    questionIndex = 0;
    icons = [];
  }

  void resetGeneralScore() {
    generalScore = 0;
  }

  void addCorrectIcon() {
    icons.add(
      const Icon(
        Icons.check,
        color: Colors.white,
      ),
    );
  }

  void addInCorrectIcon() {
    icons.add(
      const Icon(
        Icons.close,
        color: Colors.red,
      ),
    );
  }

  void checkAnswer(bool userPickedAnswer, BuildContext context) {
    bool correctAnswer = getCorrectAnswer();
    if (isFinished() == true) {
      CustomDialod.showCustomDialog(context);
      reset();
    } else {
      if (userPickedAnswer == correctAnswer) {
        addCorrectIcon();
        generalScore = generalScore + 10;
      } else {
        addInCorrectIcon();
      }
      nextQuestion();
    }
    notifyListeners();
  }
}