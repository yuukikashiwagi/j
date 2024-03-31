import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class Weather {
  final String description;
  final double temperature;
  final double minTemperature;
  final double maxTemperature;

  Weather({
    required this.description,
    required this.temperature,
    required this.minTemperature,
    required this.maxTemperature,
  });
}

Future<Map<String, dynamic>> getWeatherData(String city) async {  
  final apiKey = '9c6a102893418b481dbdd12203c69d54&units=metric';
  final apiUrl = 'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey';
  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to fetch weather data');
  }
}

Future<Weather> fetchWeather(String city) async {
  try {
    final weatherData = await getWeatherData(city);
    final description = weatherData['weather'][0]['description'];
    final temperature = weatherData['main']['temp'];
    final minTemperature = weatherData['main']['temp_min'];
    final maxTemperature = weatherData['main']['temp_max'];

    return Weather(
      description: description,
      temperature: temperature.toDouble(),
      minTemperature: minTemperature.toDouble(),
      maxTemperature: maxTemperature.toDouble(),
    );
  } catch (e) {
    throw Exception('Failed to fetch weather: $e');
  }
}

void main() async {
  final city = 'Kyoto';
  try {
    final weather = await fetchWeather(city);
    print('天気: ${weather.description}');
    print('気温: ${weather.temperature} ℃');
    print('最低気温: ${weather.minTemperature} ℃');
    print('最高気温: ${weather.maxTemperature} ℃');
  } catch (e) {
    print('エラー: $e');
  }
}