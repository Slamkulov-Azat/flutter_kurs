import 'package:flutter/material.dart';

class SwitcProvider with ChangeNotifier {

 bool _isSwitched = false;

 bool get getIsSwitched => _isSwitched;

  void setIsSwitched(_newValue) {
    _isSwitched = _newValue;
    notifyListeners();
  }
}