// lib/domain/models/time_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'temperature_model.freezed.dart'; // Required for Freezed code generation
part 'temperature_model.g.dart';

@freezed
class TemperatureModel with _$TemperatureModel {
  const factory TemperatureModel({
    required double farenheit,
    required double celsius,
  }) = _TemperatureModel;

 
  factory TemperatureModel.fromJson(Map<String, dynamic> json) => _$TemperatureModelFromJson(json);
}
