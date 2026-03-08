// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chronic_disease_cohort_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChronicDiseaseCohortEntity {

 String get id; DiseaseType get diseaseType; String get diseaseName; int get totalPatients; int get wellControlled; int get moderateControl; int get poorControl; double get avgRiskScore; double get hospitalizationRate; double get adherenceRate; List<TrendDataPoint> get riskTrend; int get interventionsActive; double get interventionSuccessRate;
/// Create a copy of ChronicDiseaseCohortEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChronicDiseaseCohortEntityCopyWith<ChronicDiseaseCohortEntity> get copyWith => _$ChronicDiseaseCohortEntityCopyWithImpl<ChronicDiseaseCohortEntity>(this as ChronicDiseaseCohortEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChronicDiseaseCohortEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.diseaseType, diseaseType) || other.diseaseType == diseaseType)&&(identical(other.diseaseName, diseaseName) || other.diseaseName == diseaseName)&&(identical(other.totalPatients, totalPatients) || other.totalPatients == totalPatients)&&(identical(other.wellControlled, wellControlled) || other.wellControlled == wellControlled)&&(identical(other.moderateControl, moderateControl) || other.moderateControl == moderateControl)&&(identical(other.poorControl, poorControl) || other.poorControl == poorControl)&&(identical(other.avgRiskScore, avgRiskScore) || other.avgRiskScore == avgRiskScore)&&(identical(other.hospitalizationRate, hospitalizationRate) || other.hospitalizationRate == hospitalizationRate)&&(identical(other.adherenceRate, adherenceRate) || other.adherenceRate == adherenceRate)&&const DeepCollectionEquality().equals(other.riskTrend, riskTrend)&&(identical(other.interventionsActive, interventionsActive) || other.interventionsActive == interventionsActive)&&(identical(other.interventionSuccessRate, interventionSuccessRate) || other.interventionSuccessRate == interventionSuccessRate));
}


@override
int get hashCode => Object.hash(runtimeType,id,diseaseType,diseaseName,totalPatients,wellControlled,moderateControl,poorControl,avgRiskScore,hospitalizationRate,adherenceRate,const DeepCollectionEquality().hash(riskTrend),interventionsActive,interventionSuccessRate);

@override
String toString() {
  return 'ChronicDiseaseCohortEntity(id: $id, diseaseType: $diseaseType, diseaseName: $diseaseName, totalPatients: $totalPatients, wellControlled: $wellControlled, moderateControl: $moderateControl, poorControl: $poorControl, avgRiskScore: $avgRiskScore, hospitalizationRate: $hospitalizationRate, adherenceRate: $adherenceRate, riskTrend: $riskTrend, interventionsActive: $interventionsActive, interventionSuccessRate: $interventionSuccessRate)';
}


}

/// @nodoc
abstract mixin class $ChronicDiseaseCohortEntityCopyWith<$Res>  {
  factory $ChronicDiseaseCohortEntityCopyWith(ChronicDiseaseCohortEntity value, $Res Function(ChronicDiseaseCohortEntity) _then) = _$ChronicDiseaseCohortEntityCopyWithImpl;
@useResult
$Res call({
 String id, DiseaseType diseaseType, String diseaseName, int totalPatients, int wellControlled, int moderateControl, int poorControl, double avgRiskScore, double hospitalizationRate, double adherenceRate, List<TrendDataPoint> riskTrend, int interventionsActive, double interventionSuccessRate
});




}
/// @nodoc
class _$ChronicDiseaseCohortEntityCopyWithImpl<$Res>
    implements $ChronicDiseaseCohortEntityCopyWith<$Res> {
  _$ChronicDiseaseCohortEntityCopyWithImpl(this._self, this._then);

  final ChronicDiseaseCohortEntity _self;
  final $Res Function(ChronicDiseaseCohortEntity) _then;

/// Create a copy of ChronicDiseaseCohortEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? diseaseType = null,Object? diseaseName = null,Object? totalPatients = null,Object? wellControlled = null,Object? moderateControl = null,Object? poorControl = null,Object? avgRiskScore = null,Object? hospitalizationRate = null,Object? adherenceRate = null,Object? riskTrend = null,Object? interventionsActive = null,Object? interventionSuccessRate = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,diseaseType: null == diseaseType ? _self.diseaseType : diseaseType // ignore: cast_nullable_to_non_nullable
as DiseaseType,diseaseName: null == diseaseName ? _self.diseaseName : diseaseName // ignore: cast_nullable_to_non_nullable
as String,totalPatients: null == totalPatients ? _self.totalPatients : totalPatients // ignore: cast_nullable_to_non_nullable
as int,wellControlled: null == wellControlled ? _self.wellControlled : wellControlled // ignore: cast_nullable_to_non_nullable
as int,moderateControl: null == moderateControl ? _self.moderateControl : moderateControl // ignore: cast_nullable_to_non_nullable
as int,poorControl: null == poorControl ? _self.poorControl : poorControl // ignore: cast_nullable_to_non_nullable
as int,avgRiskScore: null == avgRiskScore ? _self.avgRiskScore : avgRiskScore // ignore: cast_nullable_to_non_nullable
as double,hospitalizationRate: null == hospitalizationRate ? _self.hospitalizationRate : hospitalizationRate // ignore: cast_nullable_to_non_nullable
as double,adherenceRate: null == adherenceRate ? _self.adherenceRate : adherenceRate // ignore: cast_nullable_to_non_nullable
as double,riskTrend: null == riskTrend ? _self.riskTrend : riskTrend // ignore: cast_nullable_to_non_nullable
as List<TrendDataPoint>,interventionsActive: null == interventionsActive ? _self.interventionsActive : interventionsActive // ignore: cast_nullable_to_non_nullable
as int,interventionSuccessRate: null == interventionSuccessRate ? _self.interventionSuccessRate : interventionSuccessRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ChronicDiseaseCohortEntity].
extension ChronicDiseaseCohortEntityPatterns on ChronicDiseaseCohortEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChronicDiseaseCohortEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChronicDiseaseCohortEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChronicDiseaseCohortEntity value)  $default,){
final _that = this;
switch (_that) {
case _ChronicDiseaseCohortEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChronicDiseaseCohortEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ChronicDiseaseCohortEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DiseaseType diseaseType,  String diseaseName,  int totalPatients,  int wellControlled,  int moderateControl,  int poorControl,  double avgRiskScore,  double hospitalizationRate,  double adherenceRate,  List<TrendDataPoint> riskTrend,  int interventionsActive,  double interventionSuccessRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChronicDiseaseCohortEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DiseaseType diseaseType,  String diseaseName,  int totalPatients,  int wellControlled,  int moderateControl,  int poorControl,  double avgRiskScore,  double hospitalizationRate,  double adherenceRate,  List<TrendDataPoint> riskTrend,  int interventionsActive,  double interventionSuccessRate)  $default,) {final _that = this;
switch (_that) {
case _ChronicDiseaseCohortEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DiseaseType diseaseType,  String diseaseName,  int totalPatients,  int wellControlled,  int moderateControl,  int poorControl,  double avgRiskScore,  double hospitalizationRate,  double adherenceRate,  List<TrendDataPoint> riskTrend,  int interventionsActive,  double interventionSuccessRate)?  $default,) {final _that = this;
switch (_that) {
case _ChronicDiseaseCohortEntity() when $default != null:
return $default(_that.id,_that.diseaseType,_that.diseaseName,_that.totalPatients,_that.wellControlled,_that.moderateControl,_that.poorControl,_that.avgRiskScore,_that.hospitalizationRate,_that.adherenceRate,_that.riskTrend,_that.interventionsActive,_that.interventionSuccessRate);case _:
  return null;

}
}

}

/// @nodoc


class _ChronicDiseaseCohortEntity implements ChronicDiseaseCohortEntity {
  const _ChronicDiseaseCohortEntity({required this.id, required this.diseaseType, required this.diseaseName, required this.totalPatients, required this.wellControlled, required this.moderateControl, required this.poorControl, required this.avgRiskScore, required this.hospitalizationRate, required this.adherenceRate, required final  List<TrendDataPoint> riskTrend, required this.interventionsActive, required this.interventionSuccessRate}): _riskTrend = riskTrend;
  

@override final  String id;
@override final  DiseaseType diseaseType;
@override final  String diseaseName;
@override final  int totalPatients;
@override final  int wellControlled;
@override final  int moderateControl;
@override final  int poorControl;
@override final  double avgRiskScore;
@override final  double hospitalizationRate;
@override final  double adherenceRate;
 final  List<TrendDataPoint> _riskTrend;
@override List<TrendDataPoint> get riskTrend {
  if (_riskTrend is EqualUnmodifiableListView) return _riskTrend;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_riskTrend);
}

@override final  int interventionsActive;
@override final  double interventionSuccessRate;

/// Create a copy of ChronicDiseaseCohortEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChronicDiseaseCohortEntityCopyWith<_ChronicDiseaseCohortEntity> get copyWith => __$ChronicDiseaseCohortEntityCopyWithImpl<_ChronicDiseaseCohortEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChronicDiseaseCohortEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.diseaseType, diseaseType) || other.diseaseType == diseaseType)&&(identical(other.diseaseName, diseaseName) || other.diseaseName == diseaseName)&&(identical(other.totalPatients, totalPatients) || other.totalPatients == totalPatients)&&(identical(other.wellControlled, wellControlled) || other.wellControlled == wellControlled)&&(identical(other.moderateControl, moderateControl) || other.moderateControl == moderateControl)&&(identical(other.poorControl, poorControl) || other.poorControl == poorControl)&&(identical(other.avgRiskScore, avgRiskScore) || other.avgRiskScore == avgRiskScore)&&(identical(other.hospitalizationRate, hospitalizationRate) || other.hospitalizationRate == hospitalizationRate)&&(identical(other.adherenceRate, adherenceRate) || other.adherenceRate == adherenceRate)&&const DeepCollectionEquality().equals(other._riskTrend, _riskTrend)&&(identical(other.interventionsActive, interventionsActive) || other.interventionsActive == interventionsActive)&&(identical(other.interventionSuccessRate, interventionSuccessRate) || other.interventionSuccessRate == interventionSuccessRate));
}


@override
int get hashCode => Object.hash(runtimeType,id,diseaseType,diseaseName,totalPatients,wellControlled,moderateControl,poorControl,avgRiskScore,hospitalizationRate,adherenceRate,const DeepCollectionEquality().hash(_riskTrend),interventionsActive,interventionSuccessRate);

@override
String toString() {
  return 'ChronicDiseaseCohortEntity(id: $id, diseaseType: $diseaseType, diseaseName: $diseaseName, totalPatients: $totalPatients, wellControlled: $wellControlled, moderateControl: $moderateControl, poorControl: $poorControl, avgRiskScore: $avgRiskScore, hospitalizationRate: $hospitalizationRate, adherenceRate: $adherenceRate, riskTrend: $riskTrend, interventionsActive: $interventionsActive, interventionSuccessRate: $interventionSuccessRate)';
}


}

/// @nodoc
abstract mixin class _$ChronicDiseaseCohortEntityCopyWith<$Res> implements $ChronicDiseaseCohortEntityCopyWith<$Res> {
  factory _$ChronicDiseaseCohortEntityCopyWith(_ChronicDiseaseCohortEntity value, $Res Function(_ChronicDiseaseCohortEntity) _then) = __$ChronicDiseaseCohortEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, DiseaseType diseaseType, String diseaseName, int totalPatients, int wellControlled, int moderateControl, int poorControl, double avgRiskScore, double hospitalizationRate, double adherenceRate, List<TrendDataPoint> riskTrend, int interventionsActive, double interventionSuccessRate
});




}
/// @nodoc
class __$ChronicDiseaseCohortEntityCopyWithImpl<$Res>
    implements _$ChronicDiseaseCohortEntityCopyWith<$Res> {
  __$ChronicDiseaseCohortEntityCopyWithImpl(this._self, this._then);

  final _ChronicDiseaseCohortEntity _self;
  final $Res Function(_ChronicDiseaseCohortEntity) _then;

/// Create a copy of ChronicDiseaseCohortEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? diseaseType = null,Object? diseaseName = null,Object? totalPatients = null,Object? wellControlled = null,Object? moderateControl = null,Object? poorControl = null,Object? avgRiskScore = null,Object? hospitalizationRate = null,Object? adherenceRate = null,Object? riskTrend = null,Object? interventionsActive = null,Object? interventionSuccessRate = null,}) {
  return _then(_ChronicDiseaseCohortEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,diseaseType: null == diseaseType ? _self.diseaseType : diseaseType // ignore: cast_nullable_to_non_nullable
as DiseaseType,diseaseName: null == diseaseName ? _self.diseaseName : diseaseName // ignore: cast_nullable_to_non_nullable
as String,totalPatients: null == totalPatients ? _self.totalPatients : totalPatients // ignore: cast_nullable_to_non_nullable
as int,wellControlled: null == wellControlled ? _self.wellControlled : wellControlled // ignore: cast_nullable_to_non_nullable
as int,moderateControl: null == moderateControl ? _self.moderateControl : moderateControl // ignore: cast_nullable_to_non_nullable
as int,poorControl: null == poorControl ? _self.poorControl : poorControl // ignore: cast_nullable_to_non_nullable
as int,avgRiskScore: null == avgRiskScore ? _self.avgRiskScore : avgRiskScore // ignore: cast_nullable_to_non_nullable
as double,hospitalizationRate: null == hospitalizationRate ? _self.hospitalizationRate : hospitalizationRate // ignore: cast_nullable_to_non_nullable
as double,adherenceRate: null == adherenceRate ? _self.adherenceRate : adherenceRate // ignore: cast_nullable_to_non_nullable
as double,riskTrend: null == riskTrend ? _self._riskTrend : riskTrend // ignore: cast_nullable_to_non_nullable
as List<TrendDataPoint>,interventionsActive: null == interventionsActive ? _self.interventionsActive : interventionsActive // ignore: cast_nullable_to_non_nullable
as int,interventionSuccessRate: null == interventionSuccessRate ? _self.interventionSuccessRate : interventionSuccessRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$TrendDataPoint {

 DateTime get date; double get value;
/// Create a copy of TrendDataPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrendDataPointCopyWith<TrendDataPoint> get copyWith => _$TrendDataPointCopyWithImpl<TrendDataPoint>(this as TrendDataPoint, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrendDataPoint&&(identical(other.date, date) || other.date == date)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,date,value);

@override
String toString() {
  return 'TrendDataPoint(date: $date, value: $value)';
}


}

/// @nodoc
abstract mixin class $TrendDataPointCopyWith<$Res>  {
  factory $TrendDataPointCopyWith(TrendDataPoint value, $Res Function(TrendDataPoint) _then) = _$TrendDataPointCopyWithImpl;
@useResult
$Res call({
 DateTime date, double value
});




}
/// @nodoc
class _$TrendDataPointCopyWithImpl<$Res>
    implements $TrendDataPointCopyWith<$Res> {
  _$TrendDataPointCopyWithImpl(this._self, this._then);

  final TrendDataPoint _self;
  final $Res Function(TrendDataPoint) _then;

/// Create a copy of TrendDataPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? value = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [TrendDataPoint].
extension TrendDataPointPatterns on TrendDataPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrendDataPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrendDataPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrendDataPoint value)  $default,){
final _that = this;
switch (_that) {
case _TrendDataPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrendDataPoint value)?  $default,){
final _that = this;
switch (_that) {
case _TrendDataPoint() when $default != null:
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
case _TrendDataPoint() when $default != null:
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
case _TrendDataPoint():
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
case _TrendDataPoint() when $default != null:
return $default(_that.date,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _TrendDataPoint implements TrendDataPoint {
  const _TrendDataPoint({required this.date, required this.value});
  

@override final  DateTime date;
@override final  double value;

/// Create a copy of TrendDataPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrendDataPointCopyWith<_TrendDataPoint> get copyWith => __$TrendDataPointCopyWithImpl<_TrendDataPoint>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrendDataPoint&&(identical(other.date, date) || other.date == date)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,date,value);

@override
String toString() {
  return 'TrendDataPoint(date: $date, value: $value)';
}


}

/// @nodoc
abstract mixin class _$TrendDataPointCopyWith<$Res> implements $TrendDataPointCopyWith<$Res> {
  factory _$TrendDataPointCopyWith(_TrendDataPoint value, $Res Function(_TrendDataPoint) _then) = __$TrendDataPointCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, double value
});




}
/// @nodoc
class __$TrendDataPointCopyWithImpl<$Res>
    implements _$TrendDataPointCopyWith<$Res> {
  __$TrendDataPointCopyWithImpl(this._self, this._then);

  final _TrendDataPoint _self;
  final $Res Function(_TrendDataPoint) _then;

/// Create a copy of TrendDataPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? value = null,}) {
  return _then(_TrendDataPoint(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
