import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/src/features/weather/data/city_provider.dart';
import 'package:weather_app/src/features/weather/domain/city_model.dart';

class SearchBarWidget extends ConsumerWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController _controller = TextEditingController();

    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * (1 / 3),
          height: 50,
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: 'Enter city name...',
              hintStyle: const TextStyle(color: Colors.black),
              prefixIcon: const Icon(Icons.search, color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            onSubmitted: (value) {
              if (value.isNotEmpty) {
                ref.read(cityProvider.notifier).state = CityModel(city: value);
              }
            },
          ),
        ),
      ),
    );
  }
}
