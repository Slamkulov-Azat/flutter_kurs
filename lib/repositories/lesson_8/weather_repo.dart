import 'package:flutter_kurs/data/providers/location_provader.dart';
import 'package:flutter_kurs/data/providers/weather_provader.dart';
import 'package:flutter_kurs/models/lesson_8/weather_model.dart';

class WeatherRepo {
  Future<WeatherModel> getWeatherByCurrentLocation() async {

    final _position = await LocationProvider().getCurrentPosition();
    return await WeatherProvider().getWeatherByLocation(_position);
  }

  Future<WeatherModel> getWeatherByCity(String city) async {
    return await WeatherProvider().getWeatherByCity(city);
  }
}

final WeatherRepo weatherRepo = WeatherRepo();