// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fraud_pattern_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FraudPatternModel {

 String get id; String get patternType; String get patternName; String get description; int get occurrences; double get detectionRate; double get falsePositiveRate; double get estimatedLoss; double get preventedLoss; List<String> get affectedProviders; List<String> get commonIndicators; DateTime get firstDetected; DateTime get lastDetected; bool get isActive;
/// Create a copy of FraudPatternModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FraudPatternModelCopyWith<FraudPatternModel> get copyWith => _$FraudPatternModelCopyWithImpl<FraudPatternModel>(this as FraudPatternModel, _$identity);

  /// Serializes this FraudPatternModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FraudPatternModel&&(identical(other.id, id) || other.id == id)&&(identical(other.patternType, patternType) || other.patternType == patternType)&&(identical(other.patternName, patternName) || other.patternName == patternName)&&(identical(other.description, description) || other.description == description)&&(identical(other.occurrences, occurrences) || other.occurrences == occurrences)&&(identical(other.detectionRate, detectionRate) || other.detectionRate == detectionRate)&&(identical(other.falsePositiveRate, falsePositiveRate) || other.falsePositiveRate == falsePositiveRate)&&(identical(other.estimatedLoss, estimatedLoss) || other.estimatedLoss == estimatedLoss)&&(identical(other.preventedLoss, preventedLoss) || other.preventedLoss == preventedLoss)&&const DeepCollectionEquality().equals(other.affectedProviders, affectedProviders)&&const DeepCollectionEquality().equals(other.commonIndicators, commonIndicators)&&(identical(other.firstDetected, firstDetected) || other.firstDetected == firstDetected)&&(identical(other.lastDetected, lastDetected) || other.lastDetected == lastDetected)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,patternType,patternName,description,occurrences,detectionRate,falsePositiveRate,estimatedLoss,preventedLoss,const DeepCollectionEquality().hash(affectedProviders),const DeepCollectionEquality().hash(commonIndicators),firstDetected,lastDetected,isActive);

@override
String toString() {
  return 'FraudPatternModel(id: $id, patternType: $patternType, patternName: $patternName, description: $description, occurrences: $occurrences, detectionRate: $detectionRate, falsePositiveRate: $falsePositiveRate, estimatedLoss: $estimatedLoss, preventedLoss: $preventedLoss, affectedProviders: $affectedProviders, commonIndicators: $commonIndicators, firstDetected: $firstDetected, lastDetected: $lastDetected, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $FraudPatternModelCopyWith<$Res>  {
  factory $FraudPatternModelCopyWith(FraudPatternModel value, $Res Function(FraudPatternModel) _then) = _$FraudPatternModelCopyWithImpl;
@useResult
$Res call({
 String id, String patternType, String patternName, String description, int occurrences, double detectionRate, double falsePositiveRate, double estimatedLoss, double preventedLoss, List<String> affectedProviders, List<String> commonIndicators, DateTime firstDetected, DateTime lastDetected, bool isActive
});




}
/// @nodoc
class _$FraudPatternModelCopyWithImpl<$Res>
    implements $FraudPatternModelCopyWith<$Res> {
  _$FraudPatternModelCopyWithImpl(this._self, this._then);

  final FraudPatternModel _self;
  final $Res Function(FraudPatternModel) _then;

/// Create a copy of FraudPatternModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? patternType = null,Object? patternName = null,Object? description = null,Object? occurrences = null,Object? detectionRate = null,Object? falsePositiveRate = null,Object? estimatedLoss = null,Object? preventedLoss = null,Object? affectedProviders = null,Object? commonIndicators = null,Object? firstDetected = null,Object? lastDetected = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patternType: null == patternType ? _self.patternType : patternType // ignore: cast_nullable_to_non_nullable
as String,patternName: null == patternName ? _self.patternName : patternName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,occurrences: null == occurrences ? _self.occurrences : occurrences // ignore: cast_nullable_to_non_nullable
as int,detectionRate: null == detectionRate ? _self.detectionRate : detectionRate // ignore: cast_nullable_to_non_nullable
as double,falsePositiveRate: null == falsePositiveRate ? _self.falsePositiveRate : falsePositiveRate // ignore: cast_nullable_to_non_nullable
as double,estimatedLoss: null == estimatedLoss ? _self.estimatedLoss : estimatedLoss // ignore: cast_nullable_to_non_nullable
as double,preventedLoss: null == preventedLoss ? _self.preventedLoss : preventedLoss // ignore: cast_nullable_to_non_nullable
as double,affectedProviders: null == affectedProviders ? _self.affectedProviders : affectedProviders // ignore: cast_nullable_to_non_nullable
as List<String>,commonIndicators: null == commonIndicators ? _self.commonIndicators : commonIndicators // ignore: cast_nullable_to_non_nullable
as List<String>,firstDetected: null == firstDetected ? _self.firstDetected : firstDetected // ignore: cast_nullable_to_non_nullable
as DateTime,lastDetected: null == lastDetected ? _self.lastDetected : lastDetected // ignore: cast_nullable_to_non_nullable
as DateTime,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FraudPatternModel].
extension FraudPatternModelPatterns on FraudPatternModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FraudPatternModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FraudPatternModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FraudPatternModel value)  $default,){
final _that = this;
switch (_that) {
case _FraudPatternModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FraudPatternModel value)?  $default,){
final _that = this;
switch (_that) {
case _FraudPatternModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String patternType,  String patternName,  String description,  int occurrences,  double detectionRate,  double falsePositiveRate,  double estimatedLoss,  double preventedLoss,  List<String> affectedProviders,  List<String> commonIndicators,  DateTime firstDetected,  DateTime lastDetected,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FraudPatternModel() when $default != null:
return $default(_that.id,_that.patternType,_that.patternName,_that.description,_that.occurrences,_that.detectionRate,_that.falsePositiveRate,_that.estimatedLoss,_that.preventedLoss,_that.affectedProviders,_that.commonIndicators,_that.firstDetected,_that.lastDetected,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String patternType,  String patternName,  String description,  int occurrences,  double detectionRate,  double falsePositiveRate,  double estimatedLoss,  double preventedLoss,  List<String> affectedProviders,  List<String> commonIndicators,  DateTime firstDetected,  DateTime lastDetected,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _FraudPatternModel():
return $default(_that.id,_that.patternType,_that.patternName,_that.description,_that.occurrences,_that.detectionRate,_that.falsePositiveRate,_that.estimatedLoss,_that.preventedLoss,_that.affectedProviders,_that.commonIndicators,_that.firstDetected,_that.lastDetected,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String patternType,  String patternName,  String description,  int occurrences,  double detectionRate,  double falsePositiveRate,  double estimatedLoss,  double preventedLoss,  List<String> affectedProviders,  List<String> commonIndicators,  DateTime firstDetected,  DateTime lastDetected,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _FraudPatternModel() when $default != null:
return $default(_that.id,_that.patternType,_that.patternName,_that.description,_that.occurrences,_that.detectionRate,_that.falsePositiveRate,_that.estimatedLoss,_that.preventedLoss,_that.affectedProviders,_that.commonIndicators,_that.firstDetected,_that.lastDetected,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FraudPatternModel extends FraudPatternModel {
  const _FraudPatternModel({required this.id, required this.patternType, required this.patternName, required this.description, required this.occurrences, required this.detectionRate, required this.falsePositiveRate, required this.estimatedLoss, required this.preventedLoss, required final  List<String> affectedProviders, required final  List<String> commonIndicators, required this.firstDetected, required this.lastDetected, required this.isActive}): _affectedProviders = affectedProviders,_commonIndicators = commonIndicators,super._();
  factory _FraudPatternModel.fromJson(Map<String, dynamic> json) => _$FraudPatternModelFromJson(json);

@override final  String id;
@override final  String patternType;
@override final  String patternName;
@override final  String description;
@override final  int occurrences;
@override final  double detectionRate;
@override final  double falsePositiveRate;
@override final  double estimatedLoss;
@override final  double preventedLoss;
 final  List<String> _affectedProviders;
@override List<String> get affectedProviders {
  if (_affectedProviders is EqualUnmodifiableListView) return _affectedProviders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_affectedProviders);
}

 final  List<String> _commonIndicators;
@override List<String> get commonIndicators {
  if (_commonIndicators is EqualUnmodifiableListView) return _commonIndicators;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_commonIndicators);
}

@override final  DateTime firstDetected;
@override final  DateTime lastDetected;
@override final  bool isActive;

/// Create a copy of FraudPatternModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FraudPatternModelCopyWith<_FraudPatternModel> get copyWith => __$FraudPatternModelCopyWithImpl<_FraudPatternModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FraudPatternModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FraudPatternModel&&(identical(other.id, id) || other.id == id)&&(identical(other.patternType, patternType) || other.patternType == patternType)&&(identical(other.patternName, patternName) || other.patternName == patternName)&&(identical(other.description, description) || other.description == description)&&(identical(other.occurrences, occurrences) || other.occurrences == occurrences)&&(identical(other.detectionRate, detectionRate) || other.detectionRate == detectionRate)&&(identical(other.falsePositiveRate, falsePositiveRate) || other.falsePositiveRate == falsePositiveRate)&&(identical(other.estimatedLoss, estimatedLoss) || other.estimatedLoss == estimatedLoss)&&(identical(other.preventedLoss, preventedLoss) || other.preventedLoss == preventedLoss)&&const DeepCollectionEquality().equals(other._affectedProviders, _affectedProviders)&&const DeepCollectionEquality().equals(other._commonIndicators, _commonIndicators)&&(identical(other.firstDetected, firstDetected) || other.firstDetected == firstDetected)&&(identical(other.lastDetected, lastDetected) || other.lastDetected == lastDetected)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,patternType,patternName,description,occurrences,detectionRate,falsePositiveRate,estimatedLoss,preventedLoss,const DeepCollectionEquality().hash(_affectedProviders),const DeepCollectionEquality().hash(_commonIndicators),firstDetected,lastDetected,isActive);

@override
String toString() {
  return 'FraudPatternModel(id: $id, patternType: $patternType, patternName: $patternName, description: $description, occurrences: $occurrences, detectionRate: $detectionRate, falsePositiveRate: $falsePositiveRate, estimatedLoss: $estimatedLoss, preventedLoss: $preventedLoss, affectedProviders: $affectedProviders, commonIndicators: $commonIndicators, firstDetected: $firstDetected, lastDetected: $lastDetected, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$FraudPatternModelCopyWith<$Res> implements $FraudPatternModelCopyWith<$Res> {
  factory _$FraudPatternModelCopyWith(_FraudPatternModel value, $Res Function(_FraudPatternModel) _then) = __$FraudPatternModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String patternType, String patternName, String description, int occurrences, double detectionRate, double falsePositiveRate, double estimatedLoss, double preventedLoss, List<String> affectedProviders, List<String> commonIndicators, DateTime firstDetected, DateTime lastDetected, bool isActive
});




}
/// @nodoc
class __$FraudPatternModelCopyWithImpl<$Res>
    implements _$FraudPatternModelCopyWith<$Res> {
  __$FraudPatternModelCopyWithImpl(this._self, this._then);

  final _FraudPatternModel _self;
  final $Res Function(_FraudPatternModel) _then;

/// Create a copy of FraudPatternModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? patternType = null,Object? patternName = null,Object? description = null,Object? occurrences = null,Object? detectionRate = null,Object? falsePositiveRate = null,Object? estimatedLoss = null,Object? preventedLoss = null,Object? affectedProviders = null,Object? commonIndicators = null,Object? firstDetected = null,Object? lastDetected = null,Object? isActive = null,}) {
  return _then(_FraudPatternModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,patternType: null == patternType ? _self.patternType : patternType // ignore: cast_nullable_to_non_nullable
as String,patternName: null == patternName ? _self.patternName : patternName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,occurrences: null == occurrences ? _self.occurrences : occurrences // ignore: cast_nullable_to_non_nullable
as int,detectionRate: null == detectionRate ? _self.detectionRate : detectionRate // ignore: cast_nullable_to_non_nullable
as double,falsePositiveRate: null == falsePositiveRate ? _self.falsePositiveRate : falsePositiveRate // ignore: cast_nullable_to_non_nullable
as double,estimatedLoss: null == estimatedLoss ? _self.estimatedLoss : estimatedLoss // ignore: cast_nullable_to_non_nullable
as double,preventedLoss: null == preventedLoss ? _self.preventedLoss : preventedLoss // ignore: cast_nullable_to_non_nullable
as double,affectedProviders: null == affectedProviders ? _self._affectedProviders : affectedProviders // ignore: cast_nullable_to_non_nullable
as List<String>,commonIndicators: null == commonIndicators ? _self._commonIndicators : commonIndicators // ignore: cast_nullable_to_non_nullable
as List<String>,firstDetected: null == firstDetected ? _self.firstDetected : firstDetected // ignore: cast_nullable_to_non_nullable
as DateTime,lastDetected: null == lastDetected ? _self.lastDetected : lastDetected // ignore: cast_nullable_to_non_nullable
as DateTime,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
