import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/src/features/weather/data/city_provider.dart';
import 'package:weather_app/src/features/weather/data/temperature_provider.dart';
import 'package:weather_app/src/features/weather/presentation/widgets/city_widget.dart';
import 'package:weather_app/src/features/weather/presentation/widgets/search_bar.dart';
import 'package:weather_app/src/features/weather/presentation/widgets/temperature_widget.dart';
import 'package:weather_app/src/features/weather/presentation/widgets/time_widget.dart';


class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final city = ref.watch(cityProvider);
    final temperatureAsync = ref.watch(temperatureProvider);

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/image.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SearchBarWidget(),
                  const TimeWidget(),
                ],
              ),
              Row(
                children: [
                  CityWidget(cityModel: city),
                  temperatureAsync.when(
                    data: (temperature) => TemperatureWidget(temperature: temperature),
                    loading: () => const CircularProgressIndicator(),
                    error: (error, _) => Text('Error: $error'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
