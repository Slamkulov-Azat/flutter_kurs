import 'package:flutter/material.dart';

class Lesson1Provider with ChangeNotifier {
 int _count = 0;

 int get getCount => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}