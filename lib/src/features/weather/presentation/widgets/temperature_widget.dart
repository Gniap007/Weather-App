import 'package:flutter/material.dart';
import 'package:weather_app/src/features/weather/domain/temperature_model.dart';

class TemperatureWidget extends StatelessWidget {
  final TemperatureModel temperature;

  const TemperatureWidget({super.key, required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Temperature: ${temperature.celsius.toStringAsFixed(1)}°C',
          style: const TextStyle(fontSize: 24),
        ),
        Text(
          'Temperature: ${temperature.farenheit.toStringAsFixed(1)}°F',
          style: const TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}
