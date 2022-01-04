import 'package:flutter/material.dart';
import 'package:flutter_kurs/enums/lesson_7/gender.dart';
import 'package:flutter_kurs/utilities/constants/app_colors.dart';

class Lesson7Provider with ChangeNotifier {
  Gender selectedGender;
  int height = 172;
  int weight = 60;
  int age = 30;

  
  void genderMale() {
    selectedGender = Gender.male; 
    notifyListeners(); 
  }

  Color selectedGenderMale() {
    return selectedGender == Gender.male
                      ? AppColors.activeCardColour
                      : AppColors.inactiveCardColour;
  }

  void genderFemale() {
    selectedGender = Gender.female;
    notifyListeners();
  }

  Color selectedGenderFemale() {
    return selectedGender == Gender.female
                      ? AppColors.activeCardColour
                      : AppColors.inactiveCardColour;
  }

  void updateHeight(double newValue) {
    height = newValue.round();
    notifyListeners();
  }

  void incrementParameters(parameters) {
    if (parameters == weight) {
      weight++;
    } if (parameters == age) {
      age++;
    }
    notifyListeners();
  }

  void decrementParameters(parameters) {
    if (parameters == weight) {
      weight--;
    } if (parameters == age) {
      age--;
    }
    notifyListeners();
  }
}