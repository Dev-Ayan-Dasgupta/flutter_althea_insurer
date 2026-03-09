// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_adherence_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatientAdherenceModel {

 String get id; String get patientName; int get age; String get gender; String get condition; int get totalMedications; int get activeMedications; double get adherenceRate; String get adherenceLevel; int get dosesScheduled; int get dosesTaken; int get dosesMissed; int get dosesDelayed; DateTime get lastDoseTime; DateTime get nextDoseTime; int get consecutiveMissedDoses; bool get requiresIntervention; List<String> get riskFactors;
/// Create a copy of PatientAdherenceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientAdherenceModelCopyWith<PatientAdherenceModel> get copyWith => _$PatientAdherenceModelCopyWithImpl<PatientAdherenceModel>(this as PatientAdherenceModel, _$identity);

  /// Serializes this PatientAdherenceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientAdherenceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.totalMedications, totalMedications) || other.totalMedications == totalMedications)&&(identical(other.activeMedications, activeMedications) || other.activeMedications == activeMedications)&&(identical(other.adherenceRate, adherenceRate) || other.adherenceRate == adherenceRate)&&(identical(other.adherenceLevel, adherenceLevel) || other.adherenceLevel == adherenceLevel)&&(identical(other.dosesScheduled, dosesScheduled) || other.dosesScheduled == dosesScheduled)&&(identical(other.dosesTaken, dosesTaken) || other.dosesTaken == dosesTaken)&&(identical(other.dosesMissed, dosesMissed) || other.dosesMissed == dosesMissed)&&(identical(other.dosesDelayed, dosesDelayed) || other.dosesDelayed == dosesDelayed)&&(identical(other.lastDoseTime, lastDoseTime) || other.lastDoseTime == lastDoseTime)&&(identical(other.nextDoseTime, nextDoseTime) || other.nextDoseTime == nextDoseTime)&&(identical(other.consecutiveMissedDoses, consecutiveMissedDoses) || other.consecutiveMissedDoses == consecutiveMissedDoses)&&(identical(other.requiresIntervention, requiresIntervention) || other.requiresIntervention == requiresIntervention)&&const DeepCollectionEquality().equals(other.riskFactors, riskFactors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,patientName,age,gender,condition,totalMedications,activeMedications,adherenceRate,adherenceLevel,dosesScheduled,dosesTaken,dosesMissed,dosesDelayed,lastDoseTime,nextDoseTime,consecutiveMissedDoses,requiresIntervention,const DeepCollectionEquality().hash(riskFactors));

@override
String toString() {
  return 'PatientAdherenceModel(id: $id, patientName: $patientName, age: $age, gender: $gender, condition: $condition, totalMedications: $totalMedications, activeMedications: $activeMedications, adherenceRate: $adherenceRate, adherenceLevel: $adherenceLevel, dosesScheduled: $dosesScheduled, dosesTaken: $dosesTaken, dosesMissed: $dosesMissed, dosesDelayed: $dosesDelayed, lastDoseTime: $lastDoseTime, nextDoseTime: $nextDoseTime, consecutiveMissedDoses: $consecutiveMissedDoses, requiresIntervention: $requiresIntervention, riskFactors: $riskFactors)';
}


}

/// @nodoc
abstract mixin class $PatientAdherenceModelCopyWith<$Res>  {
  factory $PatientAdherenceModelCopyWith(PatientAdherenceModel value, $Res Function(PatientAdherenceModel) _then) = _$PatientAdherenceModelCopyWithImpl;
@useResult
$Res call({
 String id, String patientName, int age, String gender, String condition, int totalMedications, int activeMedications, double adherenceRate, String adherenceLevel, int dosesScheduled, int dosesTaken, int dosesMissed, int dosesDelayed, DateTime lastDoseTime, DateTime nextDoseTime, int consecutiveMissedDoses, bool requiresIntervention, List<String> riskFactors
});




}
/// @nodoc
class _$PatientAdherenceModelCopyWithImpl<$Res>
    implements $PatientAdherenceModelCopyWith<$Res> {
  _$PatientAdherenceModelCopyWithImpl(this._self, this._then);

  final PatientAdherenceModel _self;
  final $Res Function(PatientAdherenceModel) _then;

/// Create a copy of PatientAdherenceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientName = null,Object? age = null,Object? gender = null,Object? condition = null,Object? totalMedications = null,Object? activeMedications = null,Object? adherenceRate = null,Object? adherenceLevel = null,Object? dosesScheduled = null,Object? dosesTaken = null,Object? dosesMissed = null,Object? dosesDelayed = null,Object? lastDoseTime = null,Object? nextDoseTime = null,Object? consecutiveMissedDoses = null,Object? requiresIntervention = null,Object? riskFactors = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,totalMedications: null == totalMedications ? _self.totalMedications : totalMedications // ignore: cast_nullable_to_non_nullable
as int,activeMedications: null == activeMedications ? _self.activeMedications : activeMedications // ignore: cast_nullable_to_non_nullable
as int,adherenceRate: null == adherenceRate ? _self.adherenceRate : adherenceRate // ignore: cast_nullable_to_non_nullable
as double,adherenceLevel: null == adherenceLevel ? _self.adherenceLevel : adherenceLevel // ignore: cast_nullable_to_non_nullable
as String,dosesScheduled: null == dosesScheduled ? _self.dosesScheduled : dosesScheduled // ignore: cast_nullable_to_non_nullable
as int,dosesTaken: null == dosesTaken ? _self.dosesTaken : dosesTaken // ignore: cast_nullable_to_non_nullable
as int,dosesMissed: null == dosesMissed ? _self.dosesMissed : dosesMissed // ignore: cast_nullable_to_non_nullable
as int,dosesDelayed: null == dosesDelayed ? _self.dosesDelayed : dosesDelayed // ignore: cast_nullable_to_non_nullable
as int,lastDoseTime: null == lastDoseTime ? _self.lastDoseTime : lastDoseTime // ignore: cast_nullable_to_non_nullable
as DateTime,nextDoseTime: null == nextDoseTime ? _self.nextDoseTime : nextDoseTime // ignore: cast_nullable_to_non_nullable
as DateTime,consecutiveMissedDoses: null == consecutiveMissedDoses ? _self.consecutiveMissedDoses : consecutiveMissedDoses // ignore: cast_nullable_to_non_nullable
as int,requiresIntervention: null == requiresIntervention ? _self.requiresIntervention : requiresIntervention // ignore: cast_nullable_to_non_nullable
as bool,riskFactors: null == riskFactors ? _self.riskFactors : riskFactors // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientAdherenceModel].
extension PatientAdherenceModelPatterns on PatientAdherenceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientAdherenceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientAdherenceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientAdherenceModel value)  $default,){
final _that = this;
switch (_that) {
case _PatientAdherenceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientAdherenceModel value)?  $default,){
final _that = this;
switch (_that) {
case _PatientAdherenceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String patientName,  int age,  String gender,  String condition,  int totalMedications,  int activeMedications,  double adherenceRate,  String adherenceLevel,  int dosesScheduled,  int dosesTaken,  int dosesMissed,  int dosesDelayed,  DateTime lastDoseTime,  DateTime nextDoseTime,  int consecutiveMissedDoses,  bool requiresIntervention,  List<String> riskFactors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientAdherenceModel() when $default != null:
return $default(_that.id,_that.patientName,_that.age,_that.gender,_that.condition,_that.totalMedications,_that.activeMedications,_that.adherenceRate,_that.adherenceLevel,_that.dosesScheduled,_that.dosesTaken,_that.dosesMissed,_that.dosesDelayed,_that.lastDoseTime,_that.nextDoseTime,_that.consecutiveMissedDoses,_that.requiresIntervention,_that.riskFactors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String patientName,  int age,  String gender,  String condition,  int totalMedications,  int activeMedications,  double adherenceRate,  String adherenceLevel,  int dosesScheduled,  int dosesTaken,  int dosesMissed,  int dosesDelayed,  DateTime lastDoseTime,  DateTime nextDoseTime,  int consecutiveMissedDoses,  bool requiresIntervention,  List<String> riskFactors)  $default,) {final _that = this;
switch (_that) {
case _PatientAdherenceModel():
return $default(_that.id,_that.patientName,_that.age,_that.gender,_that.condition,_that.totalMedications,_that.activeMedications,_that.adherenceRate,_that.adherenceLevel,_that.dosesScheduled,_that.dosesTaken,_that.dosesMissed,_that.dosesDelayed,_that.lastDoseTime,_that.nextDoseTime,_that.consecutiveMissedDoses,_that.requiresIntervention,_that.riskFactors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String patientName,  int age,  String gender,  String condition,  int totalMedications,  int activeMedications,  double adherenceRate,  String adherenceLevel,  int dosesScheduled,  int dosesTaken,  int dosesMissed,  int dosesDelayed,  DateTime lastDoseTime,  DateTime nextDoseTime,  int consecutiveMissedDoses,  bool requiresIntervention,  List<String> riskFactors)?  $default,) {final _that = this;
switch (_that) {
case _PatientAdherenceModel() when $default != null:
return $default(_that.id,_that.patientName,_that.age,_that.gender,_that.condition,_that.totalMedications,_that.activeMedications,_that.adherenceRate,_that.adherenceLevel,_that.dosesScheduled,_that.dosesTaken,_that.dosesMissed,_that.dosesDelayed,_that.lastDoseTime,_that.nextDoseTime,_that.consecutiveMissedDoses,_that.requiresIntervention,_that.riskFactors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatientAdherenceModel extends PatientAdherenceModel {
  const _PatientAdherenceModel({required this.id, required this.patientName, required this.age, required this.gender, required this.condition, required this.totalMedications, required this.activeMedications, required this.adherenceRate, required this.adherenceLevel, required this.dosesScheduled, required this.dosesTaken, required this.dosesMissed, required this.dosesDelayed, required this.lastDoseTime, required this.nextDoseTime, required this.consecutiveMissedDoses, required this.requiresIntervention, required final  List<String> riskFactors}): _riskFactors = riskFactors,super._();
  factory _PatientAdherenceModel.fromJson(Map<String, dynamic> json) => _$PatientAdherenceModelFromJson(json);

@override final  String id;
@override final  String patientName;
@override final  int age;
@override final  String gender;
@override final  String condition;
@override final  int totalMedications;
@override final  int activeMedications;
@override final  double adherenceRate;
@override final  String adherenceLevel;
@override final  int dosesScheduled;
@override final  int dosesTaken;
@override final  int dosesMissed;
@override final  int dosesDelayed;
@override final  DateTime lastDoseTime;
@override final  DateTime nextDoseTime;
@override final  int consecutiveMissedDoses;
@override final  bool requiresIntervention;
 final  List<String> _riskFactors;
@override List<String> get riskFactors {
  if (_riskFactors is EqualUnmodifiableListView) return _riskFactors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_riskFactors);
}


/// Create a copy of PatientAdherenceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientAdherenceModelCopyWith<_PatientAdherenceModel> get copyWith => __$PatientAdherenceModelCopyWithImpl<_PatientAdherenceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatientAdherenceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientAdherenceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.totalMedications, totalMedications) || other.totalMedications == totalMedications)&&(identical(other.activeMedications, activeMedications) || other.activeMedications == activeMedications)&&(identical(other.adherenceRate, adherenceRate) || other.adherenceRate == adherenceRate)&&(identical(other.adherenceLevel, adherenceLevel) || other.adherenceLevel == adherenceLevel)&&(identical(other.dosesScheduled, dosesScheduled) || other.dosesScheduled == dosesScheduled)&&(identical(other.dosesTaken, dosesTaken) || other.dosesTaken == dosesTaken)&&(identical(other.dosesMissed, dosesMissed) || other.dosesMissed == dosesMissed)&&(identical(other.dosesDelayed, dosesDelayed) || other.dosesDelayed == dosesDelayed)&&(identical(other.lastDoseTime, lastDoseTime) || other.lastDoseTime == lastDoseTime)&&(identical(other.nextDoseTime, nextDoseTime) || other.nextDoseTime == nextDoseTime)&&(identical(other.consecutiveMissedDoses, consecutiveMissedDoses) || other.consecutiveMissedDoses == consecutiveMissedDoses)&&(identical(other.requiresIntervention, requiresIntervention) || other.requiresIntervention == requiresIntervention)&&const DeepCollectionEquality().equals(other._riskFactors, _riskFactors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,patientName,age,gender,condition,totalMedications,activeMedications,adherenceRate,adherenceLevel,dosesScheduled,dosesTaken,dosesMissed,dosesDelayed,lastDoseTime,nextDoseTime,consecutiveMissedDoses,requiresIntervention,const DeepCollectionEquality().hash(_riskFactors));

@override
String toString() {
  return 'PatientAdherenceModel(id: $id, patientName: $patientName, age: $age, gender: $gender, condition: $condition, totalMedications: $totalMedications, activeMedications: $activeMedications, adherenceRate: $adherenceRate, adherenceLevel: $adherenceLevel, dosesScheduled: $dosesScheduled, dosesTaken: $dosesTaken, dosesMissed: $dosesMissed, dosesDelayed: $dosesDelayed, lastDoseTime: $lastDoseTime, nextDoseTime: $nextDoseTime, consecutiveMissedDoses: $consecutiveMissedDoses, requiresIntervention: $requiresIntervention, riskFactors: $riskFactors)';
}


}

/// @nodoc
abstract mixin class _$PatientAdherenceModelCopyWith<$Res> implements $PatientAdherenceModelCopyWith<$Res> {
  factory _$PatientAdherenceModelCopyWith(_PatientAdherenceModel value, $Res Function(_PatientAdherenceModel) _then) = __$PatientAdherenceModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String patientName, int age, String gender, String condition, int totalMedications, int activeMedications, double adherenceRate, String adherenceLevel, int dosesScheduled, int dosesTaken, int dosesMissed, int dosesDelayed, DateTime lastDoseTime, DateTime nextDoseTime, int consecutiveMissedDoses, bool requiresIntervention, List<String> riskFactors
});




}
/// @nodoc
class __$PatientAdherenceModelCopyWithImpl<$Res>
    implements _$PatientAdherenceModelCopyWith<$Res> {
  __$PatientAdherenceModelCopyWithImpl(this._self, this._then);

  final _PatientAdherenceModel _self;
  final $Res Function(_PatientAdherenceModel) _then;

/// Create a copy of PatientAdherenceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientName = null,Object? age = null,Object? gender = null,Object? condition = null,Object? totalMedications = null,Object? activeMedications = null,Object? adherenceRate = null,Object? adherenceLevel = null,Object? dosesScheduled = null,Object? dosesTaken = null,Object? dosesMissed = null,Object? dosesDelayed = null,Object? lastDoseTime = null,Object? nextDoseTime = null,Object? consecutiveMissedDoses = null,Object? requiresIntervention = null,Object? riskFactors = null,}) {
  return _then(_PatientAdherenceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,totalMedications: null == totalMedications ? _self.totalMedications : totalMedications // ignore: cast_nullable_to_non_nullable
as int,activeMedications: null == activeMedications ? _self.activeMedications : activeMedications // ignore: cast_nullable_to_non_nullable
as int,adherenceRate: null == adherenceRate ? _self.adherenceRate : adherenceRate // ignore: cast_nullable_to_non_nullable
as double,adherenceLevel: null == adherenceLevel ? _self.adherenceLevel : adherenceLevel // ignore: cast_nullable_to_non_nullable
as String,dosesScheduled: null == dosesScheduled ? _self.dosesScheduled : dosesScheduled // ignore: cast_nullable_to_non_nullable
as int,dosesTaken: null == dosesTaken ? _self.dosesTaken : dosesTaken // ignore: cast_nullable_to_non_nullable
as int,dosesMissed: null == dosesMissed ? _self.dosesMissed : dosesMissed // ignore: cast_nullable_to_non_nullable
as int,dosesDelayed: null == dosesDelayed ? _self.dosesDelayed : dosesDelayed // ignore: cast_nullable_to_non_nullable
as int,lastDoseTime: null == lastDoseTime ? _self.lastDoseTime : lastDoseTime // ignore: cast_nullable_to_non_nullable
as DateTime,nextDoseTime: null == nextDoseTime ? _self.nextDoseTime : nextDoseTime // ignore: cast_nullable_to_non_nullable
as DateTime,consecutiveMissedDoses: null == consecutiveMissedDoses ? _self.consecutiveMissedDoses : consecutiveMissedDoses // ignore: cast_nullable_to_non_nullable
as int,requiresIntervention: null == requiresIntervention ? _self.requiresIntervention : requiresIntervention // ignore: cast_nullable_to_non_nullable
as bool,riskFactors: null == riskFactors ? _self._riskFactors : riskFactors // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
