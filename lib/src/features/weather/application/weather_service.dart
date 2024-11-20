import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_service.g.dart';

final _log = Logger();

class WeatherService {
  final String apiKey;

  WeatherService({required this.apiKey});

  Future<Map<String, dynamic>> getWeatherByCity(String cityName) async {
    final uri = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey');

    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final responseBody = json.decode(response.body) as Map<String, dynamic>;
        _log.i('Weather data: $responseBody');
        return responseBody;
      } else {
        _log.e('Failed to load weather data: ${response.statusCode}');
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      _log.e('Error fetching weather data: $e');
      throw Exception('Error fetching weather data');
    }
  }
}

@Riverpod(keepAlive: true)
WeatherService weatherService( ref) {
  return WeatherService(apiKey: const String.fromEnvironment('apiKey'));
}
