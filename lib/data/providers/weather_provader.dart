
import 'package:flutter_kurs/data/servisies/http_services.dart';
import 'package:flutter_kurs/models/lesson_8/weather_model.dart';
import 'package:flutter_kurs/utilities/app_urls.dart';
import 'package:geolocator/geolocator.dart';

class WeatherProvider {

  Future<WeatherModel> getWeatherByLocation( Position position) async {
    final _endpointByLocation =
          'lat=${position.latitude}&lon=${position.longitude}&appid=${AppUrls.apiKey}';

    String _url = AppUrls.baseUrl + _endpointByLocation;

    final _data = await httpServices.get(_url);

    if (_data != null) {
      WeatherModel _weather = WeatherModel.fromJson(_data);
      return _weather;
    } else {
      return null;
    }     
  }

  Future<WeatherModel> getWeatherByCity( String city) async {
    final _endpointByName = 'q=$city&appid=${AppUrls.apiKey}';

    final _url = AppUrls.baseUrl + _endpointByName;

    final _data = await httpServices.get(_url);

    if (_data != null) {
      WeatherModel _weather = WeatherModel.fromJson(_data);
      return _weather;
    } else {
      return null;
    }     
  }


  Future<WeatherModel> getWeatherModel(
      {String city = '', Position position}) async {
    
    String endpointByLocation;
    String endpointByName = 'q=$city&appid=${AppUrls.apiKey}';
    if (city == '') {
      endpointByLocation =
          'lat=${position.latitude}&lon=${position.longitude}&appid=${AppUrls.apiKey}';
    }

    String url = city == '' 
      ? AppUrls.baseUrl + endpointByLocation 
      : AppUrls.baseUrl + endpointByName;


    final _data = await httpServices.get(url);
     if (_data != null) {
       final WeatherModel weatherModel = WeatherModel.fromJson(_data);
       return weatherModel;
     } else {
       return null;
     }    
  }

  Future<Map<String, dynamic>> getWeatherData(
      {String city = '', Position position}) async {

    String baseUrl = 'https://api.openweathermap.org/data/2.5/weather?';
    String endpointByLocation;
    String endpointByName = 'q=$city&appid=${AppUrls.apiKey}';
    if (city == '') {
      endpointByLocation =
          'lat=${position.latitude}&lon=${position.longitude}&appid=${AppUrls.apiKey}';
    }

    String url =
        city == '' ? baseUrl + endpointByLocation : baseUrl + endpointByName;

    return await httpServices.get(url);
  }
}