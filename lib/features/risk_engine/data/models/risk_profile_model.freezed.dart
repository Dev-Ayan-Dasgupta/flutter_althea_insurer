// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'risk_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RiskProfileModel {

 String get id; String get patientId; String get patientName; int get patientAge; String get gender; double get riskScore; String get riskLevel; List<RiskFactorModel> get riskFactors; List<InterventionModel> get recommendedInterventions; double get hospitalizationProbability; double get emergencyVisitProbability; double get estimatedAnnualCost; double get potentialSavings; DateTime get lastUpdated; String? get primaryCondition; List<String>? get comorbidities;
/// Create a copy of RiskProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskProfileModelCopyWith<RiskProfileModel> get copyWith => _$RiskProfileModelCopyWithImpl<RiskProfileModel>(this as RiskProfileModel, _$identity);

  /// Serializes this RiskProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientAge, patientAge) || other.patientAge == patientAge)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&const DeepCollectionEquality().equals(other.riskFactors, riskFactors)&&const DeepCollectionEquality().equals(other.recommendedInterventions, recommendedInterventions)&&(identical(other.hospitalizationProbability, hospitalizationProbability) || other.hospitalizationProbability == hospitalizationProbability)&&(identical(other.emergencyVisitProbability, emergencyVisitProbability) || other.emergencyVisitProbability == emergencyVisitProbability)&&(identical(other.estimatedAnnualCost, estimatedAnnualCost) || other.estimatedAnnualCost == estimatedAnnualCost)&&(identical(other.potentialSavings, potentialSavings) || other.potentialSavings == potentialSavings)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.primaryCondition, primaryCondition) || other.primaryCondition == primaryCondition)&&const DeepCollectionEquality().equals(other.comorbidities, comorbidities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,patientId,patientName,patientAge,gender,riskScore,riskLevel,const DeepCollectionEquality().hash(riskFactors),const DeepCollectionEquality().hash(recommendedInterventions),hospitalizationProbability,emergencyVisitProbability,estimatedAnnualCost,potentialSavings,lastUpdated,primaryCondition,const DeepCollectionEquality().hash(comorbidities));

@override
String toString() {
  return 'RiskProfileModel(id: $id, patientId: $patientId, patientName: $patientName, patientAge: $patientAge, gender: $gender, riskScore: $riskScore, riskLevel: $riskLevel, riskFactors: $riskFactors, recommendedInterventions: $recommendedInterventions, hospitalizationProbability: $hospitalizationProbability, emergencyVisitProbability: $emergencyVisitProbability, estimatedAnnualCost: $estimatedAnnualCost, potentialSavings: $potentialSavings, lastUpdated: $lastUpdated, primaryCondition: $primaryCondition, comorbidities: $comorbidities)';
}


}

/// @nodoc
abstract mixin class $RiskProfileModelCopyWith<$Res>  {
  factory $RiskProfileModelCopyWith(RiskProfileModel value, $Res Function(RiskProfileModel) _then) = _$RiskProfileModelCopyWithImpl;
@useResult
$Res call({
 String id, String patientId, String patientName, int patientAge, String gender, double riskScore, String riskLevel, List<RiskFactorModel> riskFactors, List<InterventionModel> recommendedInterventions, double hospitalizationProbability, double emergencyVisitProbability, double estimatedAnnualCost, double potentialSavings, DateTime lastUpdated, String? primaryCondition, List<String>? comorbidities
});




}
/// @nodoc
class _$RiskProfileModelCopyWithImpl<$Res>
    implements $RiskProfileModelCopyWith<$Res> {
  _$RiskProfileModelCopyWithImpl(this._self, this._then);

  final RiskProfileModel _self;
  final $Res Function(RiskProfileModel) _then;

/// Create a copy of RiskProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? patientAge = null,Object? gender = null,Object? riskScore = null,Object? riskLevel = null,Object? riskFactors = null,Object? recommendedInterventions = null,Object? hospitalizationProbability = null,Object? emergencyVisitProbability = null,Object? estimatedAnnualCost = null,Object? potentialSavings = null,Object? lastUpdated = null,Object? primaryCondition = freezed,Object? comorbidities = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientAge: null == patientAge ? _self.patientAge : patientAge // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as double,riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String,riskFactors: null == riskFactors ? _self.riskFactors : riskFactors // ignore: cast_nullable_to_non_nullable
as List<RiskFactorModel>,recommendedInterventions: null == recommendedInterventions ? _self.recommendedInterventions : recommendedInterventions // ignore: cast_nullable_to_non_nullable
as List<InterventionModel>,hospitalizationProbability: null == hospitalizationProbability ? _self.hospitalizationProbability : hospitalizationProbability // ignore: cast_nullable_to_non_nullable
as double,emergencyVisitProbability: null == emergencyVisitProbability ? _self.emergencyVisitProbability : emergencyVisitProbability // ignore: cast_nullable_to_non_nullable
as double,estimatedAnnualCost: null == estimatedAnnualCost ? _self.estimatedAnnualCost : estimatedAnnualCost // ignore: cast_nullable_to_non_nullable
as double,potentialSavings: null == potentialSavings ? _self.potentialSavings : potentialSavings // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,primaryCondition: freezed == primaryCondition ? _self.primaryCondition : primaryCondition // ignore: cast_nullable_to_non_nullable
as String?,comorbidities: freezed == comorbidities ? _self.comorbidities : comorbidities // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskProfileModel].
extension RiskProfileModelPatterns on RiskProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _RiskProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _RiskProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  int patientAge,  String gender,  double riskScore,  String riskLevel,  List<RiskFactorModel> riskFactors,  List<InterventionModel> recommendedInterventions,  double hospitalizationProbability,  double emergencyVisitProbability,  double estimatedAnnualCost,  double potentialSavings,  DateTime lastUpdated,  String? primaryCondition,  List<String>? comorbidities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskProfileModel() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.patientAge,_that.gender,_that.riskScore,_that.riskLevel,_that.riskFactors,_that.recommendedInterventions,_that.hospitalizationProbability,_that.emergencyVisitProbability,_that.estimatedAnnualCost,_that.potentialSavings,_that.lastUpdated,_that.primaryCondition,_that.comorbidities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String patientId,  String patientName,  int patientAge,  String gender,  double riskScore,  String riskLevel,  List<RiskFactorModel> riskFactors,  List<InterventionModel> recommendedInterventions,  double hospitalizationProbability,  double emergencyVisitProbability,  double estimatedAnnualCost,  double potentialSavings,  DateTime lastUpdated,  String? primaryCondition,  List<String>? comorbidities)  $default,) {final _that = this;
switch (_that) {
case _RiskProfileModel():
return $default(_that.id,_that.patientId,_that.patientName,_that.patientAge,_that.gender,_that.riskScore,_that.riskLevel,_that.riskFactors,_that.recommendedInterventions,_that.hospitalizationProbability,_that.emergencyVisitProbability,_that.estimatedAnnualCost,_that.potentialSavings,_that.lastUpdated,_that.primaryCondition,_that.comorbidities);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String patientId,  String patientName,  int patientAge,  String gender,  double riskScore,  String riskLevel,  List<RiskFactorModel> riskFactors,  List<InterventionModel> recommendedInterventions,  double hospitalizationProbability,  double emergencyVisitProbability,  double estimatedAnnualCost,  double potentialSavings,  DateTime lastUpdated,  String? primaryCondition,  List<String>? comorbidities)?  $default,) {final _that = this;
switch (_that) {
case _RiskProfileModel() when $default != null:
return $default(_that.id,_that.patientId,_that.patientName,_that.patientAge,_that.gender,_that.riskScore,_that.riskLevel,_that.riskFactors,_that.recommendedInterventions,_that.hospitalizationProbability,_that.emergencyVisitProbability,_that.estimatedAnnualCost,_that.potentialSavings,_that.lastUpdated,_that.primaryCondition,_that.comorbidities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RiskProfileModel extends RiskProfileModel {
  const _RiskProfileModel({required this.id, required this.patientId, required this.patientName, required this.patientAge, required this.gender, required this.riskScore, required this.riskLevel, required final  List<RiskFactorModel> riskFactors, required final  List<InterventionModel> recommendedInterventions, required this.hospitalizationProbability, required this.emergencyVisitProbability, required this.estimatedAnnualCost, required this.potentialSavings, required this.lastUpdated, this.primaryCondition, final  List<String>? comorbidities}): _riskFactors = riskFactors,_recommendedInterventions = recommendedInterventions,_comorbidities = comorbidities,super._();
  factory _RiskProfileModel.fromJson(Map<String, dynamic> json) => _$RiskProfileModelFromJson(json);

@override final  String id;
@override final  String patientId;
@override final  String patientName;
@override final  int patientAge;
@override final  String gender;
@override final  double riskScore;
@override final  String riskLevel;
 final  List<RiskFactorModel> _riskFactors;
@override List<RiskFactorModel> get riskFactors {
  if (_riskFactors is EqualUnmodifiableListView) return _riskFactors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_riskFactors);
}

 final  List<InterventionModel> _recommendedInterventions;
@override List<InterventionModel> get recommendedInterventions {
  if (_recommendedInterventions is EqualUnmodifiableListView) return _recommendedInterventions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recommendedInterventions);
}

@override final  double hospitalizationProbability;
@override final  double emergencyVisitProbability;
@override final  double estimatedAnnualCost;
@override final  double potentialSavings;
@override final  DateTime lastUpdated;
@override final  String? primaryCondition;
 final  List<String>? _comorbidities;
@override List<String>? get comorbidities {
  final value = _comorbidities;
  if (value == null) return null;
  if (_comorbidities is EqualUnmodifiableListView) return _comorbidities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of RiskProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskProfileModelCopyWith<_RiskProfileModel> get copyWith => __$RiskProfileModelCopyWithImpl<_RiskProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RiskProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.patientName, patientName) || other.patientName == patientName)&&(identical(other.patientAge, patientAge) || other.patientAge == patientAge)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&const DeepCollectionEquality().equals(other._riskFactors, _riskFactors)&&const DeepCollectionEquality().equals(other._recommendedInterventions, _recommendedInterventions)&&(identical(other.hospitalizationProbability, hospitalizationProbability) || other.hospitalizationProbability == hospitalizationProbability)&&(identical(other.emergencyVisitProbability, emergencyVisitProbability) || other.emergencyVisitProbability == emergencyVisitProbability)&&(identical(other.estimatedAnnualCost, estimatedAnnualCost) || other.estimatedAnnualCost == estimatedAnnualCost)&&(identical(other.potentialSavings, potentialSavings) || other.potentialSavings == potentialSavings)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.primaryCondition, primaryCondition) || other.primaryCondition == primaryCondition)&&const DeepCollectionEquality().equals(other._comorbidities, _comorbidities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,patientId,patientName,patientAge,gender,riskScore,riskLevel,const DeepCollectionEquality().hash(_riskFactors),const DeepCollectionEquality().hash(_recommendedInterventions),hospitalizationProbability,emergencyVisitProbability,estimatedAnnualCost,potentialSavings,lastUpdated,primaryCondition,const DeepCollectionEquality().hash(_comorbidities));

@override
String toString() {
  return 'RiskProfileModel(id: $id, patientId: $patientId, patientName: $patientName, patientAge: $patientAge, gender: $gender, riskScore: $riskScore, riskLevel: $riskLevel, riskFactors: $riskFactors, recommendedInterventions: $recommendedInterventions, hospitalizationProbability: $hospitalizationProbability, emergencyVisitProbability: $emergencyVisitProbability, estimatedAnnualCost: $estimatedAnnualCost, potentialSavings: $potentialSavings, lastUpdated: $lastUpdated, primaryCondition: $primaryCondition, comorbidities: $comorbidities)';
}


}

/// @nodoc
abstract mixin class _$RiskProfileModelCopyWith<$Res> implements $RiskProfileModelCopyWith<$Res> {
  factory _$RiskProfileModelCopyWith(_RiskProfileModel value, $Res Function(_RiskProfileModel) _then) = __$RiskProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String patientId, String patientName, int patientAge, String gender, double riskScore, String riskLevel, List<RiskFactorModel> riskFactors, List<InterventionModel> recommendedInterventions, double hospitalizationProbability, double emergencyVisitProbability, double estimatedAnnualCost, double potentialSavings, DateTime lastUpdated, String? primaryCondition, List<String>? comorbidities
});




}
/// @nodoc
class __$RiskProfileModelCopyWithImpl<$Res>
    implements _$RiskProfileModelCopyWith<$Res> {
  __$RiskProfileModelCopyWithImpl(this._self, this._then);

  final _RiskProfileModel _self;
  final $Res Function(_RiskProfileModel) _then;

/// Create a copy of RiskProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patientId = null,Object? patientName = null,Object? patientAge = null,Object? gender = null,Object? riskScore = null,Object? riskLevel = null,Object? riskFactors = null,Object? recommendedInterventions = null,Object? hospitalizationProbability = null,Object? emergencyVisitProbability = null,Object? estimatedAnnualCost = null,Object? potentialSavings = null,Object? lastUpdated = null,Object? primaryCondition = freezed,Object? comorbidities = freezed,}) {
  return _then(_RiskProfileModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,patientName: null == patientName ? _self.patientName : patientName // ignore: cast_nullable_to_non_nullable
as String,patientAge: null == patientAge ? _self.patientAge : patientAge // ignore: cast_nullable_to_non_nullable
as int,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as double,riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String,riskFactors: null == riskFactors ? _self._riskFactors : riskFactors // ignore: cast_nullable_to_non_nullable
as List<RiskFactorModel>,recommendedInterventions: null == recommendedInterventions ? _self._recommendedInterventions : recommendedInterventions // ignore: cast_nullable_to_non_nullable
as List<InterventionModel>,hospitalizationProbability: null == hospitalizationProbability ? _self.hospitalizationProbability : hospitalizationProbability // ignore: cast_nullable_to_non_nullable
as double,emergencyVisitProbability: null == emergencyVisitProbability ? _self.emergencyVisitProbability : emergencyVisitProbability // ignore: cast_nullable_to_non_nullable
as double,estimatedAnnualCost: null == estimatedAnnualCost ? _self.estimatedAnnualCost : estimatedAnnualCost // ignore: cast_nullable_to_non_nullable
as double,potentialSavings: null == potentialSavings ? _self.potentialSavings : potentialSavings // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,primaryCondition: freezed == primaryCondition ? _self.primaryCondition : primaryCondition // ignore: cast_nullable_to_non_nullable
as String?,comorbidities: freezed == comorbidities ? _self._comorbidities : comorbidities // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
