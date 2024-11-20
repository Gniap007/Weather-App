import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/src/features/weather/data/city_provider.dart';
import 'package:weather_app/src/features/weather/domain/temperature_model.dart';
import 'package:weather_app/src/features/weather/data/weather_repository.dart';  // Make sure to import the repository

// Provider to fetch temperature based on the current city
final temperatureProvider = FutureProvider<TemperatureModel>((ref) async {
  final city = ref.watch(cityProvider);  // Watch the current city
  final weatherRepository = ref.watch(weatherRepositoryProvider);  // Get the repository
  return await weatherRepository.getTemperatureByCity(city);  // Fetch temperature from repository
});
