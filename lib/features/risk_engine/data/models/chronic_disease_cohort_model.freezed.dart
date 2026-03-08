// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chronic_disease_cohort_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChronicDiseaseCohortModel {

 String get id; String get diseaseType; String get diseaseName; int get totalPatients; int get wellControlled; int get moderateControl; int get poorControl; double get avgRiskScore; double get hospitalizationRate; double get adherenceRate; List<TrendDataPointModel> get riskTrend; int get interventionsActive; double get interventionSuccessRate;
/// Create a copy of ChronicDiseaseCohortModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChronicDiseaseCohortModelCopyWith<ChronicDiseaseCohortModel> get copyWith => _$ChronicDiseaseCohortModelCopyWithImpl<ChronicDiseaseCohortModel>(this as ChronicDiseaseCohortModel, _$identity);

  /// Serializes this ChronicDiseaseCohortModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChronicDiseaseCohortModel&&(identical(other.id, id) || other.id == id)&&(identical(other.diseaseType, diseaseType) || other.diseaseType == diseaseType)&&(identical(other.diseaseName, diseaseName) || other.diseaseName == diseaseName)&&(identical(other.totalPatients, totalPatients) || other.totalPatients == totalPatients)&&(identical(other.wellControlled, wellControlled) || other.wellControlled == wellControlled)&&(identical(other.moderateControl, moderateControl) || other.moderateControl == moderateControl)&&(identical(other.poorControl, poorControl) || other.poorControl == poorControl)&&(identical(other.avgRiskScore, avgRiskScore) || other.avgRiskScore == avgRiskScore)&&(identical(other.hospitalizationRate, hospitalizationRate) || other.hospitalizationRate == hospitalizationRate)&&(identical(other.adherenceRate, adherenceRate) || other.adherenceRate == adherenceRate)&&const DeepCollectionEquality().equals(other.riskTrend, riskTrend)&&(identical(other.interventionsActive, interventionsActive) || other.interventionsActive == interventionsActive)&&(identical(other.interventionSuccessRate, interventionSuccessRate) || other.interventionSuccessRate == interventionSuccessRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,diseaseType,diseaseName,totalPatients,wellControlled,moderateControl,poorControl,avgRiskScore,hospitalizationRate,adherenceRate,const DeepCollectionEquality().hash(riskTrend),interventionsActive,interventionSuccessRate);

@override
String toString() {
  return 'ChronicDiseaseCohortModel(id: $id, diseaseType: $diseaseType, diseaseName: $diseaseName, totalPatients: $totalPatients, wellControlled: $wellControlled, moderateControl: $moderateControl, poorControl: $poorControl, avgRiskScore: $avgRiskScore, hospitalizationRate: $hospitalizationRate, adherenceRate: $adherenceRate, riskTrend: $riskTrend, interventionsActive: $interventionsActive, interventionSuccessRate: $interventionSuccessRate)';
}


}

/// @nodoc
abstract mixin class $ChronicDiseaseCohortModelCopyWith<$Res>  {
  factory $ChronicDiseaseCohortModelCopyWith(ChronicDiseaseCohortModel value, $Res Function(ChronicDiseaseCohortModel) _then) = _$ChronicDiseaseCohortModelCopyWithImpl;
@useResult
$Res call({
 String id, String diseaseType, String diseaseName, int totalPatients, int wellControlled, int moderateControl, int poorControl, double avgRiskScore, double hospitalizationRate, double adherenceRate, List<TrendDataPointModel> riskTrend, int interventionsActive, double interventionSuccessRate
});




}
/// @nodoc
class _$ChronicDiseaseCohortModelCopyWithImpl<$Res>
    implements $ChronicDiseaseCohortModelCopyWith<$Res> {
  _$ChronicDiseaseCohortModelCopyWithImpl(this._self, this._then);

  final ChronicDiseaseCohortModel _self;
  final $Res Function(ChronicDiseaseCohortModel) _then;

/// Create a copy of ChronicDiseaseCohortModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? diseaseType = null,Object? diseaseName = null,Object? totalPatients = null,Object? wellControlled = null,Object? moderateControl = null,Object? poorControl = null,Object? avgRiskScore = null,Object? hospitalizationRate = null,Object? adherenceRate = null,Object? riskTrend = null,Object? interventionsActive = null,Object? interventionSuccessRate = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,diseaseType: null == diseaseType ? _self.diseaseType : diseaseType // ignore: cast_nullable_to_non_nullable
as String,diseaseName: null == diseaseName ? _self.diseaseName : diseaseName // ignore: cast_nullable_to_non_nullable
as String,totalPatients: null == totalPatients ? _self.totalPatients : totalPatients // ignore: cast_nullable_to_non_nullable
as int,wellControlled: null == wellControlled ? _self.wellControlled : wellControlled // ignore: cast_nullable_to_non_nullable
as int,moderateControl: null == moderateControl ? _self.moderateControl : moderateControl // ignore: cast_nullable_to_non_nullable
as int,poorControl: null == poorControl ? _self.poorControl : poorControl // ignore: cast_nullable_to_non_nullable
as int,avgRiskScore: null == avgRiskScore ? _self.avgRiskScore : avgRiskScore // ignore: cast_nullable_to_non_nullable
as double,hospitalizationRate: null == hospitalizationRate ? _self.hospitalizationRate : hospitalizationRate // ignore: cast_nullable_to_non_nullable
as double,adherenceRate: null == adherenceRate ? _self.adherenceRate : adherenceRate // ignore: cast_nullable_to_non_nullable
as double,riskTrend: null == riskTrend ? _self.riskTrend : riskTrend // ignore: cast_nullable_to_non_nullable
as List<TrendDataPointModel>,interventionsActive: null == interventionsActive ? _self.interventionsActive : interventionsActive // ignore: cast_nullable_to_non_nullable
as int,interventionSuccessRate: null == interventionSuccessRate ? _self.interventionSuccessRate : interventionSuccessRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ChronicDiseaseCohortModel].
extension ChronicDiseaseCohortModelPatterns on ChronicDiseaseCohortModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChronicDiseaseCohortModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChronicDiseaseCohortModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChronicDiseaseCohortModel value)  $default,){
final _that = this;
switch (_that) {
case _ChronicDiseaseCohortModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChronicDiseaseCohortModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChronicDiseaseCohortModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String diseaseType,  String diseaseName,  int totalPatients,  int wellControlled,  int moderateControl,  int poorControl,  double avgRiskScore,  double hospitalizationRate,  double adherenceRate,  List<TrendDataPointModel> riskTrend,  int interventionsActive,  double interventionSuccessRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChronicDiseaseCohortModel() when $default != null:
return $default(_that.id,_that.diseaseType,_that.diseaseName,_that.totalPatients,_that.wellControlled,_that.moderateControl,_that.poorControl,_that.avgRiskScore,_that.hospitalizationRate,_that.adherenceRate,_that.riskTrend,_that.interventionsActive,_that.interventionSuccessRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String diseaseType,  String diseaseName,  int totalPatients,  int wellControlled,  int moderateControl,  int poorControl,  double avgRiskScore,  double hospitalizationRate,  double adherenceRate,  List<TrendDataPointModel> riskTrend,  int interventionsActive,  double interventionSuccessRate)  $default,) {final _that = this;
switch (_that) {
case _ChronicDiseaseCohortModel():
return $default(_that.id,_that.diseaseType,_that.diseaseName,_that.totalPatients,_that.wellControlled,_that.moderateControl,_that.poorControl,_that.avgRiskScore,_that.hospitalizationRate,_that.adherenceRate,_that.riskTrend,_that.interventionsActive,_that.interventionSuccessRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String diseaseType,  String diseaseName,  int totalPatients,  int wellControlled,  int moderateControl,  int poorControl,  double avgRiskScore,  double hospitalizationRate,  double adherenceRate,  List<TrendDataPointModel> riskTrend,  int interventionsActive,  double interventionSuccessRate)?  $default,) {final _that = this;
switch (_that) {
case _ChronicDiseaseCohortModel() when $default != null:
return $default(_that.id,_that.diseaseType,_that.diseaseName,_that.totalPatients,_that.wellControlled,_that.moderateControl,_that.poorControl,_that.avgRiskScore,_that.hospitalizationRate,_that.adherenceRate,_that.riskTrend,_that.interventionsActive,_that.interventionSuccessRate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChronicDiseaseCohortModel extends ChronicDiseaseCohortModel {
  const _ChronicDiseaseCohortModel({required this.id, required this.diseaseType, required this.diseaseName, required this.totalPatients, required this.wellControlled, required this.moderateControl, required this.poorControl, required this.avgRiskScore, required this.hospitalizationRate, required this.adherenceRate, required final  List<TrendDataPointModel> riskTrend, required this.interventionsActive, required this.interventionSuccessRate}): _riskTrend = riskTrend,super._();
  factory _ChronicDiseaseCohortModel.fromJson(Map<String, dynamic> json) => _$ChronicDiseaseCohortModelFromJson(json);

@override final  String id;
@override final  String diseaseType;
@override final  String diseaseName;
@override final  int totalPatients;
@override final  int wellControlled;
@override final  int moderateControl;
@override final  int poorControl;
@override final  double avgRiskScore;
@override final  double hospitalizationRate;
@override final  double adherenceRate;
 final  List<TrendDataPointModel> _riskTrend;
@override List<TrendDataPointModel> get riskTrend {
  if (_riskTrend is EqualUnmodifiableListView) return _riskTrend;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_riskTrend);
}

@override final  int interventionsActive;
@override final  double interventionSuccessRate;

/// Create a copy of ChronicDiseaseCohortModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChronicDiseaseCohortModelCopyWith<_ChronicDiseaseCohortModel> get copyWith => __$ChronicDiseaseCohortModelCopyWithImpl<_ChronicDiseaseCohortModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChronicDiseaseCohortModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChronicDiseaseCohortModel&&(identical(other.id, id) || other.id == id)&&(identical(other.diseaseType, diseaseType) || other.diseaseType == diseaseType)&&(identical(other.diseaseName, diseaseName) || other.diseaseName == diseaseName)&&(identical(other.totalPatients, totalPatients) || other.totalPatients == totalPatients)&&(identical(other.wellControlled, wellControlled) || other.wellControlled == wellControlled)&&(identical(other.moderateControl, moderateControl) || other.moderateControl == moderateControl)&&(identical(other.poorControl, poorControl) || other.poorControl == poorControl)&&(identical(other.avgRiskScore, avgRiskScore) || other.avgRiskScore == avgRiskScore)&&(identical(other.hospitalizationRate, hospitalizationRate) || other.hospitalizationRate == hospitalizationRate)&&(identical(other.adherenceRate, adherenceRate) || other.adherenceRate == adherenceRate)&&const DeepCollectionEquality().equals(other._riskTrend, _riskTrend)&&(identical(other.interventionsActive, interventionsActive) || other.interventionsActive == interventionsActive)&&(identical(other.interventionSuccessRate, interventionSuccessRate) || other.interventionSuccessRate == interventionSuccessRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,diseaseType,diseaseName,totalPatients,wellControlled,moderateControl,poorControl,avgRiskScore,hospitalizationRate,adherenceRate,const DeepCollectionEquality().hash(_riskTrend),interventionsActive,interventionSuccessRate);

@override
String toString() {
  return 'ChronicDiseaseCohortModel(id: $id, diseaseType: $diseaseType, diseaseName: $diseaseName, totalPatients: $totalPatients, wellControlled: $wellControlled, moderateControl: $moderateControl, poorControl: $poorControl, avgRiskScore: $avgRiskScore, hospitalizationRate: $hospitalizationRate, adherenceRate: $adherenceRate, riskTrend: $riskTrend, interventionsActive: $interventionsActive, interventionSuccessRate: $interventionSuccessRate)';
}


}

/// @nodoc
abstract mixin class _$ChronicDiseaseCohortModelCopyWith<$Res> implements $ChronicDiseaseCohortModelCopyWith<$Res> {
  factory _$ChronicDiseaseCohortModelCopyWith(_ChronicDiseaseCohortModel value, $Res Function(_ChronicDiseaseCohortModel) _then) = __$ChronicDiseaseCohortModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String diseaseType, String diseaseName, int totalPatients, int wellControlled, int moderateControl, int poorControl, double avgRiskScore, double hospitalizationRate, double adherenceRate, List<TrendDataPointModel> riskTrend, int interventionsActive, double interventionSuccessRate
});




}
/// @nodoc
class __$ChronicDiseaseCohortModelCopyWithImpl<$Res>
    implements _$ChronicDiseaseCohortModelCopyWith<$Res> {
  __$ChronicDiseaseCohortModelCopyWithImpl(this._self, this._then);

  final _ChronicDiseaseCohortModel _self;
  final $Res Function(_ChronicDiseaseCohortModel) _then;

/// Create a copy of ChronicDiseaseCohortModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? diseaseType = null,Object? diseaseName = null,Object? totalPatients = null,Object? wellControlled = null,Object? moderateControl = null,Object? poorControl = null,Object? avgRiskScore = null,Object? hospitalizationRate = null,Object? adherenceRate = null,Object? riskTrend = null,Object? interventionsActive = null,Object? interventionSuccessRate = null,}) {
  return _then(_ChronicDiseaseCohortModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,diseaseType: null == diseaseType ? _self.diseaseType : diseaseType // ignore: cast_nullable_to_non_nullable
as String,diseaseName: null == diseaseName ? _self.diseaseName : diseaseName // ignore: cast_nullable_to_non_nullable
as String,totalPatients: null == totalPatients ? _self.totalPatients : totalPatients // ignore: cast_nullable_to_non_nullable
as int,wellControlled: null == wellControlled ? _self.wellControlled : wellControlled // ignore: cast_nullable_to_non_nullable
as int,moderateControl: null == moderateControl ? _self.moderateControl : moderateControl // ignore: cast_nullable_to_non_nullable
as int,poorControl: null == poorControl ? _self.poorControl : poorControl // ignore: cast_nullable_to_non_nullable
as int,avgRiskScore: null == avgRiskScore ? _self.avgRiskScore : avgRiskScore // ignore: cast_nullable_to_non_nullable
as double,hospitalizationRate: null == hospitalizationRate ? _self.hospitalizationRate : hospitalizationRate // ignore: cast_nullable_to_non_nullable
as double,adherenceRate: null == adherenceRate ? _self.adherenceRate : adherenceRate // ignore: cast_nullable_to_non_nullable
as double,riskTrend: null == riskTrend ? _self._riskTrend : riskTrend // ignore: cast_nullable_to_non_nullable
as List<TrendDataPointModel>,interventionsActive: null == interventionsActive ? _self.interventionsActive : interventionsActive // ignore: cast_nullable_to_non_nullable
as int,interventionSuccessRate: null == interventionSuccessRate ? _self.interventionSuccessRate : interventionSuccessRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$TrendDataPointModel {

 DateTime get date; double get value;
/// Create a copy of TrendDataPointModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrendDataPointModelCopyWith<TrendDataPointModel> get copyWith => _$TrendDataPointModelCopyWithImpl<TrendDataPointModel>(this as TrendDataPointModel, _$identity);

  /// Serializes this TrendDataPointModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrendDataPointModel&&(identical(other.date, date) || other.date == date)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,value);

@override
String toString() {
  return 'TrendDataPointModel(date: $date, value: $value)';
}


}

/// @nodoc
abstract mixin class $TrendDataPointModelCopyWith<$Res>  {
  factory $TrendDataPointModelCopyWith(TrendDataPointModel value, $Res Function(TrendDataPointModel) _then) = _$TrendDataPointModelCopyWithImpl;
@useResult
$Res call({
 DateTime date, double value
});




}
/// @nodoc
class _$TrendDataPointModelCopyWithImpl<$Res>
    implements $TrendDataPointModelCopyWith<$Res> {
  _$TrendDataPointModelCopyWithImpl(this._self, this._then);

  final TrendDataPointModel _self;
  final $Res Function(TrendDataPointModel) _then;

/// Create a copy of TrendDataPointModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? value = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [TrendDataPointModel].
extension TrendDataPointModelPatterns on TrendDataPointModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrendDataPointModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrendDataPointModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrendDataPointModel value)  $default,){
final _that = this;
switch (_that) {
case _TrendDataPointModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrendDataPointModel value)?  $default,){
final _that = this;
switch (_that) {
case _TrendDataPointModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  double value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrendDataPointModel() when $default != null:
return $default(_that.date,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  double value)  $default,) {final _that = this;
switch (_that) {
case _TrendDataPointModel():
return $default(_that.date,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  double value)?  $default,) {final _that = this;
switch (_that) {
case _TrendDataPointModel() when $default != null:
return $default(_that.date,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrendDataPointModel extends TrendDataPointModel {
  const _TrendDataPointModel({required this.date, required this.value}): super._();
  factory _TrendDataPointModel.fromJson(Map<String, dynamic> json) => _$TrendDataPointModelFromJson(json);

@override final  DateTime date;
@override final  double value;

/// Create a copy of TrendDataPointModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrendDataPointModelCopyWith<_TrendDataPointModel> get copyWith => __$TrendDataPointModelCopyWithImpl<_TrendDataPointModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrendDataPointModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrendDataPointModel&&(identical(other.date, date) || other.date == date)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,value);

@override
String toString() {
  return 'TrendDataPointModel(date: $date, value: $value)';
}


}

/// @nodoc
abstract mixin class _$TrendDataPointModelCopyWith<$Res> implements $TrendDataPointModelCopyWith<$Res> {
  factory _$TrendDataPointModelCopyWith(_TrendDataPointModel value, $Res Function(_TrendDataPointModel) _then) = __$TrendDataPointModelCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, double value
});




}
/// @nodoc
class __$TrendDataPointModelCopyWithImpl<$Res>
    implements _$TrendDataPointModelCopyWith<$Res> {
  __$TrendDataPointModelCopyWithImpl(this._self, this._then);

  final _TrendDataPointModel _self;
  final $Res Function(_TrendDataPointModel) _then;

/// Create a copy of TrendDataPointModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? value = null,}) {
  return _then(_TrendDataPointModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
