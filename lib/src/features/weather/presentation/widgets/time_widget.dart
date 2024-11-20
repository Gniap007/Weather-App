// lib/presentation/widgets/clock_widget.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/src/features/weather/presentation/time_controller.dart';

class TimeWidget extends ConsumerWidget {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeAsyncValue = ref.watch(timeControllerProvider); // Listen to the timeProvider

    return timeAsyncValue.when(
      data: (time) {
        // Format the time into a readable string
        String formattedTime = '${_twoDigits(time.hour)}:${_twoDigits(time.minute)}:${_twoDigits(time.second)}';

        return Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              formattedTime,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline, // Add underline
                decorationColor: Colors.black, // Set underline color to white
                decorationThickness: 2, // Optional: adjust the thickness of the underline
                color: Colors.black,
              ),
            ),
          ),
        );
      },
      loading: () => const CircularProgressIndicator(), // Show loading indicator while waiting for data
      error: (error, stack) => Text('Error: $error'), // Show error message if the data failed to load
    );
  }

  String _twoDigits(int n) => n.toString().padLeft(2, '0');
}
