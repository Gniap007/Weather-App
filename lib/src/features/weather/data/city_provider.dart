import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/src/features/weather/domain/city_model.dart';

// State provider to hold the current city
final cityProvider = StateProvider<CityModel>((ref) => CityModel(city: 'New York'));
