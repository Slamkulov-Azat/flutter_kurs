import 'package:flutter/material.dart';
import 'dart:math';

class Lesson4Provider with ChangeNotifier {

 int leftDiceNumber = 1;
  int rightDiceNumber = 1;

 //int get getCount => _count;

  void updateDices() {
    rightDiceNumber = Random().nextInt(6) + 1;
    leftDiceNumber = Random().nextInt(6) + 1;
    notifyListeners();
  }
}