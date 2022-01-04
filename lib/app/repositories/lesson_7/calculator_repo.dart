import 'dart:math';

import 'package:flutter_kurs/generated/l10n.dart';

class CalculatorRepo {
  CalculatorRepo({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(context) {
    if (_bmi >= 25) {
      return S.of(context).result_1;
    } else if (_bmi > 18.5) {
      return S.of(context).result_2;
    } else {
      return S.of(context).result_3;
    }
  }

  String getInterpretation(context) {
    if (_bmi >= 25) {
      return S.of(context).interpretation_1;
    } else if (_bmi >= 18.5) {
      return S.of(context).interpretation_2;
    } else {
      return S.of(context).interpretation_3;
    }
  }
}
