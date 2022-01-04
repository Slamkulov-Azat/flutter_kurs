import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class HttpServices {

  Future<Map<String, dynamic>> get(String url) async {
    try {
      Uri _uri = Uri.parse(url);
      http.Response response = await http.get(_uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final body = response.body;
        final data = convert.jsonDecode(body) as Map<String, dynamic>;
      
        //final WeatherModel weatherModel = WeatherModel.fromJson(data);
      
        return data;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e);
    }   
  }
}

final HttpServices httpServices = HttpServices();