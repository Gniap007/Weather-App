import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/src/features/weather/domain/time_model.dart';

part 'time_controller.g.dart'; // This is for code generation

@riverpod
class TimeController extends AutoDisposeAsyncNotifier<TimeModel> {
  late Timer _timer;

  @override
  FutureOr<TimeModel> build() {
    // Start the timer and return the current time initially
    _startTimer();
    return _getCurrentTime();
  }

  // Method to get the current time
  TimeModel _getCurrentTime() {
    final now = DateTime.now();
    int hourIn12HourFormat = now.hour % 12;
    hourIn12HourFormat = hourIn12HourFormat == 0 ? 12 : hourIn12HourFormat;
    return TimeModel(hour:hourIn12HourFormat, minute: now.minute, second: now.second);
  }

  // Start the timer to update the time every second
  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      // Update the state asynchronously
      state = AsyncValue.data(
          _getCurrentTime()); // This will update the state with the current time
    });
  }

  FutureOr<void> close() {
    _timer.cancel();
    // Cancel the timer when the notifier is disposed
  }
}

// Create a provider for the TimeController using Riverpod annotations with autoDispose
// Correct the provider creation
// Correct provider definition


