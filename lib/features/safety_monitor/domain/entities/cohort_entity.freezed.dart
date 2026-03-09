// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cohort_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CohortEntity {

 String get id; CohortType get cohortType; String get cohortName; String get description; int get totalPatients; int get lowRisk; int get moderateRisk; int get highRisk; int get criticalRisk; int get activeAlerts; int get incidentsThisMonth; int get incidentsLastMonth; double get incidentChangePercentage; double get avgRiskScore; int get preventiveActionsActive; List<String> get topRiskFactors; double get costImpact;
/// Create a copy of CohortEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CohortEntityCopyWith<CohortEntity> get copyWith => _$CohortEntityCopyWithImpl<CohortEntity>(this as CohortEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CohortEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.cohortType, cohortType) || other.cohortType == cohortType)&&(identical(other.cohortName, cohortName) || other.cohortName == cohortName)&&(identical(other.description, description) || other.description == description)&&(identical(other.totalPatients, totalPatients) || other.totalPatients == totalPatients)&&(identical(other.lowRisk, lowRisk) || other.lowRisk == lowRisk)&&(identical(other.moderateRisk, moderateRisk) || other.moderateRisk == moderateRisk)&&(identical(other.highRisk, highRisk) || other.highRisk == highRisk)&&(identical(other.criticalRisk, criticalRisk) || other.criticalRisk == criticalRisk)&&(identical(other.activeAlerts, activeAlerts) || other.activeAlerts == activeAlerts)&&(identical(other.incidentsThisMonth, incidentsThisMonth) || other.incidentsThisMonth == incidentsThisMonth)&&(identical(other.incidentsLastMonth, incidentsLastMonth) || other.incidentsLastMonth == incidentsLastMonth)&&(identical(other.incidentChangePercentage, incidentChangePercentage) || other.incidentChangePercentage == incidentChangePercentage)&&(identical(other.avgRiskScore, avgRiskScore) || other.avgRiskScore == avgRiskScore)&&(identical(other.preventiveActionsActive, preventiveActionsActive) || other.preventiveActionsActive == preventiveActionsActive)&&const DeepCollectionEquality().equals(other.topRiskFactors, topRiskFactors)&&(identical(other.costImpact, costImpact) || other.costImpact == costImpact));
}


@override
int get hashCode => Object.hash(runtimeType,id,cohortType,cohortName,description,totalPatients,lowRisk,moderateRisk,highRisk,criticalRisk,activeAlerts,incidentsThisMonth,incidentsLastMonth,incidentChangePercentage,avgRiskScore,preventiveActionsActive,const DeepCollectionEquality().hash(topRiskFactors),costImpact);

@override
String toString() {
  return 'CohortEntity(id: $id, cohortType: $cohortType, cohortName: $cohortName, description: $description, totalPatients: $totalPatients, lowRisk: $lowRisk, moderateRisk: $moderateRisk, highRisk: $highRisk, criticalRisk: $criticalRisk, activeAlerts: $activeAlerts, incidentsThisMonth: $incidentsThisMonth, incidentsLastMonth: $incidentsLastMonth, incidentChangePercentage: $incidentChangePercentage, avgRiskScore: $avgRiskScore, preventiveActionsActive: $preventiveActionsActive, topRiskFactors: $topRiskFactors, costImpact: $costImpact)';
}


}

/// @nodoc
abstract mixin class $CohortEntityCopyWith<$Res>  {
  factory $CohortEntityCopyWith(CohortEntity value, $Res Function(CohortEntity) _then) = _$CohortEntityCopyWithImpl;
@useResult
$Res call({
 String id, CohortType cohortType, String cohortName, String description, int totalPatients, int lowRisk, int moderateRisk, int highRisk, int criticalRisk, int activeAlerts, int incidentsThisMonth, int incidentsLastMonth, double incidentChangePercentage, double avgRiskScore, int preventiveActionsActive, List<String> topRiskFactors, double costImpact
});




}
/// @nodoc
class _$CohortEntityCopyWithImpl<$Res>
    implements $CohortEntityCopyWith<$Res> {
  _$CohortEntityCopyWithImpl(this._self, this._then);

  final CohortEntity _self;
  final $Res Function(CohortEntity) _then;

/// Create a copy of CohortEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? cohortType = null,Object? cohortName = null,Object? description = null,Object? totalPatients = null,Object? lowRisk = null,Object? moderateRisk = null,Object? highRisk = null,Object? criticalRisk = null,Object? activeAlerts = null,Object? incidentsThisMonth = null,Object? incidentsLastMonth = null,Object? incidentChangePercentage = null,Object? avgRiskScore = null,Object? preventiveActionsActive = null,Object? topRiskFactors = null,Object? costImpact = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,cohortType: null == cohortType ? _self.cohortType : cohortType // ignore: cast_nullable_to_non_nullable
as CohortType,cohortName: null == cohortName ? _self.cohortName : cohortName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,totalPatients: null == totalPatients ? _self.totalPatients : totalPatients // ignore: cast_nullable_to_non_nullable
as int,lowRisk: null == lowRisk ? _self.lowRisk : lowRisk // ignore: cast_nullable_to_non_nullable
as int,moderateRisk: null == moderateRisk ? _self.moderateRisk : moderateRisk // ignore: cast_nullable_to_non_nullable
as int,highRisk: null == highRisk ? _self.highRisk : highRisk // ignore: cast_nullable_to_non_nullable
as int,criticalRisk: null == criticalRisk ? _self.criticalRisk : criticalRisk // ignore: cast_nullable_to_non_nullable
as int,activeAlerts: null == activeAlerts ? _self.activeAlerts : activeAlerts // ignore: cast_nullable_to_non_nullable
as int,incidentsThisMonth: null == incidentsThisMonth ? _self.incidentsThisMonth : incidentsThisMonth // ignore: cast_nullable_to_non_nullable
as int,incidentsLastMonth: null == incidentsLastMonth ? _self.incidentsLastMonth : incidentsLastMonth // ignore: cast_nullable_to_non_nullable
as int,incidentChangePercentage: null == incidentChangePercentage ? _self.incidentChangePercentage : incidentChangePercentage // ignore: cast_nullable_to_non_nullable
as double,avgRiskScore: null == avgRiskScore ? _self.avgRiskScore : avgRiskScore // ignore: cast_nullable_to_non_nullable
as double,preventiveActionsActive: null == preventiveActionsActive ? _self.preventiveActionsActive : preventiveActionsActive // ignore: cast_nullable_to_non_nullable
as int,topRiskFactors: null == topRiskFactors ? _self.topRiskFactors : topRiskFactors // ignore: cast_nullable_to_non_nullable
as List<String>,costImpact: null == costImpact ? _self.costImpact : costImpact // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CohortEntity].
extension CohortEntityPatterns on CohortEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CohortEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CohortEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CohortEntity value)  $default,){
final _that = this;
switch (_that) {
case _CohortEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CohortEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CohortEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  CohortType cohortType,  String cohortName,  String description,  int totalPatients,  int lowRisk,  int moderateRisk,  int highRisk,  int criticalRisk,  int activeAlerts,  int incidentsThisMonth,  int incidentsLastMonth,  double incidentChangePercentage,  double avgRiskScore,  int preventiveActionsActive,  List<String> topRiskFactors,  double costImpact)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CohortEntity() when $default != null:
return $default(_that.id,_that.cohortType,_that.cohortName,_that.description,_that.totalPatients,_that.lowRisk,_that.moderateRisk,_that.highRisk,_that.criticalRisk,_that.activeAlerts,_that.incidentsThisMonth,_that.incidentsLastMonth,_that.incidentChangePercentage,_that.avgRiskScore,_that.preventiveActionsActive,_that.topRiskFactors,_that.costImpact);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  CohortType cohortType,  String cohortName,  String description,  int totalPatients,  int lowRisk,  int moderateRisk,  int highRisk,  int criticalRisk,  int activeAlerts,  int incidentsThisMonth,  int incidentsLastMonth,  double incidentChangePercentage,  double avgRiskScore,  int preventiveActionsActive,  List<String> topRiskFactors,  double costImpact)  $default,) {final _that = this;
switch (_that) {
case _CohortEntity():
return $default(_that.id,_that.cohortType,_that.cohortName,_that.description,_that.totalPatients,_that.lowRisk,_that.moderateRisk,_that.highRisk,_that.criticalRisk,_that.activeAlerts,_that.incidentsThisMonth,_that.incidentsLastMonth,_that.incidentChangePercentage,_that.avgRiskScore,_that.preventiveActionsActive,_that.topRiskFactors,_that.costImpact);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  CohortType cohortType,  String cohortName,  String description,  int totalPatients,  int lowRisk,  int moderateRisk,  int highRisk,  int criticalRisk,  int activeAlerts,  int incidentsThisMonth,  int incidentsLastMonth,  double incidentChangePercentage,  double avgRiskScore,  int preventiveActionsActive,  List<String> topRiskFactors,  double costImpact)?  $default,) {final _that = this;
switch (_that) {
case _CohortEntity() when $default != null:
return $default(_that.id,_that.cohortType,_that.cohortName,_that.description,_that.totalPatients,_that.lowRisk,_that.moderateRisk,_that.highRisk,_that.criticalRisk,_that.activeAlerts,_that.incidentsThisMonth,_that.incidentsLastMonth,_that.incidentChangePercentage,_that.avgRiskScore,_that.preventiveActionsActive,_that.topRiskFactors,_that.costImpact);case _:
  return null;

}
}

}

/// @nodoc


class _CohortEntity implements CohortEntity {
  const _CohortEntity({required this.id, required this.cohortType, required this.cohortName, required this.description, required this.totalPatients, required this.lowRisk, required this.moderateRisk, required this.highRisk, required this.criticalRisk, required this.activeAlerts, required this.incidentsThisMonth, required this.incidentsLastMonth, required this.incidentChangePercentage, required this.avgRiskScore, required this.preventiveActionsActive, required final  List<String> topRiskFactors, required this.costImpact}): _topRiskFactors = topRiskFactors;
  

@override final  String id;
@override final  CohortType cohortType;
@override final  String cohortName;
@override final  String description;
@override final  int totalPatients;
@override final  int lowRisk;
@override final  int moderateRisk;
@override final  int highRisk;
@override final  int criticalRisk;
@override final  int activeAlerts;
@override final  int incidentsThisMonth;
@override final  int incidentsLastMonth;
@override final  double incidentChangePercentage;
@override final  double avgRiskScore;
@override final  int preventiveActionsActive;
 final  List<String> _topRiskFactors;
@override List<String> get topRiskFactors {
  if (_topRiskFactors is EqualUnmodifiableListView) return _topRiskFactors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topRiskFactors);
}

@override final  double costImpact;

/// Create a copy of CohortEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CohortEntityCopyWith<_CohortEntity> get copyWith => __$CohortEntityCopyWithImpl<_CohortEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CohortEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.cohortType, cohortType) || other.cohortType == cohortType)&&(identical(other.cohortName, cohortName) || other.cohortName == cohortName)&&(identical(other.description, description) || other.description == description)&&(identical(other.totalPatients, totalPatients) || other.totalPatients == totalPatients)&&(identical(other.lowRisk, lowRisk) || other.lowRisk == lowRisk)&&(identical(other.moderateRisk, moderateRisk) || other.moderateRisk == moderateRisk)&&(identical(other.highRisk, highRisk) || other.highRisk == highRisk)&&(identical(other.criticalRisk, criticalRisk) || other.criticalRisk == criticalRisk)&&(identical(other.activeAlerts, activeAlerts) || other.activeAlerts == activeAlerts)&&(identical(other.incidentsThisMonth, incidentsThisMonth) || other.incidentsThisMonth == incidentsThisMonth)&&(identical(other.incidentsLastMonth, incidentsLastMonth) || other.incidentsLastMonth == incidentsLastMonth)&&(identical(other.incidentChangePercentage, incidentChangePercentage) || other.incidentChangePercentage == incidentChangePercentage)&&(identical(other.avgRiskScore, avgRiskScore) || other.avgRiskScore == avgRiskScore)&&(identical(other.preventiveActionsActive, preventiveActionsActive) || other.preventiveActionsActive == preventiveActionsActive)&&const DeepCollectionEquality().equals(other._topRiskFactors, _topRiskFactors)&&(identical(other.costImpact, costImpact) || other.costImpact == costImpact));
}


@override
int get hashCode => Object.hash(runtimeType,id,cohortType,cohortName,description,totalPatients,lowRisk,moderateRisk,highRisk,criticalRisk,activeAlerts,incidentsThisMonth,incidentsLastMonth,incidentChangePercentage,avgRiskScore,preventiveActionsActive,const DeepCollectionEquality().hash(_topRiskFactors),costImpact);

@override
String toString() {
  return 'CohortEntity(id: $id, cohortType: $cohortType, cohortName: $cohortName, description: $description, totalPatients: $totalPatients, lowRisk: $lowRisk, moderateRisk: $moderateRisk, highRisk: $highRisk, criticalRisk: $criticalRisk, activeAlerts: $activeAlerts, incidentsThisMonth: $incidentsThisMonth, incidentsLastMonth: $incidentsLastMonth, incidentChangePercentage: $incidentChangePercentage, avgRiskScore: $avgRiskScore, preventiveActionsActive: $preventiveActionsActive, topRiskFactors: $topRiskFactors, costImpact: $costImpact)';
}


}

/// @nodoc
abstract mixin class _$CohortEntityCopyWith<$Res> implements $CohortEntityCopyWith<$Res> {
  factory _$CohortEntityCopyWith(_CohortEntity value, $Res Function(_CohortEntity) _then) = __$CohortEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, CohortType cohortType, String cohortName, String description, int totalPatients, int lowRisk, int moderateRisk, int highRisk, int criticalRisk, int activeAlerts, int incidentsThisMonth, int incidentsLastMonth, double incidentChangePercentage, double avgRiskScore, int preventiveActionsActive, List<String> topRiskFactors, double costImpact
});




}
/// @nodoc
class __$CohortEntityCopyWithImpl<$Res>
    implements _$CohortEntityCopyWith<$Res> {
  __$CohortEntityCopyWithImpl(this._self, this._then);

  final _CohortEntity _self;
  final $Res Function(_CohortEntity) _then;

/// Create a copy of CohortEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? cohortType = null,Object? cohortName = null,Object? description = null,Object? totalPatients = null,Object? lowRisk = null,Object? moderateRisk = null,Object? highRisk = null,Object? criticalRisk = null,Object? activeAlerts = null,Object? incidentsThisMonth = null,Object? incidentsLastMonth = null,Object? incidentChangePercentage = null,Object? avgRiskScore = null,Object? preventiveActionsActive = null,Object? topRiskFactors = null,Object? costImpact = null,}) {
  return _then(_CohortEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,cohortType: null == cohortType ? _self.cohortType : cohortType // ignore: cast_nullable_to_non_nullable
as CohortType,cohortName: null == cohortName ? _self.cohortName : cohortName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,totalPatients: null == totalPatients ? _self.totalPatients : totalPatients // ignore: cast_nullable_to_non_nullable
as int,lowRisk: null == lowRisk ? _self.lowRisk : lowRisk // ignore: cast_nullable_to_non_nullable
as int,moderateRisk: null == moderateRisk ? _self.moderateRisk : moderateRisk // ignore: cast_nullable_to_non_nullable
as int,highRisk: null == highRisk ? _self.highRisk : highRisk // ignore: cast_nullable_to_non_nullable
as int,criticalRisk: null == criticalRisk ? _self.criticalRisk : criticalRisk // ignore: cast_nullable_to_non_nullable
as int,activeAlerts: null == activeAlerts ? _self.activeAlerts : activeAlerts // ignore: cast_nullable_to_non_nullable
as int,incidentsThisMonth: null == incidentsThisMonth ? _self.incidentsThisMonth : incidentsThisMonth // ignore: cast_nullable_to_non_nullable
as int,incidentsLastMonth: null == incidentsLastMonth ? _self.incidentsLastMonth : incidentsLastMonth // ignore: cast_nullable_to_non_nullable
as int,incidentChangePercentage: null == incidentChangePercentage ? _self.incidentChangePercentage : incidentChangePercentage // ignore: cast_nullable_to_non_nullable
as double,avgRiskScore: null == avgRiskScore ? _self.avgRiskScore : avgRiskScore // ignore: cast_nullable_to_non_nullable
as double,preventiveActionsActive: null == preventiveActionsActive ? _self.preventiveActionsActive : preventiveActionsActive // ignore: cast_nullable_to_non_nullable
as int,topRiskFactors: null == topRiskFactors ? _self._topRiskFactors : topRiskFactors // ignore: cast_nullable_to_non_nullable
as List<String>,costImpact: null == costImpact ? _self.costImpact : costImpact // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
