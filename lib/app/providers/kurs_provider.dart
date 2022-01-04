import 'package:flutter/material.dart';
import 'package:flutter_kurs/app/screens/home/home_screen.dart';
import 'package:flutter_kurs/app/screens/lesson_1/first_screen.dart';
import 'package:flutter_kurs/app/screens/lesson_1/lesson_1_note_list_screen.dart';
import 'package:flutter_kurs/app/screens/lesson_3/lesson_3.dart';
import 'package:flutter_kurs/app/screens/lesson_3/lesson_3_note_screen.dart';
import 'package:flutter_kurs/app/screens/lesson_4/dice_page.dart';
import 'package:flutter_kurs/app/screens/lesson_4/lesson_4_note_screen.dart';
import 'package:flutter_kurs/app/screens/lesson_5/lesson_5_note_screen.dart';
import 'package:flutter_kurs/app/screens/lesson_5/xylophone_app.dart';
import 'package:flutter_kurs/app/screens/lesson_6/lesson_6_note_screen.dart';
import 'package:flutter_kurs/app/screens/lesson_6/quiz_screen.dart';
import 'package:flutter_kurs/app/screens/lesson_7/input_screen.dart';
import 'package:flutter_kurs/app/screens/lesson_7/lesson_7_note_screen.dart';
import 'package:flutter_kurs/app/screens/lesson_8/lesson_8_note_screen.dart';
import 'package:flutter_kurs/app/screens/lesson_8/main_weather_screen2.dart';
import 'package:flutter_kurs/app/screens/lesson_9/chat_screen.dart';
import 'package:flutter_kurs/app/screens/lesson_9/lesson_9_note_screen.dart';
import 'package:flutter_kurs/app/screens/lesson_9/login_screen.dart';
import 'package:flutter_kurs/app/screens/lesson_9/registr_screen.dart';
import 'package:flutter_kurs/app/screens/lesson_9/welcom_screen.dart';
import 'package:flutter_kurs/generated/l10n.dart';

class KursProvider with ChangeNotifier {

  //localProvider
  Locale _locale;
  Locale get locale => _locale;

  void setLocale(Locale locale){
    if(!S.delegate.supportedLocales.contains(locale)) return;
    _locale = locale;
    notifyListeners();
  }
  
  //routesProvider
  Map<String, Widget Function(BuildContext)> route 
  = <String, WidgetBuilder>{
    //'/': (context) => LoadScreen(),
    '/': (context) => const HomeScreen(),      
    '/lesson_1': (context) => const FirstScreen(),  
    '/lesson_3': (context) => const DiamondScreen(),  
    '/lesson_4': (context) => const DicePage(),  
    '/lesson_5': (context) => const XylophoneApp(),  
    '/lesson_6': (context) => const Quizzler(),  
    '/lesson_7': (context) => const InputScreen(),  
    '/lesson_8': (context) => MainWeatherScreen2(), 
    WelcomeScreen.id: (context) => const WelcomeScreen(),
    LoginScreen.id: (context) => const LoginScreen(),
    RegisterScreen.id: (context) => const RegisterScreen(),
    ChatScreen.id: (context) => const ChatScreen(),
    //noteroutes
    '/note_1': (context) => const CounttrackerNotes(),  
    '/note_3': (context) => const DiamondNotes(),  
    '/note_4': (context) => const DiceNotes(),  
    '/note_5': (context) => const XylophoneNotes(),  
    '/note_6': (context) => const QuizzNotes(),  
    '/note_7': (context) => const BMICalculatorNotes(),  
    '/note_8': (context) => const WeatherNotes(),
    '/note_9': (context) => const FlachChatNotes(),
  };
   
  //homeScreenProvider
  int _selectedTab = 0;

  int get getSelectedTab => _selectedTab;

  void onSelectTab(int index){
    if(_selectedTab == index) return;
    
     _selectedTab = index; 

     notifyListeners();
    
  }
}
