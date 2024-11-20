// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemperatureModelImpl _$$TemperatureModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TemperatureModelImpl(
      farenheit: (json['farenheit'] as num).toDouble(),
      celsius: (json['celsius'] as num).toDouble(),
    );

Map<String, dynamic> _$$TemperatureModelImplToJson(
        _$TemperatureModelImpl instance) =>
    <String, dynamic>{
      'farenheit': instance.farenheit,
      'celsius': instance.celsius,
    };
