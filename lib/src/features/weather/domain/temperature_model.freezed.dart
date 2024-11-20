// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temperature_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TemperatureModel _$TemperatureModelFromJson(Map<String, dynamic> json) {
  return _TemperatureModel.fromJson(json);
}

/// @nodoc
mixin _$TemperatureModel {
  double get farenheit => throw _privateConstructorUsedError;
  double get celsius => throw _privateConstructorUsedError;

  /// Serializes this TemperatureModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TemperatureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemperatureModelCopyWith<TemperatureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureModelCopyWith<$Res> {
  factory $TemperatureModelCopyWith(
          TemperatureModel value, $Res Function(TemperatureModel) then) =
      _$TemperatureModelCopyWithImpl<$Res, TemperatureModel>;
  @useResult
  $Res call({double farenheit, double celsius});
}

/// @nodoc
class _$TemperatureModelCopyWithImpl<$Res, $Val extends TemperatureModel>
    implements $TemperatureModelCopyWith<$Res> {
  _$TemperatureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TemperatureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farenheit = null,
    Object? celsius = null,
  }) {
    return _then(_value.copyWith(
      farenheit: null == farenheit
          ? _value.farenheit
          : farenheit // ignore: cast_nullable_to_non_nullable
              as double,
      celsius: null == celsius
          ? _value.celsius
          : celsius // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemperatureModelImplCopyWith<$Res>
    implements $TemperatureModelCopyWith<$Res> {
  factory _$$TemperatureModelImplCopyWith(_$TemperatureModelImpl value,
          $Res Function(_$TemperatureModelImpl) then) =
      __$$TemperatureModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double farenheit, double celsius});
}

/// @nodoc
class __$$TemperatureModelImplCopyWithImpl<$Res>
    extends _$TemperatureModelCopyWithImpl<$Res, _$TemperatureModelImpl>
    implements _$$TemperatureModelImplCopyWith<$Res> {
  __$$TemperatureModelImplCopyWithImpl(_$TemperatureModelImpl _value,
      $Res Function(_$TemperatureModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TemperatureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farenheit = null,
    Object? celsius = null,
  }) {
    return _then(_$TemperatureModelImpl(
      farenheit: null == farenheit
          ? _value.farenheit
          : farenheit // ignore: cast_nullable_to_non_nullable
              as double,
      celsius: null == celsius
          ? _value.celsius
          : celsius // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemperatureModelImpl implements _TemperatureModel {
  const _$TemperatureModelImpl(
      {required this.farenheit, required this.celsius});

  factory _$TemperatureModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemperatureModelImplFromJson(json);

  @override
  final double farenheit;
  @override
  final double celsius;

  @override
  String toString() {
    return 'TemperatureModel(farenheit: $farenheit, celsius: $celsius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemperatureModelImpl &&
            (identical(other.farenheit, farenheit) ||
                other.farenheit == farenheit) &&
            (identical(other.celsius, celsius) || other.celsius == celsius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, farenheit, celsius);

  /// Create a copy of TemperatureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemperatureModelImplCopyWith<_$TemperatureModelImpl> get copyWith =>
      __$$TemperatureModelImplCopyWithImpl<_$TemperatureModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemperatureModelImplToJson(
      this,
    );
  }
}

abstract class _TemperatureModel implements TemperatureModel {
  const factory _TemperatureModel(
      {required final double farenheit,
      required final double celsius}) = _$TemperatureModelImpl;

  factory _TemperatureModel.fromJson(Map<String, dynamic> json) =
      _$TemperatureModelImpl.fromJson;

  @override
  double get farenheit;
  @override
  double get celsius;

  /// Create a copy of TemperatureModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemperatureModelImplCopyWith<_$TemperatureModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
