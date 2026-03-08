// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emergency_case_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmergencyCaseEntity {

 String get id; String get patientId; String get patientName; int get patientAge; String get chiefComplaint; EmergencySeverity get severity; EmergencyStatus get status; String get ambulanceId; String get paramedicName; PatientVitalsEntity get vitals; String get location; double? get latitude; double? get longitude; String get destinationHospital; double get estimatedCost; PreAuthEntity? get preAuth; String? get medicalHistory; List<String>? get medications; DateTime get dispatchedAt; DateTime? get arrivedAt; DateTime? get transportedAt; DateTime get createdAt;
/// Create a copy of EmergencyCaseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmergencyCaseEntityCopyWith<EmergencyCaseEntity> get copyWith => _$EmergencyCaseEntityCopyWithImpl<EmergencyCaseEntity>(this as EmergencyCaseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmergencyCaseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientAge, patientAge) || other.patientAge == patientAge)&&(identical(other.chiefComplaint, chiefComplaint) || other.chiefComplaint == chiefComplaint)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.status, status) || other.status == status)&&(identical(other.ambulanceId, ambulanceId) || other.ambulanceId == ambulanceId)&&(identical(other.paramedicName, paramedicName) || other.paramedicName == paramedicName)&&(identical(other.vitals, vitals) || other.vitals == vitals)&&(identical(other.location, location) || other.location == location)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.destinationHospital, destinationHospital) || other.destinationHospital == destinationHospital)&&(identical(other.estimatedCost, estimatedCost) || other.estimatedCost == estimatedCost)&&(identical(other.preAuth, preAuth) || other.preAuth == preAuth)&&(identical(other.medicalHistory, medicalHistory) || other.medicalHistory == medicalHistory)&&const DeepCollectionEquality().equals(other.medications, medications)&&(identical(other.dispatchedAt, dispatchedAt) || other.dispatchedAt == dispatchedAt)&&(identical(other.arrivedAt, arrivedAt) || other.arrivedAt == arrivedAt)&&(identical(other.transportedAt, transportedAt) || other.transportedAt == transportedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,patientId,patientName,patientAge,chiefComplaint,severity,status,ambulanceId,paramedicName,vitals,location,latitude,longitude,destinationHospital,estimatedCost,preAuth,medicalHistory,const DeepCollectionEquality().hash(medications),dispatchedAt,arrivedAt,transportedAt,createdAt]);

@override
String toString() {
  return 'EmergencyCaseEntity(id: $id, patientId: $patientId, patientName: $patientName, patientAge: $patientAge, chiefComplaint: $chiefComplaint, severity: $severity, status: $status, ambulanceId: $ambulanceId, paramedicName: $paramedicName, vitals: $vitals, location: $location, latitude: $latitude, longitude: $longitude, destinationHospital: $destinationHospital, estimatedCost: $estimatedCost, preAuth: $preAuth, medicalHistory: $medicalHistory, medications: $medications, dispatchedAt: $dispatchedAt, arrivedAt: $arrivedAt, transportedAt: $transportedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $EmergencyCaseEntityCopyWith<$Res>  {
  factory $EmergencyCaseEntityCopyWith(EmergencyCaseEntity value, $Res Function(EmergencyCaseEntity) _then) = _$EmergencyCaseEntityCopyWithImpl;
@useResult
$Res call({
 String id, String patientId, String patientName, int patientAge, String chiefComplaint, EmergencySeverity severity, EmergencyStatus status, String ambulanceId, String paramedicName, PatientVitalsEntity vitals, String location, double? latitude, double? longitude, String destinationHospital, double estimatedCost, PreAuthEntity? preAuth, String? medicalHistory, List<String>? medications, DateTime dispatchedAt, DateTime? arrivedAt, DateTime? transportedAt, DateTime createdAt
});


$PatientVitalsEntityCopyWith<$Res> get vitals;$PreAuthEntityCopyWith<$Res>? get preAuth;

}
/// @nodoc
class _$EmergencyCaseEntityCopyWithImpl<$Res>
    implements $EmergencyCaseEntityCopyWith<$Res> {
  _$EmergencyCaseEntityCopyWithImpl(this._self, this._then);

  final EmergencyCaseEntity _self;
  final $Res Function(EmergencyCaseEntity) _then;

/// Create a copy of EmergencyCaseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? patientAge = null,Object? chiefComplaint = null,Object? severity = null,Object? status = null,Object? ambulanceId = null,Object? paramedicName = null,Object? vitals = null,Object? location = null,Object? latitude = freezed,Object? longitude = freezed,Object? destinationHospital = null,Object? estimatedCost = null,Object? preAuth = freezed,Object? medicalHistory = freezed,Object? medications = freezed,Object? dispatchedAt = null,Object? arrivedAt = freezed,Object? transportedAt = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientAge: null == patientAge ? _self.patientAge : patientAge // ignore: cast_nullable_to_non_nullable
as int,chiefComplaint: null == chiefComplaint ? _self.chiefComplaint : chiefComplaint // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as EmergencySeverity,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EmergencyStatus,ambulanceId: null == ambulanceId ? _self.ambulanceId : ambulanceId // ignore: cast_nullable_to_non_nullable
as String,paramedicName: null == paramedicName ? _self.paramedicName : paramedicName // ignore: cast_nullable_to_non_nullable
as String,vitals: null == vitals ? _self.vitals : vitals // ignore: cast_nullable_to_non_nullable
as PatientVitalsEntity,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,destinationHospital: null == destinationHospital ? _self.destinationHospital : destinationHospital // ignore: cast_nullable_to_non_nullable
as String,estimatedCost: null == estimatedCost ? _self.estimatedCost : estimatedCost // ignore: cast_nullable_to_non_nullable
as double,preAuth: freezed == preAuth ? _self.preAuth : preAuth // ignore: cast_nullable_to_non_nullable
as PreAuthEntity?,medicalHistory: freezed == medicalHistory ? _self.medicalHistory : medicalHistory // ignore: cast_nullable_to_non_nullable
as String?,medications: freezed == medications ? _self.medications : medications // ignore: cast_nullable_to_non_nullable
as List<String>?,dispatchedAt: null == dispatchedAt ? _self.dispatchedAt : dispatchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,arrivedAt: freezed == arrivedAt ? _self.arrivedAt : arrivedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,transportedAt: freezed == transportedAt ? _self.transportedAt : transportedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of EmergencyCaseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientVitalsEntityCopyWith<$Res> get vitals {
  
  return $PatientVitalsEntityCopyWith<$Res>(_self.vitals, (value) {
    return _then(_self.copyWith(vitals: value));
  });
}/// Create a copy of EmergencyCaseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PreAuthEntityCopyWith<$Res>? get preAuth {
    if (_self.preAuth == null) {
    return null;
  }

  return $PreAuthEntityCopyWith<$Res>(_self.preAuth!, (value) {
    return _then(_self.copyWith(preAuth: value));
  });
}
}


/// Adds pattern-matching-related methods to [EmergencyCaseEntity].
extension EmergencyCaseEntityPatterns on EmergencyCaseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmergencyCaseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmergencyCaseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmergencyCaseEntity value)  $default,){
final _that = this;
switch (_that) {
case _EmergencyCaseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmergencyCaseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EmergencyCaseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  int patientAge,  String chiefComplaint,  EmergencySeverity severity,  EmergencyStatus status,  String ambulanceId,  String paramedicName,  PatientVitalsEntity vitals,  String location,  double? latitude,  double? longitude,  String destinationHospital,  double estimatedCost,  PreAuthEntity? preAuth,  String? medicalHistory,  List<String>? medications,  DateTime dispatchedAt,  DateTime? arrivedAt,  DateTime? transportedAt,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmergencyCaseEntity() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.patientAge,_that.chiefComplaint,_that.severity,_that.status,_that.ambulanceId,_that.paramedicName,_that.vitals,_that.location,_that.latitude,_that.longitude,_that.destinationHospital,_that.estimatedCost,_that.preAuth,_that.medicalHistory,_that.medications,_that.dispatchedAt,_that.arrivedAt,_that.transportedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  int patientAge,  String chiefComplaint,  EmergencySeverity severity,  EmergencyStatus status,  String ambulanceId,  String paramedicName,  PatientVitalsEntity vitals,  String location,  double? latitude,  double? longitude,  String destinationHospital,  double estimatedCost,  PreAuthEntity? preAuth,  String? medicalHistory,  List<String>? medications,  DateTime dispatchedAt,  DateTime? arrivedAt,  DateTime? transportedAt,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _EmergencyCaseEntity():
return $default(_that.id,_that.patientId,_that.patientName,_that.patientAge,_that.chiefComplaint,_that.severity,_that.status,_that.ambulanceId,_that.paramedicName,_that.vitals,_that.location,_that.latitude,_that.longitude,_that.destinationHospital,_that.estimatedCost,_that.preAuth,_that.medicalHistory,_that.medications,_that.dispatchedAt,_that.arrivedAt,_that.transportedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String patientId,  String patientName,  int patientAge,  String chiefComplaint,  EmergencySeverity severity,  EmergencyStatus status,  String ambulanceId,  String paramedicName,  PatientVitalsEntity vitals,  String location,  double? latitude,  double? longitude,  String destinationHospital,  double estimatedCost,  PreAuthEntity? preAuth,  String? medicalHistory,  List<String>? medications,  DateTime dispatchedAt,  DateTime? arrivedAt,  DateTime? transportedAt,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _EmergencyCaseEntity() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.patientAge,_that.chiefComplaint,_that.severity,_that.status,_that.ambulanceId,_that.paramedicName,_that.vitals,_that.location,_that.latitude,_that.longitude,_that.destinationHospital,_that.estimatedCost,_that.preAuth,_that.medicalHistory,_that.medications,_that.dispatchedAt,_that.arrivedAt,_that.transportedAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _EmergencyCaseEntity implements EmergencyCaseEntity {
  const _EmergencyCaseEntity({required this.id, required this.patientId, required this.patientName, required this.patientAge, required this.chiefComplaint, required this.severity, required this.status, required this.ambulanceId, required this.paramedicName, required this.vitals, required this.location, required this.latitude, required this.longitude, required this.destinationHospital, required this.estimatedCost, this.preAuth, this.medicalHistory, final  List<String>? medications, required this.dispatchedAt, this.arrivedAt, this.transportedAt, required this.createdAt}): _medications = medications;
  

@override final  String id;
@override final  String patientId;
@override final  String patientName;
@override final  int patientAge;
@override final  String chiefComplaint;
@override final  EmergencySeverity severity;
@override final  EmergencyStatus status;
@override final  String ambulanceId;
@override final  String paramedicName;
@override final  PatientVitalsEntity vitals;
@override final  String location;
@override final  double? latitude;
@override final  double? longitude;
@override final  String destinationHospital;
@override final  double estimatedCost;
@override final  PreAuthEntity? preAuth;
@override final  String? medicalHistory;
 final  List<String>? _medications;
@override List<String>? get medications {
  final value = _medications;
  if (value == null) return null;
  if (_medications is EqualUnmodifiableListView) return _medications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime dispatchedAt;
@override final  DateTime? arrivedAt;
@override final  DateTime? transportedAt;
@override final  DateTime createdAt;

/// Create a copy of EmergencyCaseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmergencyCaseEntityCopyWith<_EmergencyCaseEntity> get copyWith => __$EmergencyCaseEntityCopyWithImpl<_EmergencyCaseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmergencyCaseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientAge, patientAge) || other.patientAge == patientAge)&&(identical(other.chiefComplaint, chiefComplaint) || other.chiefComplaint == chiefComplaint)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.status, status) || other.status == status)&&(identical(other.ambulanceId, ambulanceId) || other.ambulanceId == ambulanceId)&&(identical(other.paramedicName, paramedicName) || other.paramedicName == paramedicName)&&(identical(other.vitals, vitals) || other.vitals == vitals)&&(identical(other.location, location) || other.location == location)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.destinationHospital, destinationHospital) || other.destinationHospital == destinationHospital)&&(identical(other.estimatedCost, estimatedCost) || other.estimatedCost == estimatedCost)&&(identical(other.preAuth, preAuth) || other.preAuth == preAuth)&&(identical(other.medicalHistory, medicalHistory) || other.medicalHistory == medicalHistory)&&const DeepCollectionEquality().equals(other._medications, _medications)&&(identical(other.dispatchedAt, dispatchedAt) || other.dispatchedAt == dispatchedAt)&&(identical(other.arrivedAt, arrivedAt) || other.arrivedAt == arrivedAt)&&(identical(other.transportedAt, transportedAt) || other.transportedAt == transportedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,patientId,patientName,patientAge,chiefComplaint,severity,status,ambulanceId,paramedicName,vitals,location,latitude,longitude,destinationHospital,estimatedCost,preAuth,medicalHistory,const DeepCollectionEquality().hash(_medications),dispatchedAt,arrivedAt,transportedAt,createdAt]);

@override
String toString() {
  return 'EmergencyCaseEntity(id: $id, patientId: $patientId, patientName: $patientName, patientAge: $patientAge, chiefComplaint: $chiefComplaint, severity: $severity, status: $status, ambulanceId: $ambulanceId, paramedicName: $paramedicName, vitals: $vitals, location: $location, latitude: $latitude, longitude: $longitude, destinationHospital: $destinationHospital, estimatedCost: $estimatedCost, preAuth: $preAuth, medicalHistory: $medicalHistory, medications: $medications, dispatchedAt: $dispatchedAt, arrivedAt: $arrivedAt, transportedAt: $transportedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$EmergencyCaseEntityCopyWith<$Res> implements $EmergencyCaseEntityCopyWith<$Res> {
  factory _$EmergencyCaseEntityCopyWith(_EmergencyCaseEntity value, $Res Function(_EmergencyCaseEntity) _then) = __$EmergencyCaseEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String patientId, String patientName, int patientAge, String chiefComplaint, EmergencySeverity severity, EmergencyStatus status, String ambulanceId, String paramedicName, PatientVitalsEntity vitals, String location, double? latitude, double? longitude, String destinationHospital, double estimatedCost, PreAuthEntity? preAuth, String? medicalHistory, List<String>? medications, DateTime dispatchedAt, DateTime? arrivedAt, DateTime? transportedAt, DateTime createdAt
});


@override $PatientVitalsEntityCopyWith<$Res> get vitals;@override $PreAuthEntityCopyWith<$Res>? get preAuth;

}
/// @nodoc
class __$EmergencyCaseEntityCopyWithImpl<$Res>
    implements _$EmergencyCaseEntityCopyWith<$Res> {
  __$EmergencyCaseEntityCopyWithImpl(this._self, this._then);

  final _EmergencyCaseEntity _self;
  final $Res Function(_EmergencyCaseEntity) _then;

/// Create a copy of EmergencyCaseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? patientAge = null,Object? chiefComplaint = null,Object? severity = null,Object? status = null,Object? ambulanceId = null,Object? paramedicName = null,Object? vitals = null,Object? location = null,Object? latitude = freezed,Object? longitude = freezed,Object? destinationHospital = null,Object? estimatedCost = null,Object? preAuth = freezed,Object? medicalHistory = freezed,Object? medications = freezed,Object? dispatchedAt = null,Object? arrivedAt = freezed,Object? transportedAt = freezed,Object? createdAt = null,}) {
  return _then(_EmergencyCaseEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientAge: null == patientAge ? _self.patientAge : patientAge // ignore: cast_nullable_to_non_nullable
as int,chiefComplaint: null == chiefComplaint ? _self.chiefComplaint : chiefComplaint // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as EmergencySeverity,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EmergencyStatus,ambulanceId: null == ambulanceId ? _self.ambulanceId : ambulanceId // ignore: cast_nullable_to_non_nullable
as String,paramedicName: null == paramedicName ? _self.paramedicName : paramedicName // ignore: cast_nullable_to_non_nullable
as String,vitals: null == vitals ? _self.vitals : vitals // ignore: cast_nullable_to_non_nullable
as PatientVitalsEntity,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,destinationHospital: null == destinationHospital ? _self.destinationHospital : destinationHospital // ignore: cast_nullable_to_non_nullable
as String,estimatedCost: null == estimatedCost ? _self.estimatedCost : estimatedCost // ignore: cast_nullable_to_non_nullable
as double,preAuth: freezed == preAuth ? _self.preAuth : preAuth // ignore: cast_nullable_to_non_nullable
as PreAuthEntity?,medicalHistory: freezed == medicalHistory ? _self.medicalHistory : medicalHistory // ignore: cast_nullable_to_non_nullable
as String?,medications: freezed == medications ? _self._medications : medications // ignore: cast_nullable_to_non_nullable
as List<String>?,dispatchedAt: null == dispatchedAt ? _self.dispatchedAt : dispatchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,arrivedAt: freezed == arrivedAt ? _self.arrivedAt : arrivedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,transportedAt: freezed == transportedAt ? _self.transportedAt : transportedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of EmergencyCaseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientVitalsEntityCopyWith<$Res> get vitals {
  
  return $PatientVitalsEntityCopyWith<$Res>(_self.vitals, (value) {
    return _then(_self.copyWith(vitals: value));
  });
}/// Create a copy of EmergencyCaseEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PreAuthEntityCopyWith<$Res>? get preAuth {
    if (_self.preAuth == null) {
    return null;
  }

  return $PreAuthEntityCopyWith<$Res>(_self.preAuth!, (value) {
    return _then(_self.copyWith(preAuth: value));
  });
}
}

// dart format on
