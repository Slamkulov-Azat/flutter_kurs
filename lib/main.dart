import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'app/providers/kurs_provider.dart';
import 'app/providers/lesson_1_provider.dart';
import 'app/providers/lesson_4_provider.dart';
import 'app/providers/lesson_6_provider.dart';
import 'app/providers/lesson_7_provider.dart';
import 'app/providers/lesson_8_provider.dart';
import 'app/providers/locale_provider.dart';
import 'app/providers/reference_provider.dart';
import 'app/providers/switch_provider.dart';
import 'app/utilities/theme.dart';
import 'package:flutter_kurs/generated/l10n.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
        ChangeNotifierProvider(create: (_) => KursProvider()),
        ChangeNotifierProvider(create: (_) => RefernceProvider()),
        ChangeNotifierProvider(create: (_) => SwitcProvider()),
        ChangeNotifierProvider(create: (_) => Lesson1Provider()),
        ChangeNotifierProvider(create: (_) => Lesson4Provider()),
        ChangeNotifierProvider(create: (_) => Lesson6Provider()),
        ChangeNotifierProvider(create: (_) => Lesson7Provider()),
        ChangeNotifierProvider(create: (_) => Lesson8Provider()),
        // ChangeNotifierProvider(create: (_) => Lesson9Provider()),

      ],
      child: Consumer<LocaleProvider>(builder: (context, provider, snapshot) {
        return AdaptiveTheme(
          light: kLightTheme,
          dark: kDarkTheme,
          initial: AdaptiveThemeMode.light,
          builder: (light, dark) => MaterialApp(
            locale: provider.locale,
            localizationsDelegates: const [ 
              S.delegate, 
              GlobalMaterialLocalizations.delegate, 
              GlobalWidgetsLocalizations.delegate, 
              GlobalCupertinoLocalizations.delegate, 
            ], 
            supportedLocales: S.delegate.supportedLocales,
            theme: light,
            darkTheme: dark,
            initialRoute: '/',
            routes: context.watch<KursProvider>().route
          ),
        );
      }),
    );
  }  
}   