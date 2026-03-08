// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intervention_impact_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InterventionImpactModel {

 String get id; String get category; String get name; int get totalInterventions; int get successfulOutcomes; double get successRate; double get avgCostPerIntervention; double get avgSavingsPerSuccess; double get totalSavings; double get roi;
/// Create a copy of InterventionImpactModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InterventionImpactModelCopyWith<InterventionImpactModel> get copyWith => _$InterventionImpactModelCopyWithImpl<InterventionImpactModel>(this as InterventionImpactModel, _$identity);

  /// Serializes this InterventionImpactModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterventionImpactModel&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.name, name) || other.name == name)&&(identical(other.totalInterventions, totalInterventions) || other.totalInterventions == totalInterventions)&&(identical(other.successfulOutcomes, successfulOutcomes) || other.successfulOutcomes == successfulOutcomes)&&(identical(other.successRate, successRate) || other.successRate == successRate)&&(identical(other.avgCostPerIntervention, avgCostPerIntervention) || other.avgCostPerIntervention == avgCostPerIntervention)&&(identical(other.avgSavingsPerSuccess, avgSavingsPerSuccess) || other.avgSavingsPerSuccess == avgSavingsPerSuccess)&&(identical(other.totalSavings, totalSavings) || other.totalSavings == totalSavings)&&(identical(other.roi, roi) || other.roi == roi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,name,totalInterventions,successfulOutcomes,successRate,avgCostPerIntervention,avgSavingsPerSuccess,totalSavings,roi);

@override
String toString() {
  return 'InterventionImpactModel(id: $id, category: $category, name: $name, totalInterventions: $totalInterventions, successfulOutcomes: $successfulOutcomes, successRate: $successRate, avgCostPerIntervention: $avgCostPerIntervention, avgSavingsPerSuccess: $avgSavingsPerSuccess, totalSavings: $totalSavings, roi: $roi)';
}


}

/// @nodoc
abstract mixin class $InterventionImpactModelCopyWith<$Res>  {
  factory $InterventionImpactModelCopyWith(InterventionImpactModel value, $Res Function(InterventionImpactModel) _then) = _$InterventionImpactModelCopyWithImpl;
@useResult
$Res call({
 String id, String category, String name, int totalInterventions, int successfulOutcomes, double successRate, double avgCostPerIntervention, double avgSavingsPerSuccess, double totalSavings, double roi
});




}
/// @nodoc
class _$InterventionImpactModelCopyWithImpl<$Res>
    implements $InterventionImpactModelCopyWith<$Res> {
  _$InterventionImpactModelCopyWithImpl(this._self, this._then);

  final InterventionImpactModel _self;
  final $Res Function(InterventionImpactModel) _then;

/// Create a copy of InterventionImpactModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? category = null,Object? name = null,Object? totalInterventions = null,Object? successfulOutcomes = null,Object? successRate = null,Object? avgCostPerIntervention = null,Object? avgSavingsPerSuccess = null,Object? totalSavings = null,Object? roi = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,totalInterventions: null == totalInterventions ? _self.totalInterventions : totalInterventions // ignore: cast_nullable_to_non_nullable
as int,successfulOutcomes: null == successfulOutcomes ? _self.successfulOutcomes : successfulOutcomes // ignore: cast_nullable_to_non_nullable
as int,successRate: null == successRate ? _self.successRate : successRate // ignore: cast_nullable_to_non_nullable
as double,avgCostPerIntervention: null == avgCostPerIntervention ? _self.avgCostPerIntervention : avgCostPerIntervention // ignore: cast_nullable_to_non_nullable
as double,avgSavingsPerSuccess: null == avgSavingsPerSuccess ? _self.avgSavingsPerSuccess : avgSavingsPerSuccess // ignore: cast_nullable_to_non_nullable
as double,totalSavings: null == totalSavings ? _self.totalSavings : totalSavings // ignore: cast_nullable_to_non_nullable
as double,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [InterventionImpactModel].
extension InterventionImpactModelPatterns on InterventionImpactModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InterventionImpactModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InterventionImpactModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InterventionImpactModel value)  $default,){
final _that = this;
switch (_that) {
case _InterventionImpactModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InterventionImpactModel value)?  $default,){
final _that = this;
switch (_that) {
case _InterventionImpactModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String category,  String name,  int totalInterventions,  int successfulOutcomes,  double successRate,  double avgCostPerIntervention,  double avgSavingsPerSuccess,  double totalSavings,  double roi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InterventionImpactModel() when $default != null:
return $default(_that.id,_that.category,_that.name,_that.totalInterventions,_that.successfulOutcomes,_that.successRate,_that.avgCostPerIntervention,_that.avgSavingsPerSuccess,_that.totalSavings,_that.roi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String category,  String name,  int totalInterventions,  int successfulOutcomes,  double successRate,  double avgCostPerIntervention,  double avgSavingsPerSuccess,  double totalSavings,  double roi)  $default,) {final _that = this;
switch (_that) {
case _InterventionImpactModel():
return $default(_that.id,_that.category,_that.name,_that.totalInterventions,_that.successfulOutcomes,_that.successRate,_that.avgCostPerIntervention,_that.avgSavingsPerSuccess,_that.totalSavings,_that.roi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String category,  String name,  int totalInterventions,  int successfulOutcomes,  double successRate,  double avgCostPerIntervention,  double avgSavingsPerSuccess,  double totalSavings,  double roi)?  $default,) {final _that = this;
switch (_that) {
case _InterventionImpactModel() when $default != null:
return $default(_that.id,_that.category,_that.name,_that.totalInterventions,_that.successfulOutcomes,_that.successRate,_that.avgCostPerIntervention,_that.avgSavingsPerSuccess,_that.totalSavings,_that.roi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InterventionImpactModel extends InterventionImpactModel {
  const _InterventionImpactModel({required this.id, required this.category, required this.name, required this.totalInterventions, required this.successfulOutcomes, required this.successRate, required this.avgCostPerIntervention, required this.avgSavingsPerSuccess, required this.totalSavings, required this.roi}): super._();
  factory _InterventionImpactModel.fromJson(Map<String, dynamic> json) => _$InterventionImpactModelFromJson(json);

@override final  String id;
@override final  String category;
@override final  String name;
@override final  int totalInterventions;
@override final  int successfulOutcomes;
@override final  double successRate;
@override final  double avgCostPerIntervention;
@override final  double avgSavingsPerSuccess;
@override final  double totalSavings;
@override final  double roi;

/// Create a copy of InterventionImpactModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InterventionImpactModelCopyWith<_InterventionImpactModel> get copyWith => __$InterventionImpactModelCopyWithImpl<_InterventionImpactModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InterventionImpactModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterventionImpactModel&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.name, name) || other.name == name)&&(identical(other.totalInterventions, totalInterventions) || other.totalInterventions == totalInterventions)&&(identical(other.successfulOutcomes, successfulOutcomes) || other.successfulOutcomes == successfulOutcomes)&&(identical(other.successRate, successRate) || other.successRate == successRate)&&(identical(other.avgCostPerIntervention, avgCostPerIntervention) || other.avgCostPerIntervention == avgCostPerIntervention)&&(identical(other.avgSavingsPerSuccess, avgSavingsPerSuccess) || other.avgSavingsPerSuccess == avgSavingsPerSuccess)&&(identical(other.totalSavings, totalSavings) || other.totalSavings == totalSavings)&&(identical(other.roi, roi) || other.roi == roi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,name,totalInterventions,successfulOutcomes,successRate,avgCostPerIntervention,avgSavingsPerSuccess,totalSavings,roi);

@override
String toString() {
  return 'InterventionImpactModel(id: $id, category: $category, name: $name, totalInterventions: $totalInterventions, successfulOutcomes: $successfulOutcomes, successRate: $successRate, avgCostPerIntervention: $avgCostPerIntervention, avgSavingsPerSuccess: $avgSavingsPerSuccess, totalSavings: $totalSavings, roi: $roi)';
}


}

/// @nodoc
abstract mixin class _$InterventionImpactModelCopyWith<$Res> implements $InterventionImpactModelCopyWith<$Res> {
  factory _$InterventionImpactModelCopyWith(_InterventionImpactModel value, $Res Function(_InterventionImpactModel) _then) = __$InterventionImpactModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String category, String name, int totalInterventions, int successfulOutcomes, double successRate, double avgCostPerIntervention, double avgSavingsPerSuccess, double totalSavings, double roi
});




}
/// @nodoc
class __$InterventionImpactModelCopyWithImpl<$Res>
    implements _$InterventionImpactModelCopyWith<$Res> {
  __$InterventionImpactModelCopyWithImpl(this._self, this._then);

  final _InterventionImpactModel _self;
  final $Res Function(_InterventionImpactModel) _then;

/// Create a copy of InterventionImpactModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? category = null,Object? name = null,Object? totalInterventions = null,Object? successfulOutcomes = null,Object? successRate = null,Object? avgCostPerIntervention = null,Object? avgSavingsPerSuccess = null,Object? totalSavings = null,Object? roi = null,}) {
  return _then(_InterventionImpactModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,totalInterventions: null == totalInterventions ? _self.totalInterventions : totalInterventions // ignore: cast_nullable_to_non_nullable
as int,successfulOutcomes: null == successfulOutcomes ? _self.successfulOutcomes : successfulOutcomes // ignore: cast_nullable_to_non_nullable
as int,successRate: null == successRate ? _self.successRate : successRate // ignore: cast_nullable_to_non_nullable
as double,avgCostPerIntervention: null == avgCostPerIntervention ? _self.avgCostPerIntervention : avgCostPerIntervention // ignore: cast_nullable_to_non_nullable
as double,avgSavingsPerSuccess: null == avgSavingsPerSuccess ? _self.avgSavingsPerSuccess : avgSavingsPerSuccess // ignore: cast_nullable_to_non_nullable
as double,totalSavings: null == totalSavings ? _self.totalSavings : totalSavings // ignore: cast_nullable_to_non_nullable
as double,roi: null == roi ? _self.roi : roi // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
