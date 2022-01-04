import 'package:flutter/material.dart';
import 'package:flutter_kurs/app/models/lesson_8/weather_model.dart';
import 'package:flutter_kurs/app/repositories/lesson_8/weather_repo.dart';


class Lesson8Provider with ChangeNotifier {
  WeatherModel _weatherModel;
  bool _isLoading;

  WeatherModel get weatherModel => _weatherModel;
  bool get isLoading => _isLoading;

  Future<void> getWeatherByCurrentLocation() async {
    _isLoading = true;

    _weatherModel = await weatherRepo.getWeatherByCurrentLocation();

    _isLoading = false;

    //notifyListeners();
  }

  Future<void> getWeatherByCity(typedCity) async {
    if (typedCity != null) {
      _isLoading = true;

      _weatherModel = await weatherRepo.getWeatherByCity(typedCity);
      //await Future.delayed(const Duration(seconds: 1));

      _isLoading = false;
    }
    //notifyListeners();
  }
}
