// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_vitals_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PatientVitalsEntity {

 int get heartRate; int get bloodPressureSystolic; int get bloodPressureDiastolic; int get oxygenSaturation; double get temperature; int get respiratoryRate; String? get ecgData; DateTime get recordedAt;
/// Create a copy of PatientVitalsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientVitalsEntityCopyWith<PatientVitalsEntity> get copyWith => _$PatientVitalsEntityCopyWithImpl<PatientVitalsEntity>(this as PatientVitalsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientVitalsEntity&&(identical(other.heartRate, heartRate) || other.heartRate == heartRate)&&(identical(other.bloodPressureSystolic, bloodPressureSystolic) || other.bloodPressureSystolic == bloodPressureSystolic)&&(identical(other.bloodPressureDiastolic, bloodPressureDiastolic) || other.bloodPressureDiastolic == bloodPressureDiastolic)&&(identical(other.oxygenSaturation, oxygenSaturation) || other.oxygenSaturation == oxygenSaturation)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.respiratoryRate, respiratoryRate) || other.respiratoryRate == respiratoryRate)&&(identical(other.ecgData, ecgData) || other.ecgData == ecgData)&&(identical(other.recordedAt, recordedAt) || other.recordedAt == recordedAt));
}


@override
int get hashCode => Object.hash(runtimeType,heartRate,bloodPressureSystolic,bloodPressureDiastolic,oxygenSaturation,temperature,respiratoryRate,ecgData,recordedAt);

@override
String toString() {
  return 'PatientVitalsEntity(heartRate: $heartRate, bloodPressureSystolic: $bloodPressureSystolic, bloodPressureDiastolic: $bloodPressureDiastolic, oxygenSaturation: $oxygenSaturation, temperature: $temperature, respiratoryRate: $respiratoryRate, ecgData: $ecgData, recordedAt: $recordedAt)';
}


}

/// @nodoc
abstract mixin class $PatientVitalsEntityCopyWith<$Res>  {
  factory $PatientVitalsEntityCopyWith(PatientVitalsEntity value, $Res Function(PatientVitalsEntity) _then) = _$PatientVitalsEntityCopyWithImpl;
@useResult
$Res call({
 int heartRate, int bloodPressureSystolic, int bloodPressureDiastolic, int oxygenSaturation, double temperature, int respiratoryRate, String? ecgData, DateTime recordedAt
});




}
/// @nodoc
class _$PatientVitalsEntityCopyWithImpl<$Res>
    implements $PatientVitalsEntityCopyWith<$Res> {
  _$PatientVitalsEntityCopyWithImpl(this._self, this._then);

  final PatientVitalsEntity _self;
  final $Res Function(PatientVitalsEntity) _then;

/// Create a copy of PatientVitalsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? heartRate = null,Object? bloodPressureSystolic = null,Object? bloodPressureDiastolic = null,Object? oxygenSaturation = null,Object? temperature = null,Object? respiratoryRate = null,Object? ecgData = freezed,Object? recordedAt = null,}) {
  return _then(_self.copyWith(
heartRate: null == heartRate ? _self.heartRate : heartRate // ignore: cast_nullable_to_non_nullable
as int,bloodPressureSystolic: null == bloodPressureSystolic ? _self.bloodPressureSystolic : bloodPressureSystolic // ignore: cast_nullable_to_non_nullable
as int,bloodPressureDiastolic: null == bloodPressureDiastolic ? _self.bloodPressureDiastolic : bloodPressureDiastolic // ignore: cast_nullable_to_non_nullable
as int,oxygenSaturation: null == oxygenSaturation ? _self.oxygenSaturation : oxygenSaturation // ignore: cast_nullable_to_non_nullable
as int,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,respiratoryRate: null == respiratoryRate ? _self.respiratoryRate : respiratoryRate // ignore: cast_nullable_to_non_nullable
as int,ecgData: freezed == ecgData ? _self.ecgData : ecgData // ignore: cast_nullable_to_non_nullable
as String?,recordedAt: null == recordedAt ? _self.recordedAt : recordedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientVitalsEntity].
extension PatientVitalsEntityPatterns on PatientVitalsEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientVitalsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientVitalsEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientVitalsEntity value)  $default,){
final _that = this;
switch (_that) {
case _PatientVitalsEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientVitalsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PatientVitalsEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int heartRate,  int bloodPressureSystolic,  int bloodPressureDiastolic,  int oxygenSaturation,  double temperature,  int respiratoryRate,  String? ecgData,  DateTime recordedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientVitalsEntity() when $default != null:
return $default(_that.heartRate,_that.bloodPressureSystolic,_that.bloodPressureDiastolic,_that.oxygenSaturation,_that.temperature,_that.respiratoryRate,_that.ecgData,_that.recordedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int heartRate,  int bloodPressureSystolic,  int bloodPressureDiastolic,  int oxygenSaturation,  double temperature,  int respiratoryRate,  String? ecgData,  DateTime recordedAt)  $default,) {final _that = this;
switch (_that) {
case _PatientVitalsEntity():
return $default(_that.heartRate,_that.bloodPressureSystolic,_that.bloodPressureDiastolic,_that.oxygenSaturation,_that.temperature,_that.respiratoryRate,_that.ecgData,_that.recordedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int heartRate,  int bloodPressureSystolic,  int bloodPressureDiastolic,  int oxygenSaturation,  double temperature,  int respiratoryRate,  String? ecgData,  DateTime recordedAt)?  $default,) {final _that = this;
switch (_that) {
case _PatientVitalsEntity() when $default != null:
return $default(_that.heartRate,_that.bloodPressureSystolic,_that.bloodPressureDiastolic,_that.oxygenSaturation,_that.temperature,_that.respiratoryRate,_that.ecgData,_that.recordedAt);case _:
  return null;

}
}

}

/// @nodoc


class _PatientVitalsEntity implements PatientVitalsEntity {
  const _PatientVitalsEntity({required this.heartRate, required this.bloodPressureSystolic, required this.bloodPressureDiastolic, required this.oxygenSaturation, required this.temperature, required this.respiratoryRate, this.ecgData, required this.recordedAt});
  

@override final  int heartRate;
@override final  int bloodPressureSystolic;
@override final  int bloodPressureDiastolic;
@override final  int oxygenSaturation;
@override final  double temperature;
@override final  int respiratoryRate;
@override final  String? ecgData;
@override final  DateTime recordedAt;

/// Create a copy of PatientVitalsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientVitalsEntityCopyWith<_PatientVitalsEntity> get copyWith => __$PatientVitalsEntityCopyWithImpl<_PatientVitalsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientVitalsEntity&&(identical(other.heartRate, heartRate) || other.heartRate == heartRate)&&(identical(other.bloodPressureSystolic, bloodPressureSystolic) || other.bloodPressureSystolic == bloodPressureSystolic)&&(identical(other.bloodPressureDiastolic, bloodPressureDiastolic) || other.bloodPressureDiastolic == bloodPressureDiastolic)&&(identical(other.oxygenSaturation, oxygenSaturation) || other.oxygenSaturation == oxygenSaturation)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.respiratoryRate, respiratoryRate) || other.respiratoryRate == respiratoryRate)&&(identical(other.ecgData, ecgData) || other.ecgData == ecgData)&&(identical(other.recordedAt, recordedAt) || other.recordedAt == recordedAt));
}


@override
int get hashCode => Object.hash(runtimeType,heartRate,bloodPressureSystolic,bloodPressureDiastolic,oxygenSaturation,temperature,respiratoryRate,ecgData,recordedAt);

@override
String toString() {
  return 'PatientVitalsEntity(heartRate: $heartRate, bloodPressureSystolic: $bloodPressureSystolic, bloodPressureDiastolic: $bloodPressureDiastolic, oxygenSaturation: $oxygenSaturation, temperature: $temperature, respiratoryRate: $respiratoryRate, ecgData: $ecgData, recordedAt: $recordedAt)';
}


}

/// @nodoc
abstract mixin class _$PatientVitalsEntityCopyWith<$Res> implements $PatientVitalsEntityCopyWith<$Res> {
  factory _$PatientVitalsEntityCopyWith(_PatientVitalsEntity value, $Res Function(_PatientVitalsEntity) _then) = __$PatientVitalsEntityCopyWithImpl;
@override @useResult
$Res call({
 int heartRate, int bloodPressureSystolic, int bloodPressureDiastolic, int oxygenSaturation, double temperature, int respiratoryRate, String? ecgData, DateTime recordedAt
});




}
/// @nodoc
class __$PatientVitalsEntityCopyWithImpl<$Res>
    implements _$PatientVitalsEntityCopyWith<$Res> {
  __$PatientVitalsEntityCopyWithImpl(this._self, this._then);

  final _PatientVitalsEntity _self;
  final $Res Function(_PatientVitalsEntity) _then;

/// Create a copy of PatientVitalsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? heartRate = null,Object? bloodPressureSystolic = null,Object? bloodPressureDiastolic = null,Object? oxygenSaturation = null,Object? temperature = null,Object? respiratoryRate = null,Object? ecgData = freezed,Object? recordedAt = null,}) {
  return _then(_PatientVitalsEntity(
heartRate: null == heartRate ? _self.heartRate : heartRate // ignore: cast_nullable_to_non_nullable
as int,bloodPressureSystolic: null == bloodPressureSystolic ? _self.bloodPressureSystolic : bloodPressureSystolic // ignore: cast_nullable_to_non_nullable
as int,bloodPressureDiastolic: null == bloodPressureDiastolic ? _self.bloodPressureDiastolic : bloodPressureDiastolic // ignore: cast_nullable_to_non_nullable
as int,oxygenSaturation: null == oxygenSaturation ? _self.oxygenSaturation : oxygenSaturation // ignore: cast_nullable_to_non_nullable
as int,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,respiratoryRate: null == respiratoryRate ? _self.respiratoryRate : respiratoryRate // ignore: cast_nullable_to_non_nullable
as int,ecgData: freezed == ecgData ? _self.ecgData : ecgData // ignore: cast_nullable_to_non_nullable
as String?,recordedAt: null == recordedAt ? _self.recordedAt : recordedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
