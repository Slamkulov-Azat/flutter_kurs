import 'package:flutter_kurs/utilities/weather_util.dart';

class WeatherModel {
  final String cityName;
  final double kelvin;
  final int celcius;
  final String icon;
  final String message;
  // final String weather;
  // final String description;

  WeatherModel({
    this.cityName,
    this.kelvin,
    this.celcius,
    this.icon,
    this.message,
    // this.weather,
    // this.description,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        cityName: json['name'],
        // weather: json['weather'][0]['main'],
        // description: json['weather'][0]['description'],
        kelvin: json['main']['temp'],
        celcius: WeatherUtil.kelvinToCelcius(json['main']['temp']),
        icon: WeatherUtil.getWeatherIcon((json['main']['temp']).round()),
        message: WeatherUtil.getWeatherMessage(
            WeatherUtil.kelvinToCelcius(json['main']['temp'])),
      );
}