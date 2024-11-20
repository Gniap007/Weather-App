import 'package:weather_app/src/features/weather/application/weather_service.dart';
import 'package:weather_app/src/features/weather/domain/city_model.dart';
import 'package:weather_app/src/features/weather/domain/temperature_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_repository.g.dart';

class WeatherRepository {
  final WeatherService weatherService;

  WeatherRepository({required this.weatherService});

  Future<TemperatureModel> getTemperatureByCity(CityModel city) async {
    final weatherData = await weatherService.getWeatherByCity(city.city);

    final double kelvin = weatherData['main']['temp'];
    final double fahrenheit = (kelvin - 273.15) * 9 / 5 + 32;
    final double celsius = kelvin - 273.15;

    return TemperatureModel(farenheit: fahrenheit, celsius: celsius);
  }
}


@Riverpod(keepAlive: true)
WeatherRepository weatherRepository( ref) {
  final weatherService = ref.read(weatherServiceProvider);
  return WeatherRepository(weatherService: weatherService);
}
