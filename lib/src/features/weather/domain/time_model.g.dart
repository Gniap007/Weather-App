// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeModelImpl _$$TimeModelImplFromJson(Map<String, dynamic> json) =>
    _$TimeModelImpl(
      hour: (json['hour'] as num).toInt(),
      minute: (json['minute'] as num).toInt(),
      second: (json['second'] as num).toInt(),
    );

Map<String, dynamic> _$$TimeModelImplToJson(_$TimeModelImpl instance) =>
    <String, dynamic>{
      'hour': instance.hour,
      'minute': instance.minute,
      'second': instance.second,
    };
