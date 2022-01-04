class WeatherUtil {
   static int kelvinToCelcius(double kelvin) {
    return (kelvin - 273.15).round();
  }

  static String getWeatherMessage(int temp) {
    if (temp > 25) {
      return 'Время для 🍦';
    } else if (temp > 20) {
      return 'Время для шорт и 👕';
    } else if (temp < 10) {
      return 'Вам понадобиться 🧣 и 🧤';
    } else {
      return 'Принесите 🧥 на всякий случай';
    }
  }

  static String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }
}