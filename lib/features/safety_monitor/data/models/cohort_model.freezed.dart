// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cohort_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CohortModel {

 String get id; String get cohortType; String get cohortName; String get description; int get totalPatients; int get lowRisk; int get moderateRisk; int get highRisk; int get criticalRisk; int get activeAlerts; int get incidentsThisMonth; int get incidentsLastMonth; double get incidentChangePercentage; double get avgRiskScore; int get preventiveActionsActive; List<String> get topRiskFactors; double get costImpact;
/// Create a copy of CohortModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CohortModelCopyWith<CohortModel> get copyWith => _$CohortModelCopyWithImpl<CohortModel>(this as CohortModel, _$identity);

  /// Serializes this CohortModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CohortModel&&(identical(other.id, id) || other.id == id)&&(identical(other.cohortType, cohortType) || other.cohortType == cohortType)&&(identical(other.cohortName, cohortName) || other.cohortName == cohortName)&&(identical(other.description, description) || other.description == description)&&(identical(other.totalPatients, totalPatients) || other.totalPatients == totalPatients)&&(identical(other.lowRisk, lowRisk) || other.lowRisk == lowRisk)&&(identical(other.moderateRisk, moderateRisk) || other.moderateRisk == moderateRisk)&&(identical(other.highRisk, highRisk) || other.highRisk == highRisk)&&(identical(other.criticalRisk, criticalRisk) || other.criticalRisk == criticalRisk)&&(identical(other.activeAlerts, activeAlerts) || other.activeAlerts == activeAlerts)&&(identical(other.incidentsThisMonth, incidentsThisMonth) || other.incidentsThisMonth == incidentsThisMonth)&&(identical(other.incidentsLastMonth, incidentsLastMonth) || other.incidentsLastMonth == incidentsLastMonth)&&(identical(other.incidentChangePercentage, incidentChangePercentage) || other.incidentChangePercentage == incidentChangePercentage)&&(identical(other.avgRiskScore, avgRiskScore) || other.avgRiskScore == avgRiskScore)&&(identical(other.preventiveActionsActive, preventiveActionsActive) || other.preventiveActionsActive == preventiveActionsActive)&&const DeepCollectionEquality().equals(other.topRiskFactors, topRiskFactors)&&(identical(other.costImpact, costImpact) || other.costImpact == costImpact));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,cohortType,cohortName,description,totalPatients,lowRisk,moderateRisk,highRisk,criticalRisk,activeAlerts,incidentsThisMonth,incidentsLastMonth,incidentChangePercentage,avgRiskScore,preventiveActionsActive,const DeepCollectionEquality().hash(topRiskFactors),costImpact);

@override
String toString() {
  return 'CohortModel(id: $id, cohortType: $cohortType, cohortName: $cohortName, description: $description, totalPatients: $totalPatients, lowRisk: $lowRisk, moderateRisk: $moderateRisk, highRisk: $highRisk, criticalRisk: $criticalRisk, activeAlerts: $activeAlerts, incidentsThisMonth: $incidentsThisMonth, incidentsLastMonth: $incidentsLastMonth, incidentChangePercentage: $incidentChangePercentage, avgRiskScore: $avgRiskScore, preventiveActionsActive: $preventiveActionsActive, topRiskFactors: $topRiskFactors, costImpact: $costImpact)';
}


}

/// @nodoc
abstract mixin class $CohortModelCopyWith<$Res>  {
  factory $CohortModelCopyWith(CohortModel value, $Res Function(CohortModel) _then) = _$CohortModelCopyWithImpl;
@useResult
$Res call({
 String id, String cohortType, String cohortName, String description, int totalPatients, int lowRisk, int moderateRisk, int highRisk, int criticalRisk, int activeAlerts, int incidentsThisMonth, int incidentsLastMonth, double incidentChangePercentage, double avgRiskScore, int preventiveActionsActive, List<String> topRiskFactors, double costImpact
});




}
/// @nodoc
class _$CohortModelCopyWithImpl<$Res>
    implements $CohortModelCopyWith<$Res> {
  _$CohortModelCopyWithImpl(this._self, this._then);

  final CohortModel _self;
  final $Res Function(CohortModel) _then;

/// Create a copy of CohortModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? cohortType = null,Object? cohortName = null,Object? description = null,Object? totalPatients = null,Object? lowRisk = null,Object? moderateRisk = null,Object? highRisk = null,Object? criticalRisk = null,Object? activeAlerts = null,Object? incidentsThisMonth = null,Object? incidentsLastMonth = null,Object? incidentChangePercentage = null,Object? avgRiskScore = null,Object? preventiveActionsActive = null,Object? topRiskFactors = null,Object? costImpact = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,cohortType: null == cohortType ? _self.cohortType : cohortType // ignore: cast_nullable_to_non_nullable
as String,cohortName: null == cohortName ? _self.cohortName : cohortName // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [CohortModel].
extension CohortModelPatterns on CohortModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CohortModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CohortModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CohortModel value)  $default,){
final _that = this;
switch (_that) {
case _CohortModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CohortModel value)?  $default,){
final _that = this;
switch (_that) {
case _CohortModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String cohortType,  String cohortName,  String description,  int totalPatients,  int lowRisk,  int moderateRisk,  int highRisk,  int criticalRisk,  int activeAlerts,  int incidentsThisMonth,  int incidentsLastMonth,  double incidentChangePercentage,  double avgRiskScore,  int preventiveActionsActive,  List<String> topRiskFactors,  double costImpact)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CohortModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String cohortType,  String cohortName,  String description,  int totalPatients,  int lowRisk,  int moderateRisk,  int highRisk,  int criticalRisk,  int activeAlerts,  int incidentsThisMonth,  int incidentsLastMonth,  double incidentChangePercentage,  double avgRiskScore,  int preventiveActionsActive,  List<String> topRiskFactors,  double costImpact)  $default,) {final _that = this;
switch (_that) {
case _CohortModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String cohortType,  String cohortName,  String description,  int totalPatients,  int lowRisk,  int moderateRisk,  int highRisk,  int criticalRisk,  int activeAlerts,  int incidentsThisMonth,  int incidentsLastMonth,  double incidentChangePercentage,  double avgRiskScore,  int preventiveActionsActive,  List<String> topRiskFactors,  double costImpact)?  $default,) {final _that = this;
switch (_that) {
case _CohortModel() when $default != null:
return $default(_that.id,_that.cohortType,_that.cohortName,_that.description,_that.totalPatients,_that.lowRisk,_that.moderateRisk,_that.highRisk,_that.criticalRisk,_that.activeAlerts,_that.incidentsThisMonth,_that.incidentsLastMonth,_that.incidentChangePercentage,_that.avgRiskScore,_that.preventiveActionsActive,_that.topRiskFactors,_that.costImpact);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CohortModel extends CohortModel {
  const _CohortModel({required this.id, required this.cohortType, required this.cohortName, required this.description, required this.totalPatients, required this.lowRisk, required this.moderateRisk, required this.highRisk, required this.criticalRisk, required this.activeAlerts, required this.incidentsThisMonth, required this.incidentsLastMonth, required this.incidentChangePercentage, required this.avgRiskScore, required this.preventiveActionsActive, required final  List<String> topRiskFactors, required this.costImpact}): _topRiskFactors = topRiskFactors,super._();
  factory _CohortModel.fromJson(Map<String, dynamic> json) => _$CohortModelFromJson(json);

@override final  String id;
@override final  String cohortType;
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

/// Create a copy of CohortModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CohortModelCopyWith<_CohortModel> get copyWith => __$CohortModelCopyWithImpl<_CohortModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CohortModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CohortModel&&(identical(other.id, id) || other.id == id)&&(identical(other.cohortType, cohortType) || other.cohortType == cohortType)&&(identical(other.cohortName, cohortName) || other.cohortName == cohortName)&&(identical(other.description, description) || other.description == description)&&(identical(other.totalPatients, totalPatients) || other.totalPatients == totalPatients)&&(identical(other.lowRisk, lowRisk) || other.lowRisk == lowRisk)&&(identical(other.moderateRisk, moderateRisk) || other.moderateRisk == moderateRisk)&&(identical(other.highRisk, highRisk) || other.highRisk == highRisk)&&(identical(other.criticalRisk, criticalRisk) || other.criticalRisk == criticalRisk)&&(identical(other.activeAlerts, activeAlerts) || other.activeAlerts == activeAlerts)&&(identical(other.incidentsThisMonth, incidentsThisMonth) || other.incidentsThisMonth == incidentsThisMonth)&&(identical(other.incidentsLastMonth, incidentsLastMonth) || other.incidentsLastMonth == incidentsLastMonth)&&(identical(other.incidentChangePercentage, incidentChangePercentage) || other.incidentChangePercentage == incidentChangePercentage)&&(identical(other.avgRiskScore, avgRiskScore) || other.avgRiskScore == avgRiskScore)&&(identical(other.preventiveActionsActive, preventiveActionsActive) || other.preventiveActionsActive == preventiveActionsActive)&&const DeepCollectionEquality().equals(other._topRiskFactors, _topRiskFactors)&&(identical(other.costImpact, costImpact) || other.costImpact == costImpact));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,cohortType,cohortName,description,totalPatients,lowRisk,moderateRisk,highRisk,criticalRisk,activeAlerts,incidentsThisMonth,incidentsLastMonth,incidentChangePercentage,avgRiskScore,preventiveActionsActive,const DeepCollectionEquality().hash(_topRiskFactors),costImpact);

@override
String toString() {
  return 'CohortModel(id: $id, cohortType: $cohortType, cohortName: $cohortName, description: $description, totalPatients: $totalPatients, lowRisk: $lowRisk, moderateRisk: $moderateRisk, highRisk: $highRisk, criticalRisk: $criticalRisk, activeAlerts: $activeAlerts, incidentsThisMonth: $incidentsThisMonth, incidentsLastMonth: $incidentsLastMonth, incidentChangePercentage: $incidentChangePercentage, avgRiskScore: $avgRiskScore, preventiveActionsActive: $preventiveActionsActive, topRiskFactors: $topRiskFactors, costImpact: $costImpact)';
}


}

/// @nodoc
abstract mixin class _$CohortModelCopyWith<$Res> implements $CohortModelCopyWith<$Res> {
  factory _$CohortModelCopyWith(_CohortModel value, $Res Function(_CohortModel) _then) = __$CohortModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String cohortType, String cohortName, String description, int totalPatients, int lowRisk, int moderateRisk, int highRisk, int criticalRisk, int activeAlerts, int incidentsThisMonth, int incidentsLastMonth, double incidentChangePercentage, double avgRiskScore, int preventiveActionsActive, List<String> topRiskFactors, double costImpact
});




}
/// @nodoc
class __$CohortModelCopyWithImpl<$Res>
    implements _$CohortModelCopyWith<$Res> {
  __$CohortModelCopyWithImpl(this._self, this._then);

  final _CohortModel _self;
  final $Res Function(_CohortModel) _then;

/// Create a copy of CohortModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? cohortType = null,Object? cohortName = null,Object? description = null,Object? totalPatients = null,Object? lowRisk = null,Object? moderateRisk = null,Object? highRisk = null,Object? criticalRisk = null,Object? activeAlerts = null,Object? incidentsThisMonth = null,Object? incidentsLastMonth = null,Object? incidentChangePercentage = null,Object? avgRiskScore = null,Object? preventiveActionsActive = null,Object? topRiskFactors = null,Object? costImpact = null,}) {
  return _then(_CohortModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,cohortType: null == cohortType ? _self.cohortType : cohortType // ignore: cast_nullable_to_non_nullable
as String,cohortName: null == cohortName ? _self.cohortName : cohortName // ignore: cast_nullable_to_non_nullable
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
