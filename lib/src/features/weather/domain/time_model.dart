// lib/domain/models/time_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_model.freezed.dart'; // Required for Freezed code generation
part 'time_model.g.dart';

@freezed
class TimeModel with _$TimeModel {
  const factory TimeModel({
    required int hour,
    required int minute,
    required int second,
  }) = _TimeModel;

  // If you need to support JSON serialization, add the following:
  factory TimeModel.fromJson(Map<String, dynamic> json) => _$TimeModelFromJson(json);
}
