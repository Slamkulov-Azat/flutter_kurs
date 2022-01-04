import 'package:flutter/material.dart';
import 'package:flutter_kurs/models/lesson_8/weather_model.dart';
import 'package:flutter_kurs/repositories/lesson_8/weather_repo.dart';

class Lesson8Provider with ChangeNotifier {
  WeatherModel weatherModel;
  bool isLoading;

  void initState() {
    //getWeatherByCurrentLocation();
    //super.initState();
  }

  void didChangeDependencies() {
    //super.didChangeDependencies();
    getWeatherByCurrentLocation();
  }
  
  Future<void> getWeatherByCurrentLocation() async{
      
    isLoading = true;

    weatherModel = await weatherRepo.getWeatherByCurrentLocation();

    isLoading = false;   
  } 

  Future<void> getWeatherByCity(typedCity) async {
    if (typedCity != null) {

      isLoading = true;
      
      weatherModel = await weatherRepo.getWeatherByCity(typedCity);
      //await Future.delayed(const Duration(seconds: 1));

      isLoading = false;
                                
    }
  }
}