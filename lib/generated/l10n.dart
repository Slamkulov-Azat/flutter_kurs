// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Learning`
  String get home_app_bar_title_1 {
    return Intl.message(
      'Learning',
      name: 'home_app_bar_title_1',
      desc: '',
      args: [],
    );
  }

  /// `Directory`
  String get home_app_bar_title_2 {
    return Intl.message(
      'Directory',
      name: 'home_app_bar_title_2',
      desc: '',
      args: [],
    );
  }

  /// `Test`
  String get home_app_bar_title_3 {
    return Intl.message(
      'Test',
      name: 'home_app_bar_title_3',
      desc: '',
      args: [],
    );
  }

  /// `Lesson 1-2`
  String get homeScreenListButton_subtitle_1 {
    return Intl.message(
      'Lesson 1-2',
      name: 'homeScreenListButton_subtitle_1',
      desc: '',
      args: [],
    );
  }

  /// `Lesson 3`
  String get homeScreenListButton_subtitle_3 {
    return Intl.message(
      'Lesson 3',
      name: 'homeScreenListButton_subtitle_3',
      desc: '',
      args: [],
    );
  }

  /// `Lesson 4`
  String get homeScreenListButton_subtitle_4 {
    return Intl.message(
      'Lesson 4',
      name: 'homeScreenListButton_subtitle_4',
      desc: '',
      args: [],
    );
  }

  /// `Lesson 5`
  String get homeScreenListButton_subtitle_5 {
    return Intl.message(
      'Lesson 5',
      name: 'homeScreenListButton_subtitle_5',
      desc: '',
      args: [],
    );
  }

  /// `Lesson 6`
  String get homeScreenListButton_subtitle_6 {
    return Intl.message(
      'Lesson 6',
      name: 'homeScreenListButton_subtitle_6',
      desc: '',
      args: [],
    );
  }

  /// `Lesson 7`
  String get homeScreenListButton_subtitle_7 {
    return Intl.message(
      'Lesson 7',
      name: 'homeScreenListButton_subtitle_7',
      desc: '',
      args: [],
    );
  }

  /// `Lesson 8`
  String get homeScreenListButton_subtitle_8 {
    return Intl.message(
      'Lesson 8',
      name: 'homeScreenListButton_subtitle_8',
      desc: '',
      args: [],
    );
  }

  /// `Lesson 9`
  String get homeScreenListButton_subtitle_9 {
    return Intl.message(
      'Lesson 9',
      name: 'homeScreenListButton_subtitle_9',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get homeScreenListButton_OnPressed_1 {
    return Intl.message(
      'Start',
      name: 'homeScreenListButton_OnPressed_1',
      desc: '',
      args: [],
    );
  }

  /// `Referencies`
  String get homeScreenListButton_OnPressed_2 {
    return Intl.message(
      'Referencies',
      name: 'homeScreenListButton_OnPressed_2',
      desc: '',
      args: [],
    );
  }

  /// `Dark theme`
  String get theme {
    return Intl.message(
      'Dark theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `language`
  String get language {
    return Intl.message(
      'language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get drawerExpansionTileText {
    return Intl.message(
      'Settings',
      name: 'drawerExpansionTileText',
      desc: '',
      args: [],
    );
  }

  /// `False`
  String get quizzCustomButtonFalse {
    return Intl.message(
      'False',
      name: 'quizzCustomButtonFalse',
      desc: '',
      args: [],
    );
  }

  /// `True`
  String get quizzCustomButtonTrue {
    return Intl.message(
      'True',
      name: 'quizzCustomButtonTrue',
      desc: '',
      args: [],
    );
  }

  /// `Question`
  String get quizzQuestionNumber {
    return Intl.message(
      'Question',
      name: 'quizzQuestionNumber',
      desc: '',
      args: [],
    );
  }

  /// `You have reached the end of the quiz!`
  String get customDialogTitleText {
    return Intl.message(
      'You have reached the end of the quiz!',
      name: 'customDialogTitleText',
      desc: '',
      args: [],
    );
  }

  /// `Your overall score: `
  String get customDialogContentText {
    return Intl.message(
      'Your overall score: ',
      name: 'customDialogContentText',
      desc: '',
      args: [],
    );
  }

  /// `Again`
  String get elevatedButtonText_1 {
    return Intl.message(
      'Again',
      name: 'elevatedButtonText_1',
      desc: '',
      args: [],
    );
  }

  /// `To main`
  String get elevatedButtonText_2 {
    return Intl.message(
      'To main',
      name: 'elevatedButtonText_2',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get gendeMale {
    return Intl.message(
      'Male',
      name: 'gendeMale',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get genderFemale {
    return Intl.message(
      'Female',
      name: 'genderFemale',
      desc: '',
      args: [],
    );
  }

  /// `Height`
  String get height {
    return Intl.message(
      'Height',
      name: 'height',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get weight {
    return Intl.message(
      'Weight',
      name: 'weight',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Result`
  String get result {
    return Intl.message(
      'Result',
      name: 'result',
      desc: '',
      args: [],
    );
  }

  /// `Your result`
  String get yourResult {
    return Intl.message(
      'Your result',
      name: 'yourResult',
      desc: '',
      args: [],
    );
  }

  /// `Start over`
  String get bottomButtonTitle {
    return Intl.message(
      'Start over',
      name: 'bottomButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Overweight`
  String get result_1 {
    return Intl.message(
      'Overweight',
      name: 'result_1',
      desc: '',
      args: [],
    );
  }

  /// `Normal`
  String get result_2 {
    return Intl.message(
      'Normal',
      name: 'result_2',
      desc: '',
      args: [],
    );
  }

  /// `Underweight`
  String get result_3 {
    return Intl.message(
      'Underweight',
      name: 'result_3',
      desc: '',
      args: [],
    );
  }

  /// `You are overweight. Try to exercise more.`
  String get interpretation_1 {
    return Intl.message(
      'You are overweight. Try to exercise more.',
      name: 'interpretation_1',
      desc: '',
      args: [],
    );
  }

  /// `Your body weight is normal. Well done!`
  String get interpretation_2 {
    return Intl.message(
      'Your body weight is normal. Well done!',
      name: 'interpretation_2',
      desc: '',
      args: [],
    );
  }

  /// `You are underweight. You can eat a little more.`
  String get interpretation_3 {
    return Intl.message(
      'You are underweight. You can eat a little more.',
      name: 'interpretation_3',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'it'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}