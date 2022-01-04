import 'package:flutter/material.dart';

final kDarkTheme = ThemeData.dark().copyWith(
  primaryColor: const Color(0xFF1D1E33),
  appBarTheme: const AppBarTheme(color: Color(0xFF1D1E33)),
  scaffoldBackgroundColor: const Color(0xFF0A0E21),
  cardColor: const Color(0xFF414b60),
  //primaryColorDark: Color(0xFF0A0E21), 
  //buttonColor: Color(0xFF1D1E33), 
  //backgroundColor: Color(0xFF1D1E33), 
  //selectedRowColor: Colors.white,
  //unselectedWidgetColor: Colors.grey[600],
  // cardColor: Color(0xFF1D1E33),
  //canvasColor: Color(0xFF1D1E33),
);

// Color(0xff3a4256)

// 404b60

final kLightTheme = ThemeData.light().copyWith( 
  primaryColor: Colors.white,
  appBarTheme: const AppBarTheme(color: Color(0xFFA37A74)),
  //scaffoldBackgroundColor: Colors.white,
  scaffoldBackgroundColor: const Color(0xFFE49273),
  cardColor: Colors.white54,  
  //primaryColorLight: Colors.white,
  //buttonColor: Colors.blueGrey[700],
  //backgroundColor: Colors.white38, 
  canvasColor: Colors.black,
  //selectedRowColor: Colors.white,
  //unselectedWidgetColor: Colors.grey[550]
  //canvasColor: Colors.blueGrey[400],
);


//Theme.of(context).scaffoldBackgroundColor