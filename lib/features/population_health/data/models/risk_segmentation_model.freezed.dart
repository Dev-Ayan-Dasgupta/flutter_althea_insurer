// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'risk_segmentation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RiskSegmentationModel {

 String get id; String get segmentName; int get population; double get populationPercentage; String get riskLevel; double get avgRiskScore; double get estimatedAnnualCost; double get potentialSavings; int get activeInterventions; List<String> get topConditions; String get recommendedAction;
/// Create a copy of RiskSegmentationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskSegmentationModelCopyWith<RiskSegmentationModel> get copyWith => _$RiskSegmentationModelCopyWithImpl<RiskSegmentationModel>(this as RiskSegmentationModel, _$identity);

  /// Serializes this RiskSegmentationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskSegmentationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.segmentName, segmentName) || other.segmentName == segmentName)&&(identical(other.population, population) || other.population == population)&&(identical(other.populationPercentage, populationPercentage) || other.populationPercentage == populationPercentage)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&(identical(other.avgRiskScore, avgRiskScore) || other.avgRiskScore == avgRiskScore)&&(identical(other.estimatedAnnualCost, estimatedAnnualCost) || other.estimatedAnnualCost == estimatedAnnualCost)&&(identical(other.potentialSavings, potentialSavings) || other.potentialSavings == potentialSavings)&&(identical(other.activeInterventions, activeInterventions) || other.activeInterventions == activeInterventions)&&const DeepCollectionEquality().equals(other.topConditions, topConditions)&&(identical(other.recommendedAction, recommendedAction) || other.recommendedAction == recommendedAction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,segmentName,population,populationPercentage,riskLevel,avgRiskScore,estimatedAnnualCost,potentialSavings,activeInterventions,const DeepCollectionEquality().hash(topConditions),recommendedAction);

@override
String toString() {
  return 'RiskSegmentationModel(id: $id, segmentName: $segmentName, population: $population, populationPercentage: $populationPercentage, riskLevel: $riskLevel, avgRiskScore: $avgRiskScore, estimatedAnnualCost: $estimatedAnnualCost, potentialSavings: $potentialSavings, activeInterventions: $activeInterventions, topConditions: $topConditions, recommendedAction: $recommendedAction)';
}


}

/// @nodoc
abstract mixin class $RiskSegmentationModelCopyWith<$Res>  {
  factory $RiskSegmentationModelCopyWith(RiskSegmentationModel value, $Res Function(RiskSegmentationModel) _then) = _$RiskSegmentationModelCopyWithImpl;
@useResult
$Res call({
 String id, String segmentName, int population, double populationPercentage, String riskLevel, double avgRiskScore, double estimatedAnnualCost, double potentialSavings, int activeInterventions, List<String> topConditions, String recommendedAction
});




}
/// @nodoc
class _$RiskSegmentationModelCopyWithImpl<$Res>
    implements $RiskSegmentationModelCopyWith<$Res> {
  _$RiskSegmentationModelCopyWithImpl(this._self, this._then);

  final RiskSegmentationModel _self;
  final $Res Function(RiskSegmentationModel) _then;

/// Create a copy of RiskSegmentationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? segmentName = null,Object? population = null,Object? populationPercentage = null,Object? riskLevel = null,Object? avgRiskScore = null,Object? estimatedAnnualCost = null,Object? potentialSavings = null,Object? activeInterventions = null,Object? topConditions = null,Object? recommendedAction = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,segmentName: null == segmentName ? _self.segmentName : segmentName // ignore: cast_nullable_to_non_nullable
as String,population: null == population ? _self.population : population // ignore: cast_nullable_to_non_nullable
as int,populationPercentage: null == populationPercentage ? _self.populationPercentage : populationPercentage // ignore: cast_nullable_to_non_nullable
as double,riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String,avgRiskScore: null == avgRiskScore ? _self.avgRiskScore : avgRiskScore // ignore: cast_nullable_to_non_nullable
as double,estimatedAnnualCost: null == estimatedAnnualCost ? _self.estimatedAnnualCost : estimatedAnnualCost // ignore: cast_nullable_to_non_nullable
as double,potentialSavings: null == potentialSavings ? _self.potentialSavings : potentialSavings // ignore: cast_nullable_to_non_nullable
as double,activeInterventions: null == activeInterventions ? _self.activeInterventions : activeInterventions // ignore: cast_nullable_to_non_nullable
as int,topConditions: null == topConditions ? _self.topConditions : topConditions // ignore: cast_nullable_to_non_nullable
as List<String>,recommendedAction: null == recommendedAction ? _self.recommendedAction : recommendedAction // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskSegmentationModel].
extension RiskSegmentationModelPatterns on RiskSegmentationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskSegmentationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskSegmentationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskSegmentationModel value)  $default,){
final _that = this;
switch (_that) {
case _RiskSegmentationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskSegmentationModel value)?  $default,){
final _that = this;
switch (_that) {
case _RiskSegmentationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String segmentName,  int population,  double populationPercentage,  String riskLevel,  double avgRiskScore,  double estimatedAnnualCost,  double potentialSavings,  int activeInterventions,  List<String> topConditions,  String recommendedAction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskSegmentationModel() when $default != null:
return $default(_that.id,_that.segmentName,_that.population,_that.populationPercentage,_that.riskLevel,_that.avgRiskScore,_that.estimatedAnnualCost,_that.potentialSavings,_that.activeInterventions,_that.topConditions,_that.recommendedAction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String segmentName,  int population,  double populationPercentage,  String riskLevel,  double avgRiskScore,  double estimatedAnnualCost,  double potentialSavings,  int activeInterventions,  List<String> topConditions,  String recommendedAction)  $default,) {final _that = this;
switch (_that) {
case _RiskSegmentationModel():
return $default(_that.id,_that.segmentName,_that.population,_that.populationPercentage,_that.riskLevel,_that.avgRiskScore,_that.estimatedAnnualCost,_that.potentialSavings,_that.activeInterventions,_that.topConditions,_that.recommendedAction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String segmentName,  int population,  double populationPercentage,  String riskLevel,  double avgRiskScore,  double estimatedAnnualCost,  double potentialSavings,  int activeInterventions,  List<String> topConditions,  String recommendedAction)?  $default,) {final _that = this;
switch (_that) {
case _RiskSegmentationModel() when $default != null:
return $default(_that.id,_that.segmentName,_that.population,_that.populationPercentage,_that.riskLevel,_that.avgRiskScore,_that.estimatedAnnualCost,_that.potentialSavings,_that.activeInterventions,_that.topConditions,_that.recommendedAction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RiskSegmentationModel extends RiskSegmentationModel {
  const _RiskSegmentationModel({required this.id, required this.segmentName, required this.population, required this.populationPercentage, required this.riskLevel, required this.avgRiskScore, required this.estimatedAnnualCost, required this.potentialSavings, required this.activeInterventions, required final  List<String> topConditions, required this.recommendedAction}): _topConditions = topConditions,super._();
  factory _RiskSegmentationModel.fromJson(Map<String, dynamic> json) => _$RiskSegmentationModelFromJson(json);

@override final  String id;
@override final  String segmentName;
@override final  int population;
@override final  double populationPercentage;
@override final  String riskLevel;
@override final  double avgRiskScore;
@override final  double estimatedAnnualCost;
@override final  double potentialSavings;
@override final  int activeInterventions;
 final  List<String> _topConditions;
@override List<String> get topConditions {
  if (_topConditions is EqualUnmodifiableListView) return _topConditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topConditions);
}

@override final  String recommendedAction;

/// Create a copy of RiskSegmentationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskSegmentationModelCopyWith<_RiskSegmentationModel> get copyWith => __$RiskSegmentationModelCopyWithImpl<_RiskSegmentationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RiskSegmentationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskSegmentationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.segmentName, segmentName) || other.segmentName == segmentName)&&(identical(other.population, population) || other.population == population)&&(identical(other.populationPercentage, populationPercentage) || other.populationPercentage == populationPercentage)&&(identical(other.riskLevel, riskLevel) || other.riskLevel == riskLevel)&&(identical(other.avgRiskScore, avgRiskScore) || other.avgRiskScore == avgRiskScore)&&(identical(other.estimatedAnnualCost, estimatedAnnualCost) || other.estimatedAnnualCost == estimatedAnnualCost)&&(identical(other.potentialSavings, potentialSavings) || other.potentialSavings == potentialSavings)&&(identical(other.activeInterventions, activeInterventions) || other.activeInterventions == activeInterventions)&&const DeepCollectionEquality().equals(other._topConditions, _topConditions)&&(identical(other.recommendedAction, recommendedAction) || other.recommendedAction == recommendedAction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,segmentName,population,populationPercentage,riskLevel,avgRiskScore,estimatedAnnualCost,potentialSavings,activeInterventions,const DeepCollectionEquality().hash(_topConditions),recommendedAction);

@override
String toString() {
  return 'RiskSegmentationModel(id: $id, segmentName: $segmentName, population: $population, populationPercentage: $populationPercentage, riskLevel: $riskLevel, avgRiskScore: $avgRiskScore, estimatedAnnualCost: $estimatedAnnualCost, potentialSavings: $potentialSavings, activeInterventions: $activeInterventions, topConditions: $topConditions, recommendedAction: $recommendedAction)';
}


}

/// @nodoc
abstract mixin class _$RiskSegmentationModelCopyWith<$Res> implements $RiskSegmentationModelCopyWith<$Res> {
  factory _$RiskSegmentationModelCopyWith(_RiskSegmentationModel value, $Res Function(_RiskSegmentationModel) _then) = __$RiskSegmentationModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String segmentName, int population, double populationPercentage, String riskLevel, double avgRiskScore, double estimatedAnnualCost, double potentialSavings, int activeInterventions, List<String> topConditions, String recommendedAction
});




}
/// @nodoc
class __$RiskSegmentationModelCopyWithImpl<$Res>
    implements _$RiskSegmentationModelCopyWith<$Res> {
  __$RiskSegmentationModelCopyWithImpl(this._self, this._then);

  final _RiskSegmentationModel _self;
  final $Res Function(_RiskSegmentationModel) _then;

/// Create a copy of RiskSegmentationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? segmentName = null,Object? population = null,Object? populationPercentage = null,Object? riskLevel = null,Object? avgRiskScore = null,Object? estimatedAnnualCost = null,Object? potentialSavings = null,Object? activeInterventions = null,Object? topConditions = null,Object? recommendedAction = null,}) {
  return _then(_RiskSegmentationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,segmentName: null == segmentName ? _self.segmentName : segmentName // ignore: cast_nullable_to_non_nullable
as String,population: null == population ? _self.population : population // ignore: cast_nullable_to_non_nullable
as int,populationPercentage: null == populationPercentage ? _self.populationPercentage : populationPercentage // ignore: cast_nullable_to_non_nullable
as double,riskLevel: null == riskLevel ? _self.riskLevel : riskLevel // ignore: cast_nullable_to_non_nullable
as String,avgRiskScore: null == avgRiskScore ? _self.avgRiskScore : avgRiskScore // ignore: cast_nullable_to_non_nullable
as double,estimatedAnnualCost: null == estimatedAnnualCost ? _self.estimatedAnnualCost : estimatedAnnualCost // ignore: cast_nullable_to_non_nullable
as double,potentialSavings: null == potentialSavings ? _self.potentialSavings : potentialSavings // ignore: cast_nullable_to_non_nullable
as double,activeInterventions: null == activeInterventions ? _self.activeInterventions : activeInterventions // ignore: cast_nullable_to_non_nullable
as int,topConditions: null == topConditions ? _self._topConditions : topConditions // ignore: cast_nullable_to_non_nullable
as List<String>,recommendedAction: null == recommendedAction ? _self.recommendedAction : recommendedAction // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
