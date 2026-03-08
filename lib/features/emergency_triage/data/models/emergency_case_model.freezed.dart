// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emergency_case_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmergencyCaseModel {

 String get id; String get patientId; String get patientName; int get patientAge; String get chiefComplaint; String get severity; String get status; String get ambulanceId; String get paramedicName; PatientVitalsModel get vitals; String get location; double? get latitude; double? get longitude; String get destinationHospital; double get estimatedCost; PreAuthModel? get preAuth; String? get medicalHistory; List<String>? get medications; DateTime get dispatchedAt; DateTime? get arrivedAt; DateTime? get transportedAt; DateTime get createdAt;
/// Create a copy of EmergencyCaseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmergencyCaseModelCopyWith<EmergencyCaseModel> get copyWith => _$EmergencyCaseModelCopyWithImpl<EmergencyCaseModel>(this as EmergencyCaseModel, _$identity);

  /// Serializes this EmergencyCaseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmergencyCaseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientAge, patientAge) || other.patientAge == patientAge)&&(identical(other.chiefComplaint, chiefComplaint) || other.chiefComplaint == chiefComplaint)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.status, status) || other.status == status)&&(identical(other.ambulanceId, ambulanceId) || other.ambulanceId == ambulanceId)&&(identical(other.paramedicName, paramedicName) || other.paramedicName == paramedicName)&&(identical(other.vitals, vitals) || other.vitals == vitals)&&(identical(other.location, location) || other.location == location)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.destinationHospital, destinationHospital) || other.destinationHospital == destinationHospital)&&(identical(other.estimatedCost, estimatedCost) || other.estimatedCost == estimatedCost)&&(identical(other.preAuth, preAuth) || other.preAuth == preAuth)&&(identical(other.medicalHistory, medicalHistory) || other.medicalHistory == medicalHistory)&&const DeepCollectionEquality().equals(other.medications, medications)&&(identical(other.dispatchedAt, dispatchedAt) || other.dispatchedAt == dispatchedAt)&&(identical(other.arrivedAt, arrivedAt) || other.arrivedAt == arrivedAt)&&(identical(other.transportedAt, transportedAt) || other.transportedAt == transportedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,patientId,patientName,patientAge,chiefComplaint,severity,status,ambulanceId,paramedicName,vitals,location,latitude,longitude,destinationHospital,estimatedCost,preAuth,medicalHistory,const DeepCollectionEquality().hash(medications),dispatchedAt,arrivedAt,transportedAt,createdAt]);

@override
String toString() {
  return 'EmergencyCaseModel(id: $id, patientId: $patientId, patientName: $patientName, patientAge: $patientAge, chiefComplaint: $chiefComplaint, severity: $severity, status: $status, ambulanceId: $ambulanceId, paramedicName: $paramedicName, vitals: $vitals, location: $location, latitude: $latitude, longitude: $longitude, destinationHospital: $destinationHospital, estimatedCost: $estimatedCost, preAuth: $preAuth, medicalHistory: $medicalHistory, medications: $medications, dispatchedAt: $dispatchedAt, arrivedAt: $arrivedAt, transportedAt: $transportedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $EmergencyCaseModelCopyWith<$Res>  {
  factory $EmergencyCaseModelCopyWith(EmergencyCaseModel value, $Res Function(EmergencyCaseModel) _then) = _$EmergencyCaseModelCopyWithImpl;
@useResult
$Res call({
 String id, String patientId, String patientName, int patientAge, String chiefComplaint, String severity, String status, String ambulanceId, String paramedicName, PatientVitalsModel vitals, String location, double? latitude, double? longitude, String destinationHospital, double estimatedCost, PreAuthModel? preAuth, String? medicalHistory, List<String>? medications, DateTime dispatchedAt, DateTime? arrivedAt, DateTime? transportedAt, DateTime createdAt
});


$PatientVitalsModelCopyWith<$Res> get vitals;$PreAuthModelCopyWith<$Res>? get preAuth;

}
/// @nodoc
class _$EmergencyCaseModelCopyWithImpl<$Res>
    implements $EmergencyCaseModelCopyWith<$Res> {
  _$EmergencyCaseModelCopyWithImpl(this._self, this._then);

  final EmergencyCaseModel _self;
  final $Res Function(EmergencyCaseModel) _then;

/// Create a copy of EmergencyCaseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? patientAge = null,Object? chiefComplaint = null,Object? severity = null,Object? status = null,Object? ambulanceId = null,Object? paramedicName = null,Object? vitals = null,Object? location = null,Object? latitude = freezed,Object? longitude = freezed,Object? destinationHospital = null,Object? estimatedCost = null,Object? preAuth = freezed,Object? medicalHistory = freezed,Object? medications = freezed,Object? dispatchedAt = null,Object? arrivedAt = freezed,Object? transportedAt = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientAge: null == patientAge ? _self.patientAge : patientAge // ignore: cast_nullable_to_non_nullable
as int,chiefComplaint: null == chiefComplaint ? _self.chiefComplaint : chiefComplaint // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,ambulanceId: null == ambulanceId ? _self.ambulanceId : ambulanceId // ignore: cast_nullable_to_non_nullable
as String,paramedicName: null == paramedicName ? _self.paramedicName : paramedicName // ignore: cast_nullable_to_non_nullable
as String,vitals: null == vitals ? _self.vitals : vitals // ignore: cast_nullable_to_non_nullable
as PatientVitalsModel,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,destinationHospital: null == destinationHospital ? _self.destinationHospital : destinationHospital // ignore: cast_nullable_to_non_nullable
as String,estimatedCost: null == estimatedCost ? _self.estimatedCost : estimatedCost // ignore: cast_nullable_to_non_nullable
as double,preAuth: freezed == preAuth ? _self.preAuth : preAuth // ignore: cast_nullable_to_non_nullable
as PreAuthModel?,medicalHistory: freezed == medicalHistory ? _self.medicalHistory : medicalHistory // ignore: cast_nullable_to_non_nullable
as String?,medications: freezed == medications ? _self.medications : medications // ignore: cast_nullable_to_non_nullable
as List<String>?,dispatchedAt: null == dispatchedAt ? _self.dispatchedAt : dispatchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,arrivedAt: freezed == arrivedAt ? _self.arrivedAt : arrivedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,transportedAt: freezed == transportedAt ? _self.transportedAt : transportedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of EmergencyCaseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientVitalsModelCopyWith<$Res> get vitals {
  
  return $PatientVitalsModelCopyWith<$Res>(_self.vitals, (value) {
    return _then(_self.copyWith(vitals: value));
  });
}/// Create a copy of EmergencyCaseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PreAuthModelCopyWith<$Res>? get preAuth {
    if (_self.preAuth == null) {
    return null;
  }

  return $PreAuthModelCopyWith<$Res>(_self.preAuth!, (value) {
    return _then(_self.copyWith(preAuth: value));
  });
}
}


/// Adds pattern-matching-related methods to [EmergencyCaseModel].
extension EmergencyCaseModelPatterns on EmergencyCaseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmergencyCaseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmergencyCaseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmergencyCaseModel value)  $default,){
final _that = this;
switch (_that) {
case _EmergencyCaseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmergencyCaseModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmergencyCaseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  int patientAge,  String chiefComplaint,  String severity,  String status,  String ambulanceId,  String paramedicName,  PatientVitalsModel vitals,  String location,  double? latitude,  double? longitude,  String destinationHospital,  double estimatedCost,  PreAuthModel? preAuth,  String? medicalHistory,  List<String>? medications,  DateTime dispatchedAt,  DateTime? arrivedAt,  DateTime? transportedAt,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmergencyCaseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  int patientAge,  String chiefComplaint,  String severity,  String status,  String ambulanceId,  String paramedicName,  PatientVitalsModel vitals,  String location,  double? latitude,  double? longitude,  String destinationHospital,  double estimatedCost,  PreAuthModel? preAuth,  String? medicalHistory,  List<String>? medications,  DateTime dispatchedAt,  DateTime? arrivedAt,  DateTime? transportedAt,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _EmergencyCaseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String patientId,  String patientName,  int patientAge,  String chiefComplaint,  String severity,  String status,  String ambulanceId,  String paramedicName,  PatientVitalsModel vitals,  String location,  double? latitude,  double? longitude,  String destinationHospital,  double estimatedCost,  PreAuthModel? preAuth,  String? medicalHistory,  List<String>? medications,  DateTime dispatchedAt,  DateTime? arrivedAt,  DateTime? transportedAt,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _EmergencyCaseModel() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.patientAge,_that.chiefComplaint,_that.severity,_that.status,_that.ambulanceId,_that.paramedicName,_that.vitals,_that.location,_that.latitude,_that.longitude,_that.destinationHospital,_that.estimatedCost,_that.preAuth,_that.medicalHistory,_that.medications,_that.dispatchedAt,_that.arrivedAt,_that.transportedAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmergencyCaseModel extends EmergencyCaseModel {
  const _EmergencyCaseModel({required this.id, required this.patientId, required this.patientName, required this.patientAge, required this.chiefComplaint, required this.severity, required this.status, required this.ambulanceId, required this.paramedicName, required this.vitals, required this.location, this.latitude, this.longitude, required this.destinationHospital, required this.estimatedCost, this.preAuth, this.medicalHistory, final  List<String>? medications, required this.dispatchedAt, this.arrivedAt, this.transportedAt, required this.createdAt}): _medications = medications,super._();
  factory _EmergencyCaseModel.fromJson(Map<String, dynamic> json) => _$EmergencyCaseModelFromJson(json);

@override final  String id;
@override final  String patientId;
@override final  String patientName;
@override final  int patientAge;
@override final  String chiefComplaint;
@override final  String severity;
@override final  String status;
@override final  String ambulanceId;
@override final  String paramedicName;
@override final  PatientVitalsModel vitals;
@override final  String location;
@override final  double? latitude;
@override final  double? longitude;
@override final  String destinationHospital;
@override final  double estimatedCost;
@override final  PreAuthModel? preAuth;
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

/// Create a copy of EmergencyCaseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmergencyCaseModelCopyWith<_EmergencyCaseModel> get copyWith => __$EmergencyCaseModelCopyWithImpl<_EmergencyCaseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmergencyCaseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmergencyCaseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientAge, patientAge) || other.patientAge == patientAge)&&(identical(other.chiefComplaint, chiefComplaint) || other.chiefComplaint == chiefComplaint)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.status, status) || other.status == status)&&(identical(other.ambulanceId, ambulanceId) || other.ambulanceId == ambulanceId)&&(identical(other.paramedicName, paramedicName) || other.paramedicName == paramedicName)&&(identical(other.vitals, vitals) || other.vitals == vitals)&&(identical(other.location, location) || other.location == location)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.destinationHospital, destinationHospital) || other.destinationHospital == destinationHospital)&&(identical(other.estimatedCost, estimatedCost) || other.estimatedCost == estimatedCost)&&(identical(other.preAuth, preAuth) || other.preAuth == preAuth)&&(identical(other.medicalHistory, medicalHistory) || other.medicalHistory == medicalHistory)&&const DeepCollectionEquality().equals(other._medications, _medications)&&(identical(other.dispatchedAt, dispatchedAt) || other.dispatchedAt == dispatchedAt)&&(identical(other.arrivedAt, arrivedAt) || other.arrivedAt == arrivedAt)&&(identical(other.transportedAt, transportedAt) || other.transportedAt == transportedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,patientId,patientName,patientAge,chiefComplaint,severity,status,ambulanceId,paramedicName,vitals,location,latitude,longitude,destinationHospital,estimatedCost,preAuth,medicalHistory,const DeepCollectionEquality().hash(_medications),dispatchedAt,arrivedAt,transportedAt,createdAt]);

@override
String toString() {
  return 'EmergencyCaseModel(id: $id, patientId: $patientId, patientName: $patientName, patientAge: $patientAge, chiefComplaint: $chiefComplaint, severity: $severity, status: $status, ambulanceId: $ambulanceId, paramedicName: $paramedicName, vitals: $vitals, location: $location, latitude: $latitude, longitude: $longitude, destinationHospital: $destinationHospital, estimatedCost: $estimatedCost, preAuth: $preAuth, medicalHistory: $medicalHistory, medications: $medications, dispatchedAt: $dispatchedAt, arrivedAt: $arrivedAt, transportedAt: $transportedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$EmergencyCaseModelCopyWith<$Res> implements $EmergencyCaseModelCopyWith<$Res> {
  factory _$EmergencyCaseModelCopyWith(_EmergencyCaseModel value, $Res Function(_EmergencyCaseModel) _then) = __$EmergencyCaseModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String patientId, String patientName, int patientAge, String chiefComplaint, String severity, String status, String ambulanceId, String paramedicName, PatientVitalsModel vitals, String location, double? latitude, double? longitude, String destinationHospital, double estimatedCost, PreAuthModel? preAuth, String? medicalHistory, List<String>? medications, DateTime dispatchedAt, DateTime? arrivedAt, DateTime? transportedAt, DateTime createdAt
});


@override $PatientVitalsModelCopyWith<$Res> get vitals;@override $PreAuthModelCopyWith<$Res>? get preAuth;

}
/// @nodoc
class __$EmergencyCaseModelCopyWithImpl<$Res>
    implements _$EmergencyCaseModelCopyWith<$Res> {
  __$EmergencyCaseModelCopyWithImpl(this._self, this._then);

  final _EmergencyCaseModel _self;
  final $Res Function(_EmergencyCaseModel) _then;

/// Create a copy of EmergencyCaseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? patientAge = null,Object? chiefComplaint = null,Object? severity = null,Object? status = null,Object? ambulanceId = null,Object? paramedicName = null,Object? vitals = null,Object? location = null,Object? latitude = freezed,Object? longitude = freezed,Object? destinationHospital = null,Object? estimatedCost = null,Object? preAuth = freezed,Object? medicalHistory = freezed,Object? medications = freezed,Object? dispatchedAt = null,Object? arrivedAt = freezed,Object? transportedAt = freezed,Object? createdAt = null,}) {
  return _then(_EmergencyCaseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientAge: null == patientAge ? _self.patientAge : patientAge // ignore: cast_nullable_to_non_nullable
as int,chiefComplaint: null == chiefComplaint ? _self.chiefComplaint : chiefComplaint // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,ambulanceId: null == ambulanceId ? _self.ambulanceId : ambulanceId // ignore: cast_nullable_to_non_nullable
as String,paramedicName: null == paramedicName ? _self.paramedicName : paramedicName // ignore: cast_nullable_to_non_nullable
as String,vitals: null == vitals ? _self.vitals : vitals // ignore: cast_nullable_to_non_nullable
as PatientVitalsModel,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,destinationHospital: null == destinationHospital ? _self.destinationHospital : destinationHospital // ignore: cast_nullable_to_non_nullable
as String,estimatedCost: null == estimatedCost ? _self.estimatedCost : estimatedCost // ignore: cast_nullable_to_non_nullable
as double,preAuth: freezed == preAuth ? _self.preAuth : preAuth // ignore: cast_nullable_to_non_nullable
as PreAuthModel?,medicalHistory: freezed == medicalHistory ? _self.medicalHistory : medicalHistory // ignore: cast_nullable_to_non_nullable
as String?,medications: freezed == medications ? _self._medications : medications // ignore: cast_nullable_to_non_nullable
as List<String>?,dispatchedAt: null == dispatchedAt ? _self.dispatchedAt : dispatchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,arrivedAt: freezed == arrivedAt ? _self.arrivedAt : arrivedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,transportedAt: freezed == transportedAt ? _self.transportedAt : transportedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of EmergencyCaseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientVitalsModelCopyWith<$Res> get vitals {
  
  return $PatientVitalsModelCopyWith<$Res>(_self.vitals, (value) {
    return _then(_self.copyWith(vitals: value));
  });
}/// Create a copy of EmergencyCaseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PreAuthModelCopyWith<$Res>? get preAuth {
    if (_self.preAuth == null) {
    return null;
  }

  return $PreAuthModelCopyWith<$Res>(_self.preAuth!, (value) {
    return _then(_self.copyWith(preAuth: value));
  });
}
}

// dart format on
